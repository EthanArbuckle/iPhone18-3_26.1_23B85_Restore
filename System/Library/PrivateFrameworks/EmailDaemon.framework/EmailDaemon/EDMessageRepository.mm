@interface EDMessageRepository
+ (OS_os_log)log;
+ (id)signpostLog;
- (EDMessageRepository)initWithMessagePersistence:(id)persistence conversationPersistence:(id)conversationPersistence threadPersistence:(id)threadPersistence remoteContentPersistence:(id)contentPersistence messageChangeManager:(id)manager richLinkPersistence:(id)linkPersistence attachmentPersistenceManager:(id)persistenceManager categoryPersistence:(id)self0 senderPersistence:(id)self1 activityPersistence:(id)self2 businessPersistence:(id)self3 businessCloudStorage:(id)self4 hookRegistry:(id)self5 mailboxPersistence:(id)self6 searchProvider:(id)self7 userProfileProvider:(id)self8 vipManager:(id)self9 fetchController:(id)controller observerResumer:(id)resumer remoteContentManager:(id)contentManager remoteContentCacheConfiguration:(id)configuration blockedSenderManager:(id)senderManager listUnsubscribeHandler:(id)handler remindMeNotificationController:(id)notificationController accountsProvider:(id)accountsProvider;
- (EDWebContentParser)remoteContentParser;
- (NSSet)test_activeQueryCancelationTokens;
- (id)_changeFlagsForPersistedMessages:(id)messages flagChange:(id)change returnUndoAction:(BOOL)action;
- (id)_createGroupedSenderQueryHandlerForQuery:(id)query withObserver:(id)observer observationIdentifier:(id)identifier;
- (id)_descriptionStringForMessageListItems:(id)items;
- (id)_dictForPasswordsIcon;
- (id)_messageQueryForGroupedSenderObjectIDs:(id)ds;
- (id)_mostRecentMessageForPersistedMessages:(id)messages;
- (id)_partitionObjectIDs:(id)ds;
- (id)_performBlockSender:(BOOL)sender persistedMessages:(id)messages returnUndoAction:(BOOL)action;
- (id)_performConversationIDs:(id)ds conversationNotificationLevel:(int64_t)level returnUndoAction:(BOOL)action;
- (id)_performMessageFollowUpDate:(id)date persistedMessages:(id)messages returnUndoAction:(BOOL)action;
- (id)_performMessageReadLaterDate:(id)date persistedMessages:(id)messages returnUndoAction:(BOOL)action;
- (id)_performMessageTransferAction:(id)action returnUndoAction:(BOOL)undoAction;
- (id)_performMessageTransferActionToSpecialMailbox:(id)mailbox returnUndoAction:(BOOL)action;
- (id)_performUndoAction:(id)action;
- (id)_persistedMessagesForMessageChangeAction:(id)action;
- (id)_persistedMessagesForObjectIDs:(id)ds includeDuplicates:(BOOL)duplicates;
- (id)_persistedObjectIDsForObjectIDs:(id)ds;
- (id)_threadScopeFromObjectID:(void *)d;
- (id)_undoActionsForMovedMessages:(id)messages;
- (id)mailboxPredictionController;
- (id)messageReconciliationQueries;
- (id)requestRepresentationForMessageWithID:(id)d requestID:(unint64_t)iD options:(id)options delegate:(id)delegate completionHandler:(id)handler;
- (id)threadReconciliationQueries;
- (id)updateThrottlerResetBlock;
- (unint64_t)signpostID;
- (void)_accountActiveStateDidChange:(id)change stateStringForLogging:(id)logging;
- (void)_broadcastOneTimeCode:(id)code timestamp:(id)timestamp messageID:(int64_t)d subject:(id)subject senders:(id)senders;
- (void)_enumerateObjectIDsAndQueryHandlersForObjectIDsByScope:(id)scope usingBlock:(id)block failureBlock:(id)failureBlock;
- (void)_enumerateObjectIDsByScope:(id)scope usingBlock:(id)block;
- (void)_logCategoryMetadataForChangeAction:(id)action;
- (void)_logRecategorizeAnalyticsWithPersistedMessages:(id)messages isRestoreModelCategory:(BOOL)category categoryChangeAction:(id)action;
- (void)_performCategoryChangeAction:(id)action;
- (void)_performCloudStorageUpdateForBusiness:(int64_t)business withCategory:(unint64_t)category lastModifiedDate:(id)date;
- (void)_performMessageDeleteAction:(id)action;
- (void)_performMessageDeleteAllAction:(id)action;
- (void)_performMessageFlagChangeAllAction:(id)action;
- (void)_performMessageTransferAllAction:(id)action;
- (void)_performMessageTransferAllActionToSpecialMailbox:(id)mailbox;
- (void)_performQuery:(id)query withObserver:(id)observer observationIdentifier:(id)identifier completionHandler:(id)handler;
- (void)_performRestoreModelCategoryForAllMessagesChangeAction:(id)action;
- (void)_performSuppressNotAuthenticatedChangeAction:(id)action;
- (void)_performUnsubscribeAction:(id)action;
- (void)_recategorizeMessagesForQuery:(id)query completion:(id)completion;
- (void)_removeCategoryCloudStorageForBusiness:(int64_t)business lastModifiedDate:(id)date;
- (void)_requestSummariesIfNeededForMessageListItems:(id)items additionalObjectIDs:(id)ds queryHandler:(id)handler observationIdentifier:(id)identifier;
- (void)_resetUpdateThrottlersWithLogMessage:(id)message;
- (void)_triggerMigrationForThreadScopes:(id)scopes;
- (void)brandIndicatorForLocation:(id)location completionHandler:(id)handler;
- (void)cancelAllHandlers;
- (void)contentProtectionStateChanged:(int64_t)changed previousState:(int64_t)state;
- (void)countOfUserOverridesWithCompletionHandler:(id)handler;
- (void)dealloc;
- (void)didReceiveOneTimeCode:(id)code timestamp:(id)timestamp messageID:(int64_t)d subject:(id)subject senders:(id)senders;
- (void)getCachedMetadataJSONForKey:(id)key messageID:(id)d completionHandler:(id)handler;
- (void)getURLCacheInformationWithCompletion:(id)completion;
- (void)isDataAccessible:(id)accessible;
- (void)loadOlderMessagesForMailboxes:(id)mailboxes;
- (void)logCategoryMetadataForObjectIDs:(id)ds;
- (void)mailOnBoardDeleteVerificationCodesMessage:(id)message completionHandler:(id)handler;
- (void)messageListItemsForObjectIDs:(id)ds requestID:(unint64_t)d observationIdentifier:(id)identifier loadSummaryForAdditionalObjectIDs:(id)iDs completionHandler:(id)handler;
- (void)messageObjectIDForSearchIndexerIdentifier:(id)identifier completionHandler:(id)handler;
- (void)messageObjectIDForURL:(id)l completionHandler:(id)handler;
- (void)messageObjectIDsForSearchableItemIdentifiers:(id)identifiers completionHandler:(id)handler;
- (void)messagesInConversationIDs:(id)ds limit:(int64_t)limit observationIdentifier:(id)identifier completionHandler:(id)handler;
- (void)metadataForAddresses:(id)addresses completionHandler:(id)handler;
- (void)noteViewOfRemoteContentLinks:(id)links;
- (void)parseRemoteContentURLsFromMessageWithObjectID:(id)d requestID:(unint64_t)iD completionHandler:(id)handler;
- (void)performCountQuery:(id)query completionHandler:(id)handler;
- (void)performMessageChangeAction:(id)action requestID:(unint64_t)d returnUndoAction:(BOOL)undoAction completionHandler:(id)handler;
- (void)performMessageHighImpactChangeAction:(id)action;
- (void)performOneTimeCodeMessageDeletionWithObjectID:(id)d requestID:(unint64_t)iD returnUndoAction:(BOOL)action afterDelay:(double)delay completionHandler:(id)handler;
- (void)performQuery:(id)query limit:(int64_t)limit completionHandler:(id)handler;
- (void)performQuery:(id)query withObserver:(id)observer observationIdentifier:(id)identifier completionHandler:(id)handler;
- (void)persistenceDidDeleteMessages:(id)messages generationWindow:(id)window;
- (void)persistentIDForMessageObjectID:(id)d completionHandler:(id)handler;
- (void)predictMailboxForMovingMessages:(id)messages withObserver:(id)observer completionHandler:(id)handler;
- (void)recategorizeMessageSinceDate:(id)date;
- (void)recategorizeMessagesForQuery:(id)query completion:(id)completion;
- (void)removeAllEntriesFromBusinessCloudStorage;
- (void)reportIncorrectBusinessForAddress:(id)address isBusinessConnectGrouping:(BOOL)grouping fromClassName:(id)name;
- (void)requestAttachmentMetadataForMessageIDs:(id)ds completionHandler:(id)handler;
- (void)requestRichLinkURLsForMessageIDs:(id)ds completionHandler:(id)handler;
- (void)resetPrecomputedThreadScopesForMailboxScope:(id)scope;
- (void)setCachedMetadataJSON:(id)n forKey:(id)key messageID:(id)d;
- (void)startCountingQuery:(id)query includingServerCountsForMailboxScope:(id)scope withObserver:(id)observer completionHandler:(id)handler;
- (void)startObservingOneTimeCode:(id)code completionHandler:(id)handler;
- (void)test_tearDown;
- (void)threadQueryHandlerStateDidChange:(id)change;
- (void)updateLastSeenDate:(id)date andDisplayDate:(id)displayDate forBusinessWithEmailAddress:(id)address category:(id)category;
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
  block[4] = self;
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
  block[4] = self;
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
  signpostLog = [objc_opt_class() signpostLog];
  v4 = os_signpost_id_make_with_pointer(signpostLog, self);

  return v4;
}

- (EDMessageRepository)initWithMessagePersistence:(id)persistence conversationPersistence:(id)conversationPersistence threadPersistence:(id)threadPersistence remoteContentPersistence:(id)contentPersistence messageChangeManager:(id)manager richLinkPersistence:(id)linkPersistence attachmentPersistenceManager:(id)persistenceManager categoryPersistence:(id)self0 senderPersistence:(id)self1 activityPersistence:(id)self2 businessPersistence:(id)self3 businessCloudStorage:(id)self4 hookRegistry:(id)self5 mailboxPersistence:(id)self6 searchProvider:(id)self7 userProfileProvider:(id)self8 vipManager:(id)self9 fetchController:(id)controller observerResumer:(id)resumer remoteContentManager:(id)contentManager remoteContentCacheConfiguration:(id)configuration blockedSenderManager:(id)senderManager listUnsubscribeHandler:(id)handler remindMeNotificationController:(id)notificationController accountsProvider:(id)accountsProvider
{
  persistenceCopy = persistence;
  conversationPersistenceCopy = conversationPersistence;
  threadPersistenceCopy = threadPersistence;
  contentPersistenceCopy = contentPersistence;
  managerCopy = manager;
  linkPersistenceCopy = linkPersistence;
  linkPersistenceCopy2 = linkPersistence;
  persistenceManagerCopy = persistenceManager;
  categoryPersistenceCopy = categoryPersistence;
  senderPersistenceCopy = senderPersistence;
  activityPersistenceCopy = activityPersistence;
  businessPersistenceCopy = businessPersistence;
  storageCopy = storage;
  registryCopy = registry;
  mailboxPersistenceCopy = mailboxPersistence;
  providerCopy = provider;
  profileProviderCopy = profileProvider;
  vipManagerCopy = vipManager;
  controllerCopy = controller;
  resumerCopy = resumer;
  contentManagerCopy = contentManager;
  configurationCopy = configuration;
  senderManagerCopy = senderManager;
  handlerCopy = handler;
  notificationControllerCopy = notificationController;
  accountsProviderCopy = accountsProvider;
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

    objc_storeStrong(p_isa + 10, registry);
    objc_storeStrong(p_isa + 11, persistence);
    objc_storeStrong(p_isa + 12, conversationPersistence);
    objc_storeStrong(p_isa + 13, threadPersistence);
    objc_storeStrong(p_isa + 14, contentPersistence);
    objc_storeStrong(p_isa + 17, manager);
    objc_storeStrong(p_isa + 23, categoryPersistence);
    analyticsLogger = [categoryPersistenceCopy analyticsLogger];
    categoryAnalyticsLogger = v34->_categoryAnalyticsLogger;
    v34->_categoryAnalyticsLogger = analyticsLogger;

    objc_storeStrong(p_isa + 24, senderPersistence);
    objc_storeStrong(p_isa + 25, businessPersistence);
    objc_storeStrong(p_isa + 26, activityPersistence);
    objc_storeStrong(p_isa + 28, storage);
    v41 = [objc_alloc(MEMORY[0x1E696AB38]) initWithCondition:0];
    performQueryOnSerializationQueue = v34->_performQueryOnSerializationQueue;
    v34->_performQueryOnSerializationQueue = v41;

    v43 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v44 = dispatch_queue_attr_make_with_qos_class(v43, QOS_CLASS_USER_INITIATED, 0);
    v45 = dispatch_queue_create("com.apple.email.EDMessageRepository.serializationQueue", v44);
    serializationQueue = v34->_serializationQueue;
    v34->_serializationQueue = v45;

    objc_storeStrong(p_isa + 29, mailboxPersistence);
    objc_storeStrong(p_isa + 30, profileProvider);
    objc_storeStrong(p_isa + 31, vipManager);
    objc_storeStrong(p_isa + 32, provider);
    objc_storeStrong(p_isa + 33, controller);
    objc_storeStrong(p_isa + 34, resumer);
    objc_storeStrong(p_isa + 35, contentManager);
    objc_storeStrong(p_isa + 36, configuration);
    objc_storeStrong(p_isa + 39, senderManager);
    objc_storeStrong(p_isa + 40, handler);
    objc_storeStrong(p_isa + 41, notificationController);
    objc_storeStrong(p_isa + 15, linkPersistenceCopy);
    objc_storeStrong(p_isa + 16, persistenceManager);
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

    objc_storeStrong(p_isa + 45, accountsProvider);
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
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"EDMessageRepository.m" lineNumber:261 description:{@"%s can only be called from unit tests", "-[EDMessageRepository test_tearDown]"}];
  }

  os_unfair_lock_lock(&self->_handlersLock);
  queryHandlers = [(EDMessageRepository *)self queryHandlers];
  allValues = [queryHandlers allValues];

  queryHandlers2 = [(EDMessageRepository *)self queryHandlers];
  [queryHandlers2 removeAllObjects];

  os_unfair_lock_unlock(&self->_handlersLock);
  v16 = 0u;
  v17 = 0u;
  v14 = 0u;
  v15 = 0u;
  v7 = allValues;
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

  asyncWorkScheduler = [(EDMessageRepository *)self asyncWorkScheduler];
  [asyncWorkScheduler performSyncBlock:&__block_literal_global_59];

  [(EDThreadMigratorManager *)self->_migratorManager tearDown];
  v12 = *MEMORY[0x1E69E9840];
}

