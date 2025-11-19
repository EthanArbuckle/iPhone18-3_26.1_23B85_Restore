@interface EMMessageList
+ (OS_os_log)log;
+ (id)groupedCommerceSenderMessageListForMailboxes:(id)a3 withRepository:(id)a4 grouping:(int64_t)a5 sectionPredicates:(id)a6 countOfItemsToPrecache:(unint64_t)a7;
+ (id)groupedCommerceSenderMessageListForMailboxes:(id)a3 withRepository:(id)a4 grouping:(int64_t)a5 sectionPredicates:(id)a6 countOfItemsToPrecache:(unint64_t)a7 transformPredicate:(id)a8;
+ (id)simpleMessageListForMailboxes:(id)a3 withRepository:(id)a4 additionalQueryOptions:(unint64_t)a5 countOfItemsToPrecache:(unint64_t)a6 shouldUpdateDisplayDate:(BOOL)a7 sortDescriptors:(id)a8 sectionPredicates:(id)a9 transformPredicate:(id)a10;
+ (id)threadedMessageListForMailboxes:(id)a3 withRepository:(id)a4 additionalQueryOptions:(unint64_t)a5 countOfItemsToPrecache:(unint64_t)a6 shouldUpdateDisplayDate:(BOOL)a7 sortDescriptors:(id)a8 sectionPredicates:(id)a9 transformPredicate:(id)a10;
- (BOOL)_threadIsExpanded:(id)a3;
- (BOOL)_threadIsExpandedForItemID:(id)a3;
- (BOOL)anyExpandedThreadContainsItemID:(id)a3;
- (BOOL)hasSectionPredicates;
- (BOOL)isThreaded;
- (BOOL)objectIDBelongsToCollection:(id)a3;
- (BOOL)recentlyCollapsedThreadContainsItemID:(id)a3;
- (EMMessageList)initWithMailboxes:(id)a3 repository:(id)a4 sortDescriptors:(id)a5 sectionPredicates:(id)a6 transformPredicate:(id)a7 targetClass:(Class)a8 additionalQueryOptions:(unint64_t)a9 countOfItemsToPrecache:(unint64_t)a10 shouldUpdateDisplayDate:(BOOL)a11 labelPrefix:(id)a12;
- (EMMessageList)initWithMessageList:(id)a3;
- (EMMessageList)initWithObjectID:(id)a3 query:(id)a4 repository:(id)a5;
- (EMMessageList)initWithQuery:(id)a3 repository:(id)a4;
- (EMMessageList)unfilteredMessageList;
- (EMMessageRepository)repository;
- (NSSet)expandedThreadItemIDs;
- (NSString)ef_publicDescription;
- (NSString)ef_shortPublicDescription;
- (id)_adjustedItemIDToInsertAfterForExistingItemID:(id)a3 sectionIndex:(unint64_t)a4;
- (id)_adjustedItemIDToInsertBeforeForExistingItemID:(id)a3 sectionIndex:(unint64_t)a4;
- (id)_availableMessageListItemsForItemIDs:(id)a3;
- (id)_debugDescriptionIncludeQuery:(BOOL)a3;
- (id)_expandedObjectIDsForObjectIDs:(id)a3;
- (id)_extraInfoForThread:(id)a3 addedItemIDs:(id)a4;
- (id)_itemIDsForItemIDs:(id)a3 changeObserver:(id)a4 extraInfo:(id)a5 outObserverSectionIndex:(unint64_t *)a6;
- (id)_nextThreadItemIDAfterThreadItemID:(id)a3;
- (id)_sectionIdentierForItemID:(id)a3;
- (id)_sectionIdentifierForIndex:(unint64_t)a3;
- (id)_sectionPredicates;
- (id)_sectionedObjectIDsFromExtraInfo:(id)a3;
- (id)_snippetHintsByObjectIDFromExtraInfo:(id)a3;
- (id)_unreadItemIDsFromExtraInfo:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)filteredMessageListWithPredicate:(id)a3 userFiltered:(BOOL)a4;
- (id)itemIDForObjectID:(id)a3;
- (id)itemIDOfFirstMessageListItemMatchingPredicate:(id)a3;
- (id)itemIDOfMessageListItemWithDisplayMessage:(id)a3;
- (id)itemIDsForStateCaptureWithErrorString:(id *)a3;
- (id)labelForStateCapture;
- (id)messageListItemForItemID:(id)a3;
- (id)messageListItemsForItemIDs:(id)a3;
- (id)messageListItemsForItemIDs:(id)a3 ifAvailable:(BOOL)a4;
- (id)objectIDForItemID:(id)a3;
- (id)removeItemIDs:(id)a3;
- (unint64_t)_sectionIndexForIdentifier:(id)a3;
- (unint64_t)_sectionIndexForItemID:(id)a3;
- (void)_addPrecachedItemsFromExtraInfo:(id)a3;
- (void)_attemptToFinishRetryingPromisesByItemID:(id)a3;
- (void)_commonInitWithRepository:(id)a3;
- (void)_updateSectionsWithItemIDs:(id)a3 extraInfo:(id)a4;
- (void)collapseThread:(id)a3;
- (void)collection:(id)a3 addedItemIDs:(id)a4 after:(id)a5;
- (void)collection:(id)a3 addedItemIDs:(id)a4 before:(id)a5;
- (void)collection:(id)a3 changedItemIDs:(id)a4;
- (void)collection:(id)a3 changedItemIDs:(id)a4 itemIDsWithCountChanges:(id)a5 itemIDsWithBrandIndicatorLocationChanges:(id)a6;
- (void)collection:(id)a3 deletedItemIDs:(id)a4;
- (void)collection:(id)a3 movedItemIDs:(id)a4 after:(id)a5;
- (void)collection:(id)a3 movedItemIDs:(id)a4 before:(id)a5;
- (void)collection:(id)a3 replacedExistingItemID:(id)a4 withNewItemID:(id)a5;
- (void)collectionDidFinishInitialLoad:(id)a3;
- (void)contentProtectionStateChanged:(int64_t)a3 previousState:(int64_t)a4;
- (void)dealloc;
- (void)enumerateObserversWithLastBlock:(id)a3;
- (void)expandThread:(id)a3;
- (void)expandThreadsFromThreadItemIDs:(id)a3;
- (void)finishRecovery;
- (void)insertItemIDs:(id)a3 after:(id)a4 extraInfo:(id)a5;
- (void)insertItemIDs:(id)a3 before:(id)a4 extraInfo:(id)a5;
- (void)invalidateCacheForItemIDs:(id)a3;
- (void)notifyChangeObserver:(id)a3 stockedItemIDs:(id)a4;
- (void)notifyChangeObserversAboutAddedItemIDs:(id)a3 after:(id)a4 extraInfo:(id)a5;
- (void)notifyChangeObserversAboutAddedItemIDs:(id)a3 before:(id)a4 extraInfo:(id)a5;
- (void)notifyChangeObserversAboutMovedItemIDs:(id)a3 after:(id)a4 extraInfo:(id)a5;
- (void)notifyChangeObserversAboutMovedItemIDs:(id)a3 before:(id)a4 extraInfo:(id)a5;
- (void)queryDidFailInitialLoadWithExtraInfo:(id)a3;
- (void)queryDidFinishInitialLoadWithExtraInfo:(id)a3;
- (void)queryMatchedChangedObjectIDs:(id)a3 extraInfo:(id)a4;
- (void)queryMatchedMovedObjectIDs:(id)a3 after:(id)a4 extraInfo:(id)a5;
- (void)queryMatchedMovedObjectIDs:(id)a3 before:(id)a4 extraInfo:(id)a5;
- (void)queryMatchedOldestItemsUpdatedForMailboxesObjectIDs:(id)a3;
- (void)setRepository:(id)a3;
- (void)stopObserving:(id)a3;
@end

@implementation EMMessageList

- (BOOL)isThreaded
{
  v3 = [(EMQueryingCollection *)self query];
  if ([objc_msgSend(v3 "targetClass")])
  {
    v4 = 1;
  }

  else
  {
    v5 = [(EMQueryingCollection *)self query];
    v4 = [objc_msgSend(v5 "targetClass")];
  }

  return v4;
}

- (EMMessageRepository)repository
{
  v7.receiver = self;
  v7.super_class = EMMessageList;
  v4 = [(EMRepositoryObject *)&v7 repository];
  if (v4)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      v6 = [MEMORY[0x1E696AAA8] currentHandler];
      [v6 handleFailureInMethod:a2 object:self file:@"EMMessageList.m" lineNumber:59 description:@"Wrong repository type"];
    }
  }

  return v4;
}

- (NSString)ef_publicDescription
{
  v3 = [MEMORY[0x1E699B7B0] currentDevice];
  v4 = [v3 isInternal];

  if (v4)
  {
    v5 = [(EMMessageList *)self _debugDescriptionIncludeQuery:0];
  }

  else
  {
    v6 = MEMORY[0x1E696AEC0];
    v13.receiver = self;
    v13.super_class = EMMessageList;
    v7 = [(EMObject *)&v13 ef_publicDescription];
    v8 = [(EMQueryingCollection *)self query];
    v9 = [v8 label];
    v10 = [v6 stringWithFormat:@"%@\n\tquery:%@", v7, v9];

    if ([(EMMessageList *)self isThreaded])
    {
      os_unfair_lock_lock(&self->_expandedThreadsLock);
      v11 = [(NSMutableDictionary *)self->_expandedThreads copy];
      os_unfair_lock_unlock(&self->_expandedThreadsLock);
      v5 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@\n\tExpandedThreads:%@", v10, v11];
    }

    else
    {
      v5 = v10;
    }
  }

  return v5;
}

- (id)_sectionPredicates
{
  v2 = [(EMQueryingCollection *)self query];
  v3 = [v2 targetClassOptions];
  v4 = [v3 objectForKeyedSubscript:@"SectionPredicates"];

  return v4;
}

+ (OS_os_log)log
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __20__EMMessageList_log__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = a1;
  if (log_onceToken_23 != -1)
  {
    dispatch_once(&log_onceToken_23, block);
  }

  v2 = log_log_23;

  return v2;
}

void __20__EMMessageList_log__block_invoke(uint64_t a1)
{
  v3 = NSStringFromClass(*(a1 + 32));
  v1 = os_log_create("com.apple.email", [v3 UTF8String]);
  v2 = log_log_23;
  log_log_23 = v1;
}

- (void)dealloc
{
  if ((_os_feature_enabled_impl() & 1) == 0)
  {
    EFUnregisterContentProtectionObserver();
  }

  v3.receiver = self;
  v3.super_class = EMMessageList;
  [(EMQueryingCollection *)&v3 dealloc];
}

- (NSSet)expandedThreadItemIDs
{
  if ([(EMMessageList *)self isThreaded])
  {
    os_unfair_lock_lock(&self->_expandedThreadsLock);
    v3 = objc_alloc(MEMORY[0x1E695DFD8]);
    v4 = [(NSMutableDictionary *)self->_expandedThreads allKeys];
    v5 = [v3 initWithArray:v4];

    os_unfair_lock_unlock(&self->_expandedThreadsLock);
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (void)setRepository:(id)a3
{
  v5 = a3;
  if (v5)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      v6 = [MEMORY[0x1E696AAA8] currentHandler];
      [v6 handleFailureInMethod:a2 object:self file:@"EMMessageList.m" lineNumber:59 description:@"Wrong repository type"];
    }
  }

  v7.receiver = self;
  v7.super_class = EMMessageList;
  [(EMRepositoryObject *)&v7 setRepository:v5];
}

+ (id)threadedMessageListForMailboxes:(id)a3 withRepository:(id)a4 additionalQueryOptions:(unint64_t)a5 countOfItemsToPrecache:(unint64_t)a6 shouldUpdateDisplayDate:(BOOL)a7 sortDescriptors:(id)a8 sectionPredicates:(id)a9 transformPredicate:(id)a10
{
  v16 = a3;
  v17 = a4;
  v18 = a8;
  v19 = a9;
  v20 = a10;
  LOBYTE(v23) = a7;
  v21 = [[a1 alloc] initWithMailboxes:v16 repository:v17 sortDescriptors:v18 sectionPredicates:v19 transformPredicate:v20 targetClass:objc_opt_class() additionalQueryOptions:a5 countOfItemsToPrecache:a6 shouldUpdateDisplayDate:v23 labelPrefix:@"EMMessageList-threaded"];

  return v21;
}

+ (id)simpleMessageListForMailboxes:(id)a3 withRepository:(id)a4 additionalQueryOptions:(unint64_t)a5 countOfItemsToPrecache:(unint64_t)a6 shouldUpdateDisplayDate:(BOOL)a7 sortDescriptors:(id)a8 sectionPredicates:(id)a9 transformPredicate:(id)a10
{
  v16 = a3;
  v17 = a4;
  v18 = a8;
  v19 = a9;
  v20 = a10;
  LOBYTE(v23) = a7;
  v21 = [[a1 alloc] initWithMailboxes:v16 repository:v17 sortDescriptors:v18 sectionPredicates:v19 transformPredicate:v20 targetClass:objc_opt_class() additionalQueryOptions:a5 countOfItemsToPrecache:a6 shouldUpdateDisplayDate:v23 labelPrefix:@"EMMessageList-simple"];

  return v21;
}

+ (id)groupedCommerceSenderMessageListForMailboxes:(id)a3 withRepository:(id)a4 grouping:(int64_t)a5 sectionPredicates:(id)a6 countOfItemsToPrecache:(unint64_t)a7
{
  v7 = [a1 groupedCommerceSenderMessageListForMailboxes:a3 withRepository:a4 grouping:a5 sectionPredicates:a6 countOfItemsToPrecache:a7 transformPredicate:0];

  return v7;
}

+ (id)groupedCommerceSenderMessageListForMailboxes:(id)a3 withRepository:(id)a4 grouping:(int64_t)a5 sectionPredicates:(id)a6 countOfItemsToPrecache:(unint64_t)a7 transformPredicate:(id)a8
{
  v38[1] = *MEMORY[0x1E69E9840];
  v31 = a4;
  v13 = a6;
  v30 = v13;
  v32 = a8;
  v14 = [EMMessageListItemPredicates predicateForMessagesInMailboxes:a3];
  v33 = v14;
  if (v32)
  {
    v33 = v32[2](v32, v14);
  }

  if ([v13 count])
  {
    v15 = [objc_alloc(MEMORY[0x1E695DF90]) initWithObjectsAndKeys:{v13, @"SectionPredicates", 0}];
    if (a7)
    {
      v16 = v15;
      if (v15)
      {
LABEL_9:
        v17 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:a7];
        [v16 setObject:v17 forKeyedSubscript:@"precacheItemsWithCount"];

        goto LABEL_12;
      }

LABEL_8:
      v16 = objc_alloc_init(MEMORY[0x1E695DF90]);
      goto LABEL_9;
    }

    v16 = v15;
  }

  else
  {
    if (a7)
    {
      goto LABEL_8;
    }

    v16 = 0;
  }

