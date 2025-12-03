@interface EMMessageRepository
+ (OS_os_log)log;
+ (id)remoteInterface;
+ (id)signpostLog;
+ (void)addValidSortDescriptorsToEMQuery;
- (BOOL)_anyObserver:(id)observer containsObjectID:(id)d;
- (BOOL)_shouldActionUpdateObserversForDeletedObjectIDs:(id)ds;
- (EFFuture)remoteContentURLCache;
- (EMMessageRepository)initWithRemoteConnection:(id)connection mailboxRepository:(id)repository vipManager:(id)manager;
- (NSArray)currentObservers;
- (id)_addPrecachedItemsFromExtraInfoIfNeeded:(id)needed;
- (id)_cachedItemForItem:(id)item observers:(id)observers validationBlock:(id)block;
- (id)_descriptionStringForObjectIDs:(void *)ds;
- (id)_existingObservedItemForObjectID:(id)d;
- (id)_messageListItemsForObjectIDs:(id)ds observationIdentifier:(id)identifier checkCache:(BOOL)cache;
- (id)_observedCachedItemForItem:(id)item itemDescriptionForLogging:(id)logging validationBlock:(id)block;
- (id)brandIndicatorForLocation:(id)location;
- (id)cachedMetadataJSONForKey:(id)key messageID:(id)d;
- (id)countOfUserOverrides;
- (id)messageForObjectID:(id)d;
- (id)messageForSearchIndexerIdentifier:(id)identifier;
- (id)messageForSearchableItemIdentifier:(id)identifier;
- (id)messageListItemsForObjectIDs:(id)ds;
- (id)messageListItemsForObjectIDs:(id)ds observationIdentifier:(id)identifier;
- (id)messageObjectIDForURL:(id)l;
- (id)messageObjectIDsForSearchIndexerIdentifiers:(id)identifiers;
- (id)messageObjectIDsForSearchableItemIdentifiers:(id)identifiers;
- (id)metadataForAddresses:(id)addresses;
- (id)performMessageChangeActionReturningUndoAction:(id)action;
- (id)performQuery:(id)query withObserver:(id)observer;
- (id)persistentIDForMessageObjectID:(id)d;
- (id)predictMailboxForMovingMessages:(id)messages completionHandler:(id)handler;
- (id)predictMailboxForMovingMessagesWithIDs:(id)ds completionHandler:(id)handler;
- (id)requestRepresentationForMessageWithID:(id)d options:(id)options delegate:(id)delegate completionHandler:(id)handler;
- (id)startCountingQuery:(id)query includingServerCountsForMailboxScope:(id)scope withObserver:(id)observer;
- (id)startObservingOneTimeCodes:(id)codes;
- (unint64_t)signpostID;
- (void)_applyChangesToCachedObjects:(id)objects;
- (void)_broadcastMessageListItemChangesToObservers:(id)observers forObjectIDs:(id)ds;
- (void)_detectChangesForMatchedAddedObjectIDs:(id)ds observerationIdentifier:(id)identifier matchedChangesHandler:(id)handler;
- (void)_notifyRecoverableObservers;
- (void)_removeItemsFromObservedItemsCacheIfNotObservedByObservers:(id)observers;
- (void)_unsubscribeTypeDidChangeForUnsubscribeChangeAction:(id)action;
- (void)_updateObserversForAction:(id)action;
- (void)_updateObserversForDeletedObjectIDs:(id)ds;
- (void)_updateObserversForFlagChangeAction:(id)action;
- (void)_vipsDidChange:(id)change;
- (void)dealloc;
- (void)didFinishBlockingMainThreadForFuture:(id)future;
- (void)didStartBlockingMainThreadForFuture:(id)future;
- (void)getCachedMetadataJSONForKey:(id)key messageID:(id)d handler:(id)handler;
- (void)isDataAccessible:(id)accessible;
- (void)loadOlderMessagesForMailboxes:(id)mailboxes;
- (void)logCategoryMetadataForObjectIDs:(id)ds;
- (void)noteViewOfRemoteContentLinks:(id)links;
- (void)parseRemoteContentURLsFromMessageWithObjectID:(id)d completionHandler:(id)handler;
- (void)performCountQuery:(id)query completionHandler:(id)handler;
- (void)performMessageChangeAction:(id)action;
- (void)performOneTimeCodeMessageDeletionWithObjectID:(id)d afterDelay:(double)delay;
- (void)performQuery:(id)query limit:(int64_t)limit completionHandler:(id)handler;
- (void)recategorizeMessageSinceDate:(id)date;
- (void)recategorizeMessagesForQuery:(id)query completion:(id)completion;
- (void)refreshQueryWithObserver:(id)observer;
- (void)removeAllEntriesFromBusinessCloudStorage;
- (void)requestAttachmentURLsForMessageIDs:(id)ds completionHandler:(id)handler;
- (void)requestRichLinkURLsForMessageIDs:(id)ds completionHandler:(id)handler;
- (void)requestSummaryForObjectIDs:(id)ds;
- (void)resetAllPrecomputedThreadScopes;
- (void)setCachedMetadataJSON:(id)n forKey:(id)key messageID:(id)d;
- (void)setQueryCount:(id)count forQueryIdentifier:(id)identifier;
- (void)setUpURLCacheWithMemoryCapacity:(unint64_t)capacity;
- (void)updateLastSeenDate:(id)date andDisplayDate:(id)displayDate forBusinessWithEmailAddress:(id)address category:(id)category;
@end

@implementation EMMessageRepository

+ (id)remoteInterface
{
  v2 = MEMORY[0x1E695DFD8];
  v3 = objc_opt_class();
  v87 = [v2 setWithObjects:{v3, objc_opt_class(), 0}];
  v4 = MEMORY[0x1E695DFD8];
  v5 = objc_opt_class();
  v6 = objc_opt_class();
  v7 = objc_opt_class();
  v85 = [v4 setWithObjects:{v5, v6, v7, objc_opt_class(), 0}];
  v8 = MEMORY[0x1E695DFD8];
  v9 = objc_opt_class();
  v10 = objc_opt_class();
  v86 = [v8 setWithObjects:{v9, v10, objc_opt_class(), 0}];
  v11 = MEMORY[0x1E695DFD8];
  v12 = objc_opt_class();
  v91 = [v11 setWithObjects:{v12, objc_opt_class(), 0}];
  v13 = MEMORY[0x1E695DFD8];
  v14 = objc_opt_class();
  v90 = [v13 setWithObjects:{v14, objc_opt_class(), 0}];
  v15 = MEMORY[0x1E695DFD8];
  v16 = objc_opt_class();
  v17 = objc_opt_class();
  v83 = [v15 setWithObjects:{v16, v17, objc_opt_class(), 0}];
  v18 = MEMORY[0x1E695DFD8];
  v19 = objc_opt_class();
  v84 = [v18 setWithObjects:{v19, objc_opt_class(), 0}];
  v20 = MEMORY[0x1E695DFD8];
  v21 = objc_opt_class();
  v22 = objc_opt_class();
  v82 = [v20 setWithObjects:{v21, v22, objc_opt_class(), 0}];
  v88 = MEMORY[0x1E695DFD8];
  v81 = objc_opt_class();
  v80 = objc_opt_class();
  v79 = objc_opt_class();
  v23 = objc_opt_class();
  v24 = objc_opt_class();
  v25 = objc_opt_class();
  v26 = objc_opt_class();
  v27 = objc_opt_class();
  v28 = objc_opt_class();
  v29 = objc_opt_class();
  v30 = objc_opt_class();
  v31 = objc_opt_class();
  v32 = objc_opt_class();
  v33 = [v88 setWithObjects:{v81, v80, v79, v23, v24, v25, v26, v27, v28, v29, v30, v31, v32, objc_opt_class(), 0}];
  v34 = MEMORY[0x1E695DFD8];
  v35 = objc_opt_class();
  v89 = [v34 setWithObjects:{v35, objc_opt_class(), 0}];
  v36 = MEMORY[0x1E695DFD8];
  v37 = objc_opt_class();
  v38 = [v36 setWithObjects:{v37, objc_opt_class(), 0}];
  v39 = [MEMORY[0x1E696B0D0] interfaceWithProtocol:&unk_1F461EBF8];
  v40 = [MEMORY[0x1E696B0D0] interfaceWithProtocol:&unk_1F4642730];
  v41 = [MEMORY[0x1E696B0D0] interfaceWithProtocol:&unk_1F462F820];
  [v41 setClasses:v91 forSelector:sel_observer_matchedAddedObjectIDs_before_extraInfo_ argumentIndex:1 ofReply:0];
  [v41 setClasses:v33 forSelector:sel_observer_matchedAddedObjectIDs_before_extraInfo_ argumentIndex:3 ofReply:0];
  [v41 setClasses:v91 forSelector:sel_observer_matchedAddedObjectIDs_after_extraInfo_ argumentIndex:1 ofReply:0];
  [v41 setClasses:v33 forSelector:sel_observer_matchedAddedObjectIDs_after_extraInfo_ argumentIndex:3 ofReply:0];
  [v41 setClasses:v91 forSelector:sel_observer_matchedMovedObjectIDs_before_extraInfo_ argumentIndex:1 ofReply:0];
  [v41 setClasses:v33 forSelector:sel_observer_matchedMovedObjectIDs_before_extraInfo_ argumentIndex:3 ofReply:0];
  [v41 setClasses:v91 forSelector:sel_observer_matchedMovedObjectIDs_after_extraInfo_ argumentIndex:1 ofReply:0];
  [v41 setClasses:v33 forSelector:sel_observer_matchedMovedObjectIDs_after_extraInfo_ argumentIndex:3 ofReply:0];
  [v41 setClasses:v86 forSelector:sel_observer_matchedChangesForObjectIDs_ argumentIndex:1 ofReply:0];
  [v41 setClasses:v91 forSelector:sel_observer_matchedDeletedObjectIDs_ argumentIndex:1 ofReply:0];
  v42 = [MEMORY[0x1E695DFD8] setWithObjects:{objc_opt_class(), 0}];
  [v41 setClasses:v42 forSelector:sel_observer_replacedExistingObjectID_withNewObjectID_ argumentIndex:1 ofReply:0];

  [v41 setClasses:v90 forSelector:sel_observer_replacedExistingObjectID_withNewObjectID_ argumentIndex:2 ofReply:0];
  v43 = MEMORY[0x1E695DFD8];
  v44 = objc_opt_class();
  v45 = objc_opt_class();
  v46 = [v43 setWithObjects:{v44, v45, objc_opt_class(), 0}];
  [v41 setClasses:v46 forSelector:sel_observer_matchedOldestItemsUpdatedForMailboxes_ argumentIndex:1 ofReply:0];

  [v41 setInterface:v40 forSelector:sel_observer_wasUpdated_ argumentIndex:1 ofReply:0];
  [v41 setClasses:v33 forSelector:sel_observerDidFinishInitialLoad_extraInfo_ argumentIndex:1 ofReply:0];
  [v41 setClasses:v33 forSelector:sel_observerDidFailInitialLoad_extraInfo_ argumentIndex:1 ofReply:0];
  v47 = [MEMORY[0x1E696B0D0] interfaceWithProtocol:&unk_1F4642098];
  [v47 setClasses:v87 forSelector:sel_performQuery_limit_completionHandler_ argumentIndex:0 ofReply:1];
  [v47 setClasses:v85 forSelector:sel_performMessageChangeAction_requestID_returnUndoAction_completionHandler_ argumentIndex:0 ofReply:0];
  v48 = MEMORY[0x1E695DFD8];
  v49 = objc_opt_class();
  v50 = [v48 setWithObjects:{v49, objc_opt_class(), 0}];
  [v47 setClasses:v50 forSelector:sel_predictMailboxForMovingMessages_withObserver_completionHandler_ argumentIndex:0 ofReply:0];

  v51 = [MEMORY[0x1E696B0D0] interfaceWithProtocol:&unk_1F462FB70];
  [v47 setInterface:v51 forSelector:sel_predictMailboxForMovingMessages_withObserver_completionHandler_ argumentIndex:1 ofReply:0];

  [v47 setInterface:v39 forSelector:sel_predictMailboxForMovingMessages_withObserver_completionHandler_ argumentIndex:0 ofReply:1];
  v52 = MEMORY[0x1E695DFD8];
  v53 = objc_opt_class();
  v54 = [v52 setWithObjects:{v53, objc_opt_class(), 0}];
  [v47 setClasses:v54 forSelector:sel_loadOlderMessagesForMailboxes_ argumentIndex:0 ofReply:0];

  v55 = +[EMContentRepresentation contentRequestDelegateInterface];
  [v47 setInterface:v55 forSelector:sel_requestRepresentationForMessageWithID_requestID_options_delegate_completionHandler_ argumentIndex:3 ofReply:0];

  v56 = +[EMContentRepresentation distantContentRepresentationInterface];
  [v47 setInterface:v56 forSelector:sel_requestRepresentationForMessageWithID_requestID_options_delegate_completionHandler_ argumentIndex:0 ofReply:1];

  [v47 setInterface:v41 forSelector:sel_performQuery_withObserver_observationIdentifier_completionHandler_ argumentIndex:1 ofReply:0];
  [v47 setInterface:v39 forSelector:sel_performQuery_withObserver_observationIdentifier_completionHandler_ argumentIndex:0 ofReply:1];
  v57 = [MEMORY[0x1E696B0D0] interfaceWithProtocol:&unk_1F462FA78];
  [v57 setInterface:v40 forSelector:sel_countDidChange_acknowledgementToken_ argumentIndex:1 ofReply:0];
  [v47 setInterface:v57 forSelector:sel_startCountingQuery_includingServerCountsForMailboxScope_withObserver_completionHandler_ argumentIndex:2 ofReply:0];
  [v47 setInterface:v39 forSelector:sel_startCountingQuery_includingServerCountsForMailboxScope_withObserver_completionHandler_ argumentIndex:0 ofReply:1];
  v58 = [MEMORY[0x1E696B0D0] interfaceWithProtocol:&unk_1F46303F0];
  [v47 setInterface:v58 forSelector:sel_startObservingOneTimeCode_completionHandler_ argumentIndex:0 ofReply:0];
  [v47 setInterface:v39 forSelector:sel_startObservingOneTimeCode_completionHandler_ argumentIndex:0 ofReply:1];
  [v47 setClasses:v91 forSelector:sel_messageListItemsForObjectIDs_requestID_observationIdentifier_loadSummaryForAdditionalObjectIDs_completionHandler_ argumentIndex:0 ofReply:0];
  [v47 setClasses:v90 forSelector:sel_messageListItemsForObjectIDs_requestID_observationIdentifier_loadSummaryForAdditionalObjectIDs_completionHandler_ argumentIndex:3 ofReply:0];
  [v47 setClasses:v84 forSelector:sel_messageListItemsForObjectIDs_requestID_observationIdentifier_loadSummaryForAdditionalObjectIDs_completionHandler_ argumentIndex:0 ofReply:1];
  [v47 setClasses:v82 forSelector:sel_messageListItemsForObjectIDs_requestID_observationIdentifier_loadSummaryForAdditionalObjectIDs_completionHandler_ argumentIndex:1 ofReply:1];
  v59 = [MEMORY[0x1E695DFD8] setWithObjects:{objc_opt_class(), 0}];
  [v47 setClasses:v59 forSelector:sel_messageObjectIDForURL_completionHandler_ argumentIndex:0 ofReply:0];

  [v47 setClasses:v90 forSelector:sel_messageObjectIDForURL_completionHandler_ argumentIndex:0 ofReply:1];
  v60 = [MEMORY[0x1E695DFD8] setWithObjects:{objc_opt_class(), 0}];
  [v47 setClasses:v60 forSelector:sel_messageObjectIDForURL_completionHandler_ argumentIndex:1 ofReply:1];

  [v47 setClasses:v90 forSelector:sel_messageObjectIDsForSearchableItemIdentifiers_completionHandler_ argumentIndex:0 ofReply:1];
  [v47 setClasses:v83 forSelector:sel_messageObjectIDsForSearchableItemIdentifiers_completionHandler_ argumentIndex:1 ofReply:1];
  v61 = [MEMORY[0x1E695DFD8] setWithObjects:{objc_opt_class(), 0}];
  [v47 setClasses:v61 forSelector:sel_messageObjectIDsForSearchableItemIdentifiers_completionHandler_ argumentIndex:2 ofReply:1];

  [v47 setClasses:v38 forSelector:sel_noteViewOfRemoteContentLinks_ argumentIndex:0 ofReply:0];
  [v47 setClasses:v89 forSelector:sel_getRemoteContentURLInfoOrderedBy_inReverseOrder_limit_completionHandler_ argumentIndex:0 ofReply:1];
  [v47 setClasses:v89 forSelector:sel_getRemoteContentURLInfoOrderedBy_inReverseOrder_limit_completionHandler_ argumentIndex:1 ofReply:1];
  v62 = [MEMORY[0x1E695DFD8] setWithObjects:{objc_opt_class(), 0}];
  [v47 setClasses:v62 forSelector:sel_parseRemoteContentURLsFromMessageWithObjectID_requestID_completionHandler_ argumentIndex:0 ofReply:0];

  [v47 setClasses:v38 forSelector:sel_parseRemoteContentURLsFromMessageWithObjectID_requestID_completionHandler_ argumentIndex:0 ofReply:1];
  v63 = MEMORY[0x1E695DFD8];
  v64 = objc_opt_class();
  v65 = [v63 setWithObjects:{v64, objc_opt_class(), 0}];
  [v47 setClasses:v65 forSelector:sel_requestAttachmentMetadataForMessageIDs_completionHandler_ argumentIndex:0 ofReply:1];

  v66 = MEMORY[0x1E695DFD8];
  v67 = objc_opt_class();
  v68 = [v66 setWithObjects:{v67, objc_opt_class(), 0}];
  [v47 setClasses:v68 forSelector:sel_requestRichLinkURLsForMessageIDs_completionHandler_ argumentIndex:0 ofReply:1];

  v69 = MEMORY[0x1E695DFD8];
  v70 = objc_opt_class();
  v71 = [v69 setWithObjects:{v70, objc_opt_class(), 0}];
  [v47 setClasses:v71 forSelector:sel_updateLastSeenDate_andDisplayDate_forBusinessWithEmailAddress_category_ argumentIndex:2 ofReply:0];

  v72 = MEMORY[0x1E695DFD8];
  v73 = objc_opt_class();
  v74 = [v72 setWithObjects:{v73, objc_opt_class(), 0}];
  [v47 setClasses:v74 forSelector:sel_reportIncorrectBusinessForAddress_isBusinessConnectGrouping_fromClassName_ argumentIndex:0 ofReply:0];

  v75 = MEMORY[0x1E695DFD8];
  v76 = objc_opt_class();
  v77 = [v75 setWithObjects:{v76, objc_opt_class(), 0}];
  [v47 setClasses:v77 forSelector:sel_logCategoryMetadataForObjectIDs_ argumentIndex:0 ofReply:0];

  return v47;
}

