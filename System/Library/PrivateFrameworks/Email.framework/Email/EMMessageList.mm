@interface EMMessageList
+ (OS_os_log)log;
+ (id)groupedCommerceSenderMessageListForMailboxes:(id)mailboxes withRepository:(id)repository grouping:(int64_t)grouping sectionPredicates:(id)predicates countOfItemsToPrecache:(unint64_t)precache;
+ (id)groupedCommerceSenderMessageListForMailboxes:(id)mailboxes withRepository:(id)repository grouping:(int64_t)grouping sectionPredicates:(id)predicates countOfItemsToPrecache:(unint64_t)precache transformPredicate:(id)predicate;
+ (id)simpleMessageListForMailboxes:(id)mailboxes withRepository:(id)repository additionalQueryOptions:(unint64_t)options countOfItemsToPrecache:(unint64_t)precache shouldUpdateDisplayDate:(BOOL)date sortDescriptors:(id)descriptors sectionPredicates:(id)predicates transformPredicate:(id)self0;
+ (id)threadedMessageListForMailboxes:(id)mailboxes withRepository:(id)repository additionalQueryOptions:(unint64_t)options countOfItemsToPrecache:(unint64_t)precache shouldUpdateDisplayDate:(BOOL)date sortDescriptors:(id)descriptors sectionPredicates:(id)predicates transformPredicate:(id)self0;
- (BOOL)_threadIsExpanded:(id)expanded;
- (BOOL)_threadIsExpandedForItemID:(id)d;
- (BOOL)anyExpandedThreadContainsItemID:(id)d;
- (BOOL)hasSectionPredicates;
- (BOOL)isThreaded;
- (BOOL)objectIDBelongsToCollection:(id)collection;
- (BOOL)recentlyCollapsedThreadContainsItemID:(id)d;
- (EMMessageList)initWithMailboxes:(id)mailboxes repository:(id)repository sortDescriptors:(id)descriptors sectionPredicates:(id)predicates transformPredicate:(id)predicate targetClass:(Class)class additionalQueryOptions:(unint64_t)options countOfItemsToPrecache:(unint64_t)self0 shouldUpdateDisplayDate:(BOOL)self1 labelPrefix:(id)self2;
- (EMMessageList)initWithMessageList:(id)list;
- (EMMessageList)initWithObjectID:(id)d query:(id)query repository:(id)repository;
- (EMMessageList)initWithQuery:(id)query repository:(id)repository;
- (EMMessageList)unfilteredMessageList;
- (EMMessageRepository)repository;
- (NSSet)expandedThreadItemIDs;
- (NSString)ef_publicDescription;
- (NSString)ef_shortPublicDescription;
- (id)_adjustedItemIDToInsertAfterForExistingItemID:(id)d sectionIndex:(unint64_t)index;
- (id)_adjustedItemIDToInsertBeforeForExistingItemID:(id)d sectionIndex:(unint64_t)index;
- (id)_availableMessageListItemsForItemIDs:(id)ds;
- (id)_debugDescriptionIncludeQuery:(BOOL)query;
- (id)_expandedObjectIDsForObjectIDs:(id)ds;
- (id)_extraInfoForThread:(id)thread addedItemIDs:(id)ds;
- (id)_itemIDsForItemIDs:(id)ds changeObserver:(id)observer extraInfo:(id)info outObserverSectionIndex:(unint64_t *)index;
- (id)_nextThreadItemIDAfterThreadItemID:(id)d;
- (id)_sectionIdentierForItemID:(id)d;
- (id)_sectionIdentifierForIndex:(unint64_t)index;
- (id)_sectionPredicates;
- (id)_sectionedObjectIDsFromExtraInfo:(id)info;
- (id)_snippetHintsByObjectIDFromExtraInfo:(id)info;
- (id)_unreadItemIDsFromExtraInfo:(id)info;
- (id)copyWithZone:(_NSZone *)zone;
- (id)filteredMessageListWithPredicate:(id)predicate userFiltered:(BOOL)filtered;
- (id)itemIDForObjectID:(id)d;
- (id)itemIDOfFirstMessageListItemMatchingPredicate:(id)predicate;
- (id)itemIDOfMessageListItemWithDisplayMessage:(id)message;
- (id)itemIDsForStateCaptureWithErrorString:(id *)string;
- (id)labelForStateCapture;
- (id)messageListItemForItemID:(id)d;
- (id)messageListItemsForItemIDs:(id)ds;
- (id)messageListItemsForItemIDs:(id)ds ifAvailable:(BOOL)available;
- (id)objectIDForItemID:(id)d;
- (id)removeItemIDs:(id)ds;
- (unint64_t)_sectionIndexForIdentifier:(id)identifier;
- (unint64_t)_sectionIndexForItemID:(id)d;
- (void)_addPrecachedItemsFromExtraInfo:(id)info;
- (void)_attemptToFinishRetryingPromisesByItemID:(id)d;
- (void)_commonInitWithRepository:(id)repository;
- (void)_updateSectionsWithItemIDs:(id)ds extraInfo:(id)info;
- (void)collapseThread:(id)thread;
- (void)collection:(id)collection addedItemIDs:(id)ds after:(id)after;
- (void)collection:(id)collection addedItemIDs:(id)ds before:(id)before;
- (void)collection:(id)collection changedItemIDs:(id)ds;
- (void)collection:(id)collection changedItemIDs:(id)ds itemIDsWithCountChanges:(id)changes itemIDsWithBrandIndicatorLocationChanges:(id)locationChanges;
- (void)collection:(id)collection deletedItemIDs:(id)ds;
- (void)collection:(id)collection movedItemIDs:(id)ds after:(id)after;
- (void)collection:(id)collection movedItemIDs:(id)ds before:(id)before;
- (void)collection:(id)collection replacedExistingItemID:(id)d withNewItemID:(id)iD;
- (void)collectionDidFinishInitialLoad:(id)load;
- (void)contentProtectionStateChanged:(int64_t)changed previousState:(int64_t)state;
- (void)dealloc;
- (void)enumerateObserversWithLastBlock:(id)block;
- (void)expandThread:(id)thread;
- (void)expandThreadsFromThreadItemIDs:(id)ds;
- (void)finishRecovery;
- (void)insertItemIDs:(id)ds after:(id)after extraInfo:(id)info;
- (void)insertItemIDs:(id)ds before:(id)before extraInfo:(id)info;
- (void)invalidateCacheForItemIDs:(id)ds;
- (void)notifyChangeObserver:(id)observer stockedItemIDs:(id)ds;
- (void)notifyChangeObserversAboutAddedItemIDs:(id)ds after:(id)after extraInfo:(id)info;
- (void)notifyChangeObserversAboutAddedItemIDs:(id)ds before:(id)before extraInfo:(id)info;
- (void)notifyChangeObserversAboutMovedItemIDs:(id)ds after:(id)after extraInfo:(id)info;
- (void)notifyChangeObserversAboutMovedItemIDs:(id)ds before:(id)before extraInfo:(id)info;
- (void)queryDidFailInitialLoadWithExtraInfo:(id)info;
- (void)queryDidFinishInitialLoadWithExtraInfo:(id)info;
- (void)queryMatchedChangedObjectIDs:(id)ds extraInfo:(id)info;
- (void)queryMatchedMovedObjectIDs:(id)ds after:(id)after extraInfo:(id)info;
- (void)queryMatchedMovedObjectIDs:(id)ds before:(id)before extraInfo:(id)info;
- (void)queryMatchedOldestItemsUpdatedForMailboxesObjectIDs:(id)ds;
- (void)setRepository:(id)repository;
- (void)stopObserving:(id)observing;
@end

@implementation EMMessageList

- (BOOL)isThreaded
{
  query = [(EMQueryingCollection *)self query];
  if ([objc_msgSend(query "targetClass")])
  {
    v4 = 1;
  }

  else
  {
    query2 = [(EMQueryingCollection *)self query];
    v4 = [objc_msgSend(query2 "targetClass")];
  }

  return v4;
}

- (EMMessageRepository)repository
{
  v7.receiver = self;
  v7.super_class = EMMessageList;
  repository = [(EMRepositoryObject *)&v7 repository];
  if (repository)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
      [currentHandler handleFailureInMethod:a2 object:self file:@"EMMessageList.m" lineNumber:59 description:@"Wrong repository type"];
    }
  }

  return repository;
}