LABEL_12:
  v18 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"EMMessageList-grouped-%p", a1];
  v19 = [EMMessageListItemPredicates sortDescriptorForKeyPath:@"displayDate" ascending:0];
  v38[0] = v19;
  v20 = [MEMORY[0x1E695DEC8] arrayWithObjects:v38 count:1];

  v21 = [EMQuery alloc];
  v22 = objc_opt_class();
  v23 = [v33 ef_simplifiedPredicate];
  v34[0] = MEMORY[0x1E69E9820];
  v34[1] = 3221225472;
  v34[2] = __146__EMMessageList_groupedCommerceSenderMessageListForMailboxes_withRepository_grouping_sectionPredicates_countOfItemsToPrecache_transformPredicate___block_invoke;
  v34[3] = &unk_1E826DB78;
  v37 = 72;
  v24 = v18;
  v35 = v24;
  v25 = v16;
  v36 = v25;
  v26 = [(EMQuery *)v21 initWithTargetClass:v22 predicate:v23 sortDescriptors:v20 builder:v34];

  v27 = [[a1 alloc] initWithQuery:v26 repository:v31];
  v28 = *MEMORY[0x1E69E9840];

  return v27;
}

void __146__EMMessageList_groupedCommerceSenderMessageListForMailboxes_withRepository_grouping_sectionPredicates_countOfItemsToPrecache_transformPredicate___block_invoke(void *a1, void *a2)
{
  v3 = a2;
  [v3 setLimit:0];
  [v3 setQueryOptions:a1[6]];
  [v3 setLabel:a1[4]];
  [v3 setTargetClassOptions:a1[5]];
}

- (EMMessageList)initWithMailboxes:(id)a3 repository:(id)a4 sortDescriptors:(id)a5 sectionPredicates:(id)a6 transformPredicate:(id)a7 targetClass:(Class)a8 additionalQueryOptions:(unint64_t)a9 countOfItemsToPrecache:(unint64_t)a10 shouldUpdateDisplayDate:(BOOL)a11 labelPrefix:(id)a12
{
  v18 = a3;
  v19 = a4;
  v36 = a5;
  v38 = a6;
  v20 = a7;
  v21 = a12;
  v35 = v18;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v34 = [MEMORY[0x1E696AAA8] currentHandler];
    [v34 handleFailureInMethod:a2 object:self file:@"EMMessageList.m" lineNumber:210 description:{@"Invalid parameter not satisfying: %@", @"[repository isKindOfClass:[EMMessageRepository class]]"}];
  }

  v22 = [EMMessageListItemPredicates predicateForMessagesInMailboxes:v18];
  v23 = v22;
  if (v20)
  {
    v23 = v20[2](v20, v22);
  }

  if (a11)
  {
    v24 = objc_alloc(MEMORY[0x1E695DF90]);
    v25 = [v24 initWithObjectsAndKeys:{MEMORY[0x1E695E118], @"UpdateDisplayDate", 0, v18}];
    if (a10)
    {
      v26 = v25;
      if (v25)
      {
LABEL_11:
        v27 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:a10];
        [v26 setObject:v27 forKeyedSubscript:@"precacheItemsWithCount"];

        goto LABEL_14;
      }

LABEL_10:
      v26 = objc_alloc_init(MEMORY[0x1E695DF90]);
      goto LABEL_11;
    }

    v26 = v25;
  }

  else
  {
    if (a10)
    {
      goto LABEL_10;
    }

    v26 = 0;
  }

LABEL_14:
  if ([v38 count])
  {
    if (!v26)
    {
      v26 = objc_alloc_init(MEMORY[0x1E695DF90]);
    }

    [v26 setObject:v38 forKeyedSubscript:@"SectionPredicates"];
  }

  v28 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"%@-%p", v21, self];
  v29 = [EMQuery alloc];
  v30 = [v23 ef_simplifiedPredicate];
  v31 = [(EMQuery *)v29 initWithTargetClass:a8 predicate:v30 sortDescriptors:v36 queryOptions:a9 | 8 targetClassOptions:v26 label:v28];

  v32 = [(EMMessageList *)self initWithQuery:v31 repository:v19];
  return v32;
}

- (EMMessageList)initWithMessageList:(id)a3
{
  v4 = a3;
  v5 = [v4 query];
  v6 = [v4 repository];
  v7 = [(EMMessageList *)self initWithQuery:v5 repository:v6];

  if (v7)
  {
    v8 = [v4 filterPredicate];

    if (v8)
    {
      v9 = [v4 filterPredicate];
      [(EMMessageList *)v7 setFilterPredicate:v9];

      v10 = [EMMessageList alloc];
      v11 = [v4 unfilteredMessageList];
      v12 = [v11 query];
      v13 = [v4 unfilteredMessageList];
      v14 = [v13 repository];
      v15 = [(EMMessageList *)v10 initWithQuery:v12 repository:v14];
      [(EMMessageList *)v7 setUnfilteredMessageList:v15];
    }
  }

  return v7;
}

- (EMMessageList)initWithObjectID:(id)a3 query:(id)a4 repository:(id)a5
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v15 = [MEMORY[0x1E696AAA8] currentHandler];
    [v15 handleFailureInMethod:a2 object:self file:@"EMMessageList.m" lineNumber:254 description:{@"Invalid parameter not satisfying: %@", @"[repository isKindOfClass:[EMMessageRepository class]]"}];
  }

  v16.receiver = self;
  v16.super_class = EMMessageList;
  v12 = [(EMQueryingCollection *)&v16 initWithObjectID:v9 query:v10];
  v13 = v12;
  if (v12)
  {
    [(EMMessageList *)v12 _commonInitWithRepository:v11];
  }

  return v13;
}

- (EMMessageList)initWithQuery:(id)a3 repository:(id)a4
{
  v7 = a3;
  v8 = a4;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v12 = [MEMORY[0x1E696AAA8] currentHandler];
    [v12 handleFailureInMethod:a2 object:self file:@"EMMessageList.m" lineNumber:264 description:{@"Invalid parameter not satisfying: %@", @"[repository isKindOfClass:[EMMessageRepository class]]"}];
  }

  v13.receiver = self;
  v13.super_class = EMMessageList;
  v9 = [(EMQueryingCollection *)&v13 initWithObjectID:0 query:v7];
  v10 = v9;
  if (v9)
  {
    [(EMMessageList *)v9 _commonInitWithRepository:v8];
  }

  return v10;
}

- (void)_commonInitWithRepository:(id)a3
{
  v37 = a3;
  if ([(EMMessageList *)self isThreaded])
  {
    self->_expandedThreadsLock._os_unfair_lock_opaque = 0;
    v4 = objc_alloc_init(MEMORY[0x1E695DF90]);
    expandedThreads = self->_expandedThreads;
    self->_expandedThreads = v4;

    v6 = [(EMQueryingCollection *)self query];
    v7 = [v6 predicate];
    v8 = [v37 mailboxRepository];
    v9 = [EMMessageListItemPredicates threadScopeForPredicate:v7 withMailboxTypeResolver:v8];
    threadScope = self->_threadScope;
    self->_threadScope = v9;
  }

  v11 = [MEMORY[0x1E696AD18] weakToStrongObjectsMapTable];
  messageListItemsForRetry = self->_messageListItemsForRetry;
  self->_messageListItemsForRetry = v11;

  v13 = objc_alloc(MEMORY[0x1E699B7F0]);
  v14 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v15 = [v13 initWithObject:v14];
  itemIDSections = self->_itemIDSections;
  self->_itemIDSections = v15;

  v17 = [objc_alloc(MEMORY[0x1E699B7E0]) initWithCountLimit:200];
  cache = self->_cache;
  self->_cache = v17;

  [(EMMessageList *)self setRepository:v37];
  v19 = [(EMQueryingCollection *)self query];
  v20 = [v19 predicate];
  v21 = [v37 mailboxRepository];
  v22 = [EMMessageListItemPredicates mailboxScopeForPredicate:v20 withMailboxTypeResolver:v21];
  mailboxScope = self->_mailboxScope;
  self->_mailboxScope = v22;

  v24 = MEMORY[0x1E699B978];
  v25 = [MEMORY[0x1E696AEC0] stringWithFormat:@"com.apple.email.%@.observerScheduler", objc_opt_class()];
  v26 = [v24 serialDispatchQueueSchedulerWithName:v25];
  observerScheduler = self->_observerScheduler;
  self->_observerScheduler = v26;

  v28 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
  v29 = dispatch_queue_create("com.apple.email.EMMessageList.contentProtectionQueue", v28);
  contentProtectionQueue = self->_contentProtectionQueue;
  self->_contentProtectionQueue = v29;

  if ((_os_feature_enabled_impl() & 1) == 0)
  {
    v31 = self->_contentProtectionQueue;
    EFRegisterContentProtectionObserver();
  }

  v32 = [EMCollectionItemIDStateCapturer alloc];
  v33 = objc_opt_class();
  v34 = NSStringFromClass(v33);
  v35 = [(EMCollectionItemIDStateCapturer *)v32 initWithTitle:v34 delegate:self];
  stateCapturer = self->_stateCapturer;
  self->_stateCapturer = v35;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = objc_alloc(objc_opt_class());

  return [v4 initWithMessageList:self];
}

- (id)_debugDescriptionIncludeQuery:(BOOL)a3
{
  v4 = MEMORY[0x1E696AEC0];
  if (a3)
  {
    v13.receiver = self;
    v13.super_class = EMMessageList;
    v5 = [(EMObject *)&v13 debugDescription];
    v6 = [(EMQueryingCollection *)self query];
    v7 = [v6 debugDescription];
    v8 = [v4 stringWithFormat:@"%@\n\tquery:%@", v5, v7];
  }

  else
  {
    v12.receiver = self;
    v12.super_class = EMMessageList;
    v5 = [(EMObject *)&v12 debugDescription];
    v8 = [v4 stringWithFormat:@"%@\n", v5];
  }

  if ([(EMMessageList *)self isThreaded])
  {
    os_unfair_lock_lock(&self->_expandedThreadsLock);
    v9 = [(NSMutableDictionary *)self->_expandedThreads copy];
    os_unfair_lock_unlock(&self->_expandedThreadsLock);
    v10 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@\n\tExpandedThreads:%@", v8, v9];
  }

  else
  {
    v10 = v8;
  }

  return v10;
}

- (NSString)ef_shortPublicDescription
{
  v3 = [MEMORY[0x1E699B7B0] currentDevice];
  v4 = [v3 isInternal];

  if (v4)
  {
    [(EMMessageList *)self _debugDescriptionIncludeQuery:0];
  }

  else
  {
    [(EMMessageList *)self ef_publicDescription];
  }
  v5 = ;

  return v5;
}

- (void)stopObserving:(id)a3
{
  v4 = a3;
  v7.receiver = self;
  v7.super_class = EMMessageList;
  [(EMQueryingCollection *)&v7 stopObserving:v4];
  v5 = [(EMMessageList *)self cache];
  [v5 removeAllObjects];

  os_unfair_lock_lock(&self->_expandedThreadsLock);
  v6 = [(NSMutableDictionary *)self->_expandedThreads allValues];
  [(NSMutableDictionary *)self->_expandedThreads removeAllObjects];
  os_unfair_lock_unlock(&self->_expandedThreadsLock);
  [v6 makeObjectsPerformSelector:sel_stopObserving_ withObject:self];
}

- (id)objectIDForItemID:(id)a3
{
  v4 = a3;
  if (v4)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = [EMMessageObjectID alloc];
      v6 = [(EMMessageList *)self mailboxScope];
      v7 = [(EMMessageObjectID *)v5 initWithCollectionItemID:v4 mailboxScope:v6];
LABEL_9:
      v10 = v7;

      goto LABEL_11;
    }

    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) != 0 && [(EMMessageList *)self isThreaded])
    {
      v8 = [EMThreadObjectID alloc];
      v6 = [(EMMessageList *)self threadScope];
      v7 = [(EMThreadObjectID *)v8 initWithCollectionItemID:v4 threadScope:v6];
      goto LABEL_9;
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v9 = [EMGroupedSenderObjectID alloc];
      v6 = [(EMMessageList *)self threadScope];
      v7 = [(EMGroupedSenderObjectID *)v9 initWithCollectionItemID:v4 threadScope:v6];
      goto LABEL_9;
    }
  }

  v10 = 0;
LABEL_11:

  return v10;
}

- (id)itemIDForObjectID:(id)a3
{
  v5 = a3;
  if (v5)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass() & 1) != 0 || (objc_opt_class(), (objc_opt_isKindOfClass()) && [(EMMessageList *)self isThreaded]|| (objc_opt_class(), (objc_opt_isKindOfClass()))
    {
      v6 = [v5 collectionItemID];
      goto LABEL_9;
    }

    v7 = [MEMORY[0x1E696AAA8] currentHandler];
    [v7 handleFailureInMethod:a2 object:self file:@"EMMessageList.m" lineNumber:411 description:@"Object ID of unrecognized type"];
  }

  v6 = 0;
LABEL_9:

  return v6;
}

- (BOOL)objectIDBelongsToCollection:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = v4;
    v6 = [(EMMessageList *)self mailboxScope];
    v7 = [v5 mailboxScope];
    v8 = [v6 isEqual:v7];
  }

  else
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0 || ![(EMMessageList *)self isThreaded])
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        v10 = 0;
        goto LABEL_8;
      }
    }

    v9 = v4;
    v6 = [(EMMessageList *)self threadScope];
    v7 = [v9 threadScope];
    v8 = [v6 isEqual:v7];
  }

  v10 = v8;

LABEL_8:
  return v10;
}

- (void)insertItemIDs:(id)a3 before:(id)a4 extraInfo:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  [(EMMessageList *)self _updateSectionsWithItemIDs:v8 extraInfo:v10];
  v11.receiver = self;
  v11.super_class = EMMessageList;
  [(EMQueryingCollection *)&v11 insertItemIDs:v8 before:v9 extraInfo:v10];
}

- (void)insertItemIDs:(id)a3 after:(id)a4 extraInfo:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  [(EMMessageList *)self _updateSectionsWithItemIDs:v8 extraInfo:v10];
  v11.receiver = self;
  v11.super_class = EMMessageList;
  [(EMQueryingCollection *)&v11 insertItemIDs:v8 after:v9 extraInfo:v10];
}