+ (OS_os_log)log
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __26__EMMessageRepository_log__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = self;
  if (log_onceToken_25 != -1)
  {
    dispatch_once(&log_onceToken_25, block);
  }

  v2 = log_log_25;

  return v2;
}

void __26__EMMessageRepository_log__block_invoke(uint64_t a1)
{
  v3 = NSStringFromClass(*(a1 + 32));
  v1 = os_log_create("com.apple.email", [v3 UTF8String]);
  v2 = log_log_25;
  log_log_25 = v1;
}

+ (void)addValidSortDescriptorsToEMQuery
{
  if (addValidSortDescriptorsToEMQuery_onceToken != -1)
  {
    +[EMMessageRepository addValidSortDescriptorsToEMQuery];
  }
}

void __55__EMMessageRepository_addValidSortDescriptorsToEMQuery__block_invoke()
{
  v2[4] = *MEMORY[0x1E69E9840];
  v2[0] = @"date";
  v2[1] = @"displayDate";
  v2[2] = @"readLater.date";
  v2[3] = @"sendLaterDate";
  v0 = [MEMORY[0x1E695DEC8] arrayWithObjects:v2 count:4];
  [EMQuery addValidSortDescriptorKeyPaths:v0 forTargetClass:objc_opt_class()];
  [EMQuery addValidSortDescriptorKeyPaths:v0 forTargetClass:objc_opt_class()];
  [EMQuery addValidSortDescriptorKeyPaths:v0 forTargetClass:objc_opt_class()];

  v1 = *MEMORY[0x1E69E9840];
}

- (NSArray)currentObservers
{
  os_unfair_lock_lock(&self->_observersLock);
  keyEnumerator = [(NSMapTable *)self->_wrappedObserversByActualObserver keyEnumerator];
  allObjects = [keyEnumerator allObjects];

  os_unfair_lock_unlock(&self->_observersLock);

  return allObjects;
}

+ (id)signpostLog
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __34__EMMessageRepository_signpostLog__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = self;
  if (signpostLog_onceToken_1 != -1)
  {
    dispatch_once(&signpostLog_onceToken_1, block);
  }

  v2 = signpostLog_log_1;

  return v2;
}

void __34__EMMessageRepository_signpostLog__block_invoke(uint64_t a1)
{
  v3 = NSStringFromClass(*(a1 + 32));
  v1 = os_log_create("com.apple.email.signposts", [v3 UTF8String]);
  v2 = signpostLog_log_1;
  signpostLog_log_1 = v1;
}

- (unint64_t)signpostID
{
  signpostLog = [objc_opt_class() signpostLog];
  v4 = os_signpost_id_make_with_pointer(signpostLog, self);

  return v4;
}

- (EMMessageRepository)initWithRemoteConnection:(id)connection mailboxRepository:(id)repository vipManager:(id)manager
{
  connectionCopy = connection;
  repositoryCopy = repository;
  managerCopy = manager;
  v32.receiver = self;
  v32.super_class = EMMessageRepository;
  v11 = [(EMRepository *)&v32 initWithRemoteConnection:connectionCopy];
  v12 = v11;
  if (v11)
  {
    objc_storeStrong(&v11->_vipManager, manager);
    objc_storeStrong(&v12->_mailboxRepository, repository);
    v12->_messageListItemCacheLock._os_unfair_lock_opaque = 0;
    strongToWeakObjectsMapTable = [MEMORY[0x1E696AD18] strongToWeakObjectsMapTable];
    observedMessageListItemCache = v12->_observedMessageListItemCache;
    v12->_observedMessageListItemCache = strongToWeakObjectsMapTable;

    strongToWeakObjectsMapTable2 = [MEMORY[0x1E696AD18] strongToWeakObjectsMapTable];
    unobservedMessageListItemCache = v12->_unobservedMessageListItemCache;
    v12->_unobservedMessageListItemCache = strongToWeakObjectsMapTable2;

    v12->_observersLock._os_unfair_lock_opaque = 0;
    weakToWeakObjectsMapTable = [MEMORY[0x1E696AD18] weakToWeakObjectsMapTable];
    wrappedObserversByActualObserver = v12->_wrappedObserversByActualObserver;
    v12->_wrappedObserversByActualObserver = weakToWeakObjectsMapTable;

    weakObjectsHashTable = [MEMORY[0x1E696AC70] weakObjectsHashTable];
    recoverableObservers = v12->_recoverableObservers;
    v12->_recoverableObservers = weakObjectsHashTable;

    v21 = objc_alloc_init(MEMORY[0x1E695DEE0]);
    queryCountCache = v12->_queryCountCache;
    v12->_queryCountCache = v21;

    v23 = objc_alloc_init(MEMORY[0x1E699B868]);
    remoteContentCachePromise = v12->_remoteContentCachePromise;
    v12->_remoteContentCachePromise = v23;

    v25 = objc_alloc_init(MEMORY[0x1E699B7E0]);
    brandIndicatorsCache = v12->_brandIndicatorsCache;
    v12->_brandIndicatorsCache = v25;

    defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
    [defaultCenter addObserver:v12 selector:sel__blockedSendersDidChange_ name:@"EMBlockedSenderManagerBlockedListDidChangeNotification" object:0];
    [defaultCenter addObserver:v12 selector:sel__vipsDidChange_ name:@"VIPsDidChange" object:v12->_vipManager];
    [objc_opt_class() addValidSortDescriptorsToEMQuery];
    objc_initWeak(&location, v12);
    v29[0] = MEMORY[0x1E69E9820];
    v29[1] = 3221225472;
    v29[2] = __77__EMMessageRepository_initWithRemoteConnection_mailboxRepository_vipManager___block_invoke;
    v29[3] = &unk_1E826C070;
    objc_copyWeak(&v30, &location);
    [connectionCopy addRecoveryHandler:v29];
    objc_destroyWeak(&v30);
    objc_destroyWeak(&location);
  }

  return v12;
}

void __77__EMMessageRepository_initWithRemoteConnection_mailboxRepository_vipManager___block_invoke(uint64_t a1)
{
  v21 = *MEMORY[0x1E69E9840];
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = WeakRetained;
  if (WeakRetained)
  {
    os_unfair_lock_lock(WeakRetained + 16);
    v3 = +[EMMessageRepository log];
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      v4 = [*&v2[8]._os_unfair_lock_opaque count];
      *buf = 134218240;
      v18 = v2;
      v19 = 2048;
      v20 = v4;
      _os_log_impl(&dword_1C6655000, v3, OS_LOG_TYPE_DEFAULT, "<%p> Recovering connection, moving %lu observed cached items to unobserved cache.", buf, 0x16u);
    }

    v14 = 0u;
    v15 = 0u;
    v12 = 0u;
    v13 = 0u;
    v5 = *&v2[8]._os_unfair_lock_opaque;
    v6 = [v5 countByEnumeratingWithState:&v12 objects:v16 count:16];
    if (v6)
    {
      v7 = *v13;
      do
      {
        for (i = 0; i != v6; ++i)
        {
          if (*v13 != v7)
          {
            objc_enumerationMutation(v5);
          }

          v9 = *(*(&v12 + 1) + 8 * i);
          v10 = [*&v2[8]._os_unfair_lock_opaque objectForKey:{v9, v12}];
          [*&v2[10]._os_unfair_lock_opaque setObject:v10 forKey:v9];
        }

        v6 = [v5 countByEnumeratingWithState:&v12 objects:v16 count:16];
      }

      while (v6);
    }

    [*&v2[8]._os_unfair_lock_opaque removeAllObjects];
    os_unfair_lock_unlock(v2 + 16);
    [(os_unfair_lock_s *)v2 _notifyRecoverableObservers];
  }

  v11 = *MEMORY[0x1E69E9840];
}

- (void)dealloc
{
  [(NSURL *)self->_cacheURL stopAccessingSecurityScopedResource];
  v3.receiver = self;
  v3.super_class = EMMessageRepository;
  [(EMMessageRepository *)&v3 dealloc];
}

- (void)_notifyRecoverableObservers
{
  os_unfair_lock_lock(&self->_observersLock);
  allObjects = [(NSHashTable *)self->_recoverableObservers allObjects];
  os_unfair_lock_unlock(&self->_observersLock);
  connection = [(EMRepository *)self connection];
  [allObjects makeObjectsPerformSelector:sel_recoverWithRemoteConnection_ withObject:connection];
}

- (void)isDataAccessible:(id)accessible
{
  accessibleCopy = accessible;
  connection = [(EMRepository *)self connection];
  remoteObjectProxy = [connection remoteObjectProxy];
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __40__EMMessageRepository_isDataAccessible___block_invoke;
  v8[3] = &unk_1E826E798;
  v8[4] = self;
  v7 = accessibleCopy;
  v9 = v7;
  [remoteObjectProxy isDataAccessible:v8];
}

void __40__EMMessageRepository_isDataAccessible___block_invoke(uint64_t a1, char a2)
{
  v4 = [*(a1 + 32) observerScheduler];
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __40__EMMessageRepository_isDataAccessible___block_invoke_2;
  v5[3] = &unk_1E826E770;
  v6 = *(a1 + 40);
  v7 = a2;
  [v4 performBlock:v5];
}

- (void)didStartBlockingMainThreadForFuture:(id)future
{
  connection = [(EMRepository *)self connection];
  requestRecoveryAssertion = [connection requestRecoveryAssertion];
  connectionRecoveryAssertion = self->_connectionRecoveryAssertion;
  self->_connectionRecoveryAssertion = requestRecoveryAssertion;
}

- (void)didFinishBlockingMainThreadForFuture:(id)future
{
  [(EMRemoteConnectionRecoveryAssertion *)self->_connectionRecoveryAssertion invalidate];
  connectionRecoveryAssertion = self->_connectionRecoveryAssertion;
  self->_connectionRecoveryAssertion = 0;
}

- (void)performQuery:(id)query limit:(int64_t)limit completionHandler:(id)handler
{
  queryCopy = query;
  handlerCopy = handler;
  connection = [(EMRepository *)self connection];
  reattemptingRemoteObjectProxy = [connection reattemptingRemoteObjectProxy];
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __60__EMMessageRepository_performQuery_limit_completionHandler___block_invoke;
  v13[3] = &unk_1E826D218;
  v13[4] = self;
  v12 = handlerCopy;
  v14 = v12;
  [reattemptingRemoteObjectProxy performQuery:queryCopy limit:limit completionHandler:v13];
}

void __60__EMMessageRepository_performQuery_limit_completionHandler___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  [*(a1 + 32) prepareRepositoryObjects:v5];
  v7 = [*(a1 + 32) observerScheduler];
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __60__EMMessageRepository_performQuery_limit_completionHandler___block_invoke_2;
  v10[3] = &unk_1E826E7C0;
  v13 = *(a1 + 40);
  v8 = v5;
  v11 = v8;
  v9 = v6;
  v12 = v9;
  [v7 performBlock:v10];
}

- (void)performCountQuery:(id)query completionHandler:(id)handler
{
  queryCopy = query;
  handlerCopy = handler;
  objc_initWeak(&location, self);
  connection = [(EMRepository *)self connection];
  reattemptingRemoteObjectProxy = [connection reattemptingRemoteObjectProxy];
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __59__EMMessageRepository_performCountQuery_completionHandler___block_invoke;
  v11[3] = &unk_1E826E7E8;
  objc_copyWeak(&v13, &location);
  v10 = handlerCopy;
  v12 = v10;
  [reattemptingRemoteObjectProxy performCountQuery:queryCopy completionHandler:v11];

  objc_destroyWeak(&v13);
  objc_destroyWeak(&location);
}

void __59__EMMessageRepository_performCountQuery_completionHandler___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v8 = WeakRetained;
  if (WeakRetained)
  {
    v9 = [WeakRetained observerScheduler];
    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v10[2] = __59__EMMessageRepository_performCountQuery_completionHandler___block_invoke_2;
    v10[3] = &unk_1E826E7C0;
    v13 = *(a1 + 32);
    v11 = v5;
    v12 = v6;
    [v9 performBlock:v10];
  }
}

- (id)messageListItemsForObjectIDs:(id)ds
{
  v3 = [(EMMessageRepository *)self messageListItemsForObjectIDs:ds observationIdentifier:0];

  return v3;
}

- (id)messageListItemsForObjectIDs:(id)ds observationIdentifier:(id)identifier
{
  v4 = [(EMMessageRepository *)self _messageListItemsForObjectIDs:ds observationIdentifier:identifier checkCache:1];

  return v4;
}

- (id)_messageListItemsForObjectIDs:(id)ds observationIdentifier:(id)identifier checkCache:(BOOL)cache
{
  v47 = *MEMORY[0x1E69E9840];
  dsCopy = ds;
  identifierCopy = identifier;
  v8 = _os_activity_create(&dword_1C6655000, "[EMMessageRepository _messageListItemsForObjectIDs:observationIdentifier:checkCache:]", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
  state.opaque[0] = 0xAAAAAAAAAAAAAAAALL;
  state.opaque[1] = 0xAAAAAAAAAAAAAAAALL;
  os_activity_scope_enter(v8, &state);
  v27 = objc_alloc_init(MEMORY[0x1E695DF90]);
  array = [MEMORY[0x1E695DF70] array];
  array2 = [MEMORY[0x1E695DF70] array];
  v37[0] = MEMORY[0x1E69E9820];
  v37[1] = 3221225472;
  v37[2] = __86__EMMessageRepository__messageListItemsForObjectIDs_observationIdentifier_checkCache___block_invoke;
  v37[3] = &unk_1E826E810;
  v37[4] = self;
  cacheCopy = cache;
  v10 = array2;
  v38 = v10;
  v11 = array;
  v39 = v11;
  v12 = v27;
  v40 = v12;
  v28 = [dsCopy ef_map:v37];
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __86__EMMessageRepository__messageListItemsForObjectIDs_observationIdentifier_checkCache___block_invoke_249;
  aBlock[3] = &unk_1E826E8B0;
  aBlock[4] = self;
  v13 = v12;
  v35 = v13;
  v14 = v11;
  v36 = v14;
  v15 = _Block_copy(aBlock);
  if ([v14 count] || objc_msgSend(v10, "count"))
  {
    v16 = +[EMDaemonInterfaceRequest uniqueRequestID];
    v17 = +[EMMessageRepository log];
    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
    {
      v18 = [(EMMessageRepository *)self _descriptionStringForObjectIDs:v14];
      *buf = 134218242;
      selfCopy = self;
      v45 = 2114;
      v46 = v18;
      _os_log_impl(&dword_1C6655000, v17, OS_LOG_TYPE_DEFAULT, "<%p> Requesting message list items: %{public}@", buf, 0x16u);
    }

    v19 = +[EMDaemonInterfaceRequest signpostLog];
    v20 = v19;
    if (v16 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v19))
    {
      v21 = [MEMORY[0x1E699B858] bucketMessageCount:{objc_msgSend(v14, "count")}];
      *buf = 67240192;
      LODWORD(selfCopy) = v21;
      _os_signpost_emit_with_name_impl(&dword_1C6655000, v20, OS_SIGNPOST_INTERVAL_BEGIN, v16, "EMMessageRepositoryMessageListItems", "Requesting messages for object IDs %{public, name=count}u", buf, 8u);
    }

    connection = [(EMRepository *)self connection];
    reattemptingRemoteObjectProxy = [connection reattemptingRemoteObjectProxy];
    v31[0] = MEMORY[0x1E69E9820];
    v31[1] = 3221225472;
    v31[2] = __86__EMMessageRepository__messageListItemsForObjectIDs_observationIdentifier_checkCache___block_invoke_262;
    v31[3] = &unk_1E826E8D8;
    v32 = v15;
    v33 = v16;
    [reattemptingRemoteObjectProxy messageListItemsForObjectIDs:v14 requestID:v16 observationIdentifier:identifierCopy loadSummaryForAdditionalObjectIDs:v10 completionHandler:v31];
  }

  os_activity_scope_leave(&state);
  v24 = *MEMORY[0x1E69E9840];

  return v28;
}