- (NSString)ef_publicDescription
{
  currentDevice = [MEMORY[0x1E699B7B0] currentDevice];
  isInternal = [currentDevice isInternal];

  if (isInternal)
  {
    v5 = [(EMMessageList *)self _debugDescriptionIncludeQuery:0];
  }

  else
  {
    v6 = MEMORY[0x1E696AEC0];
    v13.receiver = self;
    v13.super_class = EMMessageList;
    ef_publicDescription = [(EMObject *)&v13 ef_publicDescription];
    query = [(EMQueryingCollection *)self query];
    label = [query label];
    v10 = [v6 stringWithFormat:@"%@\n\tquery:%@", ef_publicDescription, label];

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
  query = [(EMQueryingCollection *)self query];
  targetClassOptions = [query targetClassOptions];
  v4 = [targetClassOptions objectForKeyedSubscript:@"SectionPredicates"];

  return v4;
}

+ (OS_os_log)log
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __20__EMMessageList_log__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = self;
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
    allKeys = [(NSMutableDictionary *)self->_expandedThreads allKeys];
    v5 = [v3 initWithArray:allKeys];

    os_unfair_lock_unlock(&self->_expandedThreadsLock);
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (void)setRepository:(id)repository
{
  repositoryCopy = repository;
  if (repositoryCopy)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
      [currentHandler handleFailureInMethod:a2 object:self file:@"EMMessageList.m" lineNumber:59 description:@"Wrong repository type"];
    }
  }

  v7.receiver = self;
  v7.super_class = EMMessageList;
  [(EMRepositoryObject *)&v7 setRepository:repositoryCopy];
}

+ (id)threadedMessageListForMailboxes:(id)mailboxes withRepository:(id)repository additionalQueryOptions:(unint64_t)options countOfItemsToPrecache:(unint64_t)precache shouldUpdateDisplayDate:(BOOL)date sortDescriptors:(id)descriptors sectionPredicates:(id)predicates transformPredicate:(id)self0
{
  mailboxesCopy = mailboxes;
  repositoryCopy = repository;
  descriptorsCopy = descriptors;
  predicatesCopy = predicates;
  predicateCopy = predicate;
  LOBYTE(v23) = date;
  v21 = [[self alloc] initWithMailboxes:mailboxesCopy repository:repositoryCopy sortDescriptors:descriptorsCopy sectionPredicates:predicatesCopy transformPredicate:predicateCopy targetClass:objc_opt_class() additionalQueryOptions:options countOfItemsToPrecache:precache shouldUpdateDisplayDate:v23 labelPrefix:@"EMMessageList-threaded"];

  return v21;
}

+ (id)simpleMessageListForMailboxes:(id)mailboxes withRepository:(id)repository additionalQueryOptions:(unint64_t)options countOfItemsToPrecache:(unint64_t)precache shouldUpdateDisplayDate:(BOOL)date sortDescriptors:(id)descriptors sectionPredicates:(id)predicates transformPredicate:(id)self0
{
  mailboxesCopy = mailboxes;
  repositoryCopy = repository;
  descriptorsCopy = descriptors;
  predicatesCopy = predicates;
  predicateCopy = predicate;
  LOBYTE(v23) = date;
  v21 = [[self alloc] initWithMailboxes:mailboxesCopy repository:repositoryCopy sortDescriptors:descriptorsCopy sectionPredicates:predicatesCopy transformPredicate:predicateCopy targetClass:objc_opt_class() additionalQueryOptions:options countOfItemsToPrecache:precache shouldUpdateDisplayDate:v23 labelPrefix:@"EMMessageList-simple"];

  return v21;
}

+ (id)groupedCommerceSenderMessageListForMailboxes:(id)mailboxes withRepository:(id)repository grouping:(int64_t)grouping sectionPredicates:(id)predicates countOfItemsToPrecache:(unint64_t)precache
{
  v7 = [self groupedCommerceSenderMessageListForMailboxes:mailboxes withRepository:repository grouping:grouping sectionPredicates:predicates countOfItemsToPrecache:precache transformPredicate:0];

  return v7;
}

+ (id)groupedCommerceSenderMessageListForMailboxes:(id)mailboxes withRepository:(id)repository grouping:(int64_t)grouping sectionPredicates:(id)predicates countOfItemsToPrecache:(unint64_t)precache transformPredicate:(id)predicate
{
  v38[1] = *MEMORY[0x1E69E9840];
  repositoryCopy = repository;
  predicatesCopy = predicates;
  v30 = predicatesCopy;
  predicateCopy = predicate;
  v14 = [EMMessageListItemPredicates predicateForMessagesInMailboxes:mailboxes];
  v33 = v14;
  if (predicateCopy)
  {
    v33 = predicateCopy[2](predicateCopy, v14);
  }

  if ([predicatesCopy count])
  {
    v15 = [objc_alloc(MEMORY[0x1E695DF90]) initWithObjectsAndKeys:{predicatesCopy, @"SectionPredicates", 0}];
    if (precache)
    {
      v16 = v15;
      if (v15)
      {
LABEL_9:
        v17 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:precache];
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
    if (precache)
    {
      goto LABEL_8;
    }

    v16 = 0;
  }

LABEL_12:
  v18 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"EMMessageList-grouped-%p", self];
  v19 = [EMMessageListItemPredicates sortDescriptorForKeyPath:@"displayDate" ascending:0];
  v38[0] = v19;
  v20 = [MEMORY[0x1E695DEC8] arrayWithObjects:v38 count:1];

  v21 = [EMQuery alloc];
  v22 = objc_opt_class();
  ef_simplifiedPredicate = [v33 ef_simplifiedPredicate];
  v34[0] = MEMORY[0x1E69E9820];
  v34[1] = 3221225472;
  v34[2] = __146__EMMessageList_groupedCommerceSenderMessageListForMailboxes_withRepository_grouping_sectionPredicates_countOfItemsToPrecache_transformPredicate___block_invoke;
  v34[3] = &unk_1E826DB78;
  v37 = 72;
  v24 = v18;
  v35 = v24;
  v25 = v16;
  v36 = v25;
  v26 = [(EMQuery *)v21 initWithTargetClass:v22 predicate:ef_simplifiedPredicate sortDescriptors:v20 builder:v34];

  v27 = [[self alloc] initWithQuery:v26 repository:repositoryCopy];
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

- (EMMessageList)initWithMailboxes:(id)mailboxes repository:(id)repository sortDescriptors:(id)descriptors sectionPredicates:(id)predicates transformPredicate:(id)predicate targetClass:(Class)class additionalQueryOptions:(unint64_t)options countOfItemsToPrecache:(unint64_t)self0 shouldUpdateDisplayDate:(BOOL)self1 labelPrefix:(id)self2
{
  mailboxesCopy = mailboxes;
  repositoryCopy = repository;
  descriptorsCopy = descriptors;
  predicatesCopy = predicates;
  predicateCopy = predicate;
  prefixCopy = prefix;
  v35 = mailboxesCopy;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"EMMessageList.m" lineNumber:210 description:{@"Invalid parameter not satisfying: %@", @"[repository isKindOfClass:[EMMessageRepository class]]"}];
  }

  v22 = [EMMessageListItemPredicates predicateForMessagesInMailboxes:mailboxesCopy];
  v23 = v22;
  if (predicateCopy)
  {
    v23 = predicateCopy[2](predicateCopy, v22);
  }

  if (date)
  {
    v24 = objc_alloc(MEMORY[0x1E695DF90]);
    v25 = [v24 initWithObjectsAndKeys:{MEMORY[0x1E695E118], @"UpdateDisplayDate", 0, mailboxesCopy}];
    if (precache)
    {
      v26 = v25;
      if (v25)
      {
LABEL_11:
        v27 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:precache];
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
    if (precache)
    {
      goto LABEL_10;
    }

    v26 = 0;
  }

LABEL_14:
  if ([predicatesCopy count])
  {
    if (!v26)
    {
      v26 = objc_alloc_init(MEMORY[0x1E695DF90]);
    }

    [v26 setObject:predicatesCopy forKeyedSubscript:@"SectionPredicates"];
  }

  v28 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"%@-%p", prefixCopy, self];
  v29 = [EMQuery alloc];
  ef_simplifiedPredicate = [v23 ef_simplifiedPredicate];
  v31 = [(EMQuery *)v29 initWithTargetClass:class predicate:ef_simplifiedPredicate sortDescriptors:descriptorsCopy queryOptions:options | 8 targetClassOptions:v26 label:v28];

  v32 = [(EMMessageList *)self initWithQuery:v31 repository:repositoryCopy];
  return v32;
}