- (void)_updateSectionsWithItemIDs:(id)a3 extraInfo:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(EMMessageList *)self _sectionPredicates];
  v9 = [v8 count];

  if (v9)
  {
    v10 = [(EMMessageList *)self _sectionedObjectIDsFromExtraInfo:v7];
    v11 = [(EMMessageList *)self itemIDSections];
    v13[0] = MEMORY[0x1E69E9820];
    v13[1] = 3221225472;
    v13[2] = __54__EMMessageList__updateSectionsWithItemIDs_extraInfo___block_invoke;
    v13[3] = &unk_1E826DBC8;
    v12 = v10;
    v14 = v12;
    v15 = v6;
    [v11 performWhileLocked:v13];
  }
}

void __54__EMMessageList__updateSectionsWithItemIDs_extraInfo___block_invoke(uint64_t a1, void *a2)
{
  v22 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = objc_alloc_init(MEMORY[0x1E695DFA8]);
  v5 = *(a1 + 32);
  v18[0] = MEMORY[0x1E69E9820];
  v18[1] = 3221225472;
  v18[2] = __54__EMMessageList__updateSectionsWithItemIDs_extraInfo___block_invoke_2;
  v18[3] = &unk_1E826DBA0;
  v6 = v3;
  v19 = v6;
  v7 = v4;
  v20 = v7;
  [v5 enumerateKeysAndObjectsUsingBlock:v18];
  v16 = 0u;
  v17 = 0u;
  v14 = 0u;
  v15 = 0u;
  v8 = *(a1 + 40);
  v9 = [v8 countByEnumeratingWithState:&v14 objects:v21 count:16];
  if (v9)
  {
    v10 = *v15;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v15 != v10)
        {
          objc_enumerationMutation(v8);
        }

        v12 = *(*(&v14 + 1) + 8 * i);
        if (([v7 containsObject:{v12, v14}] & 1) == 0)
        {
          [v6 setObject:0 forKeyedSubscript:v12];
        }
      }

      v9 = [v8 countByEnumeratingWithState:&v14 objects:v21 count:16];
    }

    while (v9);
  }

  v13 = *MEMORY[0x1E69E9840];
}

void __54__EMMessageList__updateSectionsWithItemIDs_extraInfo___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v17 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v6 = a3;
  v7 = [v6 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v7)
  {
    v8 = *v13;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v13 != v8)
        {
          objc_enumerationMutation(v6);
        }

        v10 = *(*(&v12 + 1) + 8 * i);
        [*(a1 + 32) setObject:v5 forKeyedSubscript:{v10, v12}];
        [*(a1 + 40) addObject:v10];
      }

      v7 = [v6 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v7);
  }

  v11 = *MEMORY[0x1E69E9840];
}

- (id)removeItemIDs:(id)a3
{
  v24 = *MEMORY[0x1E69E9840];
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v4 = a3;
  v5 = [v4 countByEnumeratingWithState:&v19 objects:v23 count:16];
  if (v5)
  {
    v6 = *v20;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v20 != v6)
        {
          objc_enumerationMutation(v4);
        }

        v8 = *(*(&v19 + 1) + 8 * i);
        v9 = [(EMMessageList *)self cache];
        [v9 removeObjectForKey:v8];
      }

      v5 = [v4 countByEnumeratingWithState:&v19 objects:v23 count:16];
    }

    while (v5);
  }

  v10 = [(EMMessageList *)self _sectionPredicates];
  v11 = [v10 count];

  if (v11)
  {
    v12 = [(EMMessageList *)self itemIDSections];
    v17[0] = MEMORY[0x1E69E9820];
    v17[1] = 3221225472;
    v17[2] = __31__EMMessageList_removeItemIDs___block_invoke;
    v17[3] = &unk_1E826CA58;
    v18 = v4;
    [v12 performWhileLocked:v17];
  }

  v16.receiver = self;
  v16.super_class = EMMessageList;
  v13 = [(EMQueryingCollection *)&v16 removeItemIDs:v4];

  v14 = *MEMORY[0x1E69E9840];

  return v13;
}

- (id)_unreadItemIDsFromExtraInfo:(id)a3
{
  v4 = a3;
  if ([v4 count])
  {
    v5 = [v4 objectForKeyedSubscript:@"unreadMessageIDs"];
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 3221225472;
    v8[2] = __45__EMMessageList__unreadItemIDsFromExtraInfo___block_invoke;
    v8[3] = &unk_1E826DBF0;
    v8[4] = self;
    v6 = [v5 ef_map:v8];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

id __45__EMMessageList__unreadItemIDsFromExtraInfo___block_invoke(uint64_t a1, uint64_t a2)
{
  v2 = [*(a1 + 32) itemIDForObjectID:a2];

  return v2;
}

- (id)_snippetHintsByObjectIDFromExtraInfo:(id)a3
{
  v3 = a3;
  if ([v3 count])
  {
    v4 = objc_opt_new();
    v5 = [v3 objectForKeyedSubscript:@"snippetHintsByObjectID"];
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 3221225472;
    v8[2] = __54__EMMessageList__snippetHintsByObjectIDFromExtraInfo___block_invoke;
    v8[3] = &unk_1E826DC18;
    v6 = v4;
    v9 = v6;
    [v5 enumerateKeysAndObjectsUsingBlock:v8];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

void __54__EMMessageList__snippetHintsByObjectIDFromExtraInfo___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v7 = a2;
  v5 = a3;
  v6 = [MEMORY[0x1E696AD98] numberWithLongLong:{objc_msgSend(v7, "globalMessageID")}];
  if ([v5 count])
  {
    [*(a1 + 32) setObject:v5 forKeyedSubscript:v6];
  }
}

- (void)_addPrecachedItemsFromExtraInfo:(id)a3
{
  v21 = *MEMORY[0x1E69E9840];
  v13 = [a3 objectForKeyedSubscript:@"precachedItems"];
  v4 = [(EMMessageList *)self cache];
  v18 = 0u;
  v19 = 0u;
  v16 = 0u;
  v17 = 0u;
  obj = v13;
  v5 = [obj countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v5)
  {
    v6 = *v17;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v17 != v6)
        {
          objc_enumerationMutation(obj);
        }

        v8 = *(*(&v16 + 1) + 8 * i);
        v9 = [v8 objectID];
        v10 = [(EMMessageList *)self itemIDForObjectID:v9];
        v15[0] = MEMORY[0x1E69E9820];
        v15[1] = 3221225472;
        v15[2] = __49__EMMessageList__addPrecachedItemsFromExtraInfo___block_invoke;
        v15[3] = &unk_1E826DC40;
        v15[4] = v8;
        v11 = [v4 objectForKey:v10 generator:v15];
      }

      v5 = [obj countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v5);
  }

  v12 = *MEMORY[0x1E69E9840];
}

- (void)notifyChangeObserversAboutAddedItemIDs:(id)a3 before:(id)a4 extraInfo:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  [(EMMessageList *)self _addPrecachedItemsFromExtraInfo:v10];
  v20[0] = 0;
  v20[1] = v20;
  v20[2] = 0x3032000000;
  v20[3] = __Block_byref_object_copy__6;
  v20[4] = __Block_byref_object_dispose__6;
  v21 = [(EMQueryingCollection *)self firstExistingItemIDAfterItemID:v9];
  if (_os_feature_enabled_impl())
  {
    v11 = [v10 objectForKeyedSubscript:@"instantAnswer"];
  }

  else
  {
    v11 = 0;
  }

  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __73__EMMessageList_notifyChangeObserversAboutAddedItemIDs_before_extraInfo___block_invoke;
  v15[3] = &unk_1E826DC68;
  v15[4] = self;
  v12 = v10;
  v16 = v12;
  v17 = v11;
  v13 = v8;
  v18 = v13;
  v19 = v20;
  v14 = v11;
  [(EMMessageList *)self enumerateObserversWithLastBlock:v15];

  _Block_object_dispose(v20, 8);
}

void __73__EMMessageList_notifyChangeObserversAboutAddedItemIDs_before_extraInfo___block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v32 = *MEMORY[0x1E69E9840];
  v5 = a2;
  if (objc_opt_respondsToSelector())
  {
    if (objc_opt_respondsToSelector())
    {
      v6 = [*(a1 + 32) _snippetHintsByObjectIDFromExtraInfo:*(a1 + 40)];
      [v5 collection:*(a1 + 32) shouldHighlightSnippetHints:v6];
    }

    if (objc_opt_respondsToSelector())
    {
      [v5 collection:*(a1 + 32) instantAnswer:*(a1 + 48)];
    }

    v7 = [*(a1 + 32) _unreadItemIDsFromExtraInfo:*(a1 + 40)];
    v21 = 0x7FFFFFFFFFFFFFFFLL;
    v8 = *(a1 + 56);
    if (objc_opt_respondsToSelector())
    {
      v9 = [*(a1 + 32) _itemIDsForItemIDs:*(a1 + 56) changeObserver:v5 extraInfo:*(a1 + 40) outObserverSectionIndex:&v21];

      if ([v9 ef_isEmpty])
      {
        v10 = *(*(a1 + 64) + 8);
        v11 = *(v10 + 40);
        v12 = *(v10 + 40);
        *(v10 + 40) = v11;
      }

      else
      {
        v13 = [*(a1 + 32) _adjustedItemIDToInsertBeforeForExistingItemID:*(*(*(a1 + 64) + 8) + 40) sectionIndex:v21];
        v14 = *(*(a1 + 64) + 8);
        v12 = *(v14 + 40);
        *(v14 + 40) = v13;
      }

      v8 = v9;
    }

    [v5 collection:*(a1 + 32) addedItemIDs:v8 toThreadWithItemID:0 before:*(*(*(a1 + 64) + 8) + 40) unreadItemIDs:v7 isLastObserver:a3];
    v15 = +[EMMessageList log];
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      v16 = *(a1 + 32);
      v17 = v21;
      v18 = [v8 count];
      v19 = *(*(*(a1 + 64) + 8) + 40);
      *buf = 134219010;
      v23 = v16;
      v24 = 2048;
      v25 = v17;
      v26 = 2048;
      v27 = v18;
      v28 = 2114;
      v29 = v19;
      v30 = 1024;
      v31 = a3;
      _os_log_impl(&dword_1C6655000, v15, OS_LOG_TYPE_DEFAULT, "<%p> [section %lu] Adding %lu items before %{public}@, isLastObserver: %{BOOL}d", buf, 0x30u);
    }
  }

  else
  {
    [v5 collection:*(a1 + 32) addedItemIDs:*(a1 + 56) before:*(*(*(a1 + 64) + 8) + 40)];
  }

  v20 = *MEMORY[0x1E69E9840];
}

- (void)notifyChangeObserversAboutAddedItemIDs:(id)a3 after:(id)a4 extraInfo:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  [(EMMessageList *)self _addPrecachedItemsFromExtraInfo:v10];
  v17[0] = 0;
  v17[1] = v17;
  v17[2] = 0x3032000000;
  v17[3] = __Block_byref_object_copy__6;
  v17[4] = __Block_byref_object_dispose__6;
  v18 = [(EMQueryingCollection *)self firstExistingItemIDBeforeItemID:v9];
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __72__EMMessageList_notifyChangeObserversAboutAddedItemIDs_after_extraInfo___block_invoke;
  v13[3] = &unk_1E826DC90;
  v13[4] = self;
  v11 = v10;
  v14 = v11;
  v12 = v8;
  v15 = v12;
  v16 = v17;
  [(EMMessageList *)self enumerateObserversWithLastBlock:v13];

  _Block_object_dispose(v17, 8);
}

void __72__EMMessageList_notifyChangeObserversAboutAddedItemIDs_after_extraInfo___block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v32 = *MEMORY[0x1E69E9840];
  v5 = a2;
  if (objc_opt_respondsToSelector())
  {
    if (objc_opt_respondsToSelector())
    {
      v6 = [*(a1 + 32) _snippetHintsByObjectIDFromExtraInfo:*(a1 + 40)];
      [v5 collection:*(a1 + 32) shouldHighlightSnippetHints:v6];
    }

    v7 = [*(a1 + 32) _unreadItemIDsFromExtraInfo:*(a1 + 40)];
    v21 = 0x7FFFFFFFFFFFFFFFLL;
    v8 = *(a1 + 48);
    if (objc_opt_respondsToSelector())
    {
      v9 = [*(a1 + 32) _itemIDsForItemIDs:*(a1 + 48) changeObserver:v5 extraInfo:*(a1 + 40) outObserverSectionIndex:&v21];

      if ([v9 ef_isEmpty])
      {
        v10 = *(*(a1 + 56) + 8);
        v11 = *(v10 + 40);
        v12 = *(v10 + 40);
        *(v10 + 40) = v11;
      }

      else
      {
        v13 = [*(a1 + 32) _adjustedItemIDToInsertBeforeForExistingItemID:*(*(*(a1 + 56) + 8) + 40) sectionIndex:v21];
        v14 = *(*(a1 + 56) + 8);
        v12 = *(v14 + 40);
        *(v14 + 40) = v13;
      }

      v8 = v9;
    }

    [v5 collection:*(a1 + 32) addedItemIDs:v8 toThreadWithItemID:0 after:*(*(*(a1 + 56) + 8) + 40) unreadItemIDs:v7 isLastObserver:a3];
    v15 = +[EMMessageList log];
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      v16 = *(a1 + 32);
      v17 = v21;
      v18 = [v8 count];
      v19 = *(*(*(a1 + 56) + 8) + 40);
      *buf = 134219010;
      v23 = v16;
      v24 = 2048;
      v25 = v17;
      v26 = 2048;
      v27 = v18;
      v28 = 2114;
      v29 = v19;
      v30 = 1024;
      v31 = a3;
      _os_log_impl(&dword_1C6655000, v15, OS_LOG_TYPE_DEFAULT, "<%p> [section %lu] Adding %lu items after %{public}@, isLastObserver: %{BOOL}d", buf, 0x30u);
    }
  }

  else
  {
    [v5 collection:*(a1 + 32) addedItemIDs:*(a1 + 48) after:*(*(*(a1 + 56) + 8) + 40)];
  }

  v20 = *MEMORY[0x1E69E9840];
}

- (void)notifyChangeObserversAboutMovedItemIDs:(id)a3 before:(id)a4 extraInfo:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v17[0] = 0;
  v17[1] = v17;
  v17[2] = 0x3032000000;
  v17[3] = __Block_byref_object_copy__6;
  v17[4] = __Block_byref_object_dispose__6;
  v18 = [(EMQueryingCollection *)self firstExistingItemIDAfterItemID:v9];
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __73__EMMessageList_notifyChangeObserversAboutMovedItemIDs_before_extraInfo___block_invoke;
  v13[3] = &unk_1E826DCB8;
  v13[4] = self;
  v11 = v8;
  v14 = v11;
  v12 = v10;
  v15 = v12;
  v16 = v17;
  [(EMQueryingCollection *)self enumerateObserversWithBlock:v13];

  _Block_object_dispose(v17, 8);
}