id __86__EMMessageRepository__messageListItemsForObjectIDs_observationIdentifier_checkCache___block_invoke(uint64_t a1, void *a2)
{
  v22 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = [MEMORY[0x1E699B868] promise];
  v5 = *(a1 + 32);
  v6 = [v4 future];
  [v6 setDelegate:v5];

  if (*(a1 + 64) == 1 && ([*(a1 + 32) _existingObservedItemForObjectID:v3], v7 = objc_claimAutoreleasedReturnValue(), (v8 = v7) != 0))
  {
    v9 = [v7 summary];

    if (!v9)
    {
      v10 = *(a1 + 40);
      v11 = [v8 displayMessageObjectID];
      [v10 addObject:v11];
    }

    v12 = +[EMMessageRepository log];
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      v13 = *(a1 + 32);
      v18 = 134218242;
      v19 = v13;
      v20 = 2114;
      v21 = v8;
      _os_log_impl(&dword_1C6655000, v12, OS_LOG_TYPE_DEFAULT, "<%p> Returning cached result: %{public}@", &v18, 0x16u);
    }

    v14 = v8;
    [v4 finishWithResult:v8];
  }

  else
  {
    [*(a1 + 48) addObject:v3];
    v14 = 0;
    [*(a1 + 56) setObject:v4 forKeyedSubscript:v3];
  }

  v15 = [v4 future];

  v16 = *MEMORY[0x1E69E9840];

  return v15;
}

void __86__EMMessageRepository__messageListItemsForObjectIDs_observationIdentifier_checkCache___block_invoke_249(id *a1, void *a2, void *a3, char a4, uint64_t a5)
{
  v9 = a2;
  v10 = a3;
  if (+[EMForceBlankCellsController shouldBlockXPCQueue])
  {
    [EMForceBlankCellsController blockForRandomDurationWithMessage:@"Block _messageListItemsForObjectIDs"];
  }

  v11 = [a1[4] observerScheduler];
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __86__EMMessageRepository__messageListItemsForObjectIDs_observationIdentifier_checkCache___block_invoke_2;
  v14[3] = &unk_1E826E888;
  v14[4] = a1[4];
  v12 = v9;
  v15 = v12;
  v16 = a1[5];
  v13 = v10;
  v20 = a4;
  v17 = v13;
  v19 = a5;
  v18 = a1[6];
  [v11 performBlock:v14];
}

void __86__EMMessageRepository__messageListItemsForObjectIDs_observationIdentifier_checkCache___block_invoke_2(uint64_t a1)
{
  v45 = *MEMORY[0x1E69E9840];
  v2 = (a1 + 40);
  [*(a1 + 32) prepareRepositoryObjects:*(a1 + 40)];
  v27 = [*(v2 - 1) currentObservers];
  v34 = 0u;
  v35 = 0u;
  v32 = 0u;
  v33 = 0u;
  obj = *v2;
  v3 = [obj countByEnumeratingWithState:&v32 objects:v44 count:16];
  if (v3)
  {
    v26 = *v33;
    do
    {
      for (i = 0; i != v3; ++i)
      {
        if (*v33 != v26)
        {
          objc_enumerationMutation(obj);
        }

        v5 = *(*(&v32 + 1) + 8 * i);
        v6 = [*(a1 + 32) _cachedItemForItem:v5 observers:v27 validationBlock:0];

        v7 = *(a1 + 48);
        v8 = [v6 objectID];
        v9 = [v7 objectForKeyedSubscript:v8];

        v10 = +[EMMessageRepository log];
        if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
        {
          v11 = *(a1 + 32);
          v12 = [v6 itemID];
          v13 = [v9 future];
          v14 = [v6 ef_publicDescription];
          *buf = 134218754;
          *&buf[4] = v11;
          *&buf[12] = 2114;
          *&buf[14] = v12;
          *&buf[22] = 2114;
          v41 = v13;
          v42 = 2114;
          v43 = v14;
          _os_log_impl(&dword_1C6655000, v10, OS_LOG_TYPE_DEFAULT, "<%p> Finishing future with message list item: %{public}@ -> %{public}@:\n%{public}@", buf, 0x2Au);
        }

        [v9 finishWithResult:v6];
      }

      v3 = [obj countByEnumeratingWithState:&v32 objects:v44 count:16];
    }

    while (v3);
  }

  v29[0] = MEMORY[0x1E69E9820];
  v29[1] = 3221225472;
  v29[2] = __86__EMMessageRepository__messageListItemsForObjectIDs_observationIdentifier_checkCache___block_invoke_252;
  v29[3] = &unk_1E826E838;
  v15 = *(a1 + 56);
  v16 = *(a1 + 48);
  v17 = *(a1 + 32);
  v30 = v16;
  v31 = v17;
  [v15 enumerateKeysAndObjectsUsingBlock:v29];
  *buf = 0;
  *&buf[8] = buf;
  *&buf[16] = 0x2020000000;
  v41 = 0;
  v18 = *(a1 + 48);
  v28[0] = MEMORY[0x1E69E9820];
  v28[1] = 3221225472;
  v28[2] = __86__EMMessageRepository__messageListItemsForObjectIDs_observationIdentifier_checkCache___block_invoke_254;
  v28[3] = &unk_1E826E860;
  v28[4] = *(a1 + 32);
  v28[5] = buf;
  [v18 enumerateKeysAndObjectsUsingBlock:v28];
  if (*(a1 + 80) == 1)
  {
    v19 = +[EMDaemonInterfaceRequest signpostLog];
    v20 = v19;
    v21 = *(a1 + 72);
    if (v21 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v19))
    {
      v22 = [MEMORY[0x1E699B858] bucketMessageCount:{objc_msgSend(*(a1 + 64), "count")}];
      v23 = [MEMORY[0x1E699B858] bucketMessageCount:*(*&buf[8] + 24)];
      *v36 = 67240448;
      v37 = v22;
      v38 = 1026;
      v39 = v23;
      _os_signpost_emit_with_name_impl(&dword_1C6655000, v20, OS_SIGNPOST_INTERVAL_END, v21, "EMMessageRepositoryMessageListItems", "Request finished %{public, name=results}u %{public, name=orphaned}u", v36, 0xEu);
    }
  }

  _Block_object_dispose(buf, 8);

  v24 = *MEMORY[0x1E69E9840];
}

void __86__EMMessageRepository__messageListItemsForObjectIDs_observationIdentifier_checkCache___block_invoke_252(uint64_t a1, void *a2, void *a3)
{
  v18 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  v7 = [*(a1 + 32) objectForKeyedSubscript:v5];
  v8 = +[EMMessageRepository log];
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v9 = *(a1 + 40);
    v10 = [v7 future];
    v12 = 134218498;
    v13 = v9;
    v14 = 2114;
    v15 = v5;
    v16 = 2114;
    v17 = v10;
    _os_log_impl(&dword_1C6655000, v8, OS_LOG_TYPE_DEFAULT, "<%p> Finishing future with error: %{public}@ -> %{public}@", &v12, 0x20u);
  }

  [v7 finishWithError:v6];
  v11 = *MEMORY[0x1E69E9840];
}

void __86__EMMessageRepository__messageListItemsForObjectIDs_observationIdentifier_checkCache___block_invoke_254(uint64_t a1, void *a2, void *a3)
{
  v20 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  v7 = [v6 future];
  v8 = [v7 isFinished];

  if ((v8 & 1) == 0)
  {
    ++*(*(*(a1 + 40) + 8) + 24);
    v9 = +[EMMessageRepository log];
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v10 = *(a1 + 32);
      v11 = [v6 future];
      v14 = 134218498;
      v15 = v10;
      v16 = 2114;
      v17 = v5;
      v18 = 2114;
      v19 = v11;
      _os_log_impl(&dword_1C6655000, v9, OS_LOG_TYPE_DEFAULT, "<%p> Found an orphaned promise. Finishing it with an error: %{public}@ -> %{public}@", &v14, 0x20u);
    }

    v12 = [MEMORY[0x1E696ABC0] em_internalErrorWithReason:@"Found an orphaned promise"];
    [v6 finishWithError:v12];
  }

  v13 = *MEMORY[0x1E69E9840];
}

- (id)_descriptionStringForObjectIDs:(void *)ds
{
  v3 = a2;
  v4 = v3;
  if (ds)
  {
    ds = [v3 ef_shortDescriptionStringWithLimit:20];
  }

  return ds;
}

void __86__EMMessageRepository__messageListItemsForObjectIDs_observationIdentifier_checkCache___block_invoke_262(uint64_t a1, void *a2, void *a3)
{
  v7 = a2;
  v5 = a3;
  v6 = *(a1 + 32);
  if (v6)
  {
    (*(v6 + 16))(v6, v7, v5, 1, *(a1 + 40));
  }
}

- (id)messageForObjectID:(id)d
{
  v29 = *MEMORY[0x1E69E9840];
  dCopy = d;
  v5 = _os_activity_create(&dword_1C6655000, "[EMMessageRepository messageForObjectID:]", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
  state.opaque[0] = 0xAAAAAAAAAAAAAAAALL;
  state.opaque[1] = 0xAAAAAAAAAAAAAAAALL;
  os_activity_scope_enter(v5, &state);
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    promise = [MEMORY[0x1E699B868] promise];
    future = [promise future];
    [future setDelegate:self];

    v8 = [(EMMessageRepository *)self _existingObservedItemForObjectID:dCopy];
    if (v8 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
    {
      [promise finishWithResult:v8];
    }

    else
    {
      v10 = +[EMDaemonInterfaceRequest uniqueRequestID];
      v11 = +[EMDaemonInterfaceRequest signpostLog];
      v12 = v11;
      if (v10 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v11))
      {
        *buf = 138543362;
        v28 = dCopy;
        _os_signpost_emit_with_name_impl(&dword_1C6655000, v12, OS_SIGNPOST_INTERVAL_BEGIN, v10, "EMMessageRepositoryMessageListItems", "Requesting message %{public, name=objectID}@", buf, 0xCu);
      }

      connection = [(EMRepository *)self connection];
      reattemptingRemoteObjectProxy = [connection reattemptingRemoteObjectProxy];
      v26 = dCopy;
      v15 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v26 count:1];
      v18 = MEMORY[0x1E69E9820];
      v19 = 3221225472;
      v20 = __42__EMMessageRepository_messageForObjectID___block_invoke;
      v21 = &unk_1E826E920;
      selfCopy = self;
      v23 = promise;
      v24 = v10;
      [reattemptingRemoteObjectProxy messageListItemsForObjectIDs:v15 requestID:v10 observationIdentifier:0 loadSummaryForAdditionalObjectIDs:MEMORY[0x1E695E0F0] completionHandler:&v18];
    }

    future2 = [promise future];
  }

  else
  {
    future2 = 0;
  }

  os_activity_scope_leave(&state);

  v16 = *MEMORY[0x1E69E9840];

  return future2;
}

void __42__EMMessageRepository_messageForObjectID___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v25[1] = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  v7 = [v5 firstObject];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if (isKindOfClass)
  {
    v9 = [v5 firstObject];
    v10 = *(a1 + 32);
    v25[0] = v9;
    v11 = [MEMORY[0x1E695DEC8] arrayWithObjects:v25 count:1];
    [v10 prepareRepositoryObjects:v11];

    v12 = *(a1 + 32);
    v13 = [v12 currentObservers];
    v14 = [v12 _cachedItemForItem:v9 observers:v13 validationBlock:&__block_literal_global_266];

    v15 = [*(a1 + 32) trampoliningObserverForObserver:*(a1 + 40)];
    [v15 finishWithResult:v14];

    v16 = 1;
  }

  else
  {
    v17 = [v6 allValues];
    v18 = [v17 firstObject];

    if (!v18)
    {
      v18 = [MEMORY[0x1E696ABC0] em_internalErrorWithReason:@"Failed to get message for objectID"];
    }

    v19 = [*(a1 + 32) trampoliningObserverForObserver:*(a1 + 40)];
    [v19 finishWithError:v18];

    v16 = 0;
  }

  v20 = +[EMDaemonInterfaceRequest signpostLog];
  v21 = v20;
  v22 = *(a1 + 48);
  if (v22 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v20))
  {
    v24[0] = 67240192;
    v24[1] = v16;
    _os_signpost_emit_with_name_impl(&dword_1C6655000, v21, OS_SIGNPOST_INTERVAL_END, v22, "EMMessageRepositoryMessageListItems", "Request finished %{public, name=success}d", v24, 8u);
  }

  v23 = *MEMORY[0x1E69E9840];
}

uint64_t __42__EMMessageRepository_messageForObjectID___block_invoke_2(uint64_t a1, void *a2)
{
  v2 = a2;
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  return isKindOfClass & 1;
}

- (id)_cachedItemForItem:(id)item observers:(id)observers validationBlock:(id)block
{
  v45 = *MEMORY[0x1E69E9840];
  itemCopy = item;
  observersCopy = observers;
  blockCopy = block;
  v11 = itemCopy;
  objectID = [v11 objectID];
  v13 = [(EMMessageRepository *)self _anyObserver:observersCopy containsObjectID:objectID];

  os_unfair_lock_lock(&self->_messageListItemCacheLock);
  if (v13)
  {
    v14 = [(EMMessageRepository *)self _observedCachedItemForItem:v11 itemDescriptionForLogging:@"item" validationBlock:blockCopy];
  }

  else
  {
    unobservedMessageListItemCache = self->_unobservedMessageListItemCache;
    objectID2 = [v11 objectID];
    v17 = [(NSMapTable *)unobservedMessageListItemCache objectForKey:objectID2];

    if (v17 && (!blockCopy || blockCopy[2](blockCopy, v17)))
    {
      v18 = +[EMMessageRepository log];
      if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
      {
        v19 = objc_opt_class();
        v20 = NSStringFromClass(v19);
        v21 = objc_opt_class();
        v22 = NSStringFromClass(v21);
        objectID3 = [v11 objectID];
        v33 = 134219266;
        selfCopy2 = self;
        v35 = 2114;
        v36 = v20;
        v37 = 2048;
        v38 = v17;
        v39 = 2114;
        v40 = v22;
        v41 = 2048;
        v42 = v11;
        v43 = 2114;
        v44 = objectID3;
        _os_log_impl(&dword_1C6655000, v18, OS_LOG_TYPE_DEFAULT, "<%p> Cached unobserved item <%{public}@: %p> exists for item <%{public}@: %p> with objectID %{public}@.", &v33, 0x3Eu);
      }

      if ([v17 conformsToProtocol:&unk_1F46204B0])
      {
        v24 = [v11 changeFrom:v17];
        [v24 applyToMessageListItem:v17];
      }

      v14 = v17;
      objectID5 = v11;
    }

    else
    {
      v26 = +[EMMessageRepository log];
      if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
      {
        v27 = objc_opt_class();
        v28 = NSStringFromClass(v27);
        objectID4 = [v11 objectID];
        v33 = 134218754;
        selfCopy2 = self;
        v35 = 2114;
        v36 = v28;
        v37 = 2048;
        v38 = v11;
        v39 = 2114;
        v40 = objectID4;
        _os_log_impl(&dword_1C6655000, v26, OS_LOG_TYPE_DEFAULT, "<%p> No cached item exists for item <%{public}@: %p> with objectID %{public}@. Adding to unobserved cache.", &v33, 0x2Au);
      }

      v30 = self->_unobservedMessageListItemCache;
      objectID5 = [v11 objectID];
      [(NSMapTable *)v30 setObject:v11 forKey:objectID5];
      v14 = v11;
    }
  }

  os_unfair_lock_unlock(&self->_messageListItemCacheLock);

  v31 = *MEMORY[0x1E69E9840];

  return v14;
}