- (void)isDataAccessible:(id)accessible
{
  accessibleCopy = accessible;
  if (accessibleCopy)
  {
    v3 = EFProtectedDataAvailable();
    accessibleCopy[2](accessibleCopy, v3);
  }
}

- (void)performQuery:(id)query limit:(int64_t)limit completionHandler:(id)handler
{
  v37 = *MEMORY[0x1E69E9840];
  queryCopy = query;
  handlerCopy = handler;
  [(EDMessageRepository *)self _resetUpdateThrottlersWithLogMessage:@"starting one off query"];
  v9 = +[EDMessageRepository log];
  if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
  {
    v10 = [queryCopy debugDescription];
    *buf = 138412290;
    v36 = v10;
    _os_log_impl(&dword_1C61EF000, v9, OS_LOG_TYPE_INFO, "Performing Query %@", buf, 0xCu);
  }

  v11 = objc_autoreleasePoolPush();
  promise = [MEMORY[0x1E699B868] promise];
  future = [promise future];
  v32[0] = MEMORY[0x1E69E9820];
  v32[1] = 3221225472;
  v32[2] = __60__EDMessageRepository_performQuery_limit_completionHandler___block_invoke;
  v32[3] = &unk_1E8253398;
  v14 = queryCopy;
  v33 = v14;
  v15 = handlerCopy;
  v34 = v15;
  [future addSuccessBlock:v32];

  future2 = [promise future];
  v29[0] = MEMORY[0x1E69E9820];
  v29[1] = 3221225472;
  v29[2] = __60__EDMessageRepository_performQuery_limit_completionHandler___block_invoke_74;
  v29[3] = &unk_1E8253568;
  v17 = v14;
  v30 = v17;
  v18 = v15;
  v31 = v18;
  [future2 addFailureBlock:v29];

  if (limit >= 200)
  {
    limitCopy = 200;
  }

  else
  {
    limitCopy = limit;
  }

  v20 = [MEMORY[0x1E695DF70] arrayWithCapacity:limitCopy];
  messagePersistence = [(EDMessageRepository *)self messagePersistence];
  v26[0] = MEMORY[0x1E69E9820];
  v26[1] = 3221225472;
  v26[2] = __60__EDMessageRepository_performQuery_limit_completionHandler___block_invoke_76;
  v26[3] = &unk_1E82537F8;
  v22 = v20;
  v27 = v22;
  v23 = promise;
  v28 = v23;
  [messagePersistence iterateMessagesMatchingQuery:v17 batchSize:200 firstBatchSize:0 limit:limit cancelationToken:0 handler:v26];

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

- (void)performCountQuery:(id)query completionHandler:(id)handler
{
  queryCopy = query;
  handlerCopy = handler;
  asyncWorkScheduler = [(EDMessageRepository *)self asyncWorkScheduler];
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __59__EDMessageRepository_performCountQuery_completionHandler___block_invoke;
  v11[3] = &unk_1E82534D8;
  v11[4] = self;
  v9 = queryCopy;
  v12 = v9;
  v10 = handlerCopy;
  v13 = v10;
  [asyncWorkScheduler performBlock:v11];
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

- (void)performQuery:(id)query withObserver:(id)observer observationIdentifier:(id)identifier completionHandler:(id)handler
{
  queryCopy = query;
  observerCopy = observer;
  identifierCopy = identifier;
  handlerCopy = handler;
  [(EDMessageRepository *)self _resetUpdateThrottlersWithLogMessage:@"starting query"];
  performQueryOnSerializationQueue = [(EDMessageRepository *)self performQueryOnSerializationQueue];
  v15 = [performQueryOnSerializationQueue tryLockWhenCondition:1];

  if (v15)
  {
    performQueryOnSerializationQueue2 = [(EDMessageRepository *)self performQueryOnSerializationQueue];
    [performQueryOnSerializationQueue2 unlock];

    serializationQueue = [(EDMessageRepository *)self serializationQueue];
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __89__EDMessageRepository_performQuery_withObserver_observationIdentifier_completionHandler___block_invoke;
    block[3] = &unk_1E8255400;
    block[4] = self;
    v19 = queryCopy;
    v20 = observerCopy;
    v21 = identifierCopy;
    v22 = handlerCopy;
    dispatch_async(serializationQueue, block);
  }

  else
  {
    [(EDMessageRepository *)self _performQuery:queryCopy withObserver:observerCopy observationIdentifier:identifierCopy completionHandler:handlerCopy];
  }
}

- (id)_createGroupedSenderQueryHandlerForQuery:(id)query withObserver:(id)observer observationIdentifier:(id)identifier
{
  v29 = *MEMORY[0x1E69E9840];
  queryCopy = query;
  observerCopy = observer;
  identifierCopy = identifier;
  if (([queryCopy queryOptions] & 0x40) != 0)
  {
    v11 = [EDGroupedSenderQueryHandler alloc];
    messagePersistence = [(EDMessageRepository *)self messagePersistence];
    senderPersistence = [(EDMessageRepository *)self senderPersistence];
    businessPersistence = [(EDMessageRepository *)self businessPersistence];
    businessCloudStorage = [(EDMessageRepository *)self businessCloudStorage];
    hookRegistry = [(EDMessageRepository *)self hookRegistry];
    remindMeNotificationController = [(EDMessageRepository *)self remindMeNotificationController];
    LOBYTE(v21) = 1;
    v10 = [(EDGroupedSenderQueryHandler *)v11 initWithQuery:queryCopy messagePersistence:messagePersistence senderPersistence:senderPersistence businessPersistence:businessPersistence businessCloudStorage:businessCloudStorage hookRegistry:hookRegistry remindMeNotificationController:remindMeNotificationController observer:observerCopy observationIdentifier:identifierCopy keepMessagesInListOnBucketChange:v21];

    v18 = +[EDMessageRepository log];
    if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543874;
      v24 = queryCopy;
      v25 = 2114;
      v26 = identifierCopy;
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

- (void)_performQuery:(id)query withObserver:(id)observer observationIdentifier:(id)identifier completionHandler:(id)handler
{
  v87 = *MEMORY[0x1E69E9840];
  queryCopy = query;
  observerCopy = observer;
  identifierCopy = identifier;
  handlerCopy = handler;
  v60 = queryCopy;
  v11 = objc_alloc(MEMORY[0x1E699B7F8]);
  label = [queryCopy label];
  v13 = label;
  if (!label)
  {
    v13 = NSStringFromClass([queryCopy targetClass]);
  }

  val = [v11 initWithLabel:v13];
  if (!label)
  {
  }

  os_unfair_lock_lock(&self->_handlersLock);
  [(NSMutableSet *)self->_handlerTokens addObject:val];
  os_unfair_lock_unlock(&self->_handlersLock);
  v55 = objc_alloc_init(MEMORY[0x1E695DF70]);
  targetClass = [queryCopy targetClass];
  if (_os_feature_enabled_impl())
  {
    v15 = [(EDMessageRepository *)self _createGroupedSenderQueryHandlerForQuery:queryCopy withObserver:observerCopy observationIdentifier:identifierCopy];
    threadScope = [v15 threadScope];
    [v55 ef_addOptionalObject:threadScope];

    v17 = v15;
  }

  else
  {
    v17 = 0;
  }

  v61 = v17;
  if (targetClass == objc_opt_class())
  {
    v19 = +[EDMessageRepository log];
    if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543618;
      v80 = v60;
      v81 = 2114;
      v82 = identifierCopy;
      _os_log_impl(&dword_1C61EF000, v19, OS_LOG_TYPE_DEFAULT, "Creating message query: %{public}@, observation identifier: %{public}@", buf, 0x16u);
    }

    if (_os_feature_enabled_impl())
    {
      observerResumer = [(EDMessageRepository *)self observerResumer];
    }

    else
    {
      observerResumer = 0;
    }

    v29 = [EDMessageQueryHandler alloc];
    messagePersistence = [(EDMessageRepository *)self messagePersistence];
    hookRegistry = [(EDMessageRepository *)self hookRegistry];
    remindMeNotificationController = [(EDMessageRepository *)self remindMeNotificationController];
    searchProvider = [(EDMessageRepository *)self searchProvider];
    v18 = [(EDMessageQueryHandler *)v29 initWithQuery:v60 messagePersistence:messagePersistence hookRegistry:hookRegistry remindMeNotificationController:remindMeNotificationController searchProvider:searchProvider observer:observerCopy observationIdentifier:identifierCopy observationResumer:observerResumer];
  }

  else if (targetClass == objc_opt_class() && ([v60 queryOptions] & 0x40) != 0)
  {
    v34 = v17;
    threadScope2 = [v34 threadScope];
    [v55 addObject:threadScope2];

    v18 = v34;
  }

  else if (targetClass == objc_opt_class())
  {
    v21 = +[EDMessageRepository log];
    if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543618;
      v80 = v60;
      v81 = 2114;
      v82 = identifierCopy;
      _os_log_impl(&dword_1C61EF000, v21, OS_LOG_TYPE_DEFAULT, "Creating thread query: %{public}@, observation identifier: %{public}@", buf, 0x16u);
    }

    v22 = [EDThreadQueryHandler alloc];
    messagePersistence2 = [(EDMessageRepository *)self messagePersistence];
    threadPersistence = [(EDMessageRepository *)self threadPersistence];
    hookRegistry2 = [(EDMessageRepository *)self hookRegistry];
    vipManager = [(EDMessageRepository *)self vipManager];
    searchProvider2 = [(EDMessageRepository *)self searchProvider];
    remindMeNotificationController2 = [(EDMessageRepository *)self remindMeNotificationController];
    observerResumer2 = [(EDMessageRepository *)self observerResumer];
    v64 = [(EDThreadQueryHandler *)v22 initWithQuery:v60 messagePersistence:messagePersistence2 threadPersistence:threadPersistence hookRegistry:hookRegistry2 vipManager:vipManager searchProvider:searchProvider2 remindMeNotificationController:remindMeNotificationController2 observer:observerCopy observationIdentifier:identifierCopy delegate:self observationResumer:observerResumer2 threadMigratorManager:self->_migratorManager];

    threadScope3 = [(EDThreadQueryHandler *)v64 threadScope];
    [v55 addObject:threadScope3];

    v18 = v64;
  }

  else
  {
    v18 = 0;
  }

  [val addCancelable:v18];
  v65 = v18;
  os_unfair_lock_lock(&self->_handlersLock);
  queryHandlers = [(EDMessageRepository *)self queryHandlers];
  v59 = queryHandlers;
  v54 = [queryHandlers objectForKeyedSubscript:identifierCopy];
  if (v54)
  {
    v37 = +[EDMessageRepository log];
    if (os_log_type_enabled(v37, OS_LOG_TYPE_FAULT))
    {
      [val label];
      objc_claimAutoreleasedReturnValue();
      [EDMessageRepository _performQuery:withObserver:observationIdentifier:completionHandler:];
    }

    queryHandlers = v59;
    [v54 cancel];
  }

  [queryHandlers setObject:v18 forKeyedSubscript:identifierCopy];
  v38 = +[EDMessageRepository log];
  if (os_log_type_enabled(v38, OS_LOG_TYPE_DEFAULT))
  {
    label2 = [val label];
    v40 = [v59 count];
    *buf = 138544130;
    v80 = v18;
    v81 = 2114;
    v82 = identifierCopy;
    v83 = 2114;
    v84 = label2;
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
        queryHandlersByThreadScope = [(EDMessageRepository *)self queryHandlersByThreadScope];
        v47 = [queryHandlersByThreadScope objectForKeyedSubscript:v45];

        if (v47)
        {
          [v47 addObject:v65];
        }

        else
        {
          v48 = [MEMORY[0x1E695DFA8] setWithObject:v65];
          queryHandlersByThreadScope2 = [(EDMessageRepository *)self queryHandlersByThreadScope];
          [queryHandlersByThreadScope2 setObject:v48 forKeyedSubscript:v45];

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
  v50 = identifierCopy;
  v68 = v50;
  v69 = v65;
  v51 = v41;
  v70 = v51;
  v66 = v69;
  [val addCancelationBlock:v67];
  handlerCopy[2](handlerCopy, val);

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

- (void)_accountActiveStateDidChange:(id)change stateStringForLogging:(id)logging
{
  v18 = *MEMORY[0x1E69E9840];
  changeCopy = change;
  loggingCopy = logging;
  if ([changeCopy conformsToProtocol:&unk_1F4628C10])
  {
    v8 = changeCopy;
    asyncWorkScheduler = [(EDMessageRepository *)self asyncWorkScheduler];
    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 3221225472;
    v12[2] = __74__EDMessageRepository__accountActiveStateDidChange_stateStringForLogging___block_invoke;
    v12[3] = &unk_1E8250720;
    v13 = loggingCopy;
    selfCopy = self;
    v10 = v8;
    v15 = v10;
    [asyncWorkScheduler performBlock:v12];
  }

  else
  {
    v10 = +[EDMessageRepository log];
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543362;
      v17 = loggingCopy;
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

- (void)threadQueryHandlerStateDidChange:(id)change
{
  v28 = *MEMORY[0x1E69E9840];
  changeCopy = change;
  v5 = objc_alloc_init(MEMORY[0x1E695DFA8]);
  os_unfair_lock_lock(&self->_handlersLock);
  queryHandlersByThreadScope = [(EDMessageRepository *)self queryHandlersByThreadScope];
  v20[0] = MEMORY[0x1E69E9820];
  v20[1] = 3221225472;
  v20[2] = __56__EDMessageRepository_threadQueryHandlerStateDidChange___block_invoke;
  v20[3] = &unk_1E8255470;
  v7 = changeCopy;
  v21 = v7;
  v8 = v5;
  v22 = v8;
  [queryHandlersByThreadScope enumerateKeysAndObjectsUsingBlock:v20];

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

- (void)_triggerMigrationForThreadScopes:(id)scopes
{
  v33 = *MEMORY[0x1E69E9840];
  scopesCopy = scopes;
  v24 = 0;
  v25 = &v24;
  v26 = 0x3032000000;
  v27 = __Block_byref_object_copy__29;
  v28 = __Block_byref_object_dispose__29;
  v29 = 0;
  os_unfair_lock_lock(&self->_handlersLock);
  queryHandlersByThreadScope = [(EDMessageRepository *)self queryHandlersByThreadScope];
  v21[0] = MEMORY[0x1E69E9820];
  v21[1] = 3221225472;
  v21[2] = __56__EDMessageRepository__triggerMigrationForThreadScopes___block_invoke;
  v21[3] = &unk_1E8255498;
  v6 = scopesCopy;
  v22 = v6;
  v23 = &v24;
  [queryHandlersByThreadScope enumerateKeysAndObjectsUsingBlock:v21];

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
        threadPersistence = [(EDMessageRepository *)self threadPersistence];
        threadScope = [v13 threadScope];
        [threadPersistence setNeedsUpdateForThreadScope:threadScope];

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

- (void)startCountingQuery:(id)query includingServerCountsForMailboxScope:(id)scope withObserver:(id)observer completionHandler:(id)handler
{
  queryCopy = query;
  scopeCopy = scope;
  observerCopy = observer;
  handlerCopy = handler;
  [(EDMessageRepository *)self _resetUpdateThrottlersWithLogMessage:@"starting count query"];
  v14 = [objc_alloc(MEMORY[0x1E699B7F8]) initWithLabel:@"counting query token"];
  v15 = [EDMessageCountQueryHandler alloc];
  messagePersistence = [(EDMessageRepository *)self messagePersistence];
  hookRegistry = [(EDMessageRepository *)self hookRegistry];
  v18 = [(EDMessageCountQueryHandler *)v15 initWithQuery:queryCopy serverCountMailboxScope:scopeCopy messagePersistence:messagePersistence hookRegistry:hookRegistry observer:observerCopy];
  [v14 addCancelable:v18];

  v25[0] = MEMORY[0x1E69E9820];
  v25[1] = 3221225472;
  v25[2] = __110__EDMessageRepository_startCountingQuery_includingServerCountsForMailboxScope_withObserver_completionHandler___block_invoke;
  v25[3] = &unk_1E8250260;
  v19 = observerCopy;
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
  handlerCopy[2](handlerCopy, v14);
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

- (void)startObservingOneTimeCode:(id)code completionHandler:(id)handler
{
  v25 = *MEMORY[0x1E69E9840];
  codeCopy = code;
  handlerCopy = handler;
  oneTimeCodeObservers = [(EDMessageRepository *)self oneTimeCodeObservers];
  v21[0] = MEMORY[0x1E69E9820];
  v21[1] = 3221225472;
  v21[2] = __67__EDMessageRepository_startObservingOneTimeCode_completionHandler___block_invoke;
  v21[3] = &unk_1E82536A0;
  v9 = codeCopy;
  v22 = v9;
  [oneTimeCodeObservers performWhileLocked:v21];

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
  handlerCopy[2](handlerCopy, v13);
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

- (void)_broadcastOneTimeCode:(id)code timestamp:(id)timestamp messageID:(int64_t)d subject:(id)subject senders:(id)senders
{
  v31 = *MEMORY[0x1E69E9840];
  codeCopy = code;
  timestampCopy = timestamp;
  subjectCopy = subject;
  sendersCopy = senders;
  oneTimeCodeObservers = [(EDMessageRepository *)self oneTimeCodeObservers];
  getObject = [oneTimeCodeObservers getObject];

  v17 = +[EDMessageRepository log];
  if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v30 = getObject;
    _os_log_impl(&dword_1C61EF000, v17, OS_LOG_TYPE_DEFAULT, "[OTC] Broadcasting one-time code to observers: %@", buf, 0xCu);
  }

  v26 = 0u;
  v27 = 0u;
  v24 = 0u;
  v25 = 0u;
  v18 = getObject;
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

        [*(*(&v24 + 1) + 8 * v21++) didReceiveOneTimeCode:codeCopy timestamp:timestampCopy messageID:d subject:subjectCopy senders:sendersCopy observers:{objc_msgSend(v18, "count")}];
      }

      while (v19 != v21);
      v19 = [v18 countByEnumeratingWithState:&v24 objects:v28 count:16];
    }

    while (v19);
  }

  v22 = *MEMORY[0x1E69E9840];
}

- (void)didReceiveOneTimeCode:(id)code timestamp:(id)timestamp messageID:(int64_t)d subject:(id)subject senders:(id)senders
{
  codeCopy = code;
  timestampCopy = timestamp;
  subjectCopy = subject;
  sendersCopy = senders;
  [(EDMessageRepository *)self setOneTimeCodeMessageID:d];
  [(EDMessageRepository *)self _broadcastOneTimeCode:codeCopy timestamp:timestampCopy messageID:d subject:subjectCopy senders:sendersCopy];
}

- (void)persistenceDidDeleteMessages:(id)messages generationWindow:(id)window
{
  v22 = *MEMORY[0x1E69E9840];
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  messagesCopy = messages;
  v6 = [messagesCopy countByEnumeratingWithState:&v17 objects:v21 count:16];
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
          objc_enumerationMutation(messagesCopy);
        }

        v11 = *(*(&v17 + 1) + 8 * v10);
        oneTimeCodeMessageID = [(EDMessageRepository *)self oneTimeCodeMessageID];
        if (oneTimeCodeMessageID == [v11 globalMessageID])
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
      v6 = [messagesCopy countByEnumeratingWithState:&v17 objects:v21 count:16];
    }

    while (v6);
  }

  v15 = *MEMORY[0x1E69E9840];
}

- (NSSet)test_activeQueryCancelationTokens
{
  if ((EFIsRunningUnitTests() & 1) == 0)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"EDMessageRepository.m" lineNumber:613 description:{@"%s can only be called from unit tests", "-[EDMessageRepository test_activeQueryCancelationTokens]"}];
  }

  os_unfair_lock_lock(&self->_handlersLock);
  v4 = [(NSMutableSet *)self->_handlerTokens copy];
  os_unfair_lock_unlock(&self->_handlersLock);

  return v4;
}

- (void)cancelAllHandlers
{
  os_unfair_lock_lock(&self->_handlersLock);
  allObjects = [(NSMutableSet *)self->_handlerTokens allObjects];
  v4 = [allObjects mutableCopy];

  [(NSMutableSet *)self->_handlerTokens removeAllObjects];
  os_unfair_lock_unlock(&self->_handlersLock);
  [v4 makeObjectsPerformSelector:sel_cancel];
}

- (id)_threadScopeFromObjectID:(void *)d
{
  v3 = a2;
  if (d)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass() & 1) != 0 || (objc_opt_class(), (objc_opt_isKindOfClass()))
    {
      d = [v3 threadScope];
    }

    else
    {
      d = 0;
    }
  }

  return d;
}