void __73__EMMessageList_notifyChangeObserversAboutMovedItemIDs_before_extraInfo___block_invoke(uint64_t a1, void *a2)
{
  v21 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v12 = 0x7FFFFFFFFFFFFFFFLL;
  v4 = [*(a1 + 32) _itemIDsForItemIDs:*(a1 + 40) changeObserver:v3 extraInfo:*(a1 + 48) outObserverSectionIndex:&v12];
  if ([v4 count])
  {
    if (objc_opt_respondsToSelector())
    {
      v5 = [*(a1 + 32) _adjustedItemIDToInsertBeforeForExistingItemID:*(*(*(a1 + 56) + 8) + 40) sectionIndex:v12];
      v6 = *(*(a1 + 56) + 8);
      v7 = *(v6 + 40);
      *(v6 + 40) = v5;
    }

    [v3 collection:*(a1 + 32) movedItemIDs:v4 before:*(*(*(a1 + 56) + 8) + 40)];
    v8 = +[EMMessageList log];
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
    {
      v10 = *(a1 + 32);
      v11 = *(*(*(a1 + 56) + 8) + 40);
      *buf = 134218754;
      v14 = v10;
      v15 = 2048;
      v16 = v12;
      v17 = 2114;
      v18 = v4;
      v19 = 2114;
      v20 = v11;
      _os_log_debug_impl(&dword_1C6655000, v8, OS_LOG_TYPE_DEBUG, "<%p> [section %lu] Moved %{public}@ before %{public}@", buf, 0x2Au);
    }
  }

  v9 = *MEMORY[0x1E69E9840];
}

- (void)notifyChangeObserversAboutMovedItemIDs:(id)a3 after:(id)a4 extraInfo:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v17[0] = 0;
  v17[1] = v17;
  v17[2] = 0x3032000000;
  v17[3] = __Block_byref_object_copy__6;
  v17[4] = __Block_byref_object_dispose__6;
  v18 = [(EMQueryingCollection *)self firstExistingItemIDBeforeItemID:v9];
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __72__EMMessageList_notifyChangeObserversAboutMovedItemIDs_after_extraInfo___block_invoke;
  v13[3] = &unk_1E826DCB8;
  v13[4] = self;
  v11 = v8;
  v14 = v11;
  v12 = v10;
  v15 = v12;
  v16 = v17;
  [(EMQueryingCollection *)self enumerateObserversWithBlock:v13];

  _Block_object_dispose(v17, 8);
}

void __72__EMMessageList_notifyChangeObserversAboutMovedItemIDs_after_extraInfo___block_invoke(uint64_t a1, void *a2)
{
  v21 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v12 = 0x7FFFFFFFFFFFFFFFLL;
  v4 = [*(a1 + 32) _itemIDsForItemIDs:*(a1 + 40) changeObserver:v3 extraInfo:*(a1 + 48) outObserverSectionIndex:&v12];
  if ([v4 count])
  {
    v5 = [*(a1 + 32) _adjustedItemIDToInsertAfterForExistingItemID:*(*(*(a1 + 56) + 8) + 40) sectionIndex:v12];
    v6 = *(*(a1 + 56) + 8);
    v7 = *(v6 + 40);
    *(v6 + 40) = v5;

    [v3 collection:*(a1 + 32) movedItemIDs:v4 after:*(*(*(a1 + 56) + 8) + 40)];
    v8 = +[EMMessageList log];
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
    {
      v10 = *(a1 + 32);
      v11 = *(*(*(a1 + 56) + 8) + 40);
      *buf = 134218754;
      v14 = v10;
      v15 = 2048;
      v16 = v12;
      v17 = 2114;
      v18 = v4;
      v19 = 2114;
      v20 = v11;
      _os_log_debug_impl(&dword_1C6655000, v8, OS_LOG_TYPE_DEBUG, "<%p> [section %lu] Moved %{public}@ after %{public}@", buf, 0x2Au);
    }
  }

  v9 = *MEMORY[0x1E69E9840];
}

- (void)notifyChangeObserver:(id)a3 stockedItemIDs:(id)a4
{
  v7 = a3;
  v6 = a4;
  if (objc_opt_respondsToSelector())
  {
    [v7 collection:self addedItemIDs:v6 toThreadWithItemID:0 before:0 unreadItemIDs:0 isLastObserver:1];
  }

  else
  {
    [v7 collection:self addedItemIDs:v6 before:0];
  }
}

- (void)enumerateObserversWithLastBlock:(id)a3
{
  v4 = a3;
  v5 = [(EMQueryingCollection *)self changeObservers];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __49__EMMessageList_enumerateObserversWithLastBlock___block_invoke;
  v7[3] = &unk_1E826DD08;
  v7[4] = self;
  v6 = v4;
  v8 = v6;
  [v5 performWhileLocked:v7];
}

void __49__EMMessageList_enumerateObserversWithLastBlock___block_invoke(uint64_t a1, void *a2)
{
  v30 = *MEMORY[0x1E69E9840];
  v3 = [a2 setRepresentation];
  v27[0] = MEMORY[0x1E69E9820];
  v27[1] = 3221225472;
  v27[2] = __49__EMMessageList_enumerateObserversWithLastBlock___block_invoke_2;
  v27[3] = &unk_1E826DCE0;
  v27[4] = *(a1 + 32);
  v4 = [v3 ef_partition:v27];

  v25 = 0u;
  v26 = 0u;
  v23 = 0u;
  v24 = 0u;
  v5 = [v4 first];
  v6 = [v5 countByEnumeratingWithState:&v23 objects:v29 count:16];
  if (v6)
  {
    v7 = 0;
    v8 = *v24;
    do
    {
      v9 = 0;
      do
      {
        if (*v24 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v23 + 1) + 8 * v9);
        v11 = *(a1 + 40);
        v12 = [v4 first];
        (*(v11 + 16))(v11, v10, ++v7 == [v12 count]);

        ++v9;
      }

      while (v6 != v9);
      v6 = [v5 countByEnumeratingWithState:&v23 objects:v29 count:16];
    }

    while (v6);
  }

  v21 = 0u;
  v22 = 0u;
  v19 = 0u;
  v20 = 0u;
  v13 = [v4 second];
  v14 = [v13 countByEnumeratingWithState:&v19 objects:v28 count:16];
  if (v14)
  {
    v15 = *v20;
    do
    {
      v16 = 0;
      do
      {
        if (*v20 != v15)
        {
          objc_enumerationMutation(v13);
        }

        v17 = *(*(&v19 + 1) + 8 * v16);
        (*(*(a1 + 40) + 16))();
        ++v16;
      }

      while (v14 != v16);
      v14 = [v13 countByEnumeratingWithState:&v19 objects:v28 count:16];
    }

    while (v14);
  }

  v18 = *MEMORY[0x1E69E9840];
}

uint64_t __49__EMMessageList_enumerateObserversWithLastBlock___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  if (objc_opt_respondsToSelector())
  {
    v4 = [v3 collectionPrefersBatchingUpdates:*(a1 + 32)];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (id)filteredMessageListWithPredicate:(id)a3 userFiltered:(BOOL)a4
{
  v4 = a4;
  v32[2] = *MEMORY[0x1E69E9840];
  v7 = a3;
  if (self->_unfilteredMessageList)
  {
    v26 = [MEMORY[0x1E696AAA8] currentHandler];
    [v26 handleFailureInMethod:a2 object:self file:@"EMMessageList.m" lineNumber:661 description:@"filters can't stack"];
  }

  v8 = [(EMQueryingCollection *)self query];
  v9 = MEMORY[0x1E696AB28];
  v10 = [v8 predicate];
  v32[0] = v10;
  v32[1] = v7;
  v11 = [MEMORY[0x1E695DEC8] arrayWithObjects:v32 count:2];
  v12 = [v9 andPredicateWithSubpredicates:v11];

  v13 = [v8 targetClassOptions];
  v27 = [v13 mutableCopy];

  if (v4)
  {
    v14 = [v8 queryOptions] & 0xFFFFFFFFFFFFEFFFLL;
  }

  else
  {
    v14 = [v8 queryOptions];
  }

  v15 = [EMQuery alloc];
  v16 = [v8 targetClass];
  v17 = [v12 ef_simplifiedPredicate];
  v18 = [v8 sortDescriptors];
  v29[0] = MEMORY[0x1E69E9820];
  v29[1] = 3221225472;
  v29[2] = __63__EMMessageList_filteredMessageListWithPredicate_userFiltered___block_invoke;
  v29[3] = &unk_1E826DD30;
  v31 = v14;
  v19 = v28;
  v30 = v19;
  v20 = [(EMQuery *)v15 initWithTargetClass:v16 predicate:v17 sortDescriptors:v18 builder:v29];

  v21 = objc_alloc(objc_opt_class());
  v22 = [(EMMessageList *)self repository];
  v23 = [v21 initWithQuery:v20 repository:v22];

  [v23 setFilterPredicate:v7];
  [v23 setUnfilteredMessageList:self];

  v24 = *MEMORY[0x1E69E9840];

  return v23;
}

void __63__EMMessageList_filteredMessageListWithPredicate_userFiltered___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  [v3 setQueryOptions:*(a1 + 40)];
  [v3 setTargetClassOptions:*(a1 + 32)];
}

- (EMMessageList)unfilteredMessageList
{
  if (self->_unfilteredMessageList)
  {
    self = self->_unfilteredMessageList;
  }

  return self;
}

- (BOOL)hasSectionPredicates
{
  v2 = [(EMMessageList *)self _sectionPredicates];
  v3 = [v2 count] != 0;

  return v3;
}