- (id)_observedCachedItemForItem:(id)item itemDescriptionForLogging:(id)logging validationBlock:(id)block
{
  v57 = *MEMORY[0x1E69E9840];
  itemCopy = item;
  loggingCopy = logging;
  blockCopy = block;
  v10 = itemCopy;
  observedMessageListItemCache = self->_observedMessageListItemCache;
  objectID = [v10 objectID];
  v13 = [(NSMapTable *)observedMessageListItemCache objectForKey:objectID];

  if (v13 && (!blockCopy || blockCopy[2](blockCopy, v13)))
  {
    v14 = +[EMMessageRepository log];
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      v15 = objc_opt_class();
      v16 = NSStringFromClass(v15);
      v17 = objc_opt_class();
      v18 = NSStringFromClass(v17);
      objectID2 = [v10 objectID];
      *buf = 134219522;
      selfCopy3 = self;
      v45 = 2114;
      v46 = v16;
      v47 = 2048;
      v48 = v13;
      v49 = 2114;
      v50 = loggingCopy;
      v51 = 2114;
      v52 = v18;
      v53 = 2048;
      v54 = v10;
      v55 = 2114;
      v56 = objectID2;
      _os_log_impl(&dword_1C6655000, v14, OS_LOG_TYPE_DEFAULT, "<%p> Cached observed item <%{public}@: %p> exists for %{public}@ <%{public}@: %p> with objectID %{public}@", buf, 0x48u);
    }

    v20 = v13;
    objectID7 = v10;
    v22 = v20;
  }

  else
  {
    unobservedMessageListItemCache = self->_unobservedMessageListItemCache;
    objectID3 = [v10 objectID];
    v25 = [(NSMapTable *)unobservedMessageListItemCache objectForKey:objectID3];

    if (v25 && (!blockCopy || blockCopy[2](blockCopy, v25)))
    {
      v26 = +[EMMessageRepository log];
      if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
      {
        v27 = objc_opt_class();
        v28 = NSStringFromClass(v27);
        v29 = objc_opt_class();
        v30 = NSStringFromClass(v29);
        objectID4 = [v10 objectID];
        *buf = 134219522;
        selfCopy3 = self;
        v45 = 2114;
        v46 = v28;
        v47 = 2048;
        v48 = v25;
        v49 = 2114;
        v50 = loggingCopy;
        v51 = 2114;
        v52 = v30;
        v53 = 2048;
        v54 = v10;
        v55 = 2114;
        v56 = objectID4;
        _os_log_impl(&dword_1C6655000, v26, OS_LOG_TYPE_DEFAULT, "<%p> No cached observed item, cached unobserved item <%{public}@: %p> exists for %{public}@ <%{public}@: %p> with objectID %{public}@. Moving to observed cache.", buf, 0x48u);
      }

      v20 = v25;
      v25 = v10;
      v22 = v20;
    }

    else
    {
      v32 = +[EMMessageRepository log];
      if (os_log_type_enabled(v32, OS_LOG_TYPE_DEFAULT))
      {
        v33 = objc_opt_class();
        v34 = NSStringFromClass(v33);
        objectID5 = [v10 objectID];
        *buf = 134219010;
        selfCopy3 = self;
        v45 = 2114;
        v46 = loggingCopy;
        v47 = 2114;
        v48 = v34;
        v49 = 2048;
        v50 = v10;
        v51 = 2114;
        v52 = objectID5;
        _os_log_impl(&dword_1C6655000, v32, OS_LOG_TYPE_DEFAULT, "<%p> No cached item exists for %{public}@ <%{public}@: %p> with objectID %{public}@. Adding to observed cache.", buf, 0x34u);
      }

      v20 = 0;
      v22 = v10;
    }

    v36 = self->_observedMessageListItemCache;
    objectID6 = [v10 objectID];
    [(NSMapTable *)v36 setObject:v22 forKey:objectID6];

    v38 = self->_unobservedMessageListItemCache;
    objectID7 = [v10 objectID];
    [(NSMapTable *)v38 removeObjectForKey:objectID7];
  }

  if ([v20 conformsToProtocol:&unk_1F46204B0])
  {
    v39 = [v10 changeFrom:v20];
    [v39 applyToMessageListItem:v20];
  }

  v40 = *MEMORY[0x1E69E9840];

  return v22;
}

- (id)_existingObservedItemForObjectID:(id)d
{
  dCopy = d;
  os_unfair_lock_lock(&self->_messageListItemCacheLock);
  v5 = [(NSMapTable *)self->_observedMessageListItemCache objectForKey:dCopy];
  os_unfair_lock_unlock(&self->_messageListItemCacheLock);

  return v5;
}

- (BOOL)_anyObserver:(id)observer containsObjectID:(id)d
{
  dCopy = d;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __53__EMMessageRepository__anyObserver_containsObjectID___block_invoke;
  v8[3] = &unk_1E826E948;
  v9 = dCopy;
  v6 = dCopy;
  LOBYTE(observer) = [observer ef_any:v8];

  return observer;
}

- (id)performQuery:(id)query withObserver:(id)observer
{
  queryCopy = query;
  observerCopy = observer;
  v9 = [[_EMMessageRepositoryQueryObserver alloc] initWithRepository:self query:queryCopy observer:observerCopy];
  os_unfair_lock_lock(&self->_observersLock);
  v10 = NSAllMapTableKeys(self->_wrappedObserversByActualObserver);
  [(NSMapTable *)self->_wrappedObserversByActualObserver setObject:v9 forKey:observerCopy];
  [(NSHashTable *)self->_recoverableObservers addObject:v9];
  os_unfair_lock_unlock(&self->_observersLock);
  v11 = MEMORY[0x1E696AEC0];
  v12 = NSStringFromSelector(a2);
  v13 = NSStringFromClass([queryCopy targetClass]);
  v14 = [v11 stringWithFormat:@"%@ query.targetClass:%@", v12, v13];

  v15 = [objc_alloc(MEMORY[0x1E699B7F8]) initWithLabel:v14];
  [v15 addCancelable:v9];
  v18[0] = MEMORY[0x1E69E9820];
  v18[1] = 3221225472;
  v18[2] = __49__EMMessageRepository_performQuery_withObserver___block_invoke;
  v18[3] = &unk_1E826C098;
  v18[4] = self;
  [v15 addCancelationBlock:v18];
  connection = [(EMRepository *)self connection];
  [(_EMMessageRepositoryQueryObserver *)v9 performWithRemoteConnection:connection];

  return v15;
}

void __49__EMMessageRepository_performQuery_withObserver___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = [v1 currentObservers];
  [v1 _removeItemsFromObservedItemsCacheIfNotObservedByObservers:?];
}

- (void)refreshQueryWithObserver:(id)observer
{
  observerCopy = observer;
  currentObservers = [(EMMessageRepository *)self currentObservers];
  v5 = [currentObservers mutableCopy];

  [v5 removeObject:observerCopy];
  [(EMMessageRepository *)self _removeItemsFromObservedItemsCacheIfNotObservedByObservers:v5];
  os_unfair_lock_lock(&self->_observersLock);
  v6 = [(NSMapTable *)self->_wrappedObserversByActualObserver objectForKey:observerCopy];
  os_unfair_lock_unlock(&self->_observersLock);
  connection = [(EMRepository *)self connection];
  [v6 refreshQueryWithRemoteConnection:connection];
}

- (void)_removeItemsFromObservedItemsCacheIfNotObservedByObservers:(id)observers
{
  v28 = *MEMORY[0x1E69E9840];
  observersCopy = observers;
  os_unfair_lock_lock(&self->_messageListItemCacheLock);
  dictionaryRepresentation = [(NSMapTable *)self->_observedMessageListItemCache dictionaryRepresentation];
  os_unfair_lock_unlock(&self->_messageListItemCacheLock);
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __82__EMMessageRepository__removeItemsFromObservedItemsCacheIfNotObservedByObservers___block_invoke;
  v15[3] = &unk_1E826E970;
  v15[4] = self;
  v6 = observersCopy;
  v16 = v6;
  v7 = [dictionaryRepresentation ef_filter:v15];
  os_unfair_lock_lock(&self->_messageListItemCacheLock);
  v8 = +[EMMessageRepository log];
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v9 = [(NSMapTable *)self->_observedMessageListItemCache count];
    v10 = v7;
    v20[0] = 0;
    v20[1] = v20;
    v20[2] = 0x2020000000;
    v21 = 3;
    v11 = [objc_alloc(MEMORY[0x1E696AD60]) initWithString:@"{\n"];
    v17[0] = MEMORY[0x1E69E9820];
    v17[1] = 3221225472;
    v17[2] = __descriptionForObjectIDToItemDictionary_block_invoke;
    v17[3] = &unk_1E826EF08;
    v12 = v11;
    v18 = v12;
    v19 = v20;
    [v10 enumerateKeysAndObjectsUsingBlock:v17];
    [v12 appendString:@"}"];

    _Block_object_dispose(v20, 8);
    *buf = 134218498;
    selfCopy = self;
    v24 = 2048;
    v25 = v9;
    v26 = 2114;
    v27 = v12;
    _os_log_impl(&dword_1C6655000, v8, OS_LOG_TYPE_DEFAULT, "<%p> Moving %lu observed cached items to unobserved cache: %{public}@", buf, 0x20u);
  }

  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __82__EMMessageRepository__removeItemsFromObservedItemsCacheIfNotObservedByObservers___block_invoke_487;
  v14[3] = &unk_1E826E998;
  v14[4] = self;
  [v7 enumerateKeysAndObjectsUsingBlock:v14];
  os_unfair_lock_unlock(&self->_messageListItemCacheLock);

  v13 = *MEMORY[0x1E69E9840];
}

void __82__EMMessageRepository__removeItemsFromObservedItemsCacheIfNotObservedByObservers___block_invoke_487(uint64_t a1, void *a2, void *a3)
{
  v6 = a2;
  v5 = a3;
  [*(*(a1 + 32) + 40) setObject:v5 forKey:v6];
  [*(*(a1 + 32) + 32) removeObjectForKey:v6];
}

- (id)startCountingQuery:(id)query includingServerCountsForMailboxScope:(id)scope withObserver:(id)observer
{
  queryCopy = query;
  scopeCopy = scope;
  observerCopy = observer;
  v11 = [MEMORY[0x1E699B848] pairWithFirst:queryCopy second:scopeCopy];
  v12 = [[_EMMessageRepositoryCountingQueryObserver alloc] initWithRepository:self queryIdentifier:v11 includingServerCountsForMailboxScope:scopeCopy observer:observerCopy];
  os_unfair_lock_lock(&self->_observersLock);
  [(NSHashTable *)self->_recoverableObservers addObject:v12];
  os_unfair_lock_unlock(&self->_observersLock);
  v13 = objc_opt_new();
  [v13 addCancelable:v12];
  v19 = MEMORY[0x1E69E9820];
  v20 = 3221225472;
  v21 = __92__EMMessageRepository_startCountingQuery_includingServerCountsForMailboxScope_withObserver___block_invoke;
  v22 = &unk_1E826C148;
  selfCopy = self;
  v14 = v12;
  v24 = v14;
  [v13 addCancelationBlock:&v19];
  v15 = [(EMMessageRepository *)self queryCountCache:v19];
  v16 = [v15 objectForKey:v11];

  if (v16)
  {
    [observerCopy messageRepository:self query:queryCopy countDidChange:{objc_msgSend(v16, "integerValue")}];
  }

  connection = [(EMRepository *)self connection];
  [(_EMMessageRepositoryCountingQueryObserver *)v14 performWithRemoteConnection:connection];

  return v13;
}

void __92__EMMessageRepository_startCountingQuery_includingServerCountsForMailboxScope_withObserver___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  os_unfair_lock_lock(v2 + 17);
  [*(*(a1 + 32) + 56) removeObject:*(a1 + 40)];

  os_unfair_lock_unlock(v2 + 17);
}

- (void)setQueryCount:(id)count forQueryIdentifier:(id)identifier
{
  countCopy = count;
  identifierCopy = identifier;
  queryCountCache = [(EMMessageRepository *)self queryCountCache];
  [queryCountCache setObject:countCopy forKey:identifierCopy];
}

- (id)startObservingOneTimeCodes:(id)codes
{
  v23 = *MEMORY[0x1E69E9840];
  codesCopy = codes;
  v5 = +[EMMessageRepository log];
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    selfCopy2 = self;
    _os_log_impl(&dword_1C6655000, v5, OS_LOG_TYPE_DEFAULT, "<%{public}@> [OTC] startObservingOneTimeCodes", buf, 0xCu);
  }

  v6 = [[_EMOneTimeCodeObserver alloc] initWithObserver:codesCopy];
  os_unfair_lock_lock(&self->_observersLock);
  [(NSHashTable *)self->_recoverableObservers addObject:v6];
  v7 = +[EMMessageRepository log];
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543618;
    selfCopy2 = self;
    v21 = 2112;
    v22 = v6;
    _os_log_impl(&dword_1C6655000, v7, OS_LOG_TYPE_DEFAULT, "<%{public}@> [OTC] Adding recoverable one-time codes observer: %@", buf, 0x16u);
  }

  os_unfair_lock_unlock(&self->_observersLock);
  v8 = objc_opt_new();
  [v8 addCancelable:v6];
  v13 = MEMORY[0x1E69E9820];
  v14 = 3221225472;
  v15 = __50__EMMessageRepository_startObservingOneTimeCodes___block_invoke;
  v16 = &unk_1E826C148;
  selfCopy3 = self;
  v9 = v6;
  v18 = v9;
  [v8 addCancelationBlock:&v13];
  v10 = [(EMRepository *)self connection:v13];
  [(_EMOneTimeCodeObserver *)v9 performWithRemoteConnection:v10];

  v11 = *MEMORY[0x1E69E9840];

  return v8;
}

void __50__EMMessageRepository_startObservingOneTimeCodes___block_invoke(uint64_t a1)
{
  v11 = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 32);
  os_unfair_lock_lock(v2 + 17);
  v3 = +[EMMessageRepository log];
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = *(a1 + 32);
    v5 = *(a1 + 40);
    v7 = 138543618;
    v8 = v4;
    v9 = 2112;
    v10 = v5;
    _os_log_impl(&dword_1C6655000, v3, OS_LOG_TYPE_DEFAULT, "<%{public}@> [OTC] Removing recoverable one-time codes observer: %@", &v7, 0x16u);
  }

  [*(*(a1 + 32) + 56) removeObject:*(a1 + 40)];
  os_unfair_lock_unlock(v2 + 17);
  v6 = *MEMORY[0x1E69E9840];
}

- (id)requestRepresentationForMessageWithID:(id)d options:(id)options delegate:(id)delegate completionHandler:(id)handler
{
  v36 = *MEMORY[0x1E69E9840];
  dCopy = d;
  optionsCopy = options;
  delegateCopy = delegate;
  handlerCopy = handler;
  v14 = +[EMDaemonInterfaceRequest uniqueRequestID];
  v15 = +[EMDaemonInterfaceRequest signpostLog];
  v16 = v15;
  if (v14 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v15))
  {
    *buf = 134349056;
    v33 = [dCopy hash];
    _os_signpost_emit_with_name_impl(&dword_1C6655000, v16, OS_SIGNPOST_INTERVAL_BEGIN, v14, "EMMessageRepositoryMessageContentRequest", "Requesting representation for message: %{public, name=objectIdHash}lu", buf, 0xCu);
  }

  v17 = EMLogCategoryMessageLoading();
  if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543618;
    v33 = dCopy;
    v34 = 2114;
    v35 = optionsCopy;
    _os_log_impl(&dword_1C6655000, v17, OS_LOG_TYPE_DEFAULT, "Requesting content representation for message %{public}@, Options: %{public}@", buf, 0x16u);
  }

  connection = [(EMRepository *)self connection];
  v30[0] = MEMORY[0x1E69E9820];
  v30[1] = 3221225472;
  v30[2] = __96__EMMessageRepository_requestRepresentationForMessageWithID_options_delegate_completionHandler___block_invoke;
  v30[3] = &unk_1E826C738;
  v19 = handlerCopy;
  v31 = v19;
  v20 = [connection remoteObjectProxyWithErrorHandler:v30];
  v26[0] = MEMORY[0x1E69E9820];
  v26[1] = 3221225472;
  v26[2] = __96__EMMessageRepository_requestRepresentationForMessageWithID_options_delegate_completionHandler___block_invoke_2;
  v26[3] = &unk_1E826E9C0;
  v29 = v14;
  v21 = dCopy;
  v27 = v21;
  v22 = v19;
  v28 = v22;
  v23 = [v20 requestRepresentationForMessageWithID:v21 requestID:v14 options:optionsCopy delegate:delegateCopy completionHandler:v26];

  v24 = *MEMORY[0x1E69E9840];

  return v23;
}

void __96__EMMessageRepository_requestRepresentationForMessageWithID_options_delegate_completionHandler___block_invoke_2(void *a1, void *a2, void *a3, void *a4)
{
  v25 = *MEMORY[0x1E69E9840];
  v7 = a2;
  v8 = a3;
  v9 = a4;
  if (v7 && v8)
  {
    v10 = +[EMDaemonInterfaceRequest signpostLog];
    v11 = v10;
    v12 = a1[6];
    if (v12 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v10))
    {
      LOWORD(v23) = 0;
      _os_signpost_emit_with_name_impl(&dword_1C6655000, v11, OS_SIGNPOST_INTERVAL_END, v12, "EMMessageRepositoryMessageContentRequest", "Success", &v23, 2u);
    }

    v13 = EMLogCategoryMessageLoading();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      v14 = a1[4];
      v23 = 138543362;
      v24 = v14;
      _os_log_impl(&dword_1C6655000, v13, OS_LOG_TYPE_DEFAULT, "Content representation finished loading: %{public}@", &v23, 0xCu);
    }

    [v8 setDistantContentRepresentation:v7];
    (*(a1[5] + 16))();
  }

  else
  {
    v15 = +[EMDaemonInterfaceRequest signpostLog];
    v16 = v15;
    v17 = a1[6];
    if (v17 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v15))
    {
      v23 = 134349056;
      v24 = [v9 code];
      _os_signpost_emit_with_name_impl(&dword_1C6655000, v16, OS_SIGNPOST_INTERVAL_END, v17, "EMMessageRepositoryMessageContentRequest", "Failure %{public, name=errorCode}lu", &v23, 0xCu);
    }

    v18 = EMLogCategoryMessageLoading();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      v19 = a1[4];
      [v9 ef_publicDescription];
      objc_claimAutoreleasedReturnValue();
      __96__EMMessageRepository_requestRepresentationForMessageWithID_options_delegate_completionHandler___block_invoke_2_cold_1();
    }

    v20 = a1[5];
    v21 = v9;
    if (!v9)
    {
      v21 = [MEMORY[0x1E696ABC0] errorWithDomain:@"EMErrorDomain" code:2048 userInfo:0];
    }

    (*(v20 + 16))(v20, 0, v21);
    if (!v9)
    {
    }
  }

  v22 = *MEMORY[0x1E69E9840];
}