- (id)_partitionObjectIDs:(id)ds
{
  v24 = *MEMORY[0x1E69E9840];
  dsCopy = ds;
  v18 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v4 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v21 = 0u;
  v22 = 0u;
  v19 = 0u;
  v20 = 0u;
  v5 = dsCopy;
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

- (void)_enumerateObjectIDsAndQueryHandlersForObjectIDsByScope:(id)scope usingBlock:(id)block failureBlock:(id)failureBlock
{
  blockCopy = block;
  failureBlockCopy = failureBlock;
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __102__EDMessageRepository__enumerateObjectIDsAndQueryHandlersForObjectIDsByScope_usingBlock_failureBlock___block_invoke;
  v12[3] = &unk_1E82554E8;
  v12[4] = self;
  v13 = blockCopy;
  v14 = failureBlockCopy;
  v10 = failureBlockCopy;
  v11 = blockCopy;
  [scope enumerateKeysAndObjectsUsingBlock:v12];
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

- (void)_enumerateObjectIDsByScope:(id)scope usingBlock:(id)block
{
  blockCopy = block;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __61__EDMessageRepository__enumerateObjectIDsByScope_usingBlock___block_invoke;
  v10[3] = &unk_1E8255510;
  v11 = blockCopy;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __61__EDMessageRepository__enumerateObjectIDsByScope_usingBlock___block_invoke_2;
  v8[3] = &unk_1E8255538;
  v8[4] = self;
  v9 = v11;
  v7 = v11;
  [(EDMessageRepository *)self _enumerateObjectIDsAndQueryHandlersForObjectIDsByScope:scope usingBlock:v10 failureBlock:v8];
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

- (void)messageListItemsForObjectIDs:(id)ds requestID:(unint64_t)d observationIdentifier:(id)identifier loadSummaryForAdditionalObjectIDs:(id)iDs completionHandler:(id)handler
{
  dsCopy = ds;
  identifierCopy = identifier;
  iDsCopy = iDs;
  handlerCopy = handler;
  v17 = _os_activity_create(&dword_1C61EF000, "[EDMessageRepository messageListItemsForObjectIDs:requestID:observationIdentifier:loadSummaryForAdditionalObjectIDs:completionHandler:]", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_IF_NONE_PRESENT);
  state.opaque[0] = 0xAAAAAAAAAAAAAAAALL;
  state.opaque[1] = 0xAAAAAAAAAAAAAAAALL;
  os_activity_scope_enter(v17, &state);
  signpostLog = [MEMORY[0x1E699AC90] signpostLog];
  v19 = signpostLog;
  if (d - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(signpostLog))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_1C61EF000, v19, OS_SIGNPOST_INTERVAL_BEGIN, d, "EDMessageRepositoryMessageListItems", "Received by maild", buf, 2u);
  }

  messageListItemScheduler = [(EDMessageRepository *)self messageListItemScheduler];
  v25[0] = MEMORY[0x1E69E9820];
  v25[1] = 3221225472;
  v25[2] = __136__EDMessageRepository_messageListItemsForObjectIDs_requestID_observationIdentifier_loadSummaryForAdditionalObjectIDs_completionHandler___block_invoke;
  v25[3] = &unk_1E8255588;
  dCopy = d;
  v25[4] = self;
  v21 = dsCopy;
  v26 = v21;
  v31 = a2;
  v22 = identifierCopy;
  v27 = v22;
  v23 = iDsCopy;
  v28 = v23;
  v24 = handlerCopy;
  v29 = v24;
  [messageListItemScheduler performBlock:v25];

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

- (id)_descriptionStringForMessageListItems:(id)items
{
  v3 = a2;
  if (items)
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
    items = v7;
  }

  return items;
}

- (void)_requestSummariesIfNeededForMessageListItems:(id)items additionalObjectIDs:(id)ds queryHandler:(id)handler observationIdentifier:(id)identifier
{
  itemsCopy = items;
  dsCopy = ds;
  handlerCopy = handler;
  identifierCopy = identifier;
  asyncWorkScheduler = [(EDMessageRepository *)self asyncWorkScheduler];
  v19[0] = MEMORY[0x1E69E9820];
  v19[1] = 3221225472;
  v19[2] = __123__EDMessageRepository__requestSummariesIfNeededForMessageListItems_additionalObjectIDs_queryHandler_observationIdentifier___block_invoke;
  v19[3] = &unk_1E8252D78;
  v15 = itemsCopy;
  v20 = v15;
  v16 = dsCopy;
  v21 = v16;
  v17 = handlerCopy;
  v22 = v17;
  v18 = identifierCopy;
  v23 = v18;
  selfCopy = self;
  [asyncWorkScheduler performBlock:v19];
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

- (void)performMessageChangeAction:(id)action requestID:(unint64_t)d returnUndoAction:(BOOL)undoAction completionHandler:(id)handler
{
  actionCopy = action;
  handlerCopy = handler;
  [(EDMessageRepository *)self _resetUpdateThrottlersWithLogMessage:@"performing change action"];
  serializationQueue = [(EDMessageRepository *)self serializationQueue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __95__EDMessageRepository_performMessageChangeAction_requestID_returnUndoAction_completionHandler___block_invoke;
  block[3] = &unk_1E82555D8;
  undoActionCopy = undoAction;
  v16 = actionCopy;
  selfCopy = self;
  v18 = handlerCopy;
  dCopy = d;
  v13 = handlerCopy;
  v14 = actionCopy;
  dispatch_async(serializationQueue, block);
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

- (void)performOneTimeCodeMessageDeletionWithObjectID:(id)d requestID:(unint64_t)iD returnUndoAction:(BOOL)action afterDelay:(double)delay completionHandler:(id)handler
{
  dCopy = d;
  handlerCopy = handler;
  v13 = _EFLocalizedString();
  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = __125__EDMessageRepository_performOneTimeCodeMessageDeletionWithObjectID_requestID_returnUndoAction_afterDelay_completionHandler___block_invoke;
  v16[3] = &unk_1E8255628;
  v16[4] = self;
  v14 = dCopy;
  v17 = v14;
  delayCopy = delay;
  iDCopy = iD;
  v15 = handlerCopy;
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

- (void)mailOnBoardDeleteVerificationCodesMessage:(id)message completionHandler:(id)handler
{
  messageCopy = message;
  handlerCopy = handler;
  sharedOneTimeCodeUserDefaults = [(EDMessageRepository *)self sharedOneTimeCodeUserDefaults];
  v9 = [sharedOneTimeCodeUserDefaults integerForKey:@"DeleteVerificationCodesOnboardingVersion"];

  if (v9 < 1)
  {
    v12 = _EFLocalizedString();
    v13 = _EFLocalizedString();
    v14 = _EFLocalizedString();
    v15 = MEMORY[0x1E695DF20];
    _dictForPasswordsIcon = [(EDMessageRepository *)self _dictForPasswordsIcon];
    v17 = [v15 dictionaryWithObjectsAndKeys:{v12, *MEMORY[0x1E695EE58], messageCopy, *MEMORY[0x1E695EE60], v13, *MEMORY[0x1E695EE78], v14, *MEMORY[0x1E695EE70], _dictForPasswordsIcon, @"IconConfiguration", 0}];

    v18 = CFUserNotificationCreate(*MEMORY[0x1E695E480], 0.0, 0, 0, v17);
    responseFlags = 0xAAAAAAAAAAAAAAAALL;
    CFUserNotificationReceiveResponse(v18, 0.0, &responseFlags);
    sharedOneTimeCodeUserDefaults2 = [(EDMessageRepository *)self sharedOneTimeCodeUserDefaults];
    [sharedOneTimeCodeUserDefaults2 setInteger:1 forKey:@"DeleteVerificationCodesOnboardingVersion"];

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

    handlerCopy[2](handlerCopy, v20);
    goto LABEL_7;
  }

  sharedOneTimeCodeUserDefaults3 = [(EDMessageRepository *)self sharedOneTimeCodeUserDefaults];
  v11 = [sharedOneTimeCodeUserDefaults3 BOOLForKey:@"DeleteVerificationCodes"];

  handlerCopy[2](handlerCopy, v11);
LABEL_8:
}

- (id)_dictForPasswordsIcon
{
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  [dictionary setObject:@"com.apple.Passwords-Settings.extension" forKey:@"ISIconApplicationBundleIdentifier"];
  [dictionary setObject:@"otpOnboardingIcon.png" forKey:@"ISIconDecorationType"];

  return dictionary;
}

- (id)_performMessageFollowUpDate:(id)date persistedMessages:(id)messages returnUndoAction:(BOOL)action
{
  actionCopy = action;
  v33 = *MEMORY[0x1E69E9840];
  dateCopy = date;
  messagesCopy = messages;
  if (actionCopy)
  {
    v7 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v29 = 0u;
    v30 = 0u;
    v27 = 0u;
    v28 = 0u;
    obj = messagesCopy;
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
          followUp = [v11 followUp];
          v14 = [followUp copy];
          [v12 setFollowUp:v14];

          v15 = MEMORY[0x1E696AD98];
          persistentID = [v11 persistentID];
          v17 = [v15 numberWithLongLong:{objc_msgSend(persistentID, "longLongValue")}];
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

  messageChangeManager = [(EDMessageRepository *)self messageChangeManager];
  [messageChangeManager applyFollowUp:dateCopy toMessages:messagesCopy withNegativeFeedbackForSuggestions:1];

  v21 = *MEMORY[0x1E69E9840];

  return v19;
}

- (id)_performMessageReadLaterDate:(id)date persistedMessages:(id)messages returnUndoAction:(BOOL)action
{
  actionCopy = action;
  v49 = *MEMORY[0x1E69E9840];
  dateCopy = date;
  messagesCopy = messages;
  v32 = actionCopy;
  v35 = dateCopy;
  v36 = messagesCopy;
  if (actionCopy)
  {
    v10 = objc_opt_new();
    v45 = 0u;
    v46 = 0u;
    v43 = 0u;
    v44 = 0u;
    v11 = messagesCopy;
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
          readLater = [v15 readLater];
          date = [readLater date];
          v18 = date;
          if (!date)
          {
            null = [MEMORY[0x1E695DFB0] null];
            v18 = null;
          }

          [v10 setObject:v18 forKeyedSubscript:v15];
          if (!date)
          {
          }
        }

        v12 = [v11 countByEnumeratingWithState:&v43 objects:v48 count:16];
      }

      while (v12);
    }

    dateCopy = v35;
    messagesCopy = v36;
  }

  else
  {
    v10 = 0;
  }

  messageChangeManager = [(EDMessageRepository *)self messageChangeManager];
  v34 = [messageChangeManager applyReadLaterDate:dateCopy displayDate:0 toMessages:messagesCopy];

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

- (id)_performBlockSender:(BOOL)sender persistedMessages:(id)messages returnUndoAction:(BOOL)action
{
  actionCopy = action;
  senderCopy = sender;
  v46 = *MEMORY[0x1E69E9840];
  messagesCopy = messages;
  v7 = objc_opt_new();
  v42 = 0u;
  v43 = 0u;
  v40 = 0u;
  v41 = 0u;
  v8 = messagesCopy;
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
        senders = [v12 senders];
        firstObject = [senders firstObject];

        if (firstObject)
        {
          persistentID = [v12 persistentID];
          [v7 setObject:persistentID forKeyedSubscript:firstObject];
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
  v39 = senderCopy;
  v32 = v16;
  v38 = v32;
  [v7 enumerateKeysAndObjectsUsingBlock:v37];
  blockedSenderManager = self->_blockedSenderManager;
  if (senderCopy)
  {
    [(EMBlockedSenderManager *)blockedSenderManager blockEmailAddresses:v32];
  }

  else
  {
    [(EMBlockedSenderManager *)blockedSenderManager unblockEmailAddresses:v32];
  }

  if (actionCopy)
  {
    v31 = objc_opt_new();
    [v31 setActionType:4];
    [v31 setBlockSender:!senderCopy];
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

- (void)_performUnsubscribeAction:(id)action
{
  v32 = *MEMORY[0x1E69E9840];
  actionCopy = action;
  if (([actionCopy shouldStopDeletingMessages] & 1) == 0)
  {
    v20 = [(EDMessageRepository *)self _persistedMessagesForMessageChangeAction:actionCopy];
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
            authenticationState = [v10 authenticationState];
            if ((authenticationState & 8) != 0)
            {
              v12 = 2;
            }

            else
            {
              v12 = 1;
            }

            v13 = v12 & (authenticationState << 61 >> 63);
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

- (void)_performMessageFlagChangeAllAction:(id)action
{
  actionCopy = action;
  v4 = [(EDMessageRepository *)self _persistedMessagesForMessageChangeAction:?];
  mailboxObjectIDs = [actionCopy mailboxObjectIDs];
  v6 = [mailboxObjectIDs ef_compactMap:&__block_literal_global_353];

  messageChangeManager = [(EDMessageRepository *)self messageChangeManager];
  flagChange = [actionCopy flagChange];
  [messageChangeManager applyFlagChange:flagChange toAllMessagesFromMailboxes:v6 exceptMessages:v4];
}

id __58__EDMessageRepository__performMessageFlagChangeAllAction___block_invoke(uint64_t a1, void *a2)
{
  v2 = [a2 url];

  return v2;
}

- (void)_performMessageDeleteAllAction:(id)action
{
  actionCopy = action;
  v4 = [(EDMessageRepository *)self _persistedMessagesForMessageChangeAction:?];
  mailboxObjectIDs = [actionCopy mailboxObjectIDs];
  v6 = [mailboxObjectIDs ef_compactMap:&__block_literal_global_355];

  messageChangeManager = [(EDMessageRepository *)self messageChangeManager];
  [messageChangeManager deleteAllMessageFromMailboxes:v6 exceptMessages:v4];
}

id __54__EDMessageRepository__performMessageDeleteAllAction___block_invoke(uint64_t a1, void *a2)
{
  v2 = [a2 url];

  return v2;
}

- (void)_performMessageDeleteAction:(id)action
{
  v5 = [(EDMessageRepository *)self _persistedMessagesForMessageChangeAction:action];
  messageChangeManager = [(EDMessageRepository *)self messageChangeManager];
  [messageChangeManager deleteMessages:v5];
}

- (id)_changeFlagsForPersistedMessages:(id)messages flagChange:(id)change returnUndoAction:(BOOL)action
{
  actionCopy = action;
  v49 = *MEMORY[0x1E69E9840];
  messagesCopy = messages;
  changeCopy = change;
  v34 = messagesCopy;
  v35 = changeCopy;
  if (actionCopy)
  {
    v10 = objc_opt_new();
    v45 = 0u;
    v46 = 0u;
    v43 = 0u;
    v44 = 0u;
    v11 = messagesCopy;
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
          flags = [v15 flags];
          [v10 setObject:flags forKeyedSubscript:v15];
        }

        v12 = [v11 countByEnumeratingWithState:&v43 objects:v48 count:16];
      }

      while (v12);
    }

    messagesCopy = v34;
    v17 = v35;
  }

  else
  {
    v17 = changeCopy;
    v10 = 0;
  }

  messageChangeManager = [(EDMessageRepository *)self messageChangeManager];
  v33 = [messageChangeManager applyFlagChange:v17 toMessages:messagesCopy];

  if (actionCopy)
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
          flags2 = [v23 flags];
          v26 = [v10 objectForKeyedSubscript:v23];
          v27 = [v24 changeFrom:flags2 to:v26];

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

- (id)_performMessageTransferAction:(id)action returnUndoAction:(BOOL)undoAction
{
  undoActionCopy = undoAction;
  actionCopy = action;
  v8 = [(EDMessageRepository *)self _persistedMessagesForMessageChangeAction:actionCopy];
  copyMessages = [actionCopy copyMessages];
  v10 = objc_opt_new();
  messageChangeManager = [(EDMessageRepository *)self messageChangeManager];
  destinationMailboxURL = [actionCopy destinationMailboxURL];
  [messageChangeManager transferMessages:v8 transferType:copyMessages ^ 1u destinationMailboxURL:destinationMailboxURL userInitiated:1 oldMessagesByNewMessage:v10];

  if (!undoActionCopy)
  {
    goto LABEL_4;
  }

  if ([actionCopy copyMessages])
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"EDMessageRepository.m" lineNumber:1267 description:{@"An undo action was requested for a copy, that's not yet supported"}];

LABEL_4:
    v14 = 0;
    goto LABEL_6;
  }

  v14 = [(EDMessageRepository *)self _undoActionsForMovedMessages:v10];
LABEL_6:

  return v14;
}

- (void)_performMessageTransferAllAction:(id)action
{
  actionCopy = action;
  v4 = [(EDMessageRepository *)self _persistedMessagesForMessageChangeAction:?];
  copyMessages = [actionCopy copyMessages];
  mailboxObjectIDs = [actionCopy mailboxObjectIDs];
  v7 = [mailboxObjectIDs ef_compactMap:&__block_literal_global_363];

  messageChangeManager = [(EDMessageRepository *)self messageChangeManager];
  destinationMailboxURL = [actionCopy destinationMailboxURL];
  [messageChangeManager transferAllMessagesFromMailboxes:v7 exceptMessages:v4 transferType:copyMessages ^ 1u destinationMailboxURL:destinationMailboxURL userInitiated:1];
}

id __56__EDMessageRepository__performMessageTransferAllAction___block_invoke(uint64_t a1, void *a2)
{
  v2 = [a2 url];

  return v2;
}

- (id)_performMessageTransferActionToSpecialMailbox:(id)mailbox returnUndoAction:(BOOL)action
{
  mailboxCopy = mailbox;
  v8 = [(EDMessageRepository *)self _persistedMessagesForMessageChangeAction:mailboxCopy];
  copyMessages = [mailboxCopy copyMessages];
  specialDestinationMailboxType = [mailboxCopy specialDestinationMailboxType];
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
  v19 = specialDestinationMailboxType;
  v20 = copyMessages ^ 1u;
  v16[4] = self;
  actionCopy = action;
  v12 = mailboxCopy;
  v21 = a2;
  v17 = v12;
  v18 = &v23;
  [v11 enumerateKeysAndObjectsUsingBlock:v16];
  reverseObjectEnumerator = [v24[5] reverseObjectEnumerator];
  allObjects = [reverseObjectEnumerator allObjects];

  _Block_object_dispose(&v23, 8);

  return allObjects;
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

- (void)_performMessageTransferAllActionToSpecialMailbox:(id)mailbox
{
  v27 = *MEMORY[0x1E69E9840];
  mailboxCopy = mailbox;
  v20 = [(EDMessageRepository *)self _persistedMessagesForMessageChangeAction:mailboxCopy];
  copyMessages = [mailboxCopy copyMessages];
  specialDestinationMailboxType = [mailboxCopy specialDestinationMailboxType];
  v23 = 0u;
  v24 = 0u;
  v21 = 0u;
  v22 = 0u;
  obj = [mailboxCopy mailboxObjectIDs];
  v5 = [obj countByEnumeratingWithState:&v21 objects:v26 count:16];
  if (v5)
  {
    v18 = copyMessages ^ 1u;
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
        messageChangeManager = [(EDMessageRepository *)self messageChangeManager];
        v10 = [messageChangeManager accountForMailboxURL:v8];

        v11 = [v10 mailboxForType:specialDestinationMailboxType];
        messageChangeManager2 = [(EDMessageRepository *)self messageChangeManager];
        v25 = v8;
        v13 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v25 count:1];
        v14 = [v11 URL];
        [messageChangeManager2 transferAllMessagesFromMailboxes:v13 exceptMessages:v20 transferType:v18 destinationMailboxURL:v14 userInitiated:1];

        ++v7;
      }

      while (v5 != v7);
      v5 = [obj countByEnumeratingWithState:&v21 objects:v26 count:16];
    }

    while (v5);
  }

  v15 = *MEMORY[0x1E69E9840];
}

- (id)_undoActionsForMovedMessages:(id)messages
{
  messagesCopy = messages;
  v4 = objc_opt_new();
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __52__EDMessageRepository__undoActionsForMovedMessages___block_invoke;
  v11[3] = &unk_1E8255728;
  v5 = v4;
  v12 = v5;
  [messagesCopy enumerateKeysAndObjectsUsingBlock:v11];
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

- (id)_performUndoAction:(id)action
{
  v29 = *MEMORY[0x1E69E9840];
  actionCopy = action;
  messagePersistence = [(EDMessageRepository *)self messagePersistence];
  messageChangeManager = [(EDMessageRepository *)self messageChangeManager];
  v5 = objc_opt_new();
  v25 = 0u;
  v26 = 0u;
  v23 = 0u;
  v24 = 0u;
  obj = [actionCopy individualActions];
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
        messageDatabaseIDs = [v9 messageDatabaseIDs];
        v11 = [messagePersistence persistedMessagesForDatabaseIDs:messageDatabaseIDs requireProtectedData:0 temporarilyUnavailableDatabaseIDs:0];

        actionType = [v9 actionType];
        if (actionType > 2)
        {
          switch(actionType)
          {
            case 3:
              followUp = [v9 followUp];
              v14 = [(EDMessageRepository *)self _performMessageFollowUpDate:followUp persistedMessages:v11 returnUndoAction:1];
              [v5 addObjectsFromArray:v14];
              break;
            case 4:
              followUp = -[EDMessageRepository _performBlockSender:persistedMessages:returnUndoAction:](self, "_performBlockSender:persistedMessages:returnUndoAction:", [v9 blockSender], v11, 1);
              [v5 addObjectsFromArray:followUp];
              goto LABEL_19;
            case 5:
              followUp = [MEMORY[0x1E696AD98] numberWithLongLong:{objc_msgSend(v9, "conversationID")}];
              v27 = followUp;
              v14 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v27 count:1];
              v15 = -[EDMessageRepository _performConversationIDs:conversationNotificationLevel:returnUndoAction:](self, "_performConversationIDs:conversationNotificationLevel:returnUndoAction:", v14, [v9 conversationNotificationLevel], 1);
              [v5 addObjectsFromArray:v15];

              break;
            default:
              goto LABEL_20;
          }
        }

        else if (actionType)
        {
          if (actionType == 1)
          {
            followUp = [v9 flagChange];
            v14 = [(EDMessageRepository *)self _changeFlagsForPersistedMessages:v11 flagChange:followUp returnUndoAction:1];
            [v5 addObjectsFromArray:v14];
          }

          else
          {
            if (actionType != 2)
            {
              goto LABEL_20;
            }

            followUp = [v9 readLaterDate];
            v14 = [(EDMessageRepository *)self _performMessageReadLaterDate:followUp persistedMessages:v11 returnUndoAction:1];
            [v5 addObjectsFromArray:v14];
          }
        }

        else
        {
          followUp = objc_opt_new();
          destinationMailboxURL = [v9 destinationMailboxURL];
          [messageChangeManager transferMessages:v11 transferType:1 destinationMailboxURL:destinationMailboxURL userInitiated:1 oldMessagesByNewMessage:followUp];

          v14 = [(EDMessageRepository *)self _undoActionsForMovedMessages:followUp];
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

- (id)_performConversationIDs:(id)ds conversationNotificationLevel:(int64_t)level returnUndoAction:(BOOL)action
{
  actionCopy = action;
  v33 = *MEMORY[0x1E69E9840];
  dsCopy = ds;
  conversationPersistence = [(EDMessageRepository *)self conversationPersistence];
  v24 = actionCopy;
  levelCopy = level;
  selfCopy = self;
  v9 = objc_opt_new();
  v30 = 0u;
  v31 = 0u;
  v28 = 0u;
  v29 = 0u;
  v10 = dsCopy;
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
        v15 = +[EDConversationPersistence conversationNotificationLevelForConversationFlags:](EDConversationPersistence, "conversationNotificationLevelForConversationFlags:", [conversationPersistence persistenceConversationFlagsForConversationID:{objc_msgSend(v14, "longLongValue")}]);
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

  conversationPersistence2 = [(EDMessageRepository *)selfCopy conversationPersistence];
  [conversationPersistence2 updateConversationNotificationLevel:levelCopy forConversationIDs:v10];

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

- (void)persistentIDForMessageObjectID:(id)d completionHandler:(id)handler
{
  v14[1] = *MEMORY[0x1E69E9840];
  dCopy = d;
  handlerCopy = handler;
  messagePersistence = [(EDMessageRepository *)self messagePersistence];
  v14[0] = dCopy;
  v9 = [MEMORY[0x1E695DEC8] arrayWithObjects:v14 count:1];
  v10 = [messagePersistence databaseIDsDictionaryForMessageObjectIDs:v9];

  allKeys = [v10 allKeys];
  firstObject = [allKeys firstObject];
  handlerCopy[2](handlerCopy, firstObject);

  v13 = *MEMORY[0x1E69E9840];
}

- (void)performMessageHighImpactChangeAction:(id)action
{
  actionCopy = action;
  v4 = [(EDMessageRepository *)self _persistedMessagesForMessageChangeAction:?];
  categoryPersistence = [(EDMessageRepository *)self categoryPersistence];
  [categoryPersistence changeHighImpactType:objc_msgSend(actionCopy messages:{"highImpactChange"), v4}];
}

- (void)_performRestoreModelCategoryForAllMessagesChangeAction:(id)action
{
  v27 = *MEMORY[0x1E69E9840];
  businessPersistence = [(EDMessageRepository *)self businessPersistence];
  businessAddressMapWithCategoryOverride = [businessPersistence businessAddressMapWithCategoryOverride];

  v24 = 0u;
  v25 = 0u;
  v22 = 0u;
  v23 = 0u;
  obj = businessAddressMapWithCategoryOverride;
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
          messagePersistence = [(EDMessageRepository *)self messagePersistence];
          v12 = [messagePersistence persistedMessagesFromSendersWithAddressIDs:v10 temporarilyUnavailableMessageObjectIDs:0];

          if ([v12 count])
          {
            firstObject = [v12 firstObject];
            category = [firstObject category];
            [category subtype];
            v15 = EMCategoryFromSubtype();

            categoryAnalyticsLogger = [(EDMessageRepository *)self categoryAnalyticsLogger];
            categoryPersistence = [(EDMessageRepository *)self categoryPersistence];
            [categoryAnalyticsLogger logRecategorizationEventForMessages:v12 categoryType:v15 categoryPersistence:categoryPersistence];
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

  businessPersistence2 = [(EDMessageRepository *)self businessPersistence];
  [businessPersistence2 removeAllUserOverrides];

  v19 = *MEMORY[0x1E69E9840];
}

- (id)_mostRecentMessageForPersistedMessages:(id)messages
{
  v21 = *MEMORY[0x1E69E9840];
  messagesCopy = messages;
  firstObject = [messagesCopy firstObject];
  v18 = 0u;
  v19 = 0u;
  v16 = 0u;
  v17 = 0u;
  v5 = messagesCopy;
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
        displayDate = [v9 displayDate];
        displayDate2 = [firstObject displayDate];
        v12 = [displayDate ef_isLaterThanDate:displayDate2];

        if (v12)
        {
          v13 = v9;

          firstObject = v13;
        }
      }

      v6 = [v5 countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v6);
  }

  v14 = *MEMORY[0x1E69E9840];

  return firstObject;
}

- (void)_performCategoryChangeAction:(id)action
{
  v29[1] = *MEMORY[0x1E69E9840];
  actionCopy = action;
  v5 = objc_opt_new();
  isModelCategoryRestoration = [actionCopy isModelCategoryRestoration];
  v7 = [(EDMessageRepository *)self _persistedMessagesForMessageChangeAction:actionCopy];
  categoryAnalyticsLogger = [(EDMessageRepository *)self categoryAnalyticsLogger];
  categoryPersistence = [(EDMessageRepository *)self categoryPersistence];
  [categoryAnalyticsLogger logFedStatRecategorizationEventForMessages:v7 categoryChangeAction:actionCopy categoryPersistence:categoryPersistence];

  [(EDMessageRepository *)self _logRecategorizeAnalyticsWithPersistedMessages:v7 isRestoreModelCategory:isModelCategoryRestoration categoryChangeAction:actionCopy];
  if ([v7 count])
  {
    businessPersistence = [(EDMessageRepository *)self _mostRecentMessageForPersistedMessages:v7];
    businessID = [businessPersistence businessID];
  }

  else
  {
    senderAddress = [actionCopy senderAddress];

    if (!senderAddress)
    {
      goto LABEL_14;
    }

    messagePersistence = [(EDMessageRepository *)self messagePersistence];
    senderAddress2 = [actionCopy senderAddress];
    v15 = [messagePersistence findAddressIDForAddress:senderAddress2];

    businessPersistence = [(EDMessageRepository *)self businessPersistence];
    businessID = [businessPersistence businessIDForAddressID:v15];
  }

  v16 = businessID;
  v17 = *MEMORY[0x1E699A728];

  if (v16 != v17)
  {
    if (isModelCategoryRestoration)
    {
      v18 = +[EDMessageRepository log];
      if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 134217984;
        v26 = v16;
        _os_log_impl(&dword_1C61EF000, v18, OS_LOG_TYPE_DEFAULT, "Restoring automatic model categorization for sender with businessID %lld", buf, 0xCu);
      }

      [(EDMessageRepository *)self _removeCategoryCloudStorageForBusiness:v16 lastModifiedDate:v5];
      businessPersistence2 = [(EDMessageRepository *)self businessPersistence];
      v20 = [MEMORY[0x1E696AD98] numberWithLongLong:v16];
      v29[0] = v20;
      v21 = [MEMORY[0x1E695DEC8] arrayWithObjects:v29 count:1];
      [businessPersistence2 removeUserOverridesForBusinessIDs:v21 timestamp:v5 originator:0 userInitiated:1];
    }

    else
    {
      v22 = +[EDMessageRepository log];
      if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 134218240;
        v26 = v16;
        v27 = 2048;
        categoryType = [actionCopy categoryType];
        _os_log_impl(&dword_1C61EF000, v22, OS_LOG_TYPE_DEFAULT, "Moving sender with businessID %lld to category %lu", buf, 0x16u);
      }

      -[EDMessageRepository _performCloudStorageUpdateForBusiness:withCategory:lastModifiedDate:](self, "_performCloudStorageUpdateForBusiness:withCategory:lastModifiedDate:", v16, [actionCopy categoryType], v5);
      businessPersistence2 = [(EDMessageRepository *)self businessPersistence];
      v20 = [MEMORY[0x1E696AD98] numberWithLongLong:v16];
      v24 = v20;
      v21 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v24 count:1];
      [businessPersistence2 insertOrUpdateUserOverrideForBusinessIDs:v21 category:objc_msgSend(actionCopy userInitiated:"categoryType") timestamp:{1, v5}];
    }
  }

LABEL_14:

  v23 = *MEMORY[0x1E69E9840];
}

- (void)_logRecategorizeAnalyticsWithPersistedMessages:(id)messages isRestoreModelCategory:(BOOL)category categoryChangeAction:(id)action
{
  categoryCopy = category;
  messagesCopy = messages;
  actionCopy = action;
  categoryType = [actionCopy categoryType];
  if ([messagesCopy count])
  {
    firstObject = [messagesCopy firstObject];
    v11 = firstObject;
    if (categoryCopy)
    {
      category = [firstObject category];
      [category subtype];
      categoryType = EMCategoryFromSubtype();
    }

    category2 = [v11 category];
    isPrimary = [category2 isPrimary];

    if (isPrimary)
    {
      messagePersistence = [(EDMessageRepository *)self messagePersistence];
      categoryAnalyticsLogger2 = [messagePersistence persistedMessagesForBusinessID:{objc_msgSend(v11, "businessID")}];

      categoryAnalyticsLogger = [(EDMessageRepository *)self categoryAnalyticsLogger];
      categoryPersistence = [(EDMessageRepository *)self categoryPersistence];
      [categoryAnalyticsLogger logRecategorizationEventForMessages:categoryAnalyticsLogger2 categoryType:categoryType categoryPersistence:categoryPersistence];
    }

    else
    {
      categoryAnalyticsLogger2 = [(EDMessageRepository *)self categoryAnalyticsLogger];
      categoryAnalyticsLogger = [(EDMessageRepository *)self categoryPersistence];
      [categoryAnalyticsLogger2 logRecategorizationEventForMessages:messagesCopy categoryType:categoryType categoryPersistence:categoryAnalyticsLogger];
    }
  }
}

- (void)_logCategoryMetadataForChangeAction:(id)action
{
  v6 = [(EDMessageRepository *)self _persistedMessagesForMessageChangeAction:action];
  categoryAnalyticsLogger = [(EDMessageRepository *)self categoryAnalyticsLogger];
  categoryPersistence = [(EDMessageRepository *)self categoryPersistence];
  [categoryAnalyticsLogger logModelMetadataForMessages:v6 categoryPersistence:categoryPersistence];
}

- (void)_performCloudStorageUpdateForBusiness:(int64_t)business withCategory:(unint64_t)category lastModifiedDate:(id)date
{
  dateCopy = date;
  asyncWorkScheduler = [(EDMessageRepository *)self asyncWorkScheduler];
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __91__EDMessageRepository__performCloudStorageUpdateForBusiness_withCategory_lastModifiedDate___block_invoke;
  v11[3] = &unk_1E8252DA0;
  v11[4] = self;
  businessCopy = business;
  categoryCopy = category;
  v10 = dateCopy;
  v12 = v10;
  [asyncWorkScheduler performVoucherPreservingBlock:v11];
}

void __91__EDMessageRepository__performCloudStorageUpdateForBusiness_withCategory_lastModifiedDate___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) businessPersistence];
  v4 = [v2 businessExternalIDForBusinessID:*(a1 + 48)];

  v3 = [*(a1 + 32) businessCloudStorage];
  [v3 setCategory:*(a1 + 56) forBusinessWithExternalID:v4 withLastModifiedDate:*(a1 + 40)];
}