- (id)_sectionedObjectIDsFromExtraInfo:(id)a3
{
  v3 = a3;
  if ([v3 count])
  {
    v4 = [v3 objectForKeyedSubscript:@"collectionItemIDBySections"];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (unint64_t)_sectionIndexForIdentifier:(id)a3
{
  v4 = a3;
  v5 = [(EMMessageList *)self _sectionPredicates];
  v6 = v5;
  if (v5)
  {
    v7 = [v5 indexOfKey:v4];
  }

  else
  {
    v7 = 0x7FFFFFFFFFFFFFFFLL;
  }

  return v7;
}

- (id)_sectionIdentifierForIndex:(unint64_t)a3
{
  v4 = [(EMMessageList *)self _sectionPredicates];
  v5 = [v4 keyAtIndex:a3];

  return v5;
}

- (unint64_t)_sectionIndexForItemID:(id)a3
{
  v4 = [(EMMessageList *)self _sectionIdentierForItemID:a3];
  v5 = [(EMMessageList *)self _sectionIndexForIdentifier:v4];

  return v5;
}

- (id)_sectionIdentierForItemID:(id)a3
{
  v4 = a3;
  v12 = 0;
  v13 = &v12;
  v14 = 0x3032000000;
  v15 = __Block_byref_object_copy__6;
  v16 = __Block_byref_object_dispose__6;
  v17 = 0;
  v5 = [(EMMessageList *)self itemIDSections];
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __43__EMMessageList__sectionIdentierForItemID___block_invoke;
  v9[3] = &unk_1E826DD58;
  v11 = &v12;
  v6 = v4;
  v10 = v6;
  [v5 performWhileLocked:v9];

  v7 = v13[5];
  _Block_object_dispose(&v12, 8);

  return v7;
}

void __43__EMMessageList__sectionIdentierForItemID___block_invoke(uint64_t a1, void *a2)
{
  v6 = a2;
  v3 = [v6 objectForKeyedSubscript:*(a1 + 32)];
  v4 = *(*(a1 + 40) + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = v3;
}

- (id)_itemIDsForItemIDs:(id)a3 changeObserver:(id)a4 extraInfo:(id)a5 outObserverSectionIndex:(unint64_t *)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  if (objc_opt_respondsToSelector())
  {
    v13 = [v11 sectionForCollection:self];
    v14 = [(EMMessageList *)self _sectionedObjectIDsFromExtraInfo:v12];
    v15 = v14;
    if (v13)
    {
      v16 = [v14 objectForKeyedSubscript:v13];
      v17 = v16;
      v18 = MEMORY[0x1E695E0F0];
      if (v16)
      {
        v18 = v16;
      }

      v19 = v18;
    }

    else
    {
      v20 = objc_alloc(MEMORY[0x1E695DFD8]);
      v21 = [v15 allValues];
      v22 = [v21 ef_flatten];
      v23 = [v20 initWithArray:v22];

      v25[0] = MEMORY[0x1E69E9820];
      v25[1] = 3221225472;
      v25[2] = __85__EMMessageList__itemIDsForItemIDs_changeObserver_extraInfo_outObserverSectionIndex___block_invoke;
      v25[3] = &unk_1E826DD80;
      v26 = v23;
      v17 = v23;
      v19 = [v10 ef_filter:v25];
    }

    if (a6)
    {
      *a6 = [(EMMessageList *)self _sectionIndexForIdentifier:v13];
    }
  }

  else
  {
    v19 = v10;
  }

  return v19;
}

- (id)_adjustedItemIDToInsertBeforeForExistingItemID:(id)a3 sectionIndex:(unint64_t)a4
{
  v18 = *MEMORY[0x1E69E9840];
  v6 = a3;
  if (v6)
  {
    v7 = [(EMMessageList *)self _sectionIndexForItemID:v6];
    v8 = v7;
    if (a4 == 0x7FFFFFFFFFFFFFFFLL || v7 <= a4)
    {
      if (v7 == a4)
      {
        goto LABEL_10;
      }

      v9 = +[EMMessageList log];
      if (os_log_type_enabled(v9, OS_LOG_TYPE_FAULT))
      {
        v12 = 134218498;
        v13 = a4;
        v14 = 2114;
        v15 = v6;
        v16 = 2048;
        v17 = v8;
        _os_log_fault_impl(&dword_1C6655000, v9, OS_LOG_TYPE_FAULT, "Attempting to insert items from section %lu before item %{public}@ in previous section %lu", &v12, 0x20u);
      }
    }

    else
    {
      v9 = +[EMMessageList log];
      if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
      {
        v12 = 138543874;
        v13 = v6;
        v14 = 2048;
        v15 = v8;
        v16 = 2048;
        v17 = a4;
        _os_log_impl(&dword_1C6655000, v9, OS_LOG_TYPE_INFO, "Existing item %{public}@ in section %lu, inserting at end of section %lu", &v12, 0x20u);
      }
    }

    v6 = 0;
  }

LABEL_10:
  v10 = *MEMORY[0x1E69E9840];

  return v6;
}

- (id)_adjustedItemIDToInsertAfterForExistingItemID:(id)a3 sectionIndex:(unint64_t)a4
{
  v18 = *MEMORY[0x1E69E9840];
  v6 = a3;
  if (v6)
  {
    v7 = [(EMMessageList *)self _sectionIndexForItemID:v6];
    v8 = v7;
    if (a4 == 0x7FFFFFFFFFFFFFFFLL)
    {
      if (v7 == 0x7FFFFFFFFFFFFFFFLL)
      {
        goto LABEL_14;
      }

      v9 = +[EMMessageList log];
      if (!os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
      {
        goto LABEL_13;
      }

      v12 = 138543874;
      v13 = v6;
      v14 = 2048;
      v15 = v8;
      v16 = 2048;
      v17 = 0x7FFFFFFFFFFFFFFFLL;
    }

    else
    {
      if (v7 >= a4)
      {
        if (v7 == a4)
        {
          goto LABEL_14;
        }

        v9 = +[EMMessageList log];
        if (os_log_type_enabled(v9, OS_LOG_TYPE_FAULT))
        {
          v12 = 134218498;
          v13 = a4;
          v14 = 2114;
          v15 = v6;
          v16 = 2048;
          v17 = v8;
          _os_log_fault_impl(&dword_1C6655000, v9, OS_LOG_TYPE_FAULT, "Attempting to insert items from section %lu after item %{public}@ in following section %lu", &v12, 0x20u);
        }

        goto LABEL_13;
      }

      v9 = +[EMMessageList log];
      if (!os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
      {
LABEL_13:

        v6 = 0;
        goto LABEL_14;
      }

      v12 = 138543874;
      v13 = v6;
      v14 = 2048;
      v15 = v8;
      v16 = 2048;
      v17 = a4;
    }

    _os_log_impl(&dword_1C6655000, v9, OS_LOG_TYPE_INFO, "Existing item %{public}@ in section %lu, inserting at start of section %lu", &v12, 0x20u);
    goto LABEL_13;
  }

LABEL_14:
  v10 = *MEMORY[0x1E69E9840];

  return v6;
}

- (void)expandThreadsFromThreadItemIDs:(id)a3
{
  v19 = *MEMORY[0x1E69E9840];
  v5 = a3;
  if (![(EMMessageList *)self isThreaded])
  {
    v12 = [MEMORY[0x1E696AAA8] currentHandler];
    [v12 handleFailureInMethod:a2 object:self file:@"EMMessageList.m" lineNumber:818 description:@"Message list does not support threading"];
  }

  [(EMMessageList *)self messageListItemsForItemIDs:v5];
  v16 = 0u;
  v17 = 0u;
  v14 = 0u;
  v6 = v15 = 0u;
  v7 = [v6 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v7)
  {
    v8 = *v15;
    do
    {
      v9 = 0;
      do
      {
        if (*v15 != v8)
        {
          objc_enumerationMutation(v6);
        }

        v10 = *(*(&v14 + 1) + 8 * v9);
        v13[0] = MEMORY[0x1E69E9820];
        v13[1] = 3221225472;
        v13[2] = __48__EMMessageList_expandThreadsFromThreadItemIDs___block_invoke;
        v13[3] = &unk_1E826DDA8;
        v13[4] = self;
        [v10 addSuccessBlock:v13];
        ++v9;
      }

      while (v7 != v9);
      v7 = [v6 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v7);
  }

  v11 = *MEMORY[0x1E69E9840];
}

void __48__EMMessageList_expandThreadsFromThreadItemIDs___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [*(a1 + 32) expandThread:v3];
  }
}

- (void)expandThread:(id)a3
{
  v8 = a3;
  if (![(EMMessageList *)self isThreaded])
  {
    v7 = [MEMORY[0x1E696AAA8] currentHandler];
    [v7 handleFailureInMethod:a2 object:self file:@"EMMessageList.m" lineNumber:831 description:@"Message list does not support threading"];
  }

  os_unfair_lock_lock(&self->_expandedThreadsLock);
  expandedThreads = self->_expandedThreads;
  v6 = [v8 itemID];
  [(NSMutableDictionary *)expandedThreads setObject:v8 forKeyedSubscript:v6];

  os_unfair_lock_unlock(&self->_expandedThreadsLock);
  [v8 beginObserving:self];
}

- (void)collapseThread:(id)a3
{
  v5 = a3;
  if (![(EMMessageList *)self isThreaded])
  {
    v10 = [MEMORY[0x1E696AAA8] currentHandler];
    [v10 handleFailureInMethod:a2 object:self file:@"EMMessageList.m" lineNumber:841 description:@"Message list does not support threading"];
  }

  os_unfair_lock_lock(&self->_expandedThreadsLock);
  expandedThreads = self->_expandedThreads;
  v7 = [v5 itemID];
  [(NSMutableDictionary *)expandedThreads removeObjectForKey:v7];

  os_unfair_lock_unlock(&self->_expandedThreadsLock);
  v8 = [v5 allItemIDs];
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __32__EMMessageList_collapseThread___block_invoke;
  v12[3] = &unk_1E826DDF8;
  v12[4] = self;
  v9 = v5;
  v13 = v9;
  [v8 addSuccessBlock:v12];
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __32__EMMessageList_collapseThread___block_invoke_4;
  v11[3] = &unk_1E826D7A0;
  v11[4] = self;
  [v8 addFailureBlock:v11];
}

void __32__EMMessageList_collapseThread___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(a1 + 32) removeItemIDs:v3];
  v5 = [MEMORY[0x1E695DFD8] setWithArray:v3];
  [*(a1 + 32) setRecentlyCollapsedItemIDs:v5];

  [*(a1 + 40) stopObserving:*(a1 + 32)];
  v6 = [*(a1 + 32) observerScheduler];
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __32__EMMessageList_collapseThread___block_invoke_2;
  v8[3] = &unk_1E826C148;
  v8[4] = *(a1 + 32);
  v7 = v3;
  v9 = v7;
  [v6 performBlock:v8];
}

void __32__EMMessageList_collapseThread___block_invoke_2(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2[0] = MEMORY[0x1E69E9820];
  v2[1] = 3221225472;
  v2[2] = __32__EMMessageList_collapseThread___block_invoke_3;
  v2[3] = &unk_1E826DDD0;
  v2[4] = v1;
  v3 = *(a1 + 40);
  [v1 enumerateObserversWithBlock:v2];
}

void __32__EMMessageList_collapseThread___block_invoke_4(uint64_t a1, void *a2)
{
  v9 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = +[EMMessageList log];
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    v5 = *(a1 + 32);
    v6 = [v3 ef_publicDescription];
    __32__EMMessageList_collapseThread___block_invoke_4_cold_1(v5, v6, v8, v4);
  }

  v7 = *MEMORY[0x1E69E9840];
}

- (BOOL)anyExpandedThreadContainsItemID:(id)a3
{
  v4 = a3;
  v5 = [(EMMessageList *)self isThreaded]&& (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && [(EMQueryingCollection *)self containsItemID:v4 includeRecovery:1];

  return v5;
}

- (BOOL)recentlyCollapsedThreadContainsItemID:(id)a3
{
  v4 = a3;
  v5 = [(EMMessageList *)self recentlyCollapsedItemIDs];
  v6 = [v5 containsObject:v4];

  return v6;
}

- (id)messageListItemForItemID:(id)a3
{
  v3 = [(EMMessageList *)self messageListItemForItemID:a3 ifAvailable:0];

  return v3;
}

- (id)messageListItemsForItemIDs:(id)a3
{
  v3 = [(EMMessageList *)self messageListItemsForItemIDs:a3 ifAvailable:0];

  return v3;
}

- (id)messageListItemsForItemIDs:(id)a3 ifAvailable:(BOOL)a4
{
  v4 = a4;
  v24 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = +[EMMessageList log];
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8 = [(EMMessageList *)self ef_shortPublicDescription];
    v9 = v8;
    v10 = &stru_1F45FD218;
    *buf = 138543874;
    if (v4)
    {
      v10 = @" available";
    }

    v19 = v10;
    v20 = 2112;
    v21 = v6;
    v22 = 2114;
    v23 = v8;
    _os_log_impl(&dword_1C6655000, v7, OS_LOG_TYPE_DEFAULT, "Getting%{public}@ message list items: %@\n%{public}@", buf, 0x20u);
  }

  if (v4)
  {
    v11 = [(EMMessageList *)self _availableMessageListItemsForItemIDs:v6];
  }

  else
  {
    v12 = objc_alloc_init(MEMORY[0x1E695DF90]);
    v16[0] = MEMORY[0x1E69E9820];
    v16[1] = 3221225472;
    v16[2] = __56__EMMessageList_messageListItemsForItemIDs_ifAvailable___block_invoke;
    v16[3] = &unk_1E826DE20;
    v13 = v12;
    v17 = v13;
    v11 = [v6 ef_map:v16];
    [(EMMessageList *)self _attemptToFinishRetryingPromisesByItemID:v13];
  }

  v14 = *MEMORY[0x1E69E9840];

  return v11;
}

id __56__EMMessageList_messageListItemsForItemIDs_ifAvailable___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [MEMORY[0x1E699B868] promise];
  [*(a1 + 32) setObject:v4 forKeyedSubscript:v3];
  v5 = [v4 future];

  return v5;
}

- (id)_availableMessageListItemsForItemIDs:(id)a3
{
  v4 = a3;
  v5 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v6 = [(EMMessageList *)self cache];
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __54__EMMessageList__availableMessageListItemsForItemIDs___block_invoke;
  aBlock[3] = &unk_1E826DE20;
  v7 = v5;
  v29 = v7;
  v8 = _Block_copy(aBlock);
  v25[0] = MEMORY[0x1E69E9820];
  v25[1] = 3221225472;
  v25[2] = __54__EMMessageList__availableMessageListItemsForItemIDs___block_invoke_2;
  v25[3] = &unk_1E826DEC0;
  v25[4] = self;
  v9 = v6;
  v26 = v9;
  v10 = v8;
  v27 = v10;
  v18 = [v4 ef_map:v25];
  v11 = [v7 allKeys];
  v23[0] = MEMORY[0x1E69E9820];
  v23[1] = 3221225472;
  v23[2] = __54__EMMessageList__availableMessageListItemsForItemIDs___block_invoke_171;
  v23[3] = &unk_1E826DEE8;
  v23[4] = self;
  v12 = v7;
  v24 = v12;
  v13 = [v11 ef_compactMap:v23];
  if ([v11 count])
  {
    v14 = [(EMMessageList *)self repository];
    v15 = [(EMObject *)self objectID];
    v16 = [v14 messageListItemsForObjectIDs:v13 observationIdentifier:v15];

    v19[0] = MEMORY[0x1E69E9820];
    v19[1] = 3221225472;
    v19[2] = __54__EMMessageList__availableMessageListItemsForItemIDs___block_invoke_173;
    v19[3] = &unk_1E826DF10;
    v20 = v13;
    v21 = self;
    v22 = v12;
    [v16 enumerateObjectsUsingBlock:v19];
  }

  return v18;
}

id __54__EMMessageList__availableMessageListItemsForItemIDs___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [MEMORY[0x1E699B868] promise];
  [*(a1 + 32) setObject:v4 forKeyedSubscript:v3];
  v5 = [v4 future];

  return v5;
}

NSObject *__54__EMMessageList__availableMessageListItemsForItemIDs___block_invoke_2(id *a1, void *a2)
{
  v41 = *MEMORY[0x1E69E9840];
  v3 = a2;
  if ([a1[4] containsItemID:v3 includeRecovery:0])
  {
    v4 = [a1[5] cachedObjectForKey:v3];
    if (v4)
    {
      v30[0] = MEMORY[0x1E69E9820];
      v30[1] = 3221225472;
      v30[2] = __54__EMMessageList__availableMessageListItemsForItemIDs___block_invoke_3;
      v30[3] = &unk_1E826DE48;
      v31 = a1[5];
      v5 = v3;
      v6 = a1[4];
      v32[0] = v5;
      v32[1] = v6;
      [v4 addSuccessBlock:v30];
      v7 = +[EMMessageList log];
      if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
      {
        v8 = [v4 resultIfAvailable];
        v9 = [v8 ef_shortPublicDescription];
        v10 = [a1[4] ef_shortPublicDescription];
        v11 = v10;
        v12 = @"<Future not finished>";
        *buf = 138544130;
        if (v9)
        {
          v12 = v9;
        }

        v34 = v5;
        v35 = 2114;
        v36 = v4;
        v37 = 2114;
        v38 = v12;
        v39 = 2114;
        v40 = v10;
        _os_log_impl(&dword_1C6655000, v7, OS_LOG_TYPE_DEFAULT, "Cache hit for %{public}@ returning cached %{public}@:\n%{public}@\n%{public}@", buf, 0x2Au);
      }

      v13 = &v31;
      v14 = v32;
      v15 = v4;
    }

    else
    {
      v23 = MEMORY[0x1E69E9820];
      v24 = 3221225472;
      v25 = __54__EMMessageList__availableMessageListItemsForItemIDs___block_invoke_169;
      v26 = &unk_1E826DE98;
      v17 = a1[5];
      v29 = a1[6];
      v18 = v3;
      v27 = v18;
      v28 = a1[5];
      v15 = [v17 objectForKey:v18 generator:&v23];
      v19 = [EMMessageList log:v23];
      if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
      {
        v20 = [a1[4] ef_shortPublicDescription];
        *buf = 138543874;
        v34 = v18;
        v35 = 2114;
        v36 = v15;
        v37 = 2114;
        v38 = v20;
        _os_log_impl(&dword_1C6655000, v19, OS_LOG_TYPE_DEFAULT, "Cache miss for %{public}@ returning cached %{public}@\n%{public}@", buf, 0x20u);
      }

      v13 = &v29;
      v14 = &v27;
    }
  }

  else
  {
    v15 = (*(a1[6] + 2))();
    v4 = +[EMMessageList log];
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v16 = [a1[4] ef_shortPublicDescription];
      *buf = 138543874;
      v34 = v3;
      v35 = 2114;
      v36 = v15;
      v37 = 2114;
      v38 = v16;
      _os_log_impl(&dword_1C6655000, v4, OS_LOG_TYPE_DEFAULT, "Unknown item request for %{public}@ returning uncached %{public}@\n%{public}@", buf, 0x20u);
    }
  }

  v21 = *MEMORY[0x1E69E9840];

  return v15;
}