- (void)requestAttachmentURLsForMessageIDs:(id)ds completionHandler:(id)handler
{
  v21 = *MEMORY[0x1E69E9840];
  dsCopy = ds;
  handlerCopy = handler;
  v8 = +[EMMessageRepository log];
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134218242;
    selfCopy = self;
    v19 = 2112;
    v20 = dsCopy;
    _os_log_impl(&dword_1C6655000, v8, OS_LOG_TYPE_DEFAULT, "<%p> Requesting attachment metadata for message IDs: %@", buf, 0x16u);
  }

  connection = [(EMRepository *)self connection];
  remoteObjectProxy = [connection remoteObjectProxy];
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __76__EMMessageRepository_requestAttachmentURLsForMessageIDs_completionHandler___block_invoke;
  v14[3] = &unk_1E826E9E8;
  v14[4] = self;
  v11 = dsCopy;
  v15 = v11;
  v12 = handlerCopy;
  v16 = v12;
  [remoteObjectProxy requestAttachmentMetadataForMessageIDs:v11 completionHandler:v14];

  v13 = *MEMORY[0x1E69E9840];
}

void __76__EMMessageRepository_requestAttachmentURLsForMessageIDs_completionHandler___block_invoke(uint64_t a1, void *a2)
{
  v17 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = +[EMMessageRepository log];
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = *(a1 + 32);
    v6 = *(a1 + 40);
    *buf = 134218242;
    v14 = v5;
    v15 = 2112;
    v16 = v6;
    _os_log_impl(&dword_1C6655000, v4, OS_LOG_TYPE_DEFAULT, "<%p> Done requesting attachment metadata for message IDs: %@", buf, 0x16u);
  }

  v7 = [*(a1 + 32) observerScheduler];
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __76__EMMessageRepository_requestAttachmentURLsForMessageIDs_completionHandler___block_invoke_494;
  v10[3] = &unk_1E826D358;
  v10[4] = *(a1 + 32);
  v8 = v3;
  v11 = v8;
  v12 = *(a1 + 48);
  [v7 performBlock:v10];

  v9 = *MEMORY[0x1E69E9840];
}

uint64_t __76__EMMessageRepository_requestAttachmentURLsForMessageIDs_completionHandler___block_invoke_494(void *a1)
{
  v12 = *MEMORY[0x1E69E9840];
  v2 = +[EMMessageRepository log];
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = a1[4];
    v4 = a1[5];
    v8 = 134218242;
    v9 = v3;
    v10 = 2112;
    v11 = v4;
    _os_log_impl(&dword_1C6655000, v2, OS_LOG_TYPE_DEFAULT, "<%p> Attachment metadata received: %@", &v8, 0x16u);
  }

  v5 = a1[5];
  result = (*(a1[6] + 16))();
  v7 = *MEMORY[0x1E69E9840];
  return result;
}

- (void)requestRichLinkURLsForMessageIDs:(id)ds completionHandler:(id)handler
{
  v21 = *MEMORY[0x1E69E9840];
  dsCopy = ds;
  handlerCopy = handler;
  v8 = +[EMMessageRepository log];
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134218242;
    selfCopy = self;
    v19 = 2112;
    v20 = dsCopy;
    _os_log_impl(&dword_1C6655000, v8, OS_LOG_TYPE_DEFAULT, "<%p> Requesting attachment metadata for message IDs: %@", buf, 0x16u);
  }

  connection = [(EMRepository *)self connection];
  remoteObjectProxy = [connection remoteObjectProxy];
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __74__EMMessageRepository_requestRichLinkURLsForMessageIDs_completionHandler___block_invoke;
  v14[3] = &unk_1E826E9E8;
  v14[4] = self;
  v11 = dsCopy;
  v15 = v11;
  v12 = handlerCopy;
  v16 = v12;
  [remoteObjectProxy requestRichLinkURLsForMessageIDs:v11 completionHandler:v14];

  v13 = *MEMORY[0x1E69E9840];
}

void __74__EMMessageRepository_requestRichLinkURLsForMessageIDs_completionHandler___block_invoke(uint64_t a1, void *a2)
{
  v17 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = +[EMMessageRepository log];
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = *(a1 + 32);
    v6 = *(a1 + 40);
    *buf = 134218242;
    v14 = v5;
    v15 = 2112;
    v16 = v6;
    _os_log_impl(&dword_1C6655000, v4, OS_LOG_TYPE_DEFAULT, "<%p> Done requesting attachment metadata for message IDs: %@", buf, 0x16u);
  }

  v7 = [*(a1 + 32) observerScheduler];
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __74__EMMessageRepository_requestRichLinkURLsForMessageIDs_completionHandler___block_invoke_496;
  v10[3] = &unk_1E826D1F0;
  v12 = *(a1 + 48);
  v8 = v3;
  v11 = v8;
  [v7 performBlock:v10];

  v9 = *MEMORY[0x1E69E9840];
}

- (void)performMessageChangeAction:(id)action
{
  v20 = *MEMORY[0x1E69E9840];
  actionCopy = action;
  v5 = +[EMDaemonInterfaceRequest uniqueRequestID];
  v6 = +[EMMessageRepository signpostLog];
  v7 = os_signpost_id_generate(v6);

  v8 = +[EMDaemonInterfaceRequest signpostLog];
  v9 = v8;
  if (v5 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v8))
  {
    *buf = 138543362;
    v19 = objc_opt_class();
    v10 = v19;
    _os_signpost_emit_with_name_impl(&dword_1C6655000, v9, OS_SIGNPOST_INTERVAL_BEGIN, v5, "EMMessageRepositoryMessageChangeAction", "%{public, name=ChangeType}@", buf, 0xCu);
  }

  v11 = +[EMMessageRepository signpostLog];
  v12 = v11;
  if (v7 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v11))
  {
    signpostType = [actionCopy signpostType];
    *buf = 134349056;
    v19 = signpostType;
    _os_signpost_emit_with_name_impl(&dword_1C6655000, v12, OS_SIGNPOST_INTERVAL_BEGIN, v7, "EMMessageRepositoryMessageChangeAction", "ChangeActionType=%{public,signpost.telemetry:number1}lu enableTelemetry=YES ", buf, 0xCu);
  }

  [(EMMessageRepository *)self _updateObserversForAction:actionCopy];
  connection = [(EMRepository *)self connection];
  reattemptingRemoteObjectProxy = [connection reattemptingRemoteObjectProxy];
  v17[0] = MEMORY[0x1E69E9820];
  v17[1] = 3221225472;
  v17[2] = __50__EMMessageRepository_performMessageChangeAction___block_invoke;
  v17[3] = &__block_descriptor_48_e29_v16__0__EMUndoMessageAction_8l;
  v17[4] = v7;
  v17[5] = v5;
  [reattemptingRemoteObjectProxy performMessageChangeAction:actionCopy requestID:v5 returnUndoAction:0 completionHandler:v17];

  v16 = *MEMORY[0x1E69E9840];
}

void __50__EMMessageRepository_performMessageChangeAction___block_invoke(uint64_t a1)
{
  v2 = +[EMMessageRepository signpostLog];
  v3 = v2;
  v4 = *(a1 + 32);
  if (v4 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v2))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_1C6655000, v3, OS_SIGNPOST_INTERVAL_END, v4, "EMMessageRepositoryMessageChangeAction", byte_1C6760DBE, buf, 2u);
  }

  v5 = +[EMDaemonInterfaceRequest signpostLog];
  v6 = v5;
  v7 = *(a1 + 40);
  if (v7 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v5))
  {
    *v8 = 0;
    _os_signpost_emit_with_name_impl(&dword_1C6655000, v6, OS_SIGNPOST_INTERVAL_END, v7, "EMMessageRepositoryMessageChangeAction", byte_1C6760DBE, v8, 2u);
  }
}

- (void)performOneTimeCodeMessageDeletionWithObjectID:(id)d afterDelay:(double)delay
{
  v17 = *MEMORY[0x1E69E9840];
  dCopy = d;
  v7 = +[EMDaemonInterfaceRequest uniqueRequestID];
  v8 = +[EMDaemonInterfaceRequest signpostLog];
  v9 = v8;
  if (v7 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v8))
  {
    *buf = 138543362;
    v16 = objc_opt_class();
    v10 = v16;
    _os_signpost_emit_with_name_impl(&dword_1C6655000, v9, OS_SIGNPOST_INTERVAL_BEGIN, v7, "EMMessageRepositoryMessageChangeAction", "%{public, name=ChangeType}@", buf, 0xCu);
  }

  connection = [(EMRepository *)self connection];
  reattemptingRemoteObjectProxy = [connection reattemptingRemoteObjectProxy];
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __80__EMMessageRepository_performOneTimeCodeMessageDeletionWithObjectID_afterDelay___block_invoke;
  v14[3] = &__block_descriptor_40_e29_v16__0__EMUndoMessageAction_8l;
  v14[4] = v7;
  [reattemptingRemoteObjectProxy performOneTimeCodeMessageDeletionWithObjectID:dCopy requestID:v7 returnUndoAction:0 afterDelay:v14 completionHandler:delay];

  v13 = *MEMORY[0x1E69E9840];
}

void __80__EMMessageRepository_performOneTimeCodeMessageDeletionWithObjectID_afterDelay___block_invoke(uint64_t a1)
{
  v2 = +[EMDaemonInterfaceRequest signpostLog];
  v3 = v2;
  v4 = *(a1 + 32);
  if (v4 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v2))
  {
    *v5 = 0;
    _os_signpost_emit_with_name_impl(&dword_1C6655000, v3, OS_SIGNPOST_INTERVAL_END, v4, "EMMessageRepositoryMessageChangeAction", byte_1C6760DBE, v5, 2u);
  }
}

- (id)performMessageChangeActionReturningUndoAction:(id)action
{
  v31 = *MEMORY[0x1E69E9840];
  actionCopy = action;
  v5 = +[EMDaemonInterfaceRequest uniqueRequestID];
  v6 = +[EMMessageRepository signpostLog];
  v7 = os_signpost_id_generate(v6);

  v8 = +[EMDaemonInterfaceRequest signpostLog];
  v9 = v8;
  if (v5 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v8))
  {
    *buf = 138543362;
    v30 = objc_opt_class();
    v10 = v30;
    _os_signpost_emit_with_name_impl(&dword_1C6655000, v9, OS_SIGNPOST_INTERVAL_BEGIN, v5, "EMMessageRepositoryMessageChangeAction", "%{public, name=ChangeType}@", buf, 0xCu);
  }

  v11 = +[EMMessageRepository signpostLog];
  v12 = v11;
  if (v7 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v11))
  {
    signpostType = [actionCopy signpostType];
    *buf = 134349056;
    v30 = signpostType;
    _os_signpost_emit_with_name_impl(&dword_1C6655000, v12, OS_SIGNPOST_INTERVAL_BEGIN, v7, "EMMessageRepositoryMessageChangeAction", "ChangeActionType=%{public,signpost.telemetry:number1}lu enableTelemetry=YES ", buf, 0xCu);
  }

  [(EMMessageRepository *)self _updateObserversForAction:actionCopy];
  promise = [MEMORY[0x1E699B868] promise];
  connection = [(EMRepository *)self connection];
  reattemptingRemoteObjectProxy = [connection reattemptingRemoteObjectProxy];
  v21 = MEMORY[0x1E69E9820];
  v22 = 3221225472;
  v23 = __69__EMMessageRepository_performMessageChangeActionReturningUndoAction___block_invoke;
  v24 = &unk_1E826EA50;
  selfCopy = self;
  v17 = promise;
  v26 = v17;
  v27 = v7;
  v28 = v5;
  [reattemptingRemoteObjectProxy performMessageChangeAction:actionCopy requestID:v5 returnUndoAction:1 completionHandler:&v21];

  future = [v17 future];

  v19 = *MEMORY[0x1E69E9840];

  return future;
}

void __69__EMMessageRepository_performMessageChangeActionReturningUndoAction___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(a1 + 32) trampoliningObserverForObserver:*(a1 + 40)];
  if (v3)
  {
    [v4 finishWithResult:v3];
  }

  else
  {
    v5 = [MEMORY[0x1E696ABC0] ef_notSupportedError];
    [v4 finishWithError:v5];
  }

  v6 = +[EMMessageRepository signpostLog];
  v7 = v6;
  v8 = *(a1 + 48);
  if (v8 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v6))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_1C6655000, v7, OS_SIGNPOST_INTERVAL_END, v8, "EMMessageRepositoryMessageChangeAction", byte_1C6760DBE, buf, 2u);
  }

  v9 = +[EMDaemonInterfaceRequest signpostLog];
  v10 = v9;
  v11 = *(a1 + 56);
  if (v11 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v9))
  {
    *v12 = 0;
    _os_signpost_emit_with_name_impl(&dword_1C6655000, v10, OS_SIGNPOST_INTERVAL_END, v11, "EMMessageRepositoryMessageChangeAction", byte_1C6760DBE, v12, 2u);
  }
}

- (void)_updateObserversForAction:(id)action
{
  actionCopy = action;
  if ([actionCopy isMemberOfClass:objc_opt_class()])
  {
    [(EMMessageRepository *)self _updateObserversForFlagChangeAction:actionCopy];
    goto LABEL_11;
  }

  if ([actionCopy isMemberOfClass:objc_opt_class()])
  {
    objectIDs2 = actionCopy;
    if (([objectIDs2 copyMessages] & 1) == 0)
    {
      objectIDs = [objectIDs2 objectIDs];
      [(EMMessageRepository *)self _updateObserversForDeletedObjectIDs:objectIDs];
    }

    goto LABEL_10;
  }

  if ([actionCopy isMemberOfClass:objc_opt_class()])
  {
    [(EMMessageRepository *)self _unsubscribeTypeDidChangeForUnsubscribeChangeAction:actionCopy];
    goto LABEL_11;
  }

  if ([(EMMessageRepository *)self _shouldActionUpdateObserversForDeletedObjectIDs:actionCopy])
  {
    objectIDs2 = [actionCopy objectIDs];
    [(EMMessageRepository *)self _updateObserversForDeletedObjectIDs:objectIDs2];
LABEL_10:
  }

LABEL_11:
}

- (BOOL)_shouldActionUpdateObserversForDeletedObjectIDs:(id)ds
{
  dsCopy = ds;
  if ([dsCopy isMemberOfClass:objc_opt_class()])
  {
    v4 = 1;
  }

  else
  {
    v4 = [dsCopy isMemberOfClass:objc_opt_class()];
  }

  return v4;
}

- (void)_updateObserversForFlagChangeAction:(id)action
{
  v65 = *MEMORY[0x1E69E9840];
  actionCopy = action;
  strongToStrongObjectsMapTable = [MEMORY[0x1E696AD18] strongToStrongObjectsMapTable];
  flagChange = [actionCopy flagChange];
  objectIDs = [actionCopy objectIDs];
  v4 = +[EMMessageRepository log];
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134218498;
    selfCopy6 = self;
    v56 = 2114;
    v57 = flagChange;
    v58 = 2114;
    v59 = objectIDs;
    _os_log_impl(&dword_1C6655000, v4, OS_LOG_TYPE_DEFAULT, "<%p> Updating observers of flag change: %{public}@\nto objectIDs: %{public}@", buf, 0x20u);
  }

  selfCopy7 = self;
  currentObservers = [(EMMessageRepository *)self currentObservers];
  os_unfair_lock_lock(&self->_messageListItemCacheLock);
  v49 = 0u;
  v50 = 0u;
  v47 = 0u;
  v48 = 0u;
  obj = objectIDs;
  v38 = [obj countByEnumeratingWithState:&v47 objects:v64 count:16];
  if (v38)
  {
    v37 = *v48;
    do
    {
      for (i = 0; i != v38; ++i)
      {
        if (*v48 != v37)
        {
          objc_enumerationMutation(obj);
        }

        v6 = *(*(&v47 + 1) + 8 * i);
        v41 = [(NSMapTable *)selfCopy7->_observedMessageListItemCache objectForKey:v6];
        if (v41 && ([v41 conformsToProtocol:&unk_1F46204B0] & 1) != 0)
        {
          v46 = 0;
          flags = [v41 flags];
          v36 = [flagChange flagsAfterChangingFlags:flags flagsWereChanged:&v46];

          if (v46)
          {
            v8 = [EMMessageListItemChange changeForFlags:v36];
            v9 = +[EMMessageRepository log];
            if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
            {
              v10 = objc_opt_class();
              v11 = NSStringFromClass(v10);
              *buf = 134219010;
              selfCopy6 = self;
              v56 = 2114;
              v57 = v11;
              v58 = 2048;
              v59 = v41;
              v60 = 2114;
              v61 = v6;
              v62 = 2114;
              v63 = v8;
              _os_log_impl(&dword_1C6655000, v9, OS_LOG_TYPE_DEFAULT, "<%p> Applying change to cached item <%{public}@: %p> for objectID %{public}@: %{public}@", buf, 0x34u);
            }

            [v8 applyToMessageListItem:v41];
            v44 = 0u;
            v45 = 0u;
            v42 = 0u;
            v43 = 0u;
            v12 = currentObservers;
            v13 = [v12 countByEnumeratingWithState:&v42 objects:v53 count:16];
            if (v13)
            {
              v14 = *v43;
              do
              {
                for (j = 0; j != v13; ++j)
                {
                  if (*v43 != v14)
                  {
                    objc_enumerationMutation(v12);
                  }

                  v16 = *(*(&v42 + 1) + 8 * j);
                  if ([v16 observerContainsObjectID:v6])
                  {
                    v17 = [strongToStrongObjectsMapTable objectForKey:v16];
                    if (!v17)
                    {
                      v17 = objc_alloc_init(MEMORY[0x1E695DF90]);
                      [strongToStrongObjectsMapTable setObject:v17 forKey:v16];
                    }

                    [v17 setObject:v8 forKeyedSubscript:v6];
                  }
                }

                v13 = [v12 countByEnumeratingWithState:&v42 objects:v53 count:16];
              }

              while (v13);
            }
          }

          else
          {
            v8 = +[EMMessageRepository log];
            if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
            {
              v22 = objc_opt_class();
              v23 = NSStringFromClass(v22);
              *buf = 134218754;
              selfCopy6 = self;
              v56 = 2114;
              v57 = v23;
              v58 = 2048;
              v59 = v41;
              v60 = 2114;
              v61 = v6;
              _os_log_error_impl(&dword_1C6655000, v8, OS_LOG_TYPE_ERROR, "<%p> No flag change applies to cached item <%{public}@: %p> for objectID %{public}@", buf, 0x2Au);
            }
          }
        }

        else
        {
          v18 = [(NSMapTable *)selfCopy7->_unobservedMessageListItemCache objectForKey:v6];
          if (v18)
          {
            v19 = +[EMMessageRepository log];
            if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
            {
              v20 = objc_opt_class();
              v21 = NSStringFromClass(v20);
              *buf = 134218754;
              selfCopy6 = self;
              v56 = 2114;
              v57 = v21;
              v58 = 2048;
              v59 = v18;
              v60 = 2114;
              v61 = v6;
              _os_log_impl(&dword_1C6655000, v19, OS_LOG_TYPE_DEFAULT, "<%p> Unobserved cached item <%{public}@: %p>, but no observed cached item for flag change for objectID %{public}@", buf, 0x2Au);
            }
          }

          else
          {
            v19 = +[EMMessageRepository log];
            if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 134218242;
              selfCopy6 = self;
              v56 = 2114;
              v57 = v6;
              _os_log_impl(&dword_1C6655000, v19, OS_LOG_TYPE_DEFAULT, "<%p> No cached item for flag change for objectID %{public}@", buf, 0x16u);
            }
          }
        }

        selfCopy7 = self;
      }

      v38 = [obj countByEnumeratingWithState:&v47 objects:v64 count:16];
    }

    while (v38);
  }

  os_unfair_lock_unlock(&self->_messageListItemCacheLock);
  keyEnumerator = [strongToStrongObjectsMapTable keyEnumerator];
  for (k = 0; ; k = nextObject)
  {
    nextObject = [keyEnumerator nextObject];

    if (!nextObject)
    {
      break;
    }

    v27 = [strongToStrongObjectsMapTable objectForKey:nextObject];
    v51 = @"changesByObjectID";
    v52 = v27;
    v28 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v52 forKeys:&v51 count:1];
    allKeys = [v27 allKeys];
    [nextObject queryMatchedChangedObjectIDs:allKeys extraInfo:v28];
  }

  v30 = *MEMORY[0x1E69E9840];
}