- (void)_removeCategoryCloudStorageForBusiness:(int64_t)business lastModifiedDate:(id)date
{
  dateCopy = date;
  asyncWorkScheduler = [(EDMessageRepository *)self asyncWorkScheduler];
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __79__EDMessageRepository__removeCategoryCloudStorageForBusiness_lastModifiedDate___block_invoke;
  v9[3] = &unk_1E8251A78;
  v9[4] = self;
  businessCopy = business;
  v8 = dateCopy;
  v10 = v8;
  [asyncWorkScheduler performVoucherPreservingBlock:v9];
}

void __79__EDMessageRepository__removeCategoryCloudStorageForBusiness_lastModifiedDate___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) businessPersistence];
  v4 = [v2 businessExternalIDForBusinessID:*(a1 + 48)];

  v3 = [*(a1 + 32) businessCloudStorage];
  [v3 removeCategoryForBusinessWithExternalID:v4 withLastModifiedDate:*(a1 + 40)];
}

- (void)_performSuppressNotAuthenticatedChangeAction:(id)action
{
  actionCopy = action;
  objectIDs = [actionCopy objectIDs];
  firstObject = [objectIDs firstObject];

  v8 = [(EDMessageRepository *)self _persistedMessagesForMessageChangeAction:actionCopy];
  v9 = objc_alloc_init(MEMORY[0x1E695DF90]);
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"EDMessageRepository.m" lineNumber:1572 description:@"EMMessageObjectID not found in EMSuppressNotAuthenticatedAction"];
  }

  if (![v8 count])
  {
    currentHandler2 = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler2 handleFailureInMethod:a2 object:self file:@"EDMessageRepository.m" lineNumber:1573 description:@"Cannot find persistedMessage for EMSuppressNotAuthenticatedAction"];
  }

  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = __68__EDMessageRepository__performSuppressNotAuthenticatedChangeAction___block_invoke;
  v16[3] = &unk_1E8251810;
  v10 = v9;
  v17 = v10;
  [v8 enumerateObjectsUsingBlock:v16];
  messagePersistence = [(EDMessageRepository *)self messagePersistence];
  v12 = [messagePersistence persistMessageAuthenticationStates:v10];

  if ((v12 & 1) == 0)
  {
    v13 = +[EDMessageRepository log];
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      [(EDMessageRepository *)firstObject _performSuppressNotAuthenticatedChangeAction:v13];
    }
  }
}