void __54__EMMessageList__availableMessageListItemsForItemIDs___block_invoke_3(uint64_t a1, void *a2)
{
  v13 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = [v3 summary];

  if (!v4)
  {
    [*(a1 + 32) removeObjectForKey:*(a1 + 40)];
    v5 = +[EMMessageList log];
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v6 = *(a1 + 40);
      v7 = *(a1 + 48);
      v9 = 138543618;
      v10 = v6;
      v11 = 2112;
      v12 = v7;
      _os_log_impl(&dword_1C6655000, v5, OS_LOG_TYPE_DEFAULT, "Missing summary for itemID, refetching: %{public}@\n%@", &v9, 0x16u);
    }
  }

  v8 = *MEMORY[0x1E69E9840];
}

id __54__EMMessageList__availableMessageListItemsForItemIDs___block_invoke_169(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = (*(*(a1 + 48) + 16))();
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __54__EMMessageList__availableMessageListItemsForItemIDs___block_invoke_2_170;
  v5[3] = &unk_1E826DE70;
  v6 = *(a1 + 40);
  v7 = *(a1 + 32);
  [v3 addFailureBlock:v5];

  return v3;
}

id __54__EMMessageList__availableMessageListItemsForItemIDs___block_invoke_171(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = (a1 + 32);
  v5 = [*(a1 + 32) objectIDForItemID:v3];
  if (!v5)
  {
    v6 = [*(a1 + 40) objectForKeyedSubscript:v3];
    v7 = [MEMORY[0x1E696ABC0] em_itemNotFoundErrorWithItemID:v3];
    [v6 finishWithError:v7];

    v8 = +[EMMessageList log];
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      __54__EMMessageList__availableMessageListItemsForItemIDs___block_invoke_171_cold_1(v3, v4, v8);
    }
  }

  return v5;
}

void __54__EMMessageList__availableMessageListItemsForItemIDs___block_invoke_173(id *a1, void *a2, uint64_t a3)
{
  v23 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = [a1[4] objectAtIndexedSubscript:a3];
  v7 = [a1[5] itemIDForObjectID:v6];
  v8 = [a1[6] objectForKeyedSubscript:v7];
  [v8 finishWithFuture:v5];
  v9 = +[EMMessageList log];
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    v10 = [v8 future];
    v11 = a1[5];
    v15 = 138544130;
    v16 = v5;
    v17 = 2114;
    v18 = v10;
    v19 = 2114;
    v20 = v7;
    v21 = 2112;
    v22 = v11;
    _os_log_impl(&dword_1C6655000, v9, OS_LOG_TYPE_DEFAULT, "Repository future %{public}@ finishes future %{public}@ for itemID %{public}@\n%@", &v15, 0x2Au);
  }

  v12 = [v5 delegate];
  v13 = [v8 future];
  [v13 setDelegate:v12];

  v14 = *MEMORY[0x1E69E9840];
}

- (void)_attemptToFinishRetryingPromisesByItemID:(id)a3
{
  v4 = a3;
  v5 = [v4 allKeys];
  v6 = [(EMMessageList *)self _availableMessageListItemsForItemIDs:v5];
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __58__EMMessageList__attemptToFinishRetryingPromisesByItemID___block_invoke;
  v9[3] = &unk_1E826DF60;
  v10 = v6;
  v7 = v4;
  v11 = v7;
  v12 = self;
  v8 = v6;
  [v5 enumerateObjectsUsingBlock:v9];
}

void __58__EMMessageList__attemptToFinishRetryingPromisesByItemID___block_invoke(id *a1, void *a2, uint64_t a3)
{
  v29 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = [a1[4] objectAtIndexedSubscript:a3];
  v7 = [a1[5] objectForKeyedSubscript:v5];
  v8 = [v7 future];
  v9 = [v6 delegate];
  [v8 setDelegate:v9];

  v10 = +[EMMessageList log];
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    v11 = [a1[6] ef_shortPublicDescription];
    *buf = 138544130;
    v22 = v6;
    v23 = 2114;
    v24 = v8;
    v25 = 2114;
    v26 = v5;
    v27 = 2114;
    v28 = v11;
    _os_log_impl(&dword_1C6655000, v10, OS_LOG_TYPE_DEFAULT, "Future %{public}@ finishes retrying future %{public}@ for itemID %{public}@\n%{public}@", buf, 0x2Au);
  }

  v19[0] = MEMORY[0x1E69E9820];
  v19[1] = 3221225472;
  v19[2] = __58__EMMessageList__attemptToFinishRetryingPromisesByItemID___block_invoke_175;
  v19[3] = &unk_1E826DDA8;
  v12 = v7;
  v20 = v12;
  [v6 addSuccessBlock:v19];
  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = __58__EMMessageList__attemptToFinishRetryingPromisesByItemID___block_invoke_2;
  v16[3] = &unk_1E826DF38;
  v16[4] = a1[6];
  v13 = v5;
  v17 = v13;
  v14 = v12;
  v18 = v14;
  [v6 addFailureBlock:v16];

  v15 = *MEMORY[0x1E69E9840];
}

void __58__EMMessageList__attemptToFinishRetryingPromisesByItemID___block_invoke_2(id *a1, void *a2)
{
  v3 = a2;
  v4 = [v3 domain];
  if (![v4 isEqualToString:@"EMErrorDomain"])
  {

    goto LABEL_5;
  }

  v5 = [v3 code];

  if (v5 != 1025)
  {
LABEL_5:
    [a1[6] finishWithError:v3];
    goto LABEL_6;
  }

  v6 = [a1[4] contentProtectionQueue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __58__EMMessageList__attemptToFinishRetryingPromisesByItemID___block_invoke_3;
  block[3] = &unk_1E826C230;
  v7 = a1[5];
  v8 = a1[4];
  v10 = v7;
  v11 = v8;
  v12 = a1[6];
  dispatch_async(v6, block);

LABEL_6:
}

void __58__EMMessageList__attemptToFinishRetryingPromisesByItemID___block_invoke_3(void *a1)
{
  v18 = *MEMORY[0x1E69E9840];
  if ((EFProtectedDataAvailable() & 1) != 0 || _os_feature_enabled_impl())
  {
    v2 = +[EMMessageList log];
    if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
    {
      v3 = a1[4];
      v4 = a1[5];
      *buf = 138543618;
      v15 = v3;
      v16 = 2112;
      v17 = v4;
      _os_log_impl(&dword_1C6655000, v2, OS_LOG_TYPE_DEFAULT, "Retrying for item: %{public}@\n%@", buf, 0x16u);
    }

    v5 = a1[5];
    v6 = a1[6];
    v12 = a1[4];
    v13 = v6;
    v7 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v13 forKeys:&v12 count:1];
    [v5 _attemptToFinishRetryingPromisesByItemID:v7];
  }

  else
  {
    v8 = +[EMMessageList log];
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v9 = a1[4];
      v10 = a1[5];
      *buf = 138543618;
      v15 = v9;
      v16 = 2112;
      v17 = v10;
      _os_log_impl(&dword_1C6655000, v8, OS_LOG_TYPE_DEFAULT, "Adding item for retry when unlocked: %{public}@\n%@", buf, 0x16u);
    }

    [*(a1[5] + 104) setObject:a1[6] forKey:a1[4]];
  }

  v11 = *MEMORY[0x1E69E9840];
}

- (void)invalidateCacheForItemIDs:(id)a3
{
  v16 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [(EMMessageList *)self cache];
  v13 = 0u;
  v14 = 0u;
  v11 = 0u;
  v12 = 0u;
  v6 = v4;
  v7 = [v6 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v7)
  {
    v8 = *v12;
    do
    {
      v9 = 0;
      do
      {
        if (*v12 != v8)
        {
          objc_enumerationMutation(v6);
        }

        [v5 removeObjectForKey:{*(*(&v11 + 1) + 8 * v9++), v11}];
      }

      while (v7 != v9);
      v7 = [v6 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v7);
  }

  v10 = *MEMORY[0x1E69E9840];
}

- (id)itemIDOfMessageListItemWithDisplayMessage:(id)a3
{
  v4 = a3;
  if ([(EMMessageList *)self isThreaded])
  {
    v5 = -[EMThreadCollectionItemID initWithConversationID:]([EMThreadCollectionItemID alloc], "initWithConversationID:", [v4 conversationID]);
  }

  else
  {
    v5 = [v4 itemID];
  }

  v6 = v5;
  if ([(EMQueryingCollection *)self containsItemID:v5 includeRecovery:0])
  {
    v7 = v6;
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (void)finishRecovery
{
  v20 = *MEMORY[0x1E69E9840];
  v18.receiver = self;
  v18.super_class = EMMessageList;
  [(EMQueryingCollection *)&v18 finishRecovery];
  v3 = [(EMMessageList *)self cache];
  [v3 removeAllObjects];

  if ([(EMMessageList *)self isThreaded])
  {
    os_unfair_lock_lock(&self->_expandedThreadsLock);
    v4 = [(NSMutableDictionary *)self->_expandedThreads allValues];
    os_unfair_lock_unlock(&self->_expandedThreadsLock);
    v16 = 0u;
    v17 = 0u;
    v14 = 0u;
    v15 = 0u;
    v5 = v4;
    v6 = [v5 countByEnumeratingWithState:&v14 objects:v19 count:16];
    if (v6)
    {
      v7 = *v15;
      do
      {
        for (i = 0; i != v6; ++i)
        {
          if (*v15 != v7)
          {
            objc_enumerationMutation(v5);
          }

          v9 = *(*(&v14 + 1) + 8 * i);
          v10 = [v9 allItemIDs];
          v11 = [v10 resultIfAvailable];

          if ([v11 count])
          {
            v12 = [v9 itemID];
            [(EMMessageList *)self insertItemIDs:v11 after:v12 extraInfo:0];
          }
        }

        v6 = [v5 countByEnumeratingWithState:&v14 objects:v19 count:16];
      }

      while (v6);
    }
  }

  v13 = *MEMORY[0x1E69E9840];
}

- (void)contentProtectionStateChanged:(int64_t)a3 previousState:(int64_t)a4
{
  v14 = *MEMORY[0x1E69E9840];
  v5 = [(EMMessageList *)self contentProtectionQueue:a3];
  dispatch_assert_queue_V2(v5);

  if (EFProtectedDataAvailable())
  {
    v6 = [(NSMapTable *)self->_messageListItemsForRetry dictionaryRepresentation];
    if ([v6 count])
    {
      v7 = +[EMMessageList log];
      if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
      {
        v8 = [v6 allKeys];
        v10 = 138543618;
        v11 = v8;
        v12 = 2114;
        v13 = self;
        _os_log_impl(&dword_1C6655000, v7, OS_LOG_TYPE_DEFAULT, "Retrying for items: %{public}@\n%{public}@", &v10, 0x16u);
      }

      [(EMMessageList *)self _attemptToFinishRetryingPromisesByItemID:v6];
      [(NSMapTable *)self->_messageListItemsForRetry removeAllObjects];
    }
  }

  v9 = *MEMORY[0x1E69E9840];
}

- (id)_extraInfoForThread:(id)a3 addedItemIDs:(id)a4
{
  v17[1] = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  if (_os_feature_enabled_impl() & 1) != 0 || _os_feature_enabled_impl() && (EMIsGreymatterSupported())
  {
    v8 = [v6 itemID];
    v9 = [(EMMessageList *)self _sectionIdentierForItemID:v8];

    if (v9)
    {
      v15 = v7;
      v16 = @"collectionItemIDBySections";
      v14 = v9;
      v10 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v15 forKeys:&v14 count:1];
      v17[0] = v10;
      v11 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v17 forKeys:&v16 count:1];
    }

    else
    {
      v11 = 0;
    }
  }

  else
  {
    v11 = 0;
  }

  v12 = *MEMORY[0x1E69E9840];

  return v11;
}

- (void)collection:(id)a3 addedItemIDs:(id)a4 before:(id)a5
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v18 = [MEMORY[0x1E696AAA8] currentHandler];
    [v18 handleFailureInMethod:a2 object:self file:@"EMMessageList.m" lineNumber:1109 description:{@"Invalid parameter not satisfying: %@", @"[collection isKindOfClass:[EMThread class]]"}];
  }

  if (![(EMQueryingCollection *)self isRecovering])
  {
    v12 = v9;
    if ([(EMMessageList *)self _threadIsExpanded:v12])
    {
      if (!v11)
      {
        v13 = [v12 itemID];
        v11 = [(EMMessageList *)self _nextThreadItemIDAfterThreadItemID:v13];
      }

      v14 = [(EMMessageList *)self _extraInfoForThread:v12 addedItemIDs:v10];
      [(EMMessageList *)self insertItemIDs:v10 before:v11 extraInfo:v14];
      v15 = [(EMMessageList *)self observerScheduler];
      v19[0] = MEMORY[0x1E69E9820];
      v19[1] = 3221225472;
      v19[2] = __48__EMMessageList_collection_addedItemIDs_before___block_invoke;
      v19[3] = &unk_1E826DFB0;
      v19[4] = self;
      v20 = v10;
      v16 = v11;
      v21 = v16;
      v17 = v14;
      v22 = v17;
      v23 = v12;
      [v15 performSyncBlock:v19];

      v11 = v16;
    }
  }
}

void __48__EMMessageList_collection_addedItemIDs_before___block_invoke(uint64_t a1)
{
  if ((_os_feature_enabled_impl() & 1) != 0 || _os_feature_enabled_impl() && EMIsGreymatterSupported())
  {
    v2 = *(a1 + 32);
    v3 = *(a1 + 40);
    v4 = *(a1 + 48);
    v5 = *(a1 + 56);

    [v2 notifyChangeObserversAboutAddedItemIDs:v3 before:v4 extraInfo:v5];
  }

  else
  {
    v6 = [*(a1 + 32) firstExistingItemIDAfterItemID:*(a1 + 48)];
    v7 = *(a1 + 32);
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = __48__EMMessageList_collection_addedItemIDs_before___block_invoke_2;
    v9[3] = &unk_1E826DF88;
    v9[4] = v7;
    v10 = *(a1 + 40);
    v11 = *(a1 + 64);
    v12 = v6;
    v8 = v6;
    [v7 enumerateObserversWithLastBlock:v9];
  }
}