- (void)_updateObserversForDeletedObjectIDs:(id)ds
{
  v32 = *MEMORY[0x1E69E9840];
  dsCopy = ds;
  v5 = [dsCopy count] == 0;
  selfCopy = self;
  [(EMMessageRepository *)self currentObservers];
  v21 = 0u;
  v22 = 0u;
  v19 = 0u;
  obj = v20 = 0u;
  v6 = [obj countByEnumeratingWithState:&v19 objects:v31 count:16];
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
          objc_enumerationMutation(obj);
        }

        v9 = *(*(&v19 + 1) + 8 * v8);
        v18[0] = MEMORY[0x1E69E9820];
        v18[1] = 3221225472;
        v18[2] = __59__EMMessageRepository__updateObserversForDeletedObjectIDs___block_invoke;
        v18[3] = &unk_1E826E4D0;
        v18[4] = v9;
        v10 = [dsCopy ef_filter:v18];
        if ([v10 count])
        {
          [v9 queryAnticipatesDeletedObjectIDs:v10];
          v5 = 1;
        }

        ++v8;
      }

      while (v6 != v8);
      v6 = [obj countByEnumeratingWithState:&v19 objects:v31 count:16];
    }

    while (v6);
  }

  if (!v5)
  {
    v11 = [obj ef_filter:&__block_literal_global_505];
    v12 = +[EMMessageRepository log];
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      v14 = [dsCopy count];
      v15 = [obj count];
      *buf = 134218754;
      v24 = selfCopy;
      v25 = 2048;
      v26 = v14;
      v27 = 2048;
      v28 = v15;
      v29 = 2114;
      v30 = v11;
      _os_log_error_impl(&dword_1C6655000, v12, OS_LOG_TYPE_ERROR, "<%p> Fail to update observer for deleted objectIDs.count:%lu, observers.count:%lu, observersInRecovery:%{public}@", buf, 0x2Au);
    }
  }

  v13 = *MEMORY[0x1E69E9840];
}

uint64_t __59__EMMessageRepository__updateObserversForDeletedObjectIDs___block_invoke_2(uint64_t a1, void *a2)
{
  v2 = a2;
  if (objc_opt_respondsToSelector())
  {
    v3 = [v2 isRecovering];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (void)resetAllPrecomputedThreadScopes
{
  connection = [(EMRepository *)self connection];
  remoteObjectProxy = [connection remoteObjectProxy];
  [remoteObjectProxy resetPrecomputedThreadScopesForMailboxScope:0];
}

- (void)setCachedMetadataJSON:(id)n forKey:(id)key messageID:(id)d
{
  nCopy = n;
  keyCopy = key;
  dCopy = d;
  connection = [(EMRepository *)self connection];
  remoteObjectProxy = [connection remoteObjectProxy];
  [remoteObjectProxy setCachedMetadataJSON:nCopy forKey:keyCopy messageID:dCopy];
}

- (id)cachedMetadataJSONForKey:(id)key messageID:(id)d
{
  keyCopy = key;
  dCopy = d;
  v14 = 0;
  v15 = &v14;
  v16 = 0x3032000000;
  v17 = __Block_byref_object_copy__8;
  v18 = __Block_byref_object_dispose__8;
  v19 = 0;
  connection = [(EMRepository *)self connection];
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __58__EMMessageRepository_cachedMetadataJSONForKey_messageID___block_invoke;
  v13[3] = &unk_1E826D7A0;
  v13[4] = self;
  v9 = [connection synchronousRemoteObjectProxyWithErrorHandler:v13];

  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __58__EMMessageRepository_cachedMetadataJSONForKey_messageID___block_invoke_508;
  v12[3] = &unk_1E826EA98;
  v12[4] = &v14;
  [v9 getCachedMetadataJSONForKey:keyCopy messageID:dCopy completionHandler:v12];
  v10 = v15[5];

  _Block_object_dispose(&v14, 8);

  return v10;
}

void __58__EMMessageRepository_cachedMetadataJSONForKey_messageID___block_invoke(uint64_t a1, void *a2)
{
  v7 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = +[EMMessageRepository log];
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    v5 = *(a1 + 32);
    [v3 ef_publicDescription];
    objc_claimAutoreleasedReturnValue();
    __58__EMMessageRepository_cachedMetadataJSONForKey_messageID___block_invoke_cold_1();
  }

  v6 = *MEMORY[0x1E69E9840];
}

- (void)getCachedMetadataJSONForKey:(id)key messageID:(id)d handler:(id)handler
{
  keyCopy = key;
  dCopy = d;
  handlerCopy = handler;
  connection = [(EMRepository *)self connection];
  v14 = MEMORY[0x1E69E9820];
  v15 = 3221225472;
  v16 = __69__EMMessageRepository_getCachedMetadataJSONForKey_messageID_handler___block_invoke;
  v17 = &unk_1E826EAC0;
  selfCopy = self;
  v12 = handlerCopy;
  v19 = v12;
  v13 = [connection remoteObjectProxyWithErrorHandler:&v14];

  [v13 getCachedMetadataJSONForKey:keyCopy messageID:dCopy completionHandler:{v12, v14, v15, v16, v17, selfCopy}];
}

void __69__EMMessageRepository_getCachedMetadataJSONForKey_messageID_handler___block_invoke(uint64_t a1, void *a2)
{
  v7 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = +[EMMessageRepository log];
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    v5 = *(a1 + 32);
    [v3 ef_publicDescription];
    objc_claimAutoreleasedReturnValue();
    __58__EMMessageRepository_cachedMetadataJSONForKey_messageID___block_invoke_cold_1();
  }

  (*(*(a1 + 40) + 16))();
  v6 = *MEMORY[0x1E69E9840];
}

- (id)metadataForAddresses:(id)addresses
{
  addressesCopy = addresses;
  promise = [MEMORY[0x1E699B868] promise];
  connection = [(EMRepository *)self connection];
  v17[0] = MEMORY[0x1E69E9820];
  v17[1] = 3221225472;
  v17[2] = __44__EMMessageRepository_metadataForAddresses___block_invoke;
  v17[3] = &unk_1E826DE70;
  v17[4] = self;
  v7 = promise;
  v18 = v7;
  v8 = [connection remoteObjectProxyWithErrorHandler:v17];

  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __44__EMMessageRepository_metadataForAddresses___block_invoke_513;
  v13[3] = &unk_1E826EB08;
  v9 = v7;
  v14 = v9;
  selfCopy = self;
  v10 = addressesCopy;
  v16 = v10;
  [v8 metadataForAddresses:v10 completionHandler:v13];
  future = [v9 future];

  return future;
}

void __44__EMMessageRepository_metadataForAddresses___block_invoke(uint64_t a1, void *a2)
{
  v9 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = +[EMMessageRepository log];
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    v5 = *(a1 + 32);
    [v3 ef_publicDescription];
    objc_claimAutoreleasedReturnValue();
    __44__EMMessageRepository_metadataForAddresses___block_invoke_cold_1();
  }

  v6 = *(a1 + 40);
  v7 = [MEMORY[0x1E696ABC0] em_internalErrorWithReason:@"cannot connect to proxy"];
  [v6 finishWithError:v7];

  v8 = *MEMORY[0x1E69E9840];
}

void __44__EMMessageRepository_metadataForAddresses___block_invoke_513(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = objc_opt_new();
  if (v3)
  {
    v5 = [v3 ef_mapValues:&__block_literal_global_516];

    v4 = v5;
    [*(a1 + 32) finishWithResult:v5];
  }

  else
  {
    v6 = +[EMMessageRepository log];
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      __44__EMMessageRepository_metadataForAddresses___block_invoke_513_cold_1(a1);
    }

    v7 = *(a1 + 32);
    v8 = [MEMORY[0x1E696ABC0] em_internalErrorWithReason:@"unable to obtain address metadata"];
    [v7 finishWithError:v8];
  }
}

EMAddressMetadata *__44__EMMessageRepository_metadataForAddresses___block_invoke_2(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [[EMAddressMetadata alloc] initWithDictionary:v2];

  return v3;
}

- (void)updateLastSeenDate:(id)date andDisplayDate:(id)displayDate forBusinessWithEmailAddress:(id)address category:(id)category
{
  dateCopy = date;
  displayDateCopy = displayDate;
  addressCopy = address;
  categoryCopy = category;
  connection = [(EMRepository *)self connection];
  remoteObjectProxy = [connection remoteObjectProxy];
  [remoteObjectProxy updateLastSeenDate:dateCopy andDisplayDate:displayDateCopy forBusinessWithEmailAddress:addressCopy category:categoryCopy];
}

- (void)logCategoryMetadataForObjectIDs:(id)ds
{
  dsCopy = ds;
  connection = [(EMRepository *)self connection];
  remoteObjectProxy = [connection remoteObjectProxy];
  [remoteObjectProxy logCategoryMetadataForObjectIDs:dsCopy];
}

- (EFFuture)remoteContentURLCache
{
  remoteContentCachePromise = [(EMMessageRepository *)self remoteContentCachePromise];
  future = [remoteContentCachePromise future];

  return future;
}

- (void)setUpURLCacheWithMemoryCapacity:(unint64_t)capacity
{
  connection = [(EMRepository *)self connection];
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __55__EMMessageRepository_setUpURLCacheWithMemoryCapacity___block_invoke;
  v10[3] = &unk_1E826D7A0;
  v10[4] = self;
  v6 = [connection remoteObjectProxyWithErrorHandler:v10];

  objc_initWeak(&location, self);
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __55__EMMessageRepository_setUpURLCacheWithMemoryCapacity___block_invoke_522;
  v7[3] = &unk_1E826EB30;
  objc_copyWeak(v8, &location);
  v8[1] = capacity;
  [v6 getURLCacheInformationWithCompletion:v7];
  objc_destroyWeak(v8);
  objc_destroyWeak(&location);
}

void __55__EMMessageRepository_setUpURLCacheWithMemoryCapacity___block_invoke(uint64_t a1, void *a2)
{
  v7 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = +[EMMessageRepository log];
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    v5 = *(a1 + 32);
    [v3 ef_publicDescription];
    objc_claimAutoreleasedReturnValue();
    __58__EMMessageRepository_cachedMetadataJSONForKey_messageID___block_invoke_cold_1();
  }

  v6 = *MEMORY[0x1E69E9840];
}

void __55__EMMessageRepository_setUpURLCacheWithMemoryCapacity___block_invoke_522(uint64_t a1, void *a2, uint64_t a3)
{
  v23 = *MEMORY[0x1E69E9840];
  v5 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v7 = [v5 url];
    v8 = WeakRetained[12];
    WeakRetained[12] = v7;

    [WeakRetained[12] startAccessingSecurityScopedResource];
    v9 = [(NSURLCache *)[EMRemoteContentURLCache alloc] initWithMemoryCapacity:*(a1 + 40) diskCapacity:a3 directoryURL:WeakRetained[12]];
    v10 = +[EMMessageRepository log];
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      v11 = WeakRetained[12];
      *buf = 134218498;
      v18 = WeakRetained;
      v19 = 2112;
      v20 = v11;
      v21 = 2048;
      v22 = a3;
      _os_log_impl(&dword_1C6655000, v10, OS_LOG_TYPE_DEFAULT, "<%p> Starting remote content cache with URL: %@ diskCapacity: %lu", buf, 0x20u);
    }

    v12 = [MEMORY[0x1E699B978] globalAsyncScheduler];
    v15[0] = MEMORY[0x1E69E9820];
    v15[1] = 3221225472;
    v15[2] = __55__EMMessageRepository_setUpURLCacheWithMemoryCapacity___block_invoke_525;
    v15[3] = &unk_1E826C148;
    v15[4] = WeakRetained;
    v13 = v9;
    v16 = v13;
    [v12 performBlock:v15];
  }

  v14 = *MEMORY[0x1E69E9840];
}

uint64_t __55__EMMessageRepository_setUpURLCacheWithMemoryCapacity___block_invoke_525(uint64_t a1)
{
  v11 = *MEMORY[0x1E69E9840];
  v2 = +[EMMessageRepository log];
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    v4 = [*(a1 + 40) currentDiskUsage];
    v7 = 134218240;
    v8 = v3;
    v9 = 2048;
    v10 = v4;
    _os_log_impl(&dword_1C6655000, v2, OS_LOG_TYPE_DEFAULT, "<%p>Remote content cache currentDiskUsage: %lu", &v7, 0x16u);
  }

  result = [*(*(a1 + 32) + 104) finishWithResult:*(a1 + 40)];
  v6 = *MEMORY[0x1E69E9840];
  return result;
}

- (void)noteViewOfRemoteContentLinks:(id)links
{
  linksCopy = links;
  connection = [(EMRepository *)self connection];
  reattemptingRemoteObjectProxy = [connection reattemptingRemoteObjectProxy];
  [reattemptingRemoteObjectProxy noteViewOfRemoteContentLinks:linksCopy];
}

void __95__EMMessageRepository_getRemoteContentURLInfoOrderedBy_inReverseOrder_limit_completionHandler___block_invoke(uint64_t a1, void *a2, void *a3, void *a4)
{
  v7 = a2;
  v8 = a3;
  v9 = a4;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v11 = WeakRetained;
  if (WeakRetained)
  {
    v12 = [WeakRetained observerScheduler];
    v13[0] = MEMORY[0x1E69E9820];
    v13[1] = 3221225472;
    v13[2] = __95__EMMessageRepository_getRemoteContentURLInfoOrderedBy_inReverseOrder_limit_completionHandler___block_invoke_2;
    v13[3] = &unk_1E826EB58;
    v17 = *(a1 + 32);
    v14 = v7;
    v15 = v8;
    v16 = v9;
    [v12 performBlock:v13];
  }
}

- (void)parseRemoteContentURLsFromMessageWithObjectID:(id)d completionHandler:(id)handler
{
  dCopy = d;
  handlerCopy = handler;
  objc_initWeak(&location, self);
  connection = [(EMRepository *)self connection];
  reattemptingRemoteObjectProxy = [connection reattemptingRemoteObjectProxy];
  v10 = +[EMDaemonInterfaceRequest uniqueRequestID];
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __87__EMMessageRepository_parseRemoteContentURLsFromMessageWithObjectID_completionHandler___block_invoke;
  v12[3] = &unk_1E826EBA8;
  objc_copyWeak(&v14, &location);
  v11 = handlerCopy;
  v13 = v11;
  [reattemptingRemoteObjectProxy parseRemoteContentURLsFromMessageWithObjectID:dCopy requestID:v10 completionHandler:v12];

  objc_destroyWeak(&v14);
  objc_destroyWeak(&location);
}

void __87__EMMessageRepository_parseRemoteContentURLsFromMessageWithObjectID_completionHandler___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v8 = WeakRetained;
  if (WeakRetained)
  {
    v9 = [WeakRetained observerScheduler];
    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v10[2] = __87__EMMessageRepository_parseRemoteContentURLsFromMessageWithObjectID_completionHandler___block_invoke_2;
    v10[3] = &unk_1E826E7C0;
    v13 = *(a1 + 32);
    v11 = v5;
    v12 = v6;
    [v9 performBlock:v10];
  }
}