void __68__EDMessageRepository__performSuppressNotAuthenticatedChangeAction___block_invoke(uint64_t a1, void *a2)
{
  v4 = a2;
  v3 = [MEMORY[0x1E696AD98] numberWithLongLong:{objc_msgSend(v4, "authenticationState") | 0x10000}];
  [*(a1 + 32) setObject:v3 forKeyedSubscript:v4];
}

- (id)_persistedMessagesForMessageChangeAction:(id)action
{
  actionCopy = action;
  query = [actionCopy query];

  if (query)
  {
    messagePersistence = [(EDMessageRepository *)self messagePersistence];
    query2 = [actionCopy query];
    v8 = [messagePersistence persistedMessagesMatchingQuery:query2 limit:0x7FFFFFFFFFFFFFFFLL];
  }

  else
  {
    messagePersistence = [actionCopy objectIDs];
    objc_opt_class();
    v8 = [(EDMessageRepository *)self _persistedMessagesForObjectIDs:messagePersistence includeDuplicates:objc_opt_isKindOfClass() & 1];
  }

  return v8;
}

- (id)_persistedMessagesForObjectIDs:(id)ds includeDuplicates:(BOOL)duplicates
{
  duplicatesCopy = duplicates;
  v7 = [(EDMessageRepository *)self _persistedObjectIDsForObjectIDs:ds];
  v8 = v7;
  if (duplicatesCopy)
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

  messagePersistence = [(EDMessageRepository *)self messagePersistence];
  v11 = [messagePersistence persistedMessagesForObjectIDs:v8 requireProtectedData:0];

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

- (id)_persistedObjectIDsForObjectIDs:(id)ds
{
  dsCopy = ds;
  v5 = [dsCopy ef_compactMap:&__block_literal_global_389];
  if ([v5 count] && (v6 = objc_msgSend(v5, "count"), v6 == objc_msgSend(dsCopy, "count")))
  {
    messagePersistence = [(EDMessageRepository *)self messagePersistence];
    v8 = [(EDMessageRepository *)self _messageQueryForGroupedSenderObjectIDs:v5];
    v9 = [messagePersistence messagesMatchingQuery:v8];
    v10 = [v9 ef_map:&__block_literal_global_392];

    v11 = [(EDMessageRepository *)self _persistedObjectIDsForObjectIDs:v10];
  }

  else
  {
    v12 = [(EDMessageRepository *)self _partitionObjectIDs:dsCopy];
    messageObjectIDs = [v12 messageObjectIDs];
    v14 = [messageObjectIDs mutableCopy];

    threadObjectIDsByScope = [v12 threadObjectIDsByScope];
    v17[0] = MEMORY[0x1E69E9820];
    v17[1] = 3221225472;
    v17[2] = __55__EDMessageRepository__persistedObjectIDsForObjectIDs___block_invoke_3;
    v17[3] = &unk_1E8255808;
    v11 = v14;
    v18 = v11;
    [(EDMessageRepository *)self _enumerateObjectIDsByScope:threadObjectIDsByScope usingBlock:v17];
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

- (id)_messageQueryForGroupedSenderObjectIDs:(id)ds
{
  v21[2] = *MEMORY[0x1E69E9840];
  dsCopy = ds;
  v4 = MEMORY[0x1E699ADA0];
  firstObject = [dsCopy firstObject];
  threadScope = [firstObject threadScope];
  v7 = [v4 predicateForMessagesWithThreadScope:threadScope];

  v8 = [dsCopy ef_map:&__block_literal_global_396];
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

- (void)requestAttachmentMetadataForMessageIDs:(id)ds completionHandler:(id)handler
{
  dsCopy = ds;
  handlerCopy = handler;
  serializationQueue = [(EDMessageRepository *)self serializationQueue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __80__EDMessageRepository_requestAttachmentMetadataForMessageIDs_completionHandler___block_invoke;
  block[3] = &unk_1E82534D8;
  block[4] = self;
  v12 = dsCopy;
  v13 = handlerCopy;
  v9 = handlerCopy;
  v10 = dsCopy;
  dispatch_async(serializationQueue, block);
}

void __80__EDMessageRepository_requestAttachmentMetadataForMessageIDs_completionHandler___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) messagePersistence];
  v5 = [v2 messageIDsWithBasePaths:*(a1 + 40)];

  v3 = [*(a1 + 32) attachmentPersistenceManager];
  v4 = [v3 attachmentURLsForGlobalMessageIDs:v5];

  (*(*(a1 + 48) + 16))();
}

- (void)requestRichLinkURLsForMessageIDs:(id)ds completionHandler:(id)handler
{
  v18 = *MEMORY[0x1E69E9840];
  dsCopy = ds;
  handlerCopy = handler;
  v8 = +[EDMessageRepository log];
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v17 = dsCopy;
    _os_log_impl(&dword_1C61EF000, v8, OS_LOG_TYPE_DEFAULT, "Fetching rich link URLs for global message IDs: %@", buf, 0xCu);
  }

  serializationQueue = [(EDMessageRepository *)self serializationQueue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __74__EDMessageRepository_requestRichLinkURLsForMessageIDs_completionHandler___block_invoke;
  block[3] = &unk_1E82534D8;
  block[4] = self;
  v14 = dsCopy;
  v15 = handlerCopy;
  v10 = handlerCopy;
  v11 = dsCopy;
  dispatch_async(serializationQueue, block);

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

- (id)requestRepresentationForMessageWithID:(id)d requestID:(unint64_t)iD options:(id)options delegate:(id)delegate completionHandler:(id)handler
{
  v46 = *MEMORY[0x1E69E9840];
  dCopy = d;
  optionsCopy = options;
  delegateCopy = delegate;
  handlerCopy = handler;
  signpostLog = [MEMORY[0x1E699AC90] signpostLog];
  v16 = signpostLog;
  if (iD - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(signpostLog))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_1C61EF000, v16, OS_SIGNPOST_INTERVAL_BEGIN, iD, "EDMessageRepositoryContentRepresentationRequest", "Received by maild", buf, 2u);
  }

  [(EDMessageRepository *)self _resetUpdateThrottlersWithLogMessage:@"requesting content representation"];
  v17 = EMLogCategoryMessageLoading();
  if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
  {
    *buf = 138543618;
    v43 = dCopy;
    v44 = 2114;
    v45 = optionsCopy;
    _os_log_impl(&dword_1C61EF000, v17, OS_LOG_TYPE_INFO, "Requesting content representation for message %{public}@, Options: %{public}@", buf, 0x16u);
  }

  promise = [MEMORY[0x1E699B868] promise];
  future = [promise future];
  v38[0] = MEMORY[0x1E69E9820];
  v38[1] = 3221225472;
  v38[2] = __106__EDMessageRepository_requestRepresentationForMessageWithID_requestID_options_delegate_completionHandler___block_invoke;
  v38[3] = &unk_1E8255850;
  v20 = dCopy;
  v39 = v20;
  iDCopy = iD;
  v21 = handlerCopy;
  v40 = v21;
  [future addSuccessBlock:v38];

  future2 = [promise future];
  v34[0] = MEMORY[0x1E69E9820];
  v34[1] = 3221225472;
  v34[2] = __106__EDMessageRepository_requestRepresentationForMessageWithID_requestID_options_delegate_completionHandler___block_invoke_403;
  v34[3] = &unk_1E8255878;
  iDCopy2 = iD;
  v23 = v20;
  v35 = v23;
  v24 = v21;
  v36 = v24;
  [future2 addFailureBlock:v34];

  messagePersistence = [(EDMessageRepository *)self messagePersistence];
  completionHandlerAdapter = [promise completionHandlerAdapter];
  v27 = [messagePersistence requestContentForMessageObjectID:v23 requestID:iD options:optionsCopy delegate:delegateCopy completionHandler:completionHandlerAdapter];

  if (v27)
  {
    v28 = [MEMORY[0x1E696AE38] discreteProgressWithTotalUnitCount:1];
    [v28 addChild:v27 withPendingUnitCount:1];
    v32[0] = MEMORY[0x1E69E9820];
    v32[1] = 3221225472;
    v32[2] = __106__EDMessageRepository_requestRepresentationForMessageWithID_requestID_options_delegate_completionHandler___block_invoke_405;
    v32[3] = &unk_1E8250260;
    v33 = promise;
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

- (void)resetPrecomputedThreadScopesForMailboxScope:(id)scope
{
  scopeCopy = scope;
  [(EDMessageRepository *)self _resetUpdateThrottlersWithLogMessage:@"resetting precomputed threads"];
  performQueryOnSerializationQueue = [(EDMessageRepository *)self performQueryOnSerializationQueue];
  [performQueryOnSerializationQueue lock];

  performQueryOnSerializationQueue2 = [(EDMessageRepository *)self performQueryOnSerializationQueue];
  [performQueryOnSerializationQueue2 unlockWithCondition:1];

  serializationQueue = [(EDMessageRepository *)self serializationQueue];
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __67__EDMessageRepository_resetPrecomputedThreadScopesForMailboxScope___block_invoke;
  v9[3] = &unk_1E8250128;
  v9[4] = self;
  v10 = scopeCopy;
  v8 = scopeCopy;
  dispatch_async(serializationQueue, v9);
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

- (void)setCachedMetadataJSON:(id)n forKey:(id)key messageID:(id)d
{
  nCopy = n;
  keyCopy = key;
  dCopy = d;
  [(EDMessageRepository *)self _resetUpdateThrottlersWithLogMessage:@"setting cached metadata"];
  serializationQueue = [(EDMessageRepository *)self serializationQueue];
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __62__EDMessageRepository_setCachedMetadataJSON_forKey_messageID___block_invoke;
  v15[3] = &unk_1E8250AB8;
  v15[4] = self;
  v16 = nCopy;
  v17 = keyCopy;
  v18 = dCopy;
  v12 = dCopy;
  v13 = keyCopy;
  v14 = nCopy;
  dispatch_async(serializationQueue, v15);
}

void __62__EDMessageRepository_setCachedMetadataJSON_forKey_messageID___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) messagePersistence];
  [v2 setCachedMetadataJSON:*(a1 + 40) forKey:*(a1 + 48) messageID:*(a1 + 56)];
}

- (void)getCachedMetadataJSONForKey:(id)key messageID:(id)d completionHandler:(id)handler
{
  keyCopy = key;
  dCopy = d;
  handlerCopy = handler;
  [(EDMessageRepository *)self _resetUpdateThrottlersWithLogMessage:@"getting cached metadata"];
  messagePersistence = [(EDMessageRepository *)self messagePersistence];
  v11 = [messagePersistence cachedMetadataJSONForKey:keyCopy messageID:dCopy];

  handlerCopy[2](handlerCopy, v11);
}

- (void)metadataForAddresses:(id)addresses completionHandler:(id)handler
{
  addressesCopy = addresses;
  handlerCopy = handler;
  messagePersistence = [(EDMessageRepository *)self messagePersistence];
  v8 = [messagePersistence metadataForAddresses:addressesCopy];

  handlerCopy[2](handlerCopy, v8);
}

- (void)messagesInConversationIDs:(id)ds limit:(int64_t)limit observationIdentifier:(id)identifier completionHandler:(id)handler
{
  dsCopy = ds;
  identifierCopy = identifier;
  handlerCopy = handler;
  [(EDMessageRepository *)self _resetUpdateThrottlersWithLogMessage:@"getting messages in conversationIDs"];
  os_unfair_lock_lock(&self->_handlersLock);
  queryHandlers = [(EDMessageRepository *)self queryHandlers];
  v13 = [queryHandlers objectForKeyedSubscript:identifierCopy];

  os_unfair_lock_unlock(&self->_handlersLock);
  if (objc_opt_respondsToSelector())
  {
    v14 = [v13 messagesInConversationIDs:dsCopy limit:limit];
  }

  else
  {
    v14 = 0;
  }

  handlerCopy[2](handlerCopy, v14);
}

- (void)predictMailboxForMovingMessages:(id)messages withObserver:(id)observer completionHandler:(id)handler
{
  messagesCopy = messages;
  observerCopy = observer;
  handlerCopy = handler;
  asyncWorkScheduler = [(EDMessageRepository *)self asyncWorkScheduler];
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __86__EDMessageRepository_predictMailboxForMovingMessages_withObserver_completionHandler___block_invoke;
  v15[3] = &unk_1E8253348;
  v15[4] = self;
  v12 = messagesCopy;
  v16 = v12;
  v13 = observerCopy;
  v17 = v13;
  v14 = handlerCopy;
  v18 = v14;
  [asyncWorkScheduler performBlock:v15];
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
    messagePersistence = [(EDMessageRepository *)self messagePersistence];
    mailboxPersistence = [(EDMessageRepository *)self mailboxPersistence];
    hookRegistry = [(EDMessageRepository *)self hookRegistry];
    userProfileProvider = [(EDMessageRepository *)self userProfileProvider];
    v9 = [(EDMailboxPredictionController *)v4 initWithMessagePersistence:messagePersistence mailboxPersistence:mailboxPersistence hookRegistry:hookRegistry userProfileProvider:userProfileProvider];
    v10 = self->_mailboxPredictionController;
    self->_mailboxPredictionController = v9;

    mailboxPredictionController = self->_mailboxPredictionController;
  }

  v11 = mailboxPredictionController;
  os_unfair_lock_unlock(&self->_mailboxPredictionControllerLock);

  return v11;
}