- (EMMessageList)initWithMessageList:(id)list
{
  listCopy = list;
  query = [listCopy query];
  repository = [listCopy repository];
  v7 = [(EMMessageList *)self initWithQuery:query repository:repository];

  if (v7)
  {
    filterPredicate = [listCopy filterPredicate];

    if (filterPredicate)
    {
      filterPredicate2 = [listCopy filterPredicate];
      [(EMMessageList *)v7 setFilterPredicate:filterPredicate2];

      v10 = [EMMessageList alloc];
      unfilteredMessageList = [listCopy unfilteredMessageList];
      query2 = [unfilteredMessageList query];
      unfilteredMessageList2 = [listCopy unfilteredMessageList];
      repository2 = [unfilteredMessageList2 repository];
      v15 = [(EMMessageList *)v10 initWithQuery:query2 repository:repository2];
      [(EMMessageList *)v7 setUnfilteredMessageList:v15];
    }
  }

  return v7;
}

- (EMMessageList)initWithObjectID:(id)d query:(id)query repository:(id)repository
{
  dCopy = d;
  queryCopy = query;
  repositoryCopy = repository;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"EMMessageList.m" lineNumber:254 description:{@"Invalid parameter not satisfying: %@", @"[repository isKindOfClass:[EMMessageRepository class]]"}];
  }

  v16.receiver = self;
  v16.super_class = EMMessageList;
  v12 = [(EMQueryingCollection *)&v16 initWithObjectID:dCopy query:queryCopy];
  v13 = v12;
  if (v12)
  {
    [(EMMessageList *)v12 _commonInitWithRepository:repositoryCopy];
  }

  return v13;
}

- (EMMessageList)initWithQuery:(id)query repository:(id)repository
{
  queryCopy = query;
  repositoryCopy = repository;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"EMMessageList.m" lineNumber:264 description:{@"Invalid parameter not satisfying: %@", @"[repository isKindOfClass:[EMMessageRepository class]]"}];
  }

  v13.receiver = self;
  v13.super_class = EMMessageList;
  v9 = [(EMQueryingCollection *)&v13 initWithObjectID:0 query:queryCopy];
  v10 = v9;
  if (v9)
  {
    [(EMMessageList *)v9 _commonInitWithRepository:repositoryCopy];
  }

  return v10;
}

- (void)_commonInitWithRepository:(id)repository
{
  repositoryCopy = repository;
  if ([(EMMessageList *)self isThreaded])
  {
    self->_expandedThreadsLock._os_unfair_lock_opaque = 0;
    v4 = objc_alloc_init(MEMORY[0x1E695DF90]);
    expandedThreads = self->_expandedThreads;
    self->_expandedThreads = v4;

    query = [(EMQueryingCollection *)self query];
    predicate = [query predicate];
    mailboxRepository = [repositoryCopy mailboxRepository];
    v9 = [EMMessageListItemPredicates threadScopeForPredicate:predicate withMailboxTypeResolver:mailboxRepository];
    threadScope = self->_threadScope;
    self->_threadScope = v9;
  }

  weakToStrongObjectsMapTable = [MEMORY[0x1E696AD18] weakToStrongObjectsMapTable];
  messageListItemsForRetry = self->_messageListItemsForRetry;
  self->_messageListItemsForRetry = weakToStrongObjectsMapTable;

  v13 = objc_alloc(MEMORY[0x1E699B7F0]);
  v14 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v15 = [v13 initWithObject:v14];
  itemIDSections = self->_itemIDSections;
  self->_itemIDSections = v15;

  v17 = [objc_alloc(MEMORY[0x1E699B7E0]) initWithCountLimit:200];
  cache = self->_cache;
  self->_cache = v17;

  [(EMMessageList *)self setRepository:repositoryCopy];
  query2 = [(EMQueryingCollection *)self query];
  predicate2 = [query2 predicate];
  mailboxRepository2 = [repositoryCopy mailboxRepository];
  v22 = [EMMessageListItemPredicates mailboxScopeForPredicate:predicate2 withMailboxTypeResolver:mailboxRepository2];
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

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = objc_alloc(objc_opt_class());

  return [v4 initWithMessageList:self];
}

- (id)_debugDescriptionIncludeQuery:(BOOL)query
{
  v4 = MEMORY[0x1E696AEC0];
  if (query)
  {
    v13.receiver = self;
    v13.super_class = EMMessageList;
    v5 = [(EMObject *)&v13 debugDescription];
    query = [(EMQueryingCollection *)self query];
    v7 = [query debugDescription];
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
  currentDevice = [MEMORY[0x1E699B7B0] currentDevice];
  isInternal = [currentDevice isInternal];

  if (isInternal)
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

- (void)stopObserving:(id)observing
{
  observingCopy = observing;
  v7.receiver = self;
  v7.super_class = EMMessageList;
  [(EMQueryingCollection *)&v7 stopObserving:observingCopy];
  cache = [(EMMessageList *)self cache];
  [cache removeAllObjects];

  os_unfair_lock_lock(&self->_expandedThreadsLock);
  allValues = [(NSMutableDictionary *)self->_expandedThreads allValues];
  [(NSMutableDictionary *)self->_expandedThreads removeAllObjects];
  os_unfair_lock_unlock(&self->_expandedThreadsLock);
  [allValues makeObjectsPerformSelector:sel_stopObserving_ withObject:self];
}

- (id)objectIDForItemID:(id)d
{
  dCopy = d;
  if (dCopy)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = [EMMessageObjectID alloc];
      mailboxScope = [(EMMessageList *)self mailboxScope];
      v7 = [(EMMessageObjectID *)v5 initWithCollectionItemID:dCopy mailboxScope:mailboxScope];
LABEL_9:
      v10 = v7;

      goto LABEL_11;
    }

    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) != 0 && [(EMMessageList *)self isThreaded])
    {
      v8 = [EMThreadObjectID alloc];
      mailboxScope = [(EMMessageList *)self threadScope];
      v7 = [(EMThreadObjectID *)v8 initWithCollectionItemID:dCopy threadScope:mailboxScope];
      goto LABEL_9;
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v9 = [EMGroupedSenderObjectID alloc];
      mailboxScope = [(EMMessageList *)self threadScope];
      v7 = [(EMGroupedSenderObjectID *)v9 initWithCollectionItemID:dCopy threadScope:mailboxScope];
      goto LABEL_9;
    }
  }

  v10 = 0;
LABEL_11:

  return v10;
}

- (id)itemIDForObjectID:(id)d
{
  dCopy = d;
  if (dCopy)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass() & 1) != 0 || (objc_opt_class(), (objc_opt_isKindOfClass()) && [(EMMessageList *)self isThreaded]|| (objc_opt_class(), (objc_opt_isKindOfClass()))
    {
      collectionItemID = [dCopy collectionItemID];
      goto LABEL_9;
    }

    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"EMMessageList.m" lineNumber:411 description:@"Object ID of unrecognized type"];
  }

  collectionItemID = 0;
LABEL_9:

  return collectionItemID;
}

- (BOOL)objectIDBelongsToCollection:(id)collection
{
  collectionCopy = collection;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = collectionCopy;
    mailboxScope = [(EMMessageList *)self mailboxScope];
    mailboxScope2 = [v5 mailboxScope];
    v8 = [mailboxScope isEqual:mailboxScope2];
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

    v9 = collectionCopy;
    mailboxScope = [(EMMessageList *)self threadScope];
    mailboxScope2 = [v9 threadScope];
    v8 = [mailboxScope isEqual:mailboxScope2];
  }

  v10 = v8;

LABEL_8:
  return v10;
}

- (void)insertItemIDs:(id)ds before:(id)before extraInfo:(id)info
{
  dsCopy = ds;
  beforeCopy = before;
  infoCopy = info;
  [(EMMessageList *)self _updateSectionsWithItemIDs:dsCopy extraInfo:infoCopy];
  v11.receiver = self;
  v11.super_class = EMMessageList;
  [(EMQueryingCollection *)&v11 insertItemIDs:dsCopy before:beforeCopy extraInfo:infoCopy];
}

- (void)insertItemIDs:(id)ds after:(id)after extraInfo:(id)info
{
  dsCopy = ds;
  afterCopy = after;
  infoCopy = info;
  [(EMMessageList *)self _updateSectionsWithItemIDs:dsCopy extraInfo:infoCopy];
  v11.receiver = self;
  v11.super_class = EMMessageList;
  [(EMQueryingCollection *)&v11 insertItemIDs:dsCopy after:afterCopy extraInfo:infoCopy];
}