- (void)requestSummaryForObjectIDs:(id)ds
{
  v19 = *MEMORY[0x1E69E9840];
  dsCopy = ds;
  v5 = _os_activity_create(&dword_1C6655000, "[EMMessageRepository requestSummaryForObjectIDs:]", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
  state.opaque[0] = 0xAAAAAAAAAAAAAAAALL;
  state.opaque[1] = 0xAAAAAAAAAAAAAAAALL;
  os_activity_scope_enter(v5, &state);
  if ([dsCopy count])
  {
    v6 = +[EMDaemonInterfaceRequest uniqueRequestID];
    v7 = +[EMDaemonInterfaceRequest signpostLog];
    v8 = v7;
    if (v6 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v7))
    {
      v9 = [MEMORY[0x1E699B858] bucketMessageCount:{objc_msgSend(dsCopy, "count")}];
      *buf = 67240192;
      v18 = v9;
      _os_signpost_emit_with_name_impl(&dword_1C6655000, v8, OS_SIGNPOST_INTERVAL_BEGIN, v6, "EMMessageRepositoryMessageListItems", "Requesting summaries for objectIDs %{public, name=objectID}u", buf, 8u);
    }

    connection = [(EMRepository *)self connection];
    reattemptingRemoteObjectProxy = [connection reattemptingRemoteObjectProxy];
    v13[0] = MEMORY[0x1E69E9820];
    v13[1] = 3221225472;
    v13[2] = __50__EMMessageRepository_requestSummaryForObjectIDs___block_invoke;
    v13[3] = &unk_1E826EBD0;
    v15 = v6;
    v14 = dsCopy;
    [reattemptingRemoteObjectProxy messageListItemsForObjectIDs:MEMORY[0x1E695E0F0] requestID:v6 observationIdentifier:0 loadSummaryForAdditionalObjectIDs:v14 completionHandler:v13];
  }

  os_activity_scope_leave(&state);

  v12 = *MEMORY[0x1E69E9840];
}

void __50__EMMessageRepository_requestSummaryForObjectIDs___block_invoke(uint64_t a1)
{
  v8 = *MEMORY[0x1E69E9840];
  v2 = +[EMDaemonInterfaceRequest signpostLog];
  v3 = v2;
  v4 = *(a1 + 40);
  if (v4 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v2))
  {
    v5 = [MEMORY[0x1E699B858] bucketMessageCount:{objc_msgSend(*(a1 + 32), "count")}];
    v7[0] = 67240192;
    v7[1] = v5;
    _os_signpost_emit_with_name_impl(&dword_1C6655000, v3, OS_SIGNPOST_INTERVAL_END, v4, "EMMessageRepositoryMessageListItems", "Request finished %{public, name=results}u", v7, 8u);
  }

  v6 = *MEMORY[0x1E69E9840];
}

- (id)brandIndicatorForLocation:(id)location
{
  locationCopy = location;
  brandIndicatorsCache = [(EMMessageRepository *)self brandIndicatorsCache];
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __49__EMMessageRepository_brandIndicatorForLocation___block_invoke;
  v10[3] = &unk_1E826EC20;
  v10[4] = self;
  v6 = locationCopy;
  v11 = v6;
  v12 = brandIndicatorsCache;
  v7 = brandIndicatorsCache;
  v8 = [v7 objectForKey:v6 generator:v10];

  return v8;
}

id __49__EMMessageRepository_brandIndicatorForLocation___block_invoke(id *a1)
{
  v2 = objc_alloc_init(MEMORY[0x1E699B868]);
  v3 = [a1[4] connection];
  v4 = [v3 reattemptingRemoteObjectProxy];
  v9 = MEMORY[0x1E69E9820];
  v10 = 3221225472;
  v11 = __49__EMMessageRepository_brandIndicatorForLocation___block_invoke_2;
  v12 = &unk_1E826EBF8;
  v5 = a1[5];
  v13 = a1[4];
  v6 = v2;
  v14 = v6;
  v15 = a1[6];
  v16 = a1[5];
  [v4 brandIndicatorForLocation:v5 completionHandler:&v9];

  v7 = [v6 future];

  return v7;
}

void __49__EMMessageRepository_brandIndicatorForLocation___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  v5 = *(a1 + 40);
  v9 = v3;
  if (v3)
  {
    v6 = [v4 trampoliningObserverForObserver:v5];
    [v6 finishWithResult:v9];
  }

  else
  {
    v7 = [v4 trampoliningObserverForObserver:v5];
    v8 = [MEMORY[0x1E695DFB0] null];
    [v7 finishWithResult:v8];

    [*(a1 + 48) removeObjectForKey:*(a1 + 56)];
  }
}

- (void)recategorizeMessageSinceDate:(id)date
{
  dateCopy = date;
  connection = [(EMRepository *)self connection];
  remoteObjectProxy = [connection remoteObjectProxy];
  [remoteObjectProxy recategorizeMessageSinceDate:dateCopy];
}

- (void)recategorizeMessagesForQuery:(id)query completion:(id)completion
{
  queryCopy = query;
  completionCopy = completion;
  connection = [(EMRepository *)self connection];
  remoteObjectProxy = [connection remoteObjectProxy];
  [remoteObjectProxy recategorizeMessagesForQuery:queryCopy completion:completionCopy];
}

- (id)countOfUserOverrides
{
  promise = [MEMORY[0x1E699B868] promise];
  connection = [(EMRepository *)self connection];
  remoteObjectProxy = [connection remoteObjectProxy];
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __43__EMMessageRepository_countOfUserOverrides__block_invoke;
  v9[3] = &unk_1E826EC48;
  v6 = promise;
  v10 = v6;
  [remoteObjectProxy countOfUserOverridesWithCompletionHandler:v9];

  future = [v6 future];

  return future;
}

void __43__EMMessageRepository_countOfUserOverrides__block_invoke(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 32);
  v3 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:a2];
  [v2 finishWithResult:?];
}

- (void)removeAllEntriesFromBusinessCloudStorage
{
  connection = [(EMRepository *)self connection];
  remoteObjectProxy = [connection remoteObjectProxy];
  [remoteObjectProxy removeAllEntriesFromBusinessCloudStorage];
}

- (id)predictMailboxForMovingMessages:(id)messages completionHandler:(id)handler
{
  handlerCopy = handler;
  v7 = [messages ef_compactMapSelector:sel_objectID];
  v8 = [(EMMessageRepository *)self predictMailboxForMovingMessagesWithIDs:v7 completionHandler:handlerCopy];

  return v8;
}

- (id)predictMailboxForMovingMessagesWithIDs:(id)ds completionHandler:(id)handler
{
  dsCopy = ds;
  handlerCopy = handler;
  v8 = [[_EMMessageRepositoryMailboxPredictionObserver alloc] initWithMessageObjectIDs:dsCopy completionHandler:handlerCopy];
  os_unfair_lock_lock(&self->_observersLock);
  [(NSHashTable *)self->_recoverableObservers addObject:v8];
  os_unfair_lock_unlock(&self->_observersLock);
  v9 = objc_alloc_init(MEMORY[0x1E699B7F8]);
  [v9 addCancelable:v8];
  v13 = MEMORY[0x1E69E9820];
  v14 = 3221225472;
  v15 = __80__EMMessageRepository_predictMailboxForMovingMessagesWithIDs_completionHandler___block_invoke;
  v16 = &unk_1E826C148;
  selfCopy = self;
  v10 = v8;
  v18 = v10;
  [v9 addCancelationBlock:&v13];
  v11 = [(EMRepository *)self connection:v13];
  [(_EMMessageRepositoryMailboxPredictionObserver *)v10 performWithRemoteConnection:v11];

  return v9;
}

void __80__EMMessageRepository_predictMailboxForMovingMessagesWithIDs_completionHandler___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  os_unfair_lock_lock(v2 + 17);
  [*(*(a1 + 32) + 56) removeObject:*(a1 + 40)];

  os_unfair_lock_unlock(v2 + 17);
}

- (void)loadOlderMessagesForMailboxes:(id)mailboxes
{
  mailboxesCopy = mailboxes;
  connection = [(EMRepository *)self connection];
  remoteObjectProxy = [connection remoteObjectProxy];
  [remoteObjectProxy loadOlderMessagesForMailboxes:mailboxesCopy];
}

- (id)messageObjectIDForURL:(id)l
{
  lCopy = l;
  promise = [MEMORY[0x1E699B868] promise];
  connection = [(EMRepository *)self connection];
  requestRecoveryAssertion = [connection requestRecoveryAssertion];

  connection2 = [(EMRepository *)self connection];
  reattemptingRemoteObjectProxy = [connection2 reattemptingRemoteObjectProxy];
  completionHandlerAdapter = [promise completionHandlerAdapter];
  [reattemptingRemoteObjectProxy messageObjectIDForURL:lCopy completionHandler:completionHandlerAdapter];

  future = [promise future];
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __45__EMMessageRepository_messageObjectIDForURL___block_invoke;
  v14[3] = &unk_1E826C098;
  v15 = requestRecoveryAssertion;
  v12 = requestRecoveryAssertion;
  [future always:v14];

  return future;
}

- (id)messageForSearchableItemIdentifier:(id)identifier
{
  v11[1] = *MEMORY[0x1E69E9840];
  identifierCopy = identifier;
  v11[0] = identifierCopy;
  v5 = [MEMORY[0x1E695DEC8] arrayWithObjects:v11 count:1];
  v6 = [(EMMessageRepository *)self messageObjectIDsForSearchableItemIdentifiers:v5];

  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __58__EMMessageRepository_messageForSearchableItemIdentifier___block_invoke;
  v10[3] = &unk_1E826EC70;
  v10[4] = self;
  v7 = [v6 then:v10];

  v8 = *MEMORY[0x1E69E9840];

  return v7;
}

id __58__EMMessageRepository_messageForSearchableItemIdentifier___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 objectIDs];
  if ([v3 count])
  {
    v4 = *(a1 + 32);
    v5 = [v3 firstObject];
    [v4 messageForObjectID:v5];
  }

  else
  {
    v6 = MEMORY[0x1E699B7C8];
    v5 = [MEMORY[0x1E696ABC0] em_internalErrorWithReason:@"spotlight identifiers mapped to zero object IDs"];
    [v6 futureWithError:v5];
  }
  v7 = ;

  return v7;
}

- (id)messageForSearchIndexerIdentifier:(id)identifier
{
  identifierCopy = identifier;
  promise = [MEMORY[0x1E699B868] promise];
  connection = [(EMRepository *)self connection];
  remoteObjectProxy = [connection remoteObjectProxy];
  completionHandlerAdapter = [promise completionHandlerAdapter];
  [remoteObjectProxy messageObjectIDForSearchIndexerIdentifier:identifierCopy completionHandler:completionHandlerAdapter];

  future = [promise future];
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __57__EMMessageRepository_messageForSearchIndexerIdentifier___block_invoke;
  v12[3] = &unk_1E826EC98;
  v12[4] = self;
  v10 = [future then:v12];

  return v10;
}

id __57__EMMessageRepository_messageForSearchIndexerIdentifier___block_invoke(uint64_t a1, uint64_t a2)
{
  v2 = [*(a1 + 32) messageForObjectID:a2];

  return v2;
}

- (id)messageObjectIDsForSearchableItemIdentifiers:(id)identifiers
{
  identifiersCopy = identifiers;
  promise = [MEMORY[0x1E699B868] promise];
  connection = [(EMRepository *)self connection];
  remoteObjectProxy = [connection remoteObjectProxy];
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __68__EMMessageRepository_messageObjectIDsForSearchableItemIdentifiers___block_invoke;
  v11[3] = &unk_1E826ECC0;
  v8 = promise;
  v12 = v8;
  [remoteObjectProxy messageObjectIDsForSearchableItemIdentifiers:identifiersCopy completionHandler:v11];

  future = [v8 future];

  return future;
}

void __68__EMMessageRepository_messageObjectIDsForSearchableItemIdentifiers___block_invoke(uint64_t a1, void *a2, void *a3, void *a4)
{
  v11 = a2;
  v7 = a3;
  v8 = a4;
  v9 = *(a1 + 32);
  v10 = [[EMOrderedMessageIDData alloc] initWithObjectIDs:v11 objectIDByPersistentID:v7];
  [v9 finishWithResult:v10 error:v8];
}

- (id)messageObjectIDsForSearchIndexerIdentifiers:(id)identifiers
{
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __67__EMMessageRepository_messageObjectIDsForSearchIndexerIdentifiers___block_invoke;
  v5[3] = &unk_1E826ECE8;
  v5[4] = self;
  v3 = [identifiers ef_map:v5];

  return v3;
}

id __67__EMMessageRepository_messageObjectIDsForSearchIndexerIdentifiers___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [MEMORY[0x1E699B868] promise];
  v5 = [*(a1 + 32) connection];
  v6 = [v5 remoteObjectProxy];
  v7 = [v4 completionHandlerAdapter];
  [v6 messageObjectIDForSearchIndexerIdentifier:v3 completionHandler:v7];

  v8 = [v4 future];

  return v8;
}

- (id)persistentIDForMessageObjectID:(id)d
{
  dCopy = d;
  promise = [MEMORY[0x1E699B868] promise];
  connection = [(EMRepository *)self connection];
  v21[0] = MEMORY[0x1E69E9820];
  v21[1] = 3221225472;
  v21[2] = __54__EMMessageRepository_persistentIDForMessageObjectID___block_invoke;
  v21[3] = &unk_1E826DF38;
  v21[4] = self;
  v7 = dCopy;
  v22 = v7;
  v8 = promise;
  v23 = v8;
  v9 = [connection remoteObjectProxyWithErrorHandler:v21];
  v14 = MEMORY[0x1E69E9820];
  v15 = 3221225472;
  v16 = __54__EMMessageRepository_persistentIDForMessageObjectID___block_invoke_543;
  v17 = &unk_1E826ED10;
  v10 = v8;
  v18 = v10;
  selfCopy = self;
  v11 = v7;
  v20 = v11;
  [v9 persistentIDForMessageObjectID:v11 completionHandler:&v14];

  future = [v10 future];

  return future;
}

void __54__EMMessageRepository_persistentIDForMessageObjectID___block_invoke(uint64_t a1, void *a2)
{
  v15 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = +[EMMessageRepository log];
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    v7 = *(a1 + 32);
    v6 = *(a1 + 40);
    v8 = [v3 ef_publicDescription];
    v9 = 134218498;
    v10 = v7;
    v11 = 2114;
    v12 = v6;
    v13 = 2114;
    v14 = v8;
    _os_log_error_impl(&dword_1C6655000, v4, OS_LOG_TYPE_ERROR, "<%p> Encountered error while getting persistentID for messageObjectID %{public}@, error: %{public}@", &v9, 0x20u);
  }

  [*(a1 + 48) finishWithError:v3];
  v5 = *MEMORY[0x1E69E9840];
}

void __54__EMMessageRepository_persistentIDForMessageObjectID___block_invoke_543(uint64_t a1, void *a2)
{
  v3 = a2;
  if (v3)
  {
    [*(a1 + 32) finishWithResult:v3];
  }

  else
  {
    v4 = +[EMMessageRepository log];
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      __54__EMMessageRepository_persistentIDForMessageObjectID___block_invoke_543_cold_1(a1);
    }

    v5 = *(a1 + 32);
    v6 = [MEMORY[0x1E696ABC0] em_itemNotFoundErrorWithItemID:*(a1 + 48)];
    [v5 finishWithError:v6];
  }
}

- (void)_applyChangesToCachedObjects:(id)objects
{
  objectsCopy = objects;
  os_unfair_lock_lock(&self->_messageListItemCacheLock);
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __52__EMMessageRepository__applyChangesToCachedObjects___block_invoke;
  v5[3] = &unk_1E826ED38;
  v5[4] = self;
  [objectsCopy enumerateKeysAndObjectsUsingBlock:v5];

  os_unfair_lock_unlock(&self->_messageListItemCacheLock);
}

void __52__EMMessageRepository__applyChangesToCachedObjects___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v28 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  v7 = [*(*(a1 + 32) + 32) objectForKey:v5];
  if (v7)
  {
    v8 = +[EMMessageRepository log];
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v9 = *(a1 + 32);
      v10 = objc_opt_class();
      v11 = NSStringFromClass(v10);
      v18 = 134219010;
      v19 = v9;
      v20 = 2114;
      v21 = v11;
      v22 = 2048;
      v23 = v7;
      v24 = 2114;
      v25 = v5;
      v26 = 2114;
      v27 = v6;
      _os_log_impl(&dword_1C6655000, v8, OS_LOG_TYPE_DEFAULT, "<%p> Applying changes to observed cached item <%{public}@: %p> with objectID %{public}@ = %{public}@", &v18, 0x34u);
    }
  }

  else
  {
    v12 = [*(*(a1 + 32) + 40) objectForKey:v5];
    if (v12)
    {
      v8 = +[EMMessageRepository log];
      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
      {
        v13 = *(a1 + 32);
        v14 = objc_opt_class();
        v15 = NSStringFromClass(v14);
        v18 = 134219010;
        v19 = v13;
        v20 = 2114;
        v21 = v15;
        v22 = 2048;
        v23 = v12;
        v24 = 2114;
        v25 = v5;
        v26 = 2114;
        v27 = v6;
        _os_log_impl(&dword_1C6655000, v8, OS_LOG_TYPE_DEFAULT, "<%p> Applying changes to unobserved cached item <%{public}@: %p> with objectID %{public}@ = %{public}@", &v18, 0x34u);
      }

      v7 = v12;
    }

    else
    {
      v8 = +[EMMessageRepository log];
      if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
      {
        v17 = *(a1 + 32);
        v18 = 134218498;
        v19 = v17;
        v20 = 2114;
        v21 = v5;
        v22 = 2114;
        v23 = v6;
        _os_log_error_impl(&dword_1C6655000, v8, OS_LOG_TYPE_ERROR, "<%p> Not applying flag change to non-existent cached item with objectID %{public}@ = %{public}@", &v18, 0x20u);
      }

      v7 = 0;
    }
  }

  if ([v7 conformsToProtocol:&unk_1F46204B0])
  {
    [v6 applyToMessageListItem:v7];
  }

  v16 = *MEMORY[0x1E69E9840];
}