void __48__EMMessageList_collection_addedItemIDs_before___block_invoke_2(uint64_t a1, void *a2, uint64_t a3)
{
  v26 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = objc_opt_respondsToSelector();
  v7 = *(a1 + 32);
  v8 = *(a1 + 40);
  if (v6)
  {
    v9 = [*(a1 + 48) itemID];
    [v5 collection:v7 addedItemIDs:v8 toThreadWithItemID:v9 before:*(a1 + 56) unreadItemIDs:MEMORY[0x1E695E0F0] isLastObserver:a3];

    v10 = +[EMMessageList log];
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      v11 = *(a1 + 32);
      v12 = [*(a1 + 40) count];
      v13 = [*(a1 + 48) itemID];
      v14 = *(a1 + 56);
      v16 = 134219010;
      v17 = v11;
      v18 = 2048;
      v19 = v12;
      v20 = 2114;
      v21 = v13;
      v22 = 2114;
      v23 = v14;
      v24 = 1024;
      v25 = a3;
      _os_log_impl(&dword_1C6655000, v10, OS_LOG_TYPE_DEFAULT, "<%p> Adding %lu items to threadItemID: %{public}@ before %{public}@, isLastObserver: %{BOOL}d", &v16, 0x30u);
    }
  }

  else
  {
    [v5 collection:*(a1 + 32) addedItemIDs:*(a1 + 40) before:*(a1 + 56)];
  }

  v15 = *MEMORY[0x1E69E9840];
}

- (void)collection:(id)a3 addedItemIDs:(id)a4 after:(id)a5
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v17 = [MEMORY[0x1E696AAA8] currentHandler];
    [v17 handleFailureInMethod:a2 object:self file:@"EMMessageList.m" lineNumber:1147 description:{@"Invalid parameter not satisfying: %@", @"[collection isKindOfClass:[EMThread class]]"}];
  }

  if (![(EMQueryingCollection *)self isRecovering])
  {
    v12 = v9;
    if ([(EMMessageList *)self _threadIsExpanded:v12])
    {
      if (!v11)
      {
        v11 = [v12 itemID];
      }

      v13 = [(EMMessageList *)self _extraInfoForThread:v12 addedItemIDs:v10];
      [(EMMessageList *)self insertItemIDs:v10 after:v11 extraInfo:v13];
      v14 = [(EMMessageList *)self observerScheduler];
      v18[0] = MEMORY[0x1E69E9820];
      v18[1] = 3221225472;
      v18[2] = __47__EMMessageList_collection_addedItemIDs_after___block_invoke;
      v18[3] = &unk_1E826DFB0;
      v18[4] = self;
      v19 = v10;
      v15 = v11;
      v20 = v15;
      v16 = v13;
      v21 = v16;
      v22 = v12;
      [v14 performSyncBlock:v18];

      v11 = v15;
    }
  }
}

void __47__EMMessageList_collection_addedItemIDs_after___block_invoke(uint64_t a1)
{
  if ((_os_feature_enabled_impl() & 1) != 0 || _os_feature_enabled_impl() && EMIsGreymatterSupported())
  {
    v2 = *(a1 + 32);
    v3 = *(a1 + 40);
    v4 = *(a1 + 48);
    v5 = *(a1 + 56);

    [v2 notifyChangeObserversAboutAddedItemIDs:v3 after:v4 extraInfo:v5];
  }

  else
  {
    v6 = [*(a1 + 32) firstExistingItemIDBeforeItemID:*(a1 + 48)];
    v7 = *(a1 + 32);
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = __47__EMMessageList_collection_addedItemIDs_after___block_invoke_2;
    v9[3] = &unk_1E826DF88;
    v9[4] = v7;
    v10 = *(a1 + 40);
    v11 = *(a1 + 64);
    v12 = v6;
    v8 = v6;
    [v7 enumerateObserversWithLastBlock:v9];
  }
}

void __47__EMMessageList_collection_addedItemIDs_after___block_invoke_2(uint64_t a1, void *a2, uint64_t a3)
{
  v26 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = objc_opt_respondsToSelector();
  v7 = *(a1 + 32);
  v8 = *(a1 + 40);
  if (v6)
  {
    v9 = [*(a1 + 48) itemID];
    [v5 collection:v7 addedItemIDs:v8 toThreadWithItemID:v9 after:*(a1 + 56) unreadItemIDs:MEMORY[0x1E695E0F0] isLastObserver:a3];

    v10 = +[EMMessageList log];
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      v11 = *(a1 + 32);
      v12 = [*(a1 + 40) count];
      v13 = [*(a1 + 48) itemID];
      v14 = *(a1 + 56);
      v16 = 134219010;
      v17 = v11;
      v18 = 2048;
      v19 = v12;
      v20 = 2114;
      v21 = v13;
      v22 = 2114;
      v23 = v14;
      v24 = 1024;
      v25 = a3;
      _os_log_impl(&dword_1C6655000, v10, OS_LOG_TYPE_DEFAULT, "<%p> Adding %lu items to threadItemID: %{public}@ after %{public}@, isLastObserver: %{BOOL}d", &v16, 0x30u);
    }
  }

  else
  {
    [v5 collection:*(a1 + 32) addedItemIDs:*(a1 + 40) after:*(a1 + 56)];
  }

  v15 = *MEMORY[0x1E69E9840];
}

- (void)collection:(id)a3 movedItemIDs:(id)a4 before:(id)a5
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v15 = [MEMORY[0x1E696AAA8] currentHandler];
    [v15 handleFailureInMethod:a2 object:self file:@"EMMessageList.m" lineNumber:1186 description:{@"Invalid parameter not satisfying: %@", @"[collection isKindOfClass:[EMThread class]]"}];
  }

  if (![(EMQueryingCollection *)self isRecovering])
  {
    v12 = v9;
    if ([(EMMessageList *)self _threadIsExpanded:v12])
    {
      if (!v11)
      {
        v13 = [v12 itemID];
        v11 = [(EMMessageList *)self _nextThreadItemIDAfterThreadItemID:v13];
      }

      [(EMMessageList *)self insertItemIDs:v10 before:v11 extraInfo:0];
      v14 = [(EMMessageList *)self observerScheduler];
      v16[0] = MEMORY[0x1E69E9820];
      v16[1] = 3221225472;
      v16[2] = __48__EMMessageList_collection_movedItemIDs_before___block_invoke;
      v16[3] = &unk_1E826C230;
      v16[4] = self;
      v11 = v11;
      v17 = v11;
      v18 = v10;
      [v14 performSyncBlock:v16];
    }
  }
}

void __48__EMMessageList_collection_movedItemIDs_before___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) firstExistingItemIDAfterItemID:*(a1 + 40)];
  v3 = *(a1 + 32);
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __48__EMMessageList_collection_movedItemIDs_before___block_invoke_2;
  v5[3] = &unk_1E826DFD8;
  v5[4] = v3;
  v6 = *(a1 + 48);
  v7 = v2;
  v4 = v2;
  [v3 enumerateObserversWithBlock:v5];
}

- (void)collection:(id)a3 movedItemIDs:(id)a4 after:(id)a5
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v14 = [MEMORY[0x1E696AAA8] currentHandler];
    [v14 handleFailureInMethod:a2 object:self file:@"EMMessageList.m" lineNumber:1214 description:{@"Invalid parameter not satisfying: %@", @"[collection isKindOfClass:[EMThread class]]"}];
  }

  if (![(EMQueryingCollection *)self isRecovering])
  {
    v12 = v9;
    if ([(EMMessageList *)self _threadIsExpanded:v12])
    {
      if (!v11)
      {
        v11 = [v12 itemID];
      }

      [(EMMessageList *)self insertItemIDs:v10 after:v11 extraInfo:0];
      v13 = [(EMMessageList *)self observerScheduler];
      v15[0] = MEMORY[0x1E69E9820];
      v15[1] = 3221225472;
      v15[2] = __47__EMMessageList_collection_movedItemIDs_after___block_invoke;
      v15[3] = &unk_1E826C230;
      v15[4] = self;
      v11 = v11;
      v16 = v11;
      v17 = v10;
      [v13 performSyncBlock:v15];
    }
  }
}

void __47__EMMessageList_collection_movedItemIDs_after___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) firstExistingItemIDBeforeItemID:*(a1 + 40)];
  v3 = *(a1 + 32);
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __47__EMMessageList_collection_movedItemIDs_after___block_invoke_2;
  v5[3] = &unk_1E826DFD8;
  v5[4] = v3;
  v6 = *(a1 + 48);
  v7 = v2;
  v4 = v2;
  [v3 enumerateObserversWithBlock:v5];
}

- (void)collection:(id)a3 changedItemIDs:(id)a4
{
  v7 = a3;
  v8 = a4;
  [(EMMessageList *)self doesNotRecognizeSelector:a2];
  __assert_rtn("[EMMessageList collection:changedItemIDs:]", "EMMessageList.m", 1243, "0");
}

- (void)collection:(id)a3 changedItemIDs:(id)a4 itemIDsWithCountChanges:(id)a5 itemIDsWithBrandIndicatorLocationChanges:(id)a6
{
  v11 = a3;
  v12 = a4;
  v13 = a5;
  v14 = a6;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v16 = [MEMORY[0x1E696AAA8] currentHandler];
    [v16 handleFailureInMethod:a2 object:self file:@"EMMessageList.m" lineNumber:1247 description:{@"Invalid parameter not satisfying: %@", @"[collection isKindOfClass:[EMThread class]]"}];
  }

  if (![(EMQueryingCollection *)self isRecovering]&& [(EMMessageList *)self _threadIsExpanded:v11])
  {
    v15 = [(EMMessageList *)self observerScheduler];
    v17[0] = MEMORY[0x1E69E9820];
    v17[1] = 3221225472;
    v17[2] = __108__EMMessageList_collection_changedItemIDs_itemIDsWithCountChanges_itemIDsWithBrandIndicatorLocationChanges___block_invoke;
    v17[3] = &unk_1E826D498;
    v17[4] = self;
    v18 = v12;
    v19 = v13;
    v20 = v14;
    [v15 performSyncBlock:v17];
  }
}

- (void)collection:(id)a3 deletedItemIDs:(id)a4
{
  v7 = a3;
  v8 = a4;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v11 = [MEMORY[0x1E696AAA8] currentHandler];
    [v11 handleFailureInMethod:a2 object:self file:@"EMMessageList.m" lineNumber:1266 description:{@"Invalid parameter not satisfying: %@", @"[collection isKindOfClass:[EMThread class]]"}];
  }

  if (![(EMQueryingCollection *)self isRecovering])
  {
    v9 = [(EMMessageList *)self removeItemIDs:v8];
    v10 = [(EMMessageList *)self observerScheduler];
    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 3221225472;
    v12[2] = __43__EMMessageList_collection_deletedItemIDs___block_invoke;
    v12[3] = &unk_1E826C148;
    v12[4] = self;
    v13 = v8;
    [v10 performSyncBlock:v12];
  }
}

void __43__EMMessageList_collection_deletedItemIDs___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2[0] = MEMORY[0x1E69E9820];
  v2[1] = 3221225472;
  v2[2] = __43__EMMessageList_collection_deletedItemIDs___block_invoke_2;
  v2[3] = &unk_1E826DDD0;
  v2[4] = v1;
  v3 = *(a1 + 40);
  [v1 enumerateObserversWithBlock:v2];
}

- (void)collectionDidFinishInitialLoad:(id)a3
{
  v5 = a3;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v9 = [MEMORY[0x1E696AAA8] currentHandler];
    [v9 handleFailureInMethod:a2 object:self file:@"EMMessageList.m" lineNumber:1285 description:{@"Invalid parameter not satisfying: %@", @"[collection isKindOfClass:[EMThread class]]"}];
  }

  v6 = v5;
  v7 = [(EMMessageList *)self observerScheduler];
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __48__EMMessageList_collectionDidFinishInitialLoad___block_invoke;
  v10[3] = &unk_1E826C148;
  v10[4] = self;
  v8 = v6;
  v11 = v8;
  [v7 performSyncBlock:v10];
}

void __48__EMMessageList_collectionDidFinishInitialLoad___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2[0] = MEMORY[0x1E69E9820];
  v2[1] = 3221225472;
  v2[2] = __48__EMMessageList_collectionDidFinishInitialLoad___block_invoke_2;
  v2[3] = &unk_1E826DDD0;
  v2[4] = v1;
  v3 = *(a1 + 40);
  [v1 enumerateObserversWithBlock:v2];
}

void __48__EMMessageList_collectionDidFinishInitialLoad___block_invoke_2(uint64_t a1, void *a2)
{
  v5 = a2;
  if (objc_opt_respondsToSelector())
  {
    v3 = *(a1 + 32);
    v4 = [*(a1 + 40) itemID];
    [v5 collection:v3 didFinishInitialLoadForThreadWithItemID:v4];
  }
}

- (void)collection:(id)a3 replacedExistingItemID:(id)a4 withNewItemID:(id)a5
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v13 = [MEMORY[0x1E696AAA8] currentHandler];
    [v13 handleFailureInMethod:a2 object:self file:@"EMMessageList.m" lineNumber:1298 description:{@"Invalid parameter not satisfying: %@", @"[collection isKindOfClass:[EMThread class]]"}];
  }

  if (![(EMQueryingCollection *)self isRecovering])
  {
    v12 = [(EMMessageList *)self observerScheduler];
    v14[0] = MEMORY[0x1E69E9820];
    v14[1] = 3221225472;
    v14[2] = __65__EMMessageList_collection_replacedExistingItemID_withNewItemID___block_invoke;
    v14[3] = &unk_1E826C230;
    v14[4] = self;
    v15 = v10;
    v16 = v11;
    [v12 performSyncBlock:v14];
  }
}

void __65__EMMessageList_collection_replacedExistingItemID_withNewItemID___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __65__EMMessageList_collection_replacedExistingItemID_withNewItemID___block_invoke_2;
  v3[3] = &unk_1E826DFD8;
  v3[4] = v2;
  v4 = *(a1 + 40);
  v5 = *(a1 + 48);
  [v2 enumerateObserversWithBlock:v3];
}

- (void)queryMatchedMovedObjectIDs:(id)a3 before:(id)a4 extraInfo:(id)a5
{
  v8 = a4;
  v9 = a5;
  v10 = [(EMMessageList *)self _expandedObjectIDsForObjectIDs:a3];
  v11.receiver = self;
  v11.super_class = EMMessageList;
  [(EMQueryingCollection *)&v11 queryMatchedMovedObjectIDs:v10 before:v8 extraInfo:v9];
}

- (void)queryMatchedMovedObjectIDs:(id)a3 after:(id)a4 extraInfo:(id)a5
{
  v8 = a4;
  v9 = a5;
  v10 = [(EMMessageList *)self _expandedObjectIDsForObjectIDs:a3];
  v11.receiver = self;
  v11.super_class = EMMessageList;
  [(EMQueryingCollection *)&v11 queryMatchedMovedObjectIDs:v10 after:v8 extraInfo:v9];
}