- (void)loadOlderMessagesForMailboxes:(id)mailboxes
{
  v9 = *MEMORY[0x1E69E9840];
  mailboxesCopy = mailboxes;
  [(EDMessageRepository *)self _resetUpdateThrottlersWithLogMessage:@"loading older messages"];
  v5 = +[EDMessageRepository log];
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v7 = 134217984;
    v8 = [mailboxesCopy count];
    _os_log_impl(&dword_1C61EF000, v5, OS_LOG_TYPE_DEFAULT, "Loading older messages for %lu mailboxes", &v7, 0xCu);
  }

  [(EDFetchController *)self->_fetchController performFetchOfType:65664 mailboxObjectIds:mailboxesCopy];
  v6 = *MEMORY[0x1E69E9840];
}

- (void)messageObjectIDForURL:(id)l completionHandler:(id)handler
{
  lCopy = l;
  handlerCopy = handler;
  messagePersistence = [(EDMessageRepository *)self messagePersistence];
  v8 = [messagePersistence messageObjectIDForURL:lCopy];

  if (v8)
  {
    v9 = 0;
  }

  else
  {
    v9 = [MEMORY[0x1E696ABC0] em_internalErrorWithReason:@"invalid URL"];
  }

  handlerCopy[2](handlerCopy, v8, v9);
  if (!v8)
  {
  }
}