- (void)_detectChangesForMatchedAddedObjectIDs:(id)ds observerationIdentifier:(id)identifier matchedChangesHandler:(id)handler
{
  v32 = *MEMORY[0x1E69E9840];
  dsCopy = ds;
  identifierCopy = identifier;
  handlerCopy = handler;
  v9 = objc_alloc_init(MEMORY[0x1E695DF90]);
  os_unfair_lock_lock(&self->_messageListItemCacheLock);
  v29 = 0u;
  v30 = 0u;
  v27 = 0u;
  v28 = 0u;
  v10 = dsCopy;
  v11 = [v10 countByEnumeratingWithState:&v27 objects:v31 count:{16, dsCopy}];
  if (v11)
  {
    v12 = *v28;
    do
    {
      for (i = 0; i != v11; ++i)
      {
        if (*v28 != v12)
        {
          objc_enumerationMutation(v10);
        }

        v14 = *(*(&v27 + 1) + 8 * i);
        v15 = [(NSMapTable *)self->_observedMessageListItemCache objectForKey:v14];
        if (v15)
        {
          [v9 setObject:v15 forKeyedSubscript:v14];
        }
      }

      v11 = [v10 countByEnumeratingWithState:&v27 objects:v31 count:16];
    }

    while (v11);
  }

  os_unfair_lock_unlock(&self->_messageListItemCacheLock);
  if ([v9 count])
  {
    v16 = MEMORY[0x1E699B7C8];
    allKeys = [v9 allKeys];
    v18 = [(EMMessageRepository *)self _messageListItemsForObjectIDs:allKeys observationIdentifier:identifierCopy checkCache:0];
    v19 = [v16 combine:v18];

    v23[0] = MEMORY[0x1E69E9820];
    v23[1] = 3221225472;
    v23[2] = __108__EMMessageRepository__detectChangesForMatchedAddedObjectIDs_observerationIdentifier_matchedChangesHandler___block_invoke;
    v23[3] = &unk_1E826E9E8;
    v24 = v9;
    selfCopy = self;
    v26 = handlerCopy;
    [v19 addSuccessBlock:v23];
  }

  v20 = *MEMORY[0x1E69E9840];
}

void __108__EMMessageRepository__detectChangesForMatchedAddedObjectIDs_observerationIdentifier_matchedChangesHandler___block_invoke(void *a1, void *a2)
{
  v49 = *MEMORY[0x1E69E9840];
  v25 = a2;
  v27 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v32 = 0u;
  v33 = 0u;
  v30 = 0u;
  v31 = 0u;
  obj = v25;
  v2 = [obj countByEnumeratingWithState:&v30 objects:v48 count:16];
  if (v2)
  {
    v3 = *v31;
    v26 = *v31;
    do
    {
      for (i = 0; i != v2; ++i)
      {
        if (*v31 != v3)
        {
          objc_enumerationMutation(obj);
        }

        v5 = *(*(&v30 + 1) + 8 * i);
        v6 = [MEMORY[0x1E695DFB0] null];
        v7 = v5 == v6;

        if (!v7)
        {
          v8 = a1[4];
          v9 = [v5 objectID];
          v10 = [v8 objectForKeyedSubscript:v9];

          v11 = [v5 changeFrom:v10];
          if (v11)
          {
            v12 = +[EMMessageRepository log];
            if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
            {
              v13 = a1[5];
              v14 = objc_opt_class();
              v15 = NSStringFromClass(v14);
              v16 = objc_opt_class();
              v17 = NSStringFromClass(v16);
              v18 = [v5 objectID];
              *buf = 134219522;
              v35 = v13;
              v36 = 2114;
              v37 = v15;
              v38 = 2048;
              v39 = v5;
              v40 = 2114;
              v41 = v17;
              v42 = 2048;
              v43 = v10;
              v44 = 2114;
              v45 = v18;
              v46 = 2114;
              v47 = v11;
              _os_log_impl(&dword_1C6655000, v12, OS_LOG_TYPE_DEFAULT, "<%p> Applying change from new item <%{public}@: %p> to cached item <%{public}@: %p> for objectID %{public}@: %{public}@", buf, 0x48u);

              v3 = v26;
            }

            v19 = [v11 date];
            if (!v19)
            {
              goto LABEL_12;
            }

            v20 = [v11 date];
            v21 = [v10 date];
            v22 = [v20 ef_isLaterThanDate:v21];

            if (v22)
            {
LABEL_12:
              v23 = [v5 objectID];
              [v27 setObject:v11 forKeyedSubscript:v23];
            }
          }
        }
      }

      v2 = [obj countByEnumeratingWithState:&v30 objects:v48 count:16];
    }

    while (v2);
  }

  if ([v27 count])
  {
    (*(a1[6] + 16))();
  }

  v24 = *MEMORY[0x1E69E9840];
}

- (id)_addPrecachedItemsFromExtraInfoIfNeeded:(id)needed
{
  neededCopy = needed;
  v5 = [neededCopy objectForKeyedSubscript:@"precachedItems"];
  [(EMRepository *)self prepareRepositoryObjects:v5];
  v13 = 0;
  v14 = &v13;
  v15 = 0x3032000000;
  v16 = __Block_byref_object_copy__8;
  v17 = __Block_byref_object_dispose__8;
  v18 = 0;
  os_unfair_lock_lock(&self->_messageListItemCacheLock);
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __63__EMMessageRepository__addPrecachedItemsFromExtraInfoIfNeeded___block_invoke;
  v10[3] = &unk_1E826ED60;
  v10[4] = self;
  v12 = &v13;
  v6 = v5;
  v11 = v6;
  [v6 enumerateObjectsUsingBlock:v10];

  os_unfair_lock_unlock(&self->_messageListItemCacheLock);
  if (v14[5])
  {
    v7 = [neededCopy mutableCopy];
    [v7 setObject:v14[5] forKeyedSubscript:@"precachedItems"];
  }

  else
  {
    v7 = neededCopy;
  }

  v8 = v7;
  _Block_object_dispose(&v13, 8);

  return v8;
}

void __63__EMMessageRepository__addPrecachedItemsFromExtraInfoIfNeeded___block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v10 = a2;
  v5 = [*(a1 + 32) _observedCachedItemForItem:? itemDescriptionForLogging:? validationBlock:?];
  if (v5 != v10)
  {
    v6 = *(*(*(a1 + 48) + 8) + 40);
    if (!v6)
    {
      v7 = [*(a1 + 40) mutableCopy];
      v8 = *(*(a1 + 48) + 8);
      v9 = *(v8 + 40);
      *(v8 + 40) = v7;

      v6 = *(*(*(a1 + 48) + 8) + 40);
    }

    [v6 setObject:v5 atIndexedSubscript:a3];
  }
}

EMMessageListItemChange *__48__EMMessageRepository__blockedSendersDidChange___block_invoke(uint64_t a1, void *a2)
{
  v32 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = [v3 isBlocked];
  v5 = [v3 senderList];
  v16 = MEMORY[0x1E69E9820];
  v17 = 3221225472;
  v18 = __48__EMMessageRepository__blockedSendersDidChange___block_invoke_2;
  v19 = &unk_1E826ED88;
  v21 = *(a1 + 48);
  v20 = *(a1 + 32);
  v6 = [v5 ef_any:&v16];

  if (v4 == v6)
  {
    v7 = 0;
  }

  else
  {
    v7 = objc_alloc_init(EMMessageListItemChange);
    v8 = [MEMORY[0x1E696AD98] numberWithBool:{v6, v16, v17, v18, v19}];
    [(EMMessageListItemChange *)v7 setIsBlocked:v8];

    v9 = [v3 senderList];
    v10 = [v9 ef_compactMap:&__block_literal_global_553];

    v11 = +[EMMessageRepository log];
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      v12 = *(a1 + 40);
      v13 = [v3 itemID];
      *buf = 134219010;
      v23 = v12;
      v24 = 2112;
      v25 = v13;
      v26 = 1024;
      v27 = v4;
      v28 = 1024;
      v29 = v6;
      v30 = 2114;
      v31 = v10;
      _os_log_impl(&dword_1C6655000, v11, OS_LOG_TYPE_DEFAULT, "<%p> Blocked sender changed for:%@ from %d to %d for addresses: %{public}@", buf, 0x2Cu);
    }
  }

  v14 = *MEMORY[0x1E69E9840];

  return v7;
}

uint64_t __48__EMMessageRepository__blockedSendersDidChange___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = [a2 emailAddressValue];
  v4 = [v3 simpleAddress];

  if (v4 && *(a1 + 40) == 1)
  {
    v5 = [*(a1 + 32) containsObject:v4];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

id __48__EMMessageRepository__blockedSendersDidChange___block_invoke_3(uint64_t a1, void *a2)
{
  v2 = [a2 emailAddressValue];
  v3 = [v2 ef_publicDescription];

  return v3;
}

- (void)_vipsDidChange:(id)change
{
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __38__EMMessageRepository__vipsDidChange___block_invoke;
  aBlock[3] = &unk_1E826EDF8;
  aBlock[4] = self;
  v4 = _Block_copy(aBlock);
  [(EMMessageRepository *)self _broadcastMessageListItemChangesToObservers:v4 forObjectIDs:0];
}

EMMessageListItemChange *__38__EMMessageRepository__vipsDidChange___block_invoke(uint64_t a1, void *a2)
{
  v30 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = [*(a1 + 32) vipManager];
  v5 = [v3 isVIP];
  v6 = [v3 senderList];
  v18[0] = MEMORY[0x1E69E9820];
  v18[1] = 3221225472;
  v18[2] = __38__EMMessageRepository__vipsDidChange___block_invoke_2;
  v18[3] = &unk_1E826C428;
  v7 = v4;
  v19 = v7;
  v8 = [v6 ef_any:v18];

  if (v5 == v8)
  {
    v14 = 0;
  }

  else
  {
    v9 = [v3 senderList];
    v10 = [v9 ef_compactMap:&__block_literal_global_556];

    v11 = +[EMMessageRepository log];
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      v12 = *(a1 + 32);
      v13 = [v3 itemID];
      *buf = 134219010;
      v21 = v12;
      v22 = 2112;
      v23 = v13;
      v24 = 1024;
      v25 = v5;
      v26 = 1024;
      v27 = v8;
      v28 = 2114;
      v29 = v10;
      _os_log_impl(&dword_1C6655000, v11, OS_LOG_TYPE_DEFAULT, "<%p> VIP status changed for:%@ from %d to %d for addresses: %{public}@", buf, 0x2Cu);
    }

    v14 = objc_alloc_init(EMMessageListItemChange);
    v15 = [MEMORY[0x1E696AD98] numberWithBool:v8];
    [(EMMessageListItemChange *)v14 setIsVIP:v15];
  }

  v16 = *MEMORY[0x1E69E9840];

  return v14;
}

uint64_t __38__EMMessageRepository__vipsDidChange___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = [a2 emailAddressValue];
  v4 = [v3 simpleAddress];

  if (v4)
  {
    v5 = [*(a1 + 32) isVIPAddress:v4];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

id __38__EMMessageRepository__vipsDidChange___block_invoke_3(uint64_t a1, void *a2)
{
  v2 = [a2 emailAddressValue];
  v3 = [v2 ef_publicDescription];

  return v3;
}

- (void)_unsubscribeTypeDidChangeForUnsubscribeChangeAction:(id)action
{
  objectIDs = [action objectIDs];
  [(EMMessageRepository *)self _broadcastMessageListItemChangesToObservers:&__block_literal_global_558 forObjectIDs:?];
}

id __75__EMMessageRepository__unsubscribeTypeDidChangeForUnsubscribeChangeAction___block_invoke()
{
  v0 = [EMMessageListItemChange changeForUnsubscribeType:0];

  return v0;
}

- (void)_broadcastMessageListItemChangesToObservers:(id)observers forObjectIDs:(id)ds
{
  v30[1] = *MEMORY[0x1E69E9840];
  observersCopy = observers;
  dsCopy = ds;
  v7 = objc_alloc_init(MEMORY[0x1E695DF90]);
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __80__EMMessageRepository__broadcastMessageListItemChangesToObservers_forObjectIDs___block_invoke;
  aBlock[3] = &unk_1E826EE40;
  v20 = dsCopy;
  v26 = v20;
  v19 = observersCopy;
  v28 = v19;
  v22 = v7;
  v27 = v22;
  v21 = _Block_copy(aBlock);
  os_unfair_lock_lock(&self->_messageListItemCacheLock);
  v8 = v21[2](v21, self->_observedMessageListItemCache);
  v9 = (v21[2])(v21, self->_unobservedMessageListItemCache);
  os_unfair_lock_unlock(&self->_messageListItemCacheLock);
  if ([v22 count])
  {
    [(EMMessageRepository *)self _applyChangesToCachedObjects:v22];
    currentObservers = [(EMMessageRepository *)self currentObservers];
    objectEnumerator = [currentObservers objectEnumerator];

    v12 = 0;
    while (1)
    {
      nextObject = [objectEnumerator nextObject];

      if (!nextObject)
      {
        break;
      }

      v23[0] = MEMORY[0x1E69E9820];
      v23[1] = 3221225472;
      v23[2] = __80__EMMessageRepository__broadcastMessageListItemChangesToObservers_forObjectIDs___block_invoke_2;
      v23[3] = &unk_1E826EE68;
      v12 = nextObject;
      v24 = v12;
      v14 = [v8 ef_filter:v23];
      if ([v14 count])
      {
        v29 = @"changesByObjectID";
        v30[0] = v14;
        v15 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v30 forKeys:&v29 count:1];
        allKeys = [v14 allKeys];
        [v12 queryMatchedChangedObjectIDs:allKeys extraInfo:v15];
      }
    }
  }

  v17 = *MEMORY[0x1E69E9840];
}

id __80__EMMessageRepository__broadcastMessageListItemChangesToObservers_forObjectIDs___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v5 = [v3 objectEnumerator];
  v6 = 0;
  v7 = 0;
  while (1)
  {
    v8 = v7;
    v9 = v6;
    v6 = [v5 nextObject];

    if (!v6)
    {
      break;
    }

    v7 = [v6 objectID];

    v10 = *(a1 + 32);
    if (v10 && ![v10 containsObject:v7])
    {
      v11 = 0;
    }

    else
    {
      v11 = (*(*(a1 + 48) + 16))();
      if (v11)
      {
        v12 = [*(a1 + 40) objectForKeyedSubscript:v7];

        if (!v12)
        {
          [*(a1 + 40) setObject:v11 forKeyedSubscript:v7];
          [v4 setObject:v11 forKeyedSubscript:v7];
        }
      }
    }
  }

  return v4;
}

void __96__EMMessageRepository_requestRepresentationForMessageWithID_options_delegate_completionHandler___block_invoke_2_cold_1()
{
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_0_2(v1, v2, v3, 5.8382e-34);
  OUTLINED_FUNCTION_3(&dword_1C6655000, "Content representation failed to load: %{public}@ with error %{public}@", v4, v5);
}

void __58__EMMessageRepository_cachedMetadataJSONForKey_messageID___block_invoke_cold_1()
{
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_0_2(v1, v2, v3, 3.8521e-34);
  OUTLINED_FUNCTION_3(&dword_1C6655000, "<%p> Failed to get metadata through XPC proxy: %{public}@", v4, v5);
}

void __44__EMMessageRepository_metadataForAddresses___block_invoke_cold_1()
{
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_0_2(v1, v2, v3, 3.8521e-34);
  OUTLINED_FUNCTION_3(&dword_1C6655000, "<%p> Could not connect to the XPC proxy to fetch address metadata: %{public}@", v4, v5);
}

void __44__EMMessageRepository_metadataForAddresses___block_invoke_513_cold_1(uint64_t a1)
{
  v6 = *MEMORY[0x1E69E9840];
  v1 = *(a1 + 40);
  v2 = *(a1 + 48);
  OUTLINED_FUNCTION_3_1();
  _os_log_error_impl(&dword_1C6655000, v3, OS_LOG_TYPE_ERROR, "<%p> Cannot obtain address metadata for  %{public}@", v5, 0x16u);
  v4 = *MEMORY[0x1E69E9840];
}

void __54__EMMessageRepository_persistentIDForMessageObjectID___block_invoke_543_cold_1(uint64_t a1)
{
  v6 = *MEMORY[0x1E69E9840];
  v1 = *(a1 + 40);
  v2 = *(a1 + 48);
  OUTLINED_FUNCTION_3_1();
  _os_log_error_impl(&dword_1C6655000, v3, OS_LOG_TYPE_ERROR, "<%p> No persistentID found for messageObjectID: %{public}@", v5, 0x16u);
  v4 = *MEMORY[0x1E69E9840];
}

@end