- (void)_updateSectionsWithItemIDs:(id)ds extraInfo:(id)info
{
  dsCopy = ds;
  infoCopy = info;
  _sectionPredicates = [(EMMessageList *)self _sectionPredicates];
  v9 = [_sectionPredicates count];

  if (v9)
  {
    v10 = [(EMMessageList *)self _sectionedObjectIDsFromExtraInfo:infoCopy];
    itemIDSections = [(EMMessageList *)self itemIDSections];
    v13[0] = MEMORY[0x1E69E9820];
    v13[1] = 3221225472;
    v13[2] = __54__EMMessageList__updateSectionsWithItemIDs_extraInfo___block_invoke;
    v13[3] = &unk_1E826DBC8;
    v12 = v10;
    v14 = v12;
    v15 = dsCopy;
    [itemIDSections performWhileLocked:v13];
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

- (id)removeItemIDs:(id)ds
{
  v24 = *MEMORY[0x1E69E9840];
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  dsCopy = ds;
  v5 = [dsCopy countByEnumeratingWithState:&v19 objects:v23 count:16];
  if (v5)
  {
    v6 = *v20;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v20 != v6)
        {
          objc_enumerationMutation(dsCopy);
        }

        v8 = *(*(&v19 + 1) + 8 * i);
        cache = [(EMMessageList *)self cache];
        [cache removeObjectForKey:v8];
      }

      v5 = [dsCopy countByEnumeratingWithState:&v19 objects:v23 count:16];
    }

    while (v5);
  }

  _sectionPredicates = [(EMMessageList *)self _sectionPredicates];
  v11 = [_sectionPredicates count];

  if (v11)
  {
    itemIDSections = [(EMMessageList *)self itemIDSections];
    v17[0] = MEMORY[0x1E69E9820];
    v17[1] = 3221225472;
    v17[2] = __31__EMMessageList_removeItemIDs___block_invoke;
    v17[3] = &unk_1E826CA58;
    v18 = dsCopy;
    [itemIDSections performWhileLocked:v17];
  }

  v16.receiver = self;
  v16.super_class = EMMessageList;
  v13 = [(EMQueryingCollection *)&v16 removeItemIDs:dsCopy];

  v14 = *MEMORY[0x1E69E9840];

  return v13;
}