- (void)messageObjectIDsForSearchableItemIdentifiers:(id)identifiers completionHandler:(id)handler
{
  v34 = *MEMORY[0x1E69E9840];
  identifiersCopy = identifiers;
  handlerCopy = handler;
  v6 = objc_alloc_init(MEMORY[0x1E699B810]);
  v23 = objc_opt_new();
  v22 = objc_opt_new();
  v27 = 0u;
  v28 = 0u;
  v25 = 0u;
  v26 = 0u;
  v7 = identifiersCopy;
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
        messagePersistence = [(EDMessageRepository *)self messagePersistence];
        longLongValue = [v11 longLongValue];
        v24 = 0;
        v14 = [messagePersistence globalIDForMessageWithDatabaseID:longLongValue mailboxScope:&v24];
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

  handlerCopy[2](handlerCopy, v23, v22, 0);
  v19 = *MEMORY[0x1E69E9840];
}

- (void)messageObjectIDForSearchIndexerIdentifier:(id)identifier completionHandler:(id)handler
{
  identifierCopy = identifier;
  handlerCopy = handler;
  messagePersistence = [(EDMessageRepository *)self messagePersistence];
  [messagePersistence messageObjectIDForSearchIndexerIdentifier:identifierCopy completionHandler:handlerCopy];
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

- (void)getURLCacheInformationWithCompletion:(id)completion
{
  v13 = *MEMORY[0x1E69E9840];
  completionCopy = completion;
  remoteContentCacheConfiguration = [(EDMessageRepository *)self remoteContentCacheConfiguration];
  cacheURL = [remoteContentCacheConfiguration cacheURL];

  v7 = +[EDMessageRepository log];
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v11 = 138412290;
    v12 = cacheURL;
    _os_log_impl(&dword_1C61EF000, v7, OS_LOG_TYPE_DEFAULT, "Remote Content Cache URL: %@", &v11, 0xCu);
  }

  v8 = [objc_alloc(MEMORY[0x1E699B970]) initWithFileURL:cacheURL readOnly:1];
  remoteContentCacheConfiguration2 = [(EDMessageRepository *)self remoteContentCacheConfiguration];
  completionCopy[2](completionCopy, v8, [remoteContentCacheConfiguration2 diskCapacity]);

  v10 = *MEMORY[0x1E69E9840];
}