- (void)queryMatchedChangedObjectIDs:(id)a3 extraInfo:(id)a4
{
  v41 = *MEMORY[0x1E69E9840];
  v38.receiver = self;
  v38.super_class = EMMessageList;
  v19 = a4;
  [(EMQueryingCollection *)&v38 queryMatchedChangedObjectIDs:a3 extraInfo:v19];
  v20 = [v19 objectForKeyedSubscript:@"changesByObjectID"];
  v32 = 0;
  v33 = &v32;
  v34 = 0x3032000000;
  v35 = __Block_byref_object_copy__6;
  v36 = __Block_byref_object_dispose__6;
  v37 = 0;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __56__EMMessageList_queryMatchedChangedObjectIDs_extraInfo___block_invoke;
  aBlock[3] = &unk_1E826E000;
  aBlock[4] = &v32;
  v6 = _Block_copy(aBlock);
  os_unfair_lock_lock(&self->_expandedThreadsLock);
  v7 = [v20 count];
  if (v7 >= [(NSMutableDictionary *)self->_expandedThreads count])
  {
    expandedThreads = self->_expandedThreads;
    v29[0] = MEMORY[0x1E69E9820];
    v29[1] = 3221225472;
    v29[2] = __56__EMMessageList_queryMatchedChangedObjectIDs_extraInfo___block_invoke_2;
    v29[3] = &unk_1E826E028;
    v30 = v6;
    [(NSMutableDictionary *)expandedThreads enumerateKeysAndObjectsUsingBlock:v29];
    v8 = v30;
  }

  else
  {
    v27 = 0u;
    v28 = 0u;
    v25 = 0u;
    v26 = 0u;
    v8 = [v20 allKeys];
    v9 = [v8 countByEnumeratingWithState:&v25 objects:v40 count:16];
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

          v12 = [(NSMutableDictionary *)self->_expandedThreads objectForKeyedSubscript:*(*(&v25 + 1) + 8 * i)];
          (*(v6 + 2))(v6, v12);
        }

        v9 = [v8 countByEnumeratingWithState:&v25 objects:v40 count:16];
      }

      while (v9);
    }
  }

  os_unfair_lock_unlock(&self->_expandedThreadsLock);
  v23 = 0u;
  v24 = 0u;
  v21 = 0u;
  v22 = 0u;
  v14 = v33[5];
  v15 = [v14 countByEnumeratingWithState:&v21 objects:v39 count:16];
  if (v15)
  {
    v16 = *v22;
    do
    {
      for (j = 0; j != v15; ++j)
      {
        if (*v22 != v16)
        {
          objc_enumerationMutation(v14);
        }

        [(EMMessageList *)self collapseThread:*(*(&v21 + 1) + 8 * j)];
      }

      v15 = [v14 countByEnumeratingWithState:&v21 objects:v39 count:16];
    }

    while (v15);
  }

  _Block_object_dispose(&v32, 8);
  v18 = *MEMORY[0x1E69E9840];
}

void __56__EMMessageList_queryMatchedChangedObjectIDs_extraInfo___block_invoke(uint64_t a1, void *a2)
{
  v7 = a2;
  if (v7 && [v7 count] <= 1)
  {
    v3 = *(*(*(a1 + 32) + 8) + 40);
    if (v3)
    {
      [v3 addObject:v7];
    }

    else
    {
      v4 = [objc_alloc(MEMORY[0x1E695DF70]) initWithObjects:{v7, 0}];
      v5 = *(*(a1 + 32) + 8);
      v6 = *(v5 + 40);
      *(v5 + 40) = v4;
    }
  }
}

- (id)_expandedObjectIDsForObjectIDs:(id)a3
{
  v23 = *MEMORY[0x1E69E9840];
  v15 = a3;
  if ([(EMMessageList *)self isThreaded])
  {
    v4 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v20 = 0u;
    v21 = 0u;
    v18 = 0u;
    v19 = 0u;
    v5 = v15;
    v6 = [v5 countByEnumeratingWithState:&v18 objects:v22 count:16];
    if (v6)
    {
      v7 = *v19;
      do
      {
        for (i = 0; i != v6; ++i)
        {
          if (*v19 != v7)
          {
            objc_enumerationMutation(v5);
          }

          v9 = *(*(&v18 + 1) + 8 * i);
          [v4 addObject:v9];
          v10 = [(EMMessageList *)self itemIDForObjectID:v9];
          if ([(EMMessageList *)self _threadIsExpandedForItemID:v10])
          {
            v16[0] = MEMORY[0x1E69E9820];
            v16[1] = 3221225472;
            v16[2] = __48__EMMessageList__expandedObjectIDsForObjectIDs___block_invoke;
            v16[3] = &unk_1E826E050;
            v16[4] = self;
            v17 = v4;
            v11 = [(EMQueryingCollection *)self iterateItemIDsStartingAtItemID:v10 inReverse:0 withBlock:v16];
          }
        }

        v6 = [v5 countByEnumeratingWithState:&v18 objects:v22 count:16];
      }

      while (v6);
    }

    v12 = v15;
  }

  else
  {
    v12 = v15;
    v4 = v15;
  }

  v13 = *MEMORY[0x1E69E9840];

  return v4;
}

uint64_t __48__EMMessageList__expandedObjectIDsForObjectIDs___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();
  if (isKindOfClass)
  {
    v5 = [*(a1 + 32) objectIDForItemID:v3];
    if (v5)
    {
      [*(a1 + 40) addObject:v5];
    }
  }

  return isKindOfClass & 1;
}

- (void)queryMatchedOldestItemsUpdatedForMailboxesObjectIDs:(id)a3
{
  v4 = a3;
  v5 = +[EMMessageList log];
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    [(EMMessageList *)self queryMatchedOldestItemsUpdatedForMailboxesObjectIDs:v5];
  }

  v6 = [(EMMessageList *)self observerScheduler];
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __69__EMMessageList_queryMatchedOldestItemsUpdatedForMailboxesObjectIDs___block_invoke;
  v8[3] = &unk_1E826C148;
  v7 = v4;
  v9 = v7;
  v10 = self;
  [v6 performSyncBlock:v8];
}

void __69__EMMessageList_queryMatchedOldestItemsUpdatedForMailboxesObjectIDs___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __69__EMMessageList_queryMatchedOldestItemsUpdatedForMailboxesObjectIDs___block_invoke_2;
  v8[3] = &unk_1E826E078;
  v8[4] = *(a1 + 40);
  v3 = [v2 ef_mapValues:v8];
  v4 = *(a1 + 40);
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __69__EMMessageList_queryMatchedOldestItemsUpdatedForMailboxesObjectIDs___block_invoke_3;
  v6[3] = &unk_1E826DDD0;
  v6[4] = v4;
  v7 = v3;
  v5 = v3;
  [v4 enumerateObserversWithBlock:v6];
}

id __69__EMMessageList_queryMatchedOldestItemsUpdatedForMailboxesObjectIDs___block_invoke_2(uint64_t a1, uint64_t a2)
{
  v2 = [*(a1 + 32) itemIDForObjectID:a2];

  return v2;
}

void __69__EMMessageList_queryMatchedOldestItemsUpdatedForMailboxesObjectIDs___block_invoke_3(uint64_t a1, void *a2)
{
  v3 = a2;
  if (objc_opt_respondsToSelector())
  {
    [v3 collection:*(a1 + 32) oldestItemsUpdatedForMailboxes:*(a1 + 40)];
  }
}

- (void)queryDidFinishInitialLoadWithExtraInfo:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = EMMessageList;
  [(EMQueryingCollection *)&v9 queryDidFinishInitialLoad];
  v5 = [(EMMessageList *)self observerScheduler];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __56__EMMessageList_queryDidFinishInitialLoadWithExtraInfo___block_invoke;
  v7[3] = &unk_1E826C148;
  v7[4] = self;
  v6 = v4;
  v8 = v6;
  [v5 performSyncBlock:v7];
}

void __56__EMMessageList_queryDidFinishInitialLoadWithExtraInfo___block_invoke(uint64_t a1)
{
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __56__EMMessageList_queryDidFinishInitialLoadWithExtraInfo___block_invoke_2;
  v5[3] = &unk_1E826DDD0;
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  v4 = *(a1 + 32);
  v6 = v3;
  v7 = v4;
  [v2 enumerateObserversWithBlock:v5];
}

void __56__EMMessageList_queryDidFinishInitialLoadWithExtraInfo___block_invoke_2(uint64_t a1, void *a2)
{
  v4 = a2;
  if (objc_opt_respondsToSelector())
  {
    v3 = [*(a1 + 32) objectForKeyedSubscript:@"localSearchInfo"];
    [v4 collectionDidFinishInitialLoad:*(a1 + 40) searchInfo:v3];
  }
}

- (void)queryDidFailInitialLoadWithExtraInfo:(id)a3
{
  v4 = a3;
  v5 = [(EMMessageList *)self observerScheduler];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __54__EMMessageList_queryDidFailInitialLoadWithExtraInfo___block_invoke;
  v7[3] = &unk_1E826C148;
  v7[4] = self;
  v6 = v4;
  v8 = v6;
  [v5 performSyncBlock:v7];
}

void __54__EMMessageList_queryDidFailInitialLoadWithExtraInfo___block_invoke(uint64_t a1)
{
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __54__EMMessageList_queryDidFailInitialLoadWithExtraInfo___block_invoke_2;
  v5[3] = &unk_1E826DDD0;
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  v4 = *(a1 + 32);
  v6 = v3;
  v7 = v4;
  [v2 enumerateObserversWithBlock:v5];
}

void __54__EMMessageList_queryDidFailInitialLoadWithExtraInfo___block_invoke_2(uint64_t a1, void *a2)
{
  v4 = a2;
  if (objc_opt_respondsToSelector())
  {
    v3 = [*(a1 + 32) objectForKeyedSubscript:@"localSearchInfo"];
    [v4 collectionDidFailInitialLoad:*(a1 + 40) searchInfo:v3];
  }
}

- (BOOL)_threadIsExpanded:(id)a3
{
  v4 = [a3 itemID];
  LOBYTE(self) = [(EMMessageList *)self _threadIsExpandedForItemID:v4];

  return self;
}

- (BOOL)_threadIsExpandedForItemID:(id)a3
{
  v4 = a3;
  os_unfair_lock_lock(&self->_expandedThreadsLock);
  v5 = [(NSMutableDictionary *)self->_expandedThreads objectForKeyedSubscript:v4];
  v6 = v5 != 0;

  os_unfair_lock_unlock(&self->_expandedThreadsLock);
  return v6;
}

- (id)_nextThreadItemIDAfterThreadItemID:(id)a3
{
  v3 = [(EMQueryingCollection *)self iterateItemIDsStartingAtItemID:a3 inReverse:0 withBlock:&__block_literal_global_31];

  return v3;
}

uint64_t __52__EMMessageList__nextThreadItemIDAfterThreadItemID___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  return isKindOfClass & 1;
}

- (id)itemIDOfFirstMessageListItemMatchingPredicate:(id)a3
{
  v24[2] = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = objc_alloc_init(MEMORY[0x1E699B868]);
  v6 = [(EMQueryingCollection *)self query];
  v7 = objc_alloc(MEMORY[0x1E696AB28]);
  v24[0] = v4;
  v8 = [v6 predicate];
  v24[1] = v8;
  v9 = [MEMORY[0x1E695DEC8] arrayWithObjects:v24 count:2];
  v10 = [v7 initWithType:1 subpredicates:v9];

  v11 = [EMQuery alloc];
  v12 = objc_opt_class();
  v13 = [v10 ef_simplifiedPredicate];
  v14 = [v6 sortDescriptors];
  v15 = -[EMQuery initWithTargetClass:predicate:sortDescriptors:queryOptions:label:](v11, "initWithTargetClass:predicate:sortDescriptors:queryOptions:label:", v12, v13, v14, [v6 queryOptions], 0);

  v16 = [(EMMessageList *)self repository];
  v17 = [v5 completionHandlerAdapter];
  [v16 performQuery:v15 limit:1 completionHandler:v17];

  v18 = [v5 future];
  v19 = [v18 result];
  v20 = [v19 firstObject];

  if (v20)
  {
    v21 = [(EMMessageList *)self itemIDOfMessageListItemWithDisplayMessage:v20];
  }

  else
  {
    v21 = 0;
  }

  v22 = *MEMORY[0x1E69E9840];

  return v21;
}

- (id)labelForStateCapture
{
  v2 = [(EMQueryingCollection *)self query];
  v3 = [v2 label];

  return v3;
}

- (id)itemIDsForStateCaptureWithErrorString:(id *)a3
{
  if (a3)
  {
    *a3 = 0;
  }

  v3 = [(EMQueryingCollection *)self allItemIDs];
  v4 = [v3 resultIfAvailable];

  return v4;
}

void __32__EMMessageList_collapseThread___block_invoke_4_cold_1(uint64_t a1, void *a2, uint8_t *buf, os_log_t log)
{
  *buf = 138543618;
  *(buf + 4) = a1;
  *(buf + 6) = 2114;
  *(buf + 14) = a2;
  _os_log_error_impl(&dword_1C6655000, log, OS_LOG_TYPE_ERROR, "Failed to collapse thread %{public}@: %{public}@", buf, 0x16u);
}

- (void)messageListItemForItemID:(os_log_t)log ifAvailable:.cold.1(void *a1, uint8_t *buf, os_log_t log)
{
  *buf = 138543362;
  *(buf + 4) = a1;
  _os_log_error_impl(&dword_1C6655000, log, OS_LOG_TYPE_ERROR, "Attempting to retrieve a messageListItem for a nil itemID from messageList: %{public}@", buf, 0xCu);
}

void __54__EMMessageList__availableMessageListItemsForItemIDs___block_invoke_171_cold_1(uint64_t a1, uint64_t *a2, os_log_t log)
{
  v9 = *MEMORY[0x1E69E9840];
  v3 = *a2;
  v5 = 138543618;
  v6 = a1;
  v7 = 2112;
  v8 = v3;
  _os_log_error_impl(&dword_1C6655000, log, OS_LOG_TYPE_ERROR, "Invalid item: %{public}@\n%@", &v5, 0x16u);
  v4 = *MEMORY[0x1E69E9840];
}

- (void)queryMatchedOldestItemsUpdatedForMailboxesObjectIDs:(uint64_t)a1 .cold.1(uint64_t a1, NSObject *a2)
{
  v5 = *MEMORY[0x1E69E9840];
  v3 = 134217984;
  v4 = a1;
  _os_log_debug_impl(&dword_1C6655000, a2, OS_LOG_TYPE_DEBUG, "<%p> Oldest items updated for mailboxes", &v3, 0xCu);
  v2 = *MEMORY[0x1E69E9840];
}

@end