- (id)_unreadItemIDsFromExtraInfo:(id)info
{
  infoCopy = info;
  if ([infoCopy count])
  {
    v5 = [infoCopy objectForKeyedSubscript:@"unreadMessageIDs"];
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

- (id)_snippetHintsByObjectIDFromExtraInfo:(id)info
{
  infoCopy = info;
  if ([infoCopy count])
  {
    v4 = objc_opt_new();
    v5 = [infoCopy objectForKeyedSubscript:@"snippetHintsByObjectID"];
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

- (void)_addPrecachedItemsFromExtraInfo:(id)info
{
  v21 = *MEMORY[0x1E69E9840];
  v13 = [info objectForKeyedSubscript:@"precachedItems"];
  cache = [(EMMessageList *)self cache];
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
        objectID = [v8 objectID];
        v10 = [(EMMessageList *)self itemIDForObjectID:objectID];
        v15[0] = MEMORY[0x1E69E9820];
        v15[1] = 3221225472;
        v15[2] = __49__EMMessageList__addPrecachedItemsFromExtraInfo___block_invoke;
        v15[3] = &unk_1E826DC40;
        v15[4] = v8;
        v11 = [cache objectForKey:v10 generator:v15];
      }

      v5 = [obj countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v5);
  }

  v12 = *MEMORY[0x1E69E9840];
}

- (void)notifyChangeObserversAboutAddedItemIDs:(id)ds before:(id)before extraInfo:(id)info
{
  dsCopy = ds;
  beforeCopy = before;
  infoCopy = info;
  [(EMMessageList *)self _addPrecachedItemsFromExtraInfo:infoCopy];
  v20[0] = 0;
  v20[1] = v20;
  v20[2] = 0x3032000000;
  v20[3] = __Block_byref_object_copy__6;
  v20[4] = __Block_byref_object_dispose__6;
  v21 = [(EMQueryingCollection *)self firstExistingItemIDAfterItemID:beforeCopy];
  if (_os_feature_enabled_impl())
  {
    v11 = [infoCopy objectForKeyedSubscript:@"instantAnswer"];
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
  v12 = infoCopy;
  v16 = v12;
  v17 = v11;
  v13 = dsCopy;
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

- (void)notifyChangeObserversAboutAddedItemIDs:(id)ds after:(id)after extraInfo:(id)info
{
  dsCopy = ds;
  afterCopy = after;
  infoCopy = info;
  [(EMMessageList *)self _addPrecachedItemsFromExtraInfo:infoCopy];
  v17[0] = 0;
  v17[1] = v17;
  v17[2] = 0x3032000000;
  v17[3] = __Block_byref_object_copy__6;
  v17[4] = __Block_byref_object_dispose__6;
  v18 = [(EMQueryingCollection *)self firstExistingItemIDBeforeItemID:afterCopy];
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __72__EMMessageList_notifyChangeObserversAboutAddedItemIDs_after_extraInfo___block_invoke;
  v13[3] = &unk_1E826DC90;
  v13[4] = self;
  v11 = infoCopy;
  v14 = v11;
  v12 = dsCopy;
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

- (void)notifyChangeObserversAboutMovedItemIDs:(id)ds before:(id)before extraInfo:(id)info
{
  dsCopy = ds;
  beforeCopy = before;
  infoCopy = info;
  v17[0] = 0;
  v17[1] = v17;
  v17[2] = 0x3032000000;
  v17[3] = __Block_byref_object_copy__6;
  v17[4] = __Block_byref_object_dispose__6;
  v18 = [(EMQueryingCollection *)self firstExistingItemIDAfterItemID:beforeCopy];
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __73__EMMessageList_notifyChangeObserversAboutMovedItemIDs_before_extraInfo___block_invoke;
  v13[3] = &unk_1E826DCB8;
  v13[4] = self;
  v11 = dsCopy;
  v14 = v11;
  v12 = infoCopy;
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

- (void)notifyChangeObserversAboutMovedItemIDs:(id)ds after:(id)after extraInfo:(id)info
{
  dsCopy = ds;
  afterCopy = after;
  infoCopy = info;
  v17[0] = 0;
  v17[1] = v17;
  v17[2] = 0x3032000000;
  v17[3] = __Block_byref_object_copy__6;
  v17[4] = __Block_byref_object_dispose__6;
  v18 = [(EMQueryingCollection *)self firstExistingItemIDBeforeItemID:afterCopy];
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __72__EMMessageList_notifyChangeObserversAboutMovedItemIDs_after_extraInfo___block_invoke;
  v13[3] = &unk_1E826DCB8;
  v13[4] = self;
  v11 = dsCopy;
  v14 = v11;
  v12 = infoCopy;
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

- (void)notifyChangeObserver:(id)observer stockedItemIDs:(id)ds
{
  observerCopy = observer;
  dsCopy = ds;
  if (objc_opt_respondsToSelector())
  {
    [observerCopy collection:self addedItemIDs:dsCopy toThreadWithItemID:0 before:0 unreadItemIDs:0 isLastObserver:1];
  }

  else
  {
    [observerCopy collection:self addedItemIDs:dsCopy before:0];
  }
}

- (void)enumerateObserversWithLastBlock:(id)block
{
  blockCopy = block;
  changeObservers = [(EMQueryingCollection *)self changeObservers];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __49__EMMessageList_enumerateObserversWithLastBlock___block_invoke;
  v7[3] = &unk_1E826DD08;
  v7[4] = self;
  v6 = blockCopy;
  v8 = v6;
  [changeObservers performWhileLocked:v7];
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

- (id)filteredMessageListWithPredicate:(id)predicate userFiltered:(BOOL)filtered
{
  filteredCopy = filtered;
  v32[2] = *MEMORY[0x1E69E9840];
  predicateCopy = predicate;
  if (self->_unfilteredMessageList)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"EMMessageList.m" lineNumber:661 description:@"filters can't stack"];
  }

  query = [(EMQueryingCollection *)self query];
  v9 = MEMORY[0x1E696AB28];
  predicate = [query predicate];
  v32[0] = predicate;
  v32[1] = predicateCopy;
  v11 = [MEMORY[0x1E695DEC8] arrayWithObjects:v32 count:2];
  v12 = [v9 andPredicateWithSubpredicates:v11];

  targetClassOptions = [query targetClassOptions];
  v27 = [targetClassOptions mutableCopy];

  if (filteredCopy)
  {
    queryOptions = [query queryOptions] & 0xFFFFFFFFFFFFEFFFLL;
  }

  else
  {
    queryOptions = [query queryOptions];
  }

  v15 = [EMQuery alloc];
  targetClass = [query targetClass];
  ef_simplifiedPredicate = [v12 ef_simplifiedPredicate];
  sortDescriptors = [query sortDescriptors];
  v29[0] = MEMORY[0x1E69E9820];
  v29[1] = 3221225472;
  v29[2] = __63__EMMessageList_filteredMessageListWithPredicate_userFiltered___block_invoke;
  v29[3] = &unk_1E826DD30;
  v31 = queryOptions;
  v19 = v28;
  v30 = v19;
  v20 = [(EMQuery *)v15 initWithTargetClass:targetClass predicate:ef_simplifiedPredicate sortDescriptors:sortDescriptors builder:v29];

  v21 = objc_alloc(objc_opt_class());
  repository = [(EMMessageList *)self repository];
  v23 = [v21 initWithQuery:v20 repository:repository];

  [v23 setFilterPredicate:predicateCopy];
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
  _sectionPredicates = [(EMMessageList *)self _sectionPredicates];
  v3 = [_sectionPredicates count] != 0;

  return v3;
}

- (id)_sectionedObjectIDsFromExtraInfo:(id)info
{
  infoCopy = info;
  if ([infoCopy count])
  {
    v4 = [infoCopy objectForKeyedSubscript:@"collectionItemIDBySections"];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (unint64_t)_sectionIndexForIdentifier:(id)identifier
{
  identifierCopy = identifier;
  _sectionPredicates = [(EMMessageList *)self _sectionPredicates];
  v6 = _sectionPredicates;
  if (_sectionPredicates)
  {
    v7 = [_sectionPredicates indexOfKey:identifierCopy];
  }

  else
  {
    v7 = 0x7FFFFFFFFFFFFFFFLL;
  }

  return v7;
}

- (id)_sectionIdentifierForIndex:(unint64_t)index
{
  _sectionPredicates = [(EMMessageList *)self _sectionPredicates];
  v5 = [_sectionPredicates keyAtIndex:index];

  return v5;
}

- (unint64_t)_sectionIndexForItemID:(id)d
{
  v4 = [(EMMessageList *)self _sectionIdentierForItemID:d];
  v5 = [(EMMessageList *)self _sectionIndexForIdentifier:v4];

  return v5;
}

- (id)_sectionIdentierForItemID:(id)d
{
  dCopy = d;
  v12 = 0;
  v13 = &v12;
  v14 = 0x3032000000;
  v15 = __Block_byref_object_copy__6;
  v16 = __Block_byref_object_dispose__6;
  v17 = 0;
  itemIDSections = [(EMMessageList *)self itemIDSections];
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __43__EMMessageList__sectionIdentierForItemID___block_invoke;
  v9[3] = &unk_1E826DD58;
  v11 = &v12;
  v6 = dCopy;
  v10 = v6;
  [itemIDSections performWhileLocked:v9];

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

- (id)_itemIDsForItemIDs:(id)ds changeObserver:(id)observer extraInfo:(id)info outObserverSectionIndex:(unint64_t *)index
{
  dsCopy = ds;
  observerCopy = observer;
  infoCopy = info;
  if (objc_opt_respondsToSelector())
  {
    v13 = [observerCopy sectionForCollection:self];
    v14 = [(EMMessageList *)self _sectionedObjectIDsFromExtraInfo:infoCopy];
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
      allValues = [v15 allValues];
      ef_flatten = [allValues ef_flatten];
      v23 = [v20 initWithArray:ef_flatten];

      v25[0] = MEMORY[0x1E69E9820];
      v25[1] = 3221225472;
      v25[2] = __85__EMMessageList__itemIDsForItemIDs_changeObserver_extraInfo_outObserverSectionIndex___block_invoke;
      v25[3] = &unk_1E826DD80;
      v26 = v23;
      v17 = v23;
      v19 = [dsCopy ef_filter:v25];
    }

    if (index)
    {
      *index = [(EMMessageList *)self _sectionIndexForIdentifier:v13];
    }
  }

  else
  {
    v19 = dsCopy;
  }

  return v19;
}

- (id)_adjustedItemIDToInsertBeforeForExistingItemID:(id)d sectionIndex:(unint64_t)index
{
  v18 = *MEMORY[0x1E69E9840];
  dCopy = d;
  if (dCopy)
  {
    v7 = [(EMMessageList *)self _sectionIndexForItemID:dCopy];
    v8 = v7;
    if (index == 0x7FFFFFFFFFFFFFFFLL || v7 <= index)
    {
      if (v7 == index)
      {
        goto LABEL_10;
      }

      v9 = +[EMMessageList log];
      if (os_log_type_enabled(v9, OS_LOG_TYPE_FAULT))
      {
        v12 = 134218498;
        indexCopy = index;
        v14 = 2114;
        v15 = dCopy;
        v16 = 2048;
        indexCopy2 = v8;
        _os_log_fault_impl(&dword_1C6655000, v9, OS_LOG_TYPE_FAULT, "Attempting to insert items from section %lu before item %{public}@ in previous section %lu", &v12, 0x20u);
      }
    }

    else
    {
      v9 = +[EMMessageList log];
      if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
      {
        v12 = 138543874;
        indexCopy = dCopy;
        v14 = 2048;
        v15 = v8;
        v16 = 2048;
        indexCopy2 = index;
        _os_log_impl(&dword_1C6655000, v9, OS_LOG_TYPE_INFO, "Existing item %{public}@ in section %lu, inserting at end of section %lu", &v12, 0x20u);
      }
    }

    dCopy = 0;
  }

LABEL_10:
  v10 = *MEMORY[0x1E69E9840];

  return dCopy;
}

- (id)_adjustedItemIDToInsertAfterForExistingItemID:(id)d sectionIndex:(unint64_t)index
{
  v18 = *MEMORY[0x1E69E9840];
  dCopy = d;
  if (dCopy)
  {
    v7 = [(EMMessageList *)self _sectionIndexForItemID:dCopy];
    v8 = v7;
    if (index == 0x7FFFFFFFFFFFFFFFLL)
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
      indexCopy = dCopy;
      v14 = 2048;
      v15 = v8;
      v16 = 2048;
      indexCopy2 = 0x7FFFFFFFFFFFFFFFLL;
    }

    else
    {
      if (v7 >= index)
      {
        if (v7 == index)
        {
          goto LABEL_14;
        }

        v9 = +[EMMessageList log];
        if (os_log_type_enabled(v9, OS_LOG_TYPE_FAULT))
        {
          v12 = 134218498;
          indexCopy = index;
          v14 = 2114;
          v15 = dCopy;
          v16 = 2048;
          indexCopy2 = v8;
          _os_log_fault_impl(&dword_1C6655000, v9, OS_LOG_TYPE_FAULT, "Attempting to insert items from section %lu after item %{public}@ in following section %lu", &v12, 0x20u);
        }

        goto LABEL_13;
      }

      v9 = +[EMMessageList log];
      if (!os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
      {
LABEL_13:

        dCopy = 0;
        goto LABEL_14;
      }

      v12 = 138543874;
      indexCopy = dCopy;
      v14 = 2048;
      v15 = v8;
      v16 = 2048;
      indexCopy2 = index;
    }

    _os_log_impl(&dword_1C6655000, v9, OS_LOG_TYPE_INFO, "Existing item %{public}@ in section %lu, inserting at start of section %lu", &v12, 0x20u);
    goto LABEL_13;
  }

LABEL_14:
  v10 = *MEMORY[0x1E69E9840];

  return dCopy;
}

- (void)expandThreadsFromThreadItemIDs:(id)ds
{
  v19 = *MEMORY[0x1E69E9840];
  dsCopy = ds;
  if (![(EMMessageList *)self isThreaded])
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"EMMessageList.m" lineNumber:818 description:@"Message list does not support threading"];
  }

  [(EMMessageList *)self messageListItemsForItemIDs:dsCopy];
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

- (void)expandThread:(id)thread
{
  threadCopy = thread;
  if (![(EMMessageList *)self isThreaded])
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"EMMessageList.m" lineNumber:831 description:@"Message list does not support threading"];
  }

  os_unfair_lock_lock(&self->_expandedThreadsLock);
  expandedThreads = self->_expandedThreads;
  itemID = [threadCopy itemID];
  [(NSMutableDictionary *)expandedThreads setObject:threadCopy forKeyedSubscript:itemID];

  os_unfair_lock_unlock(&self->_expandedThreadsLock);
  [threadCopy beginObserving:self];
}

- (void)collapseThread:(id)thread
{
  threadCopy = thread;
  if (![(EMMessageList *)self isThreaded])
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"EMMessageList.m" lineNumber:841 description:@"Message list does not support threading"];
  }

  os_unfair_lock_lock(&self->_expandedThreadsLock);
  expandedThreads = self->_expandedThreads;
  itemID = [threadCopy itemID];
  [(NSMutableDictionary *)expandedThreads removeObjectForKey:itemID];

  os_unfair_lock_unlock(&self->_expandedThreadsLock);
  allItemIDs = [threadCopy allItemIDs];
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __32__EMMessageList_collapseThread___block_invoke;
  v12[3] = &unk_1E826DDF8;
  v12[4] = self;
  v9 = threadCopy;
  v13 = v9;
  [allItemIDs addSuccessBlock:v12];
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __32__EMMessageList_collapseThread___block_invoke_4;
  v11[3] = &unk_1E826D7A0;
  v11[4] = self;
  [allItemIDs addFailureBlock:v11];
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

- (BOOL)anyExpandedThreadContainsItemID:(id)d
{
  dCopy = d;
  v5 = [(EMMessageList *)self isThreaded]&& (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && [(EMQueryingCollection *)self containsItemID:dCopy includeRecovery:1];

  return v5;
}

- (BOOL)recentlyCollapsedThreadContainsItemID:(id)d
{
  dCopy = d;
  recentlyCollapsedItemIDs = [(EMMessageList *)self recentlyCollapsedItemIDs];
  v6 = [recentlyCollapsedItemIDs containsObject:dCopy];

  return v6;
}

- (id)messageListItemForItemID:(id)d
{
  v3 = [(EMMessageList *)self messageListItemForItemID:d ifAvailable:0];

  return v3;
}

- (id)messageListItemsForItemIDs:(id)ds
{
  v3 = [(EMMessageList *)self messageListItemsForItemIDs:ds ifAvailable:0];

  return v3;
}

- (id)messageListItemsForItemIDs:(id)ds ifAvailable:(BOOL)available
{
  availableCopy = available;
  v24 = *MEMORY[0x1E69E9840];
  dsCopy = ds;
  v7 = +[EMMessageList log];
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    ef_shortPublicDescription = [(EMMessageList *)self ef_shortPublicDescription];
    v9 = ef_shortPublicDescription;
    v10 = &stru_1F45FD218;
    *buf = 138543874;
    if (availableCopy)
    {
      v10 = @" available";
    }

    v19 = v10;
    v20 = 2112;
    v21 = dsCopy;
    v22 = 2114;
    v23 = ef_shortPublicDescription;
    _os_log_impl(&dword_1C6655000, v7, OS_LOG_TYPE_DEFAULT, "Getting%{public}@ message list items: %@\n%{public}@", buf, 0x20u);
  }

  if (availableCopy)
  {
    v11 = [(EMMessageList *)self _availableMessageListItemsForItemIDs:dsCopy];
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
    v11 = [dsCopy ef_map:v16];
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

- (id)_availableMessageListItemsForItemIDs:(id)ds
{
  dsCopy = ds;
  v5 = objc_alloc_init(MEMORY[0x1E695DF90]);
  cache = [(EMMessageList *)self cache];
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
  v9 = cache;
  v26 = v9;
  v10 = v8;
  v27 = v10;
  v18 = [dsCopy ef_map:v25];
  allKeys = [v7 allKeys];
  v23[0] = MEMORY[0x1E69E9820];
  v23[1] = 3221225472;
  v23[2] = __54__EMMessageList__availableMessageListItemsForItemIDs___block_invoke_171;
  v23[3] = &unk_1E826DEE8;
  v23[4] = self;
  v12 = v7;
  v24 = v12;
  v13 = [allKeys ef_compactMap:v23];
  if ([allKeys count])
  {
    repository = [(EMMessageList *)self repository];
    objectID = [(EMObject *)self objectID];
    v16 = [repository messageListItemsForObjectIDs:v13 observationIdentifier:objectID];

    v19[0] = MEMORY[0x1E69E9820];
    v19[1] = 3221225472;
    v19[2] = __54__EMMessageList__availableMessageListItemsForItemIDs___block_invoke_173;
    v19[3] = &unk_1E826DF10;
    v20 = v13;
    selfCopy = self;
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

- (void)_attemptToFinishRetryingPromisesByItemID:(id)d
{
  dCopy = d;
  allKeys = [dCopy allKeys];
  v6 = [(EMMessageList *)self _availableMessageListItemsForItemIDs:allKeys];
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __58__EMMessageList__attemptToFinishRetryingPromisesByItemID___block_invoke;
  v9[3] = &unk_1E826DF60;
  v10 = v6;
  v7 = dCopy;
  v11 = v7;
  selfCopy = self;
  v8 = v6;
  [allKeys enumerateObjectsUsingBlock:v9];
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

- (void)invalidateCacheForItemIDs:(id)ds
{
  v16 = *MEMORY[0x1E69E9840];
  dsCopy = ds;
  cache = [(EMMessageList *)self cache];
  v13 = 0u;
  v14 = 0u;
  v11 = 0u;
  v12 = 0u;
  v6 = dsCopy;
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

        [cache removeObjectForKey:{*(*(&v11 + 1) + 8 * v9++), v11}];
      }

      while (v7 != v9);
      v7 = [v6 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v7);
  }

  v10 = *MEMORY[0x1E69E9840];
}

- (id)itemIDOfMessageListItemWithDisplayMessage:(id)message
{
  messageCopy = message;
  if ([(EMMessageList *)self isThreaded])
  {
    itemID = -[EMThreadCollectionItemID initWithConversationID:]([EMThreadCollectionItemID alloc], "initWithConversationID:", [messageCopy conversationID]);
  }

  else
  {
    itemID = [messageCopy itemID];
  }

  v6 = itemID;
  if ([(EMQueryingCollection *)self containsItemID:itemID includeRecovery:0])
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
  cache = [(EMMessageList *)self cache];
  [cache removeAllObjects];

  if ([(EMMessageList *)self isThreaded])
  {
    os_unfair_lock_lock(&self->_expandedThreadsLock);
    allValues = [(NSMutableDictionary *)self->_expandedThreads allValues];
    os_unfair_lock_unlock(&self->_expandedThreadsLock);
    v16 = 0u;
    v17 = 0u;
    v14 = 0u;
    v15 = 0u;
    v5 = allValues;
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
          allItemIDs = [v9 allItemIDs];
          resultIfAvailable = [allItemIDs resultIfAvailable];

          if ([resultIfAvailable count])
          {
            itemID = [v9 itemID];
            [(EMMessageList *)self insertItemIDs:resultIfAvailable after:itemID extraInfo:0];
          }
        }

        v6 = [v5 countByEnumeratingWithState:&v14 objects:v19 count:16];
      }

      while (v6);
    }
  }

  v13 = *MEMORY[0x1E69E9840];
}

- (void)contentProtectionStateChanged:(int64_t)changed previousState:(int64_t)state
{
  v14 = *MEMORY[0x1E69E9840];
  v5 = [(EMMessageList *)self contentProtectionQueue:changed];
  dispatch_assert_queue_V2(v5);

  if (EFProtectedDataAvailable())
  {
    dictionaryRepresentation = [(NSMapTable *)self->_messageListItemsForRetry dictionaryRepresentation];
    if ([dictionaryRepresentation count])
    {
      v7 = +[EMMessageList log];
      if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
      {
        allKeys = [dictionaryRepresentation allKeys];
        v10 = 138543618;
        v11 = allKeys;
        v12 = 2114;
        selfCopy = self;
        _os_log_impl(&dword_1C6655000, v7, OS_LOG_TYPE_DEFAULT, "Retrying for items: %{public}@\n%{public}@", &v10, 0x16u);
      }

      [(EMMessageList *)self _attemptToFinishRetryingPromisesByItemID:dictionaryRepresentation];
      [(NSMapTable *)self->_messageListItemsForRetry removeAllObjects];
    }
  }

  v9 = *MEMORY[0x1E69E9840];
}

- (id)_extraInfoForThread:(id)thread addedItemIDs:(id)ds
{
  v17[1] = *MEMORY[0x1E69E9840];
  threadCopy = thread;
  dsCopy = ds;
  if (_os_feature_enabled_impl() & 1) != 0 || _os_feature_enabled_impl() && (EMIsGreymatterSupported())
  {
    itemID = [threadCopy itemID];
    v9 = [(EMMessageList *)self _sectionIdentierForItemID:itemID];

    if (v9)
    {
      v15 = dsCopy;
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

- (void)collection:(id)collection addedItemIDs:(id)ds before:(id)before
{
  collectionCopy = collection;
  dsCopy = ds;
  beforeCopy = before;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"EMMessageList.m" lineNumber:1109 description:{@"Invalid parameter not satisfying: %@", @"[collection isKindOfClass:[EMThread class]]"}];
  }

  if (![(EMQueryingCollection *)self isRecovering])
  {
    v12 = collectionCopy;
    if ([(EMMessageList *)self _threadIsExpanded:v12])
    {
      if (!beforeCopy)
      {
        itemID = [v12 itemID];
        beforeCopy = [(EMMessageList *)self _nextThreadItemIDAfterThreadItemID:itemID];
      }

      v14 = [(EMMessageList *)self _extraInfoForThread:v12 addedItemIDs:dsCopy];
      [(EMMessageList *)self insertItemIDs:dsCopy before:beforeCopy extraInfo:v14];
      observerScheduler = [(EMMessageList *)self observerScheduler];
      v19[0] = MEMORY[0x1E69E9820];
      v19[1] = 3221225472;
      v19[2] = __48__EMMessageList_collection_addedItemIDs_before___block_invoke;
      v19[3] = &unk_1E826DFB0;
      v19[4] = self;
      v20 = dsCopy;
      v16 = beforeCopy;
      v21 = v16;
      v17 = v14;
      v22 = v17;
      v23 = v12;
      [observerScheduler performSyncBlock:v19];

      beforeCopy = v16;
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

- (void)collection:(id)collection addedItemIDs:(id)ds after:(id)after
{
  collectionCopy = collection;
  dsCopy = ds;
  afterCopy = after;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"EMMessageList.m" lineNumber:1147 description:{@"Invalid parameter not satisfying: %@", @"[collection isKindOfClass:[EMThread class]]"}];
  }

  if (![(EMQueryingCollection *)self isRecovering])
  {
    v12 = collectionCopy;
    if ([(EMMessageList *)self _threadIsExpanded:v12])
    {
      if (!afterCopy)
      {
        afterCopy = [v12 itemID];
      }

      v13 = [(EMMessageList *)self _extraInfoForThread:v12 addedItemIDs:dsCopy];
      [(EMMessageList *)self insertItemIDs:dsCopy after:afterCopy extraInfo:v13];
      observerScheduler = [(EMMessageList *)self observerScheduler];
      v18[0] = MEMORY[0x1E69E9820];
      v18[1] = 3221225472;
      v18[2] = __47__EMMessageList_collection_addedItemIDs_after___block_invoke;
      v18[3] = &unk_1E826DFB0;
      v18[4] = self;
      v19 = dsCopy;
      v15 = afterCopy;
      v20 = v15;
      v16 = v13;
      v21 = v16;
      v22 = v12;
      [observerScheduler performSyncBlock:v18];

      afterCopy = v15;
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

- (void)collection:(id)collection movedItemIDs:(id)ds before:(id)before
{
  collectionCopy = collection;
  dsCopy = ds;
  beforeCopy = before;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"EMMessageList.m" lineNumber:1186 description:{@"Invalid parameter not satisfying: %@", @"[collection isKindOfClass:[EMThread class]]"}];
  }

  if (![(EMQueryingCollection *)self isRecovering])
  {
    v12 = collectionCopy;
    if ([(EMMessageList *)self _threadIsExpanded:v12])
    {
      if (!beforeCopy)
      {
        itemID = [v12 itemID];
        beforeCopy = [(EMMessageList *)self _nextThreadItemIDAfterThreadItemID:itemID];
      }

      [(EMMessageList *)self insertItemIDs:dsCopy before:beforeCopy extraInfo:0];
      observerScheduler = [(EMMessageList *)self observerScheduler];
      v16[0] = MEMORY[0x1E69E9820];
      v16[1] = 3221225472;
      v16[2] = __48__EMMessageList_collection_movedItemIDs_before___block_invoke;
      v16[3] = &unk_1E826C230;
      v16[4] = self;
      beforeCopy = beforeCopy;
      v17 = beforeCopy;
      v18 = dsCopy;
      [observerScheduler performSyncBlock:v16];
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

- (void)collection:(id)collection movedItemIDs:(id)ds after:(id)after
{
  collectionCopy = collection;
  dsCopy = ds;
  afterCopy = after;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"EMMessageList.m" lineNumber:1214 description:{@"Invalid parameter not satisfying: %@", @"[collection isKindOfClass:[EMThread class]]"}];
  }

  if (![(EMQueryingCollection *)self isRecovering])
  {
    v12 = collectionCopy;
    if ([(EMMessageList *)self _threadIsExpanded:v12])
    {
      if (!afterCopy)
      {
        afterCopy = [v12 itemID];
      }

      [(EMMessageList *)self insertItemIDs:dsCopy after:afterCopy extraInfo:0];
      observerScheduler = [(EMMessageList *)self observerScheduler];
      v15[0] = MEMORY[0x1E69E9820];
      v15[1] = 3221225472;
      v15[2] = __47__EMMessageList_collection_movedItemIDs_after___block_invoke;
      v15[3] = &unk_1E826C230;
      v15[4] = self;
      afterCopy = afterCopy;
      v16 = afterCopy;
      v17 = dsCopy;
      [observerScheduler performSyncBlock:v15];
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

- (void)collection:(id)collection changedItemIDs:(id)ds
{
  collectionCopy = collection;
  dsCopy = ds;
  [(EMMessageList *)self doesNotRecognizeSelector:a2];
  __assert_rtn("[EMMessageList collection:changedItemIDs:]", "EMMessageList.m", 1243, "0");
}

- (void)collection:(id)collection changedItemIDs:(id)ds itemIDsWithCountChanges:(id)changes itemIDsWithBrandIndicatorLocationChanges:(id)locationChanges
{
  collectionCopy = collection;
  dsCopy = ds;
  changesCopy = changes;
  locationChangesCopy = locationChanges;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"EMMessageList.m" lineNumber:1247 description:{@"Invalid parameter not satisfying: %@", @"[collection isKindOfClass:[EMThread class]]"}];
  }

  if (![(EMQueryingCollection *)self isRecovering]&& [(EMMessageList *)self _threadIsExpanded:collectionCopy])
  {
    observerScheduler = [(EMMessageList *)self observerScheduler];
    v17[0] = MEMORY[0x1E69E9820];
    v17[1] = 3221225472;
    v17[2] = __108__EMMessageList_collection_changedItemIDs_itemIDsWithCountChanges_itemIDsWithBrandIndicatorLocationChanges___block_invoke;
    v17[3] = &unk_1E826D498;
    v17[4] = self;
    v18 = dsCopy;
    v19 = changesCopy;
    v20 = locationChangesCopy;
    [observerScheduler performSyncBlock:v17];
  }
}

- (void)collection:(id)collection deletedItemIDs:(id)ds
{
  collectionCopy = collection;
  dsCopy = ds;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"EMMessageList.m" lineNumber:1266 description:{@"Invalid parameter not satisfying: %@", @"[collection isKindOfClass:[EMThread class]]"}];
  }

  if (![(EMQueryingCollection *)self isRecovering])
  {
    v9 = [(EMMessageList *)self removeItemIDs:dsCopy];
    observerScheduler = [(EMMessageList *)self observerScheduler];
    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 3221225472;
    v12[2] = __43__EMMessageList_collection_deletedItemIDs___block_invoke;
    v12[3] = &unk_1E826C148;
    v12[4] = self;
    v13 = dsCopy;
    [observerScheduler performSyncBlock:v12];
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

- (void)collectionDidFinishInitialLoad:(id)load
{
  loadCopy = load;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"EMMessageList.m" lineNumber:1285 description:{@"Invalid parameter not satisfying: %@", @"[collection isKindOfClass:[EMThread class]]"}];
  }

  v6 = loadCopy;
  observerScheduler = [(EMMessageList *)self observerScheduler];
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __48__EMMessageList_collectionDidFinishInitialLoad___block_invoke;
  v10[3] = &unk_1E826C148;
  v10[4] = self;
  v8 = v6;
  v11 = v8;
  [observerScheduler performSyncBlock:v10];
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

- (void)collection:(id)collection replacedExistingItemID:(id)d withNewItemID:(id)iD
{
  collectionCopy = collection;
  dCopy = d;
  iDCopy = iD;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"EMMessageList.m" lineNumber:1298 description:{@"Invalid parameter not satisfying: %@", @"[collection isKindOfClass:[EMThread class]]"}];
  }

  if (![(EMQueryingCollection *)self isRecovering])
  {
    observerScheduler = [(EMMessageList *)self observerScheduler];
    v14[0] = MEMORY[0x1E69E9820];
    v14[1] = 3221225472;
    v14[2] = __65__EMMessageList_collection_replacedExistingItemID_withNewItemID___block_invoke;
    v14[3] = &unk_1E826C230;
    v14[4] = self;
    v15 = dCopy;
    v16 = iDCopy;
    [observerScheduler performSyncBlock:v14];
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

- (void)queryMatchedMovedObjectIDs:(id)ds before:(id)before extraInfo:(id)info
{
  beforeCopy = before;
  infoCopy = info;
  v10 = [(EMMessageList *)self _expandedObjectIDsForObjectIDs:ds];
  v11.receiver = self;
  v11.super_class = EMMessageList;
  [(EMQueryingCollection *)&v11 queryMatchedMovedObjectIDs:v10 before:beforeCopy extraInfo:infoCopy];
}

- (void)queryMatchedMovedObjectIDs:(id)ds after:(id)after extraInfo:(id)info
{
  afterCopy = after;
  infoCopy = info;
  v10 = [(EMMessageList *)self _expandedObjectIDsForObjectIDs:ds];
  v11.receiver = self;
  v11.super_class = EMMessageList;
  [(EMQueryingCollection *)&v11 queryMatchedMovedObjectIDs:v10 after:afterCopy extraInfo:infoCopy];
}

- (void)queryMatchedChangedObjectIDs:(id)ds extraInfo:(id)info
{
  v41 = *MEMORY[0x1E69E9840];
  v38.receiver = self;
  v38.super_class = EMMessageList;
  infoCopy = info;
  [(EMQueryingCollection *)&v38 queryMatchedChangedObjectIDs:ds extraInfo:infoCopy];
  v20 = [infoCopy objectForKeyedSubscript:@"changesByObjectID"];
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
    allKeys = v30;
  }

  else
  {
    v27 = 0u;
    v28 = 0u;
    v25 = 0u;
    v26 = 0u;
    allKeys = [v20 allKeys];
    v9 = [allKeys countByEnumeratingWithState:&v25 objects:v40 count:16];
    if (v9)
    {
      v10 = *v26;
      do
      {
        for (i = 0; i != v9; ++i)
        {
          if (*v26 != v10)
          {
            objc_enumerationMutation(allKeys);
          }

          v12 = [(NSMutableDictionary *)self->_expandedThreads objectForKeyedSubscript:*(*(&v25 + 1) + 8 * i)];
          (*(v6 + 2))(v6, v12);
        }

        v9 = [allKeys countByEnumeratingWithState:&v25 objects:v40 count:16];
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

- (id)_expandedObjectIDsForObjectIDs:(id)ds
{
  v23 = *MEMORY[0x1E69E9840];
  dsCopy = ds;
  if ([(EMMessageList *)self isThreaded])
  {
    v4 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v20 = 0u;
    v21 = 0u;
    v18 = 0u;
    v19 = 0u;
    v5 = dsCopy;
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

    v12 = dsCopy;
  }

  else
  {
    v12 = dsCopy;
    v4 = dsCopy;
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

- (void)queryMatchedOldestItemsUpdatedForMailboxesObjectIDs:(id)ds
{
  dsCopy = ds;
  v5 = +[EMMessageList log];
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    [(EMMessageList *)self queryMatchedOldestItemsUpdatedForMailboxesObjectIDs:v5];
  }

  observerScheduler = [(EMMessageList *)self observerScheduler];
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __69__EMMessageList_queryMatchedOldestItemsUpdatedForMailboxesObjectIDs___block_invoke;
  v8[3] = &unk_1E826C148;
  v7 = dsCopy;
  v9 = v7;
  selfCopy = self;
  [observerScheduler performSyncBlock:v8];
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

- (void)queryDidFinishInitialLoadWithExtraInfo:(id)info
{
  infoCopy = info;
  v9.receiver = self;
  v9.super_class = EMMessageList;
  [(EMQueryingCollection *)&v9 queryDidFinishInitialLoad];
  observerScheduler = [(EMMessageList *)self observerScheduler];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __56__EMMessageList_queryDidFinishInitialLoadWithExtraInfo___block_invoke;
  v7[3] = &unk_1E826C148;
  v7[4] = self;
  v6 = infoCopy;
  v8 = v6;
  [observerScheduler performSyncBlock:v7];
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

- (void)queryDidFailInitialLoadWithExtraInfo:(id)info
{
  infoCopy = info;
  observerScheduler = [(EMMessageList *)self observerScheduler];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __54__EMMessageList_queryDidFailInitialLoadWithExtraInfo___block_invoke;
  v7[3] = &unk_1E826C148;
  v7[4] = self;
  v6 = infoCopy;
  v8 = v6;
  [observerScheduler performSyncBlock:v7];
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

- (BOOL)_threadIsExpanded:(id)expanded
{
  itemID = [expanded itemID];
  LOBYTE(self) = [(EMMessageList *)self _threadIsExpandedForItemID:itemID];

  return self;
}

- (BOOL)_threadIsExpandedForItemID:(id)d
{
  dCopy = d;
  os_unfair_lock_lock(&self->_expandedThreadsLock);
  v5 = [(NSMutableDictionary *)self->_expandedThreads objectForKeyedSubscript:dCopy];
  v6 = v5 != 0;

  os_unfair_lock_unlock(&self->_expandedThreadsLock);
  return v6;
}

- (id)_nextThreadItemIDAfterThreadItemID:(id)d
{
  v3 = [(EMQueryingCollection *)self iterateItemIDsStartingAtItemID:d inReverse:0 withBlock:&__block_literal_global_31];

  return v3;
}

uint64_t __52__EMMessageList__nextThreadItemIDAfterThreadItemID___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  return isKindOfClass & 1;
}

- (id)itemIDOfFirstMessageListItemMatchingPredicate:(id)predicate
{
  v24[2] = *MEMORY[0x1E69E9840];
  predicateCopy = predicate;
  v5 = objc_alloc_init(MEMORY[0x1E699B868]);
  query = [(EMQueryingCollection *)self query];
  v7 = objc_alloc(MEMORY[0x1E696AB28]);
  v24[0] = predicateCopy;
  predicate = [query predicate];
  v24[1] = predicate;
  v9 = [MEMORY[0x1E695DEC8] arrayWithObjects:v24 count:2];
  v10 = [v7 initWithType:1 subpredicates:v9];

  v11 = [EMQuery alloc];
  v12 = objc_opt_class();
  ef_simplifiedPredicate = [v10 ef_simplifiedPredicate];
  sortDescriptors = [query sortDescriptors];
  v15 = -[EMQuery initWithTargetClass:predicate:sortDescriptors:queryOptions:label:](v11, "initWithTargetClass:predicate:sortDescriptors:queryOptions:label:", v12, ef_simplifiedPredicate, sortDescriptors, [query queryOptions], 0);

  repository = [(EMMessageList *)self repository];
  completionHandlerAdapter = [v5 completionHandlerAdapter];
  [repository performQuery:v15 limit:1 completionHandler:completionHandlerAdapter];

  future = [v5 future];
  result = [future result];
  firstObject = [result firstObject];

  if (firstObject)
  {
    v21 = [(EMMessageList *)self itemIDOfMessageListItemWithDisplayMessage:firstObject];
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
  query = [(EMQueryingCollection *)self query];
  label = [query label];

  return label;
}

- (id)itemIDsForStateCaptureWithErrorString:(id *)string
{
  if (string)
  {
    *string = 0;
  }

  allItemIDs = [(EMQueryingCollection *)self allItemIDs];
  resultIfAvailable = [allItemIDs resultIfAvailable];

  return resultIfAvailable;
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