- (void)noteViewOfRemoteContentLinks:(id)links
{
  linksCopy = links;
  remoteContentManager = [(EDMessageRepository *)self remoteContentManager];
  [remoteContentManager noteViewOfRemoteContentLinks:linksCopy];
}

- (void)parseRemoteContentURLsFromMessageWithObjectID:(id)d requestID:(unint64_t)iD completionHandler:(id)handler
{
  dCopy = d;
  handlerCopy = handler;
  v10 = [MEMORY[0x1E699AC68] optionsWithRequestedRepresentationType:*MEMORY[0x1E699A700] networkUsage:0];
  messagePersistence = [(EDMessageRepository *)self messagePersistence];
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __97__EDMessageRepository_parseRemoteContentURLsFromMessageWithObjectID_requestID_completionHandler___block_invoke;
  v15[3] = &unk_1E82558F0;
  v12 = handlerCopy;
  v18 = v12;
  v13 = dCopy;
  v16 = v13;
  selfCopy = self;
  v14 = [messagePersistence requestContentForMessageObjectID:v13 requestID:iD options:v10 delegate:0 completionHandler:v15];
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

- (void)brandIndicatorForLocation:(id)location completionHandler:(id)handler
{
  locationCopy = location;
  handlerCopy = handler;
  asyncWorkScheduler = [(EDMessageRepository *)self asyncWorkScheduler];
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __67__EDMessageRepository_brandIndicatorForLocation_completionHandler___block_invoke;
  v11[3] = &unk_1E82534D8;
  v11[4] = self;
  v9 = locationCopy;
  v12 = v9;
  v10 = handlerCopy;
  v13 = v10;
  [asyncWorkScheduler performVoucherPreservingBlock:v11];
}

void __67__EDMessageRepository_brandIndicatorForLocation_completionHandler___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) messagePersistence];
  v3 = [v2 brandIndicatorForURL:*(a1 + 40)];

  (*(*(a1 + 48) + 16))();
}

- (void)recategorizeMessageSinceDate:(id)date
{
  dateCopy = date;
  asyncWorkScheduler = [(EDMessageRepository *)self asyncWorkScheduler];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __52__EDMessageRepository_recategorizeMessageSinceDate___block_invoke;
  v7[3] = &unk_1E8250128;
  v6 = dateCopy;
  v8 = v6;
  selfCopy = self;
  [asyncWorkScheduler performVoucherPreservingBlock:v7];
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

- (void)recategorizeMessagesForQuery:(id)query completion:(id)completion
{
  queryCopy = query;
  completionCopy = completion;
  asyncWorkScheduler = [(EDMessageRepository *)self asyncWorkScheduler];
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __63__EDMessageRepository_recategorizeMessagesForQuery_completion___block_invoke;
  v11[3] = &unk_1E82534D8;
  v11[4] = self;
  v9 = queryCopy;
  v12 = v9;
  v10 = completionCopy;
  v13 = v10;
  [asyncWorkScheduler performVoucherPreservingBlock:v11];
}

- (void)_recategorizeMessagesForQuery:(id)query completion:(id)completion
{
  queryCopy = query;
  completionCopy = completion;
  v7 = [EDMessageAuthenticationAndCategoryMigrator alloc];
  categoryPersistence = [(EDMessageRepository *)self categoryPersistence];
  messageChangeManager = [(EDMessageRepository *)self messageChangeManager];
  messageCategorizer = [messageChangeManager messageCategorizer];
  messageChangeManager2 = [(EDMessageRepository *)self messageChangeManager];
  messageAuthenticator = [messageChangeManager2 messageAuthenticator];
  messagePersistence = [(EDMessageRepository *)self messagePersistence];
  activityPersistence = [(EDMessageRepository *)self activityPersistence];
  v15 = [(EDMessageAuthenticationAndCategoryMigrator *)v7 initWithCategoryPersistence:categoryPersistence categorizer:messageCategorizer authenticator:messageAuthenticator messagePersistence:messagePersistence activityPersistence:activityPersistence reason:1];

  v16 = objc_alloc_init(MEMORY[0x1E699B798]);
  v20[0] = MEMORY[0x1E69E9820];
  v20[1] = 3221225472;
  v20[2] = __64__EDMessageRepository__recategorizeMessagesForQuery_completion___block_invoke;
  v20[3] = &unk_1E8253568;
  v17 = v15;
  v21 = v17;
  v18 = completionCopy;
  v22 = v18;
  [(EDMessageAuthenticationAndCategoryMigrator *)v17 startMigrationIfNecessaryWithCategorizationQuery:queryCopy cancelationToken:v16 completion:v20];
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

- (void)countOfUserOverridesWithCompletionHandler:(id)handler
{
  handlerCopy = handler;
  businessPersistence = [(EDMessageRepository *)self businessPersistence];
  [businessPersistence countOfUserOverridesWithCompletionHandler:handlerCopy];
}

- (void)removeAllEntriesFromBusinessCloudStorage
{
  businessCloudStorage = [(EDMessageRepository *)self businessCloudStorage];
  [businessCloudStorage removeAllEntries];
}

- (void)_resetUpdateThrottlersWithLogMessage:(id)message
{
  v12 = *MEMORY[0x1E69E9840];
  messageCopy = message;
  updateThrottlerResetBlock = [(EDMessageRepository *)self updateThrottlerResetBlock];

  if (updateThrottlerResetBlock)
  {
    v6 = +[EDMessageRepository log];
    if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
    {
      v10 = 138543362;
      v11 = messageCopy;
      _os_log_impl(&dword_1C61EF000, v6, OS_LOG_TYPE_INFO, "Already resetting all update throttlers, skipping reset due to %{public}@", &v10, 0xCu);
    }
  }

  else
  {
    v7 = +[EDMessageRepository log];
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      v10 = 138543362;
      v11 = messageCopy;
      _os_log_impl(&dword_1C61EF000, v7, OS_LOG_TYPE_INFO, "Resetting all update throttlers due to %{public}@", &v10, 0xCu);
    }

    v6 = dispatch_block_create_with_qos_class(0, QOS_CLASS_BACKGROUND, 0, &__block_literal_global_443);
    [(EDMessageRepository *)self setUpdateThrottlerResetBlock:v6];
    updateThrottlerResetScheduler = [(EDMessageRepository *)self updateThrottlerResetScheduler];
    [updateThrottlerResetScheduler performBlock:v6];
  }

  v9 = *MEMORY[0x1E69E9840];
}

- (void)logCategoryMetadataForObjectIDs:(id)ds
{
  v6 = [(EDMessageRepository *)self _persistedMessagesForObjectIDs:ds includeDuplicates:0];
  categoryAnalyticsLogger = [(EDMessageRepository *)self categoryAnalyticsLogger];
  categoryPersistence = [(EDMessageRepository *)self categoryPersistence];
  [categoryAnalyticsLogger logModelMetadataForMessages:v6 categoryPersistence:categoryPersistence];
}

- (void)updateLastSeenDate:(id)date andDisplayDate:(id)displayDate forBusinessWithEmailAddress:(id)address category:(id)category
{
  dateCopy = date;
  displayDateCopy = displayDate;
  addressCopy = address;
  categoryCopy = category;
  asyncWorkScheduler = [(EDMessageRepository *)self asyncWorkScheduler];
  v19[0] = MEMORY[0x1E69E9820];
  v19[1] = 3221225472;
  v19[2] = __94__EDMessageRepository_updateLastSeenDate_andDisplayDate_forBusinessWithEmailAddress_category___block_invoke;
  v19[3] = &unk_1E8252D78;
  v19[4] = self;
  v15 = addressCopy;
  v20 = v15;
  v16 = dateCopy;
  v21 = v16;
  v17 = displayDateCopy;
  v22 = v17;
  v18 = categoryCopy;
  v23 = v18;
  [asyncWorkScheduler performVoucherPreservingBlock:v19];
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

- (void)reportIncorrectBusinessForAddress:(id)address isBusinessConnectGrouping:(BOOL)grouping fromClassName:(id)name
{
  addressCopy = address;
  nameCopy = name;
  asyncWorkScheduler = [(EDMessageRepository *)self asyncWorkScheduler];
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __97__EDMessageRepository_reportIncorrectBusinessForAddress_isBusinessConnectGrouping_fromClassName___block_invoke;
  v13[3] = &unk_1E8255940;
  v13[4] = self;
  v11 = addressCopy;
  v14 = v11;
  groupingCopy = grouping;
  v12 = nameCopy;
  v15 = v12;
  [asyncWorkScheduler performVoucherPreservingBlock:v13];
}

void __97__EDMessageRepository_reportIncorrectBusinessForAddress_isBusinessConnectGrouping_fromClassName___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) businessPersistence];
  [v2 reportIncorrectBusinessForAddress:*(a1 + 40) isBusinessConnectGrouping:*(a1 + 56) fromClassName:*(a1 + 48)];
}

- (id)messageReconciliationQueries
{
  os_unfair_lock_lock(&self->_handlersLock);
  queryHandlers = [(EDMessageRepository *)self queryHandlers];
  allValues = [queryHandlers allValues];
  v5 = [allValues ef_compactMap:&__block_literal_global_951];
  ef_flatten = [v5 ef_flatten];

  os_unfair_lock_unlock(&self->_handlersLock);

  return ef_flatten;
}

- (id)threadReconciliationQueries
{
  os_unfair_lock_lock(&self->_handlersLock);
  queryHandlers = [(EDMessageRepository *)self queryHandlers];
  allValues = [queryHandlers allValues];
  v5 = [allValues ef_compactMap:&__block_literal_global_953];
  ef_flatten = [v5 ef_flatten];

  os_unfair_lock_unlock(&self->_handlersLock);

  return ef_flatten;
}

- (void)contentProtectionStateChanged:(int64_t)changed previousState:(int64_t)state
{
  if (!changed)
  {
    v8 = 0;
    v9 = &v8;
    v10 = 0x2020000000;
    v11 = 0;
    os_unfair_lock_lock(&self->_handlersLock);
    queryHandlers = [(EDMessageRepository *)self queryHandlers];
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = __67__EDMessageRepository_contentProtectionStateChanged_previousState___block_invoke;
    v7[3] = &unk_1E8255968;
    v7[4] = &v8;
    [queryHandlers enumerateKeysAndObjectsUsingBlock:v7];

    os_unfair_lock_unlock(&self->_handlersLock);
    if (*(v9 + 24) == 1)
    {
      messagePersistence = [(EDMessageRepository *)self messagePersistence];
      [messagePersistence reconcileJournalWithCompletionBlock:0];
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