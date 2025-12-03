@interface EMQueryingCollection
+ (OS_os_log)log;
+ (OS_os_log)signpostLog;
- (BOOL)containsItemID:(id)d includeRecovery:(BOOL)recovery;
- (BOOL)isRecovering;
- (BOOL)observerContainsObjectID:(id)d;
- (EFFuture)allItemIDs;
- (EFScheduler)queryScheduler;
- (EMQueryingCollection)initWithCoder:(id)coder;
- (EMQueryingCollection)initWithObjectID:(id)d query:(id)query;
- (EMQueryingCollection)initWithQuery:(id)query repository:(id)repository;
- (id)_itemIDsForObjectIDs:(id)ds;
- (id)_iterateItemIDsStartingAtItemID:(id)d inReverse:(BOOL)reverse includeStartingItem:(BOOL)item withBlock:(id)block;
- (id)firstExistingItemIDAfterItemID:(id)d;
- (id)firstExistingItemIDBeforeItemID:(id)d;
- (id)objectIDForItemID:(id)d;
- (id)removeItemIDs:(id)ds;
- (unint64_t)signpostID;
- (void)_cancelQuery;
- (void)_cancelQueryIfNeeded;
- (void)_commonInitWithQuery:(id)query;
- (void)_filterAndTransformObjectIDs:(id)ds before:(BOOL)before existingObjectID:(id)d batchBlock:(id)block;
- (void)_notifyNewChangeObserverAboutExistingState:(id)state;
- (void)_performQuery;
- (void)_performQueryIfNeeded;
- (void)beginObserving:(id)observing;
- (void)dealloc;
- (void)encodeWithCoder:(id)coder;
- (void)enumerateObserversWithBlock:(id)block;
- (void)finishRecovery;
- (void)insertItemIDs:(id)ds after:(id)after extraInfo:(id)info;
- (void)insertItemIDs:(id)ds before:(id)before extraInfo:(id)info;
- (void)notifyChangeObserversAboutAddedItemIDs:(id)ds after:(id)after extraInfo:(id)info;
- (void)notifyChangeObserversAboutAddedItemIDs:(id)ds before:(id)before extraInfo:(id)info;
- (void)notifyChangeObserversAboutChangedItemIDs:(id)ds extraInfo:(id)info;
- (void)notifyChangeObserversAboutMovedItemIDs:(id)ds after:(id)after extraInfo:(id)info;
- (void)notifyChangeObserversAboutMovedItemIDs:(id)ds before:(id)before extraInfo:(id)info;
- (void)notifyNewChangeObserverAboutExistingState:(id)state;
- (void)queryAnticipatesDeletedObjectIDs:(id)ds;
- (void)queryDidFinishInitialLoad;
- (void)queryDidFinishRemoteSearch;
- (void)queryDidStartRecovery;
- (void)queryMatchedAddedObjectIDs:(id)ds after:(id)after extraInfo:(id)info;
- (void)queryMatchedAddedObjectIDs:(id)ds before:(id)before extraInfo:(id)info;
- (void)queryMatchedChangedObjectIDs:(id)ds extraInfo:(id)info;
- (void)queryMatchedDeletedObjectIDs:(id)ds;
- (void)queryMatchedMovedObjectIDs:(id)ds after:(id)after extraInfo:(id)info;
- (void)queryMatchedMovedObjectIDs:(id)ds before:(id)before extraInfo:(id)info;
- (void)queryReplacedObjectID:(id)d withNewObjectID:(id)iD;
- (void)refresh;
- (void)stopObserving:(id)observing;
@end

@implementation EMQueryingCollection

+ (OS_os_log)log
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __27__EMQueryingCollection_log__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = self;
  if (log_onceToken_33 != -1)
  {
    dispatch_once(&log_onceToken_33, block);
  }

  v2 = log_log_33;

  return v2;
}

void __27__EMQueryingCollection_log__block_invoke(uint64_t a1)
{
  v3 = NSStringFromClass(*(a1 + 32));
  v1 = os_log_create("com.apple.email", [v3 UTF8String]);
  v2 = log_log_33;
  log_log_33 = v1;
}

+ (OS_os_log)signpostLog
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __35__EMQueryingCollection_signpostLog__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = self;
  if (signpostLog_onceToken_3 != -1)
  {
    dispatch_once(&signpostLog_onceToken_3, block);
  }

  v2 = signpostLog_log_3;

  return v2;
}

void __35__EMQueryingCollection_signpostLog__block_invoke(uint64_t a1)
{
  v3 = NSStringFromClass(*(a1 + 32));
  v1 = os_log_create("com.apple.email.signposts", [v3 UTF8String]);
  v2 = signpostLog_log_3;
  signpostLog_log_3 = v1;
}

- (EFScheduler)queryScheduler
{
  if (defaultCollectionScheduler_onceToken != -1)
  {
    [EMQueryingCollection queryScheduler];
  }

  v3 = defaultCollectionScheduler_scheduler;

  return v3;
}

- (void)_cancelQuery
{
  cancelationToken = [(EMQueryingCollection *)self cancelationToken];
  [cancelationToken cancel];

  [(EMQueryingCollection *)self setCancelationToken:0];
  os_unfair_lock_lock(&self->_itemIDsLock);
  [(NSMutableOrderedSet *)self->_itemIDs removeAllObjects];
  self->_foundAllItemIDs = 0;
  self->_foundFirstBatch = 0;
  recoveringItemIDs = self->_recoveringItemIDs;
  self->_recoveringItemIDs = 0;

  os_unfair_lock_unlock(&self->_itemIDsLock);
}

- (void)_performQuery
{
  repository = [(EMRepositoryObject *)self repository];
  query = [(EMQueryingCollection *)self query];
  v4 = [repository performQuery:query withObserver:self];
  [(EMQueryingCollection *)self setCancelationToken:v4];
}

- (BOOL)isRecovering
{
  os_unfair_lock_lock(&self->_itemIDsLock);
  v3 = self->_recoveringItemIDs != 0;
  os_unfair_lock_unlock(&self->_itemIDsLock);
  return v3;
}

- (void)dealloc
{
  cancelationToken = [(EMQueryingCollection *)self cancelationToken];
  [cancelationToken cancel];

  v4.receiver = self;
  v4.super_class = EMQueryingCollection;
  [(EMQueryingCollection *)&v4 dealloc];
}

- (void)queryDidFinishInitialLoad
{
  v69 = *MEMORY[0x1E69E9840];
  v2 = +[EMQueryingCollection log];
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    ef_publicDescription = [(EMObject *)self ef_publicDescription];
    *buf = 134218242;
    selfCopy3 = self;
    v58 = 2114;
    v59 = ef_publicDescription;
    _os_log_impl(&dword_1C6655000, v2, OS_LOG_TYPE_DEFAULT, "<%p> Finished initial load\n%{public}@", buf, 0x16u);
  }

  if ([(EMQueryingCollection *)self isRecovering])
  {
    [(EMQueryingCollection *)self finishRecovery];
  }

  selfCopy5 = self;
  os_unfair_lock_lock(&self->_itemIDsLock);
  recoveringItemIDs = self->_recoveringItemIDs;
  if (!recoveringItemIDs)
  {
    v41 = 0;
    v15 = 0;
    goto LABEL_24;
  }

  v5 = [(NSMutableOrderedSet *)self->_itemIDs differenceFromOrderedSet:?];
  array = [MEMORY[0x1E695DF70] array];
  v40 = v5;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __49__EMQueryingCollection_queryDidFinishInitialLoad__block_invoke;
  aBlock[3] = &unk_1E826F410;
  aBlock[4] = self;
  v41 = array;
  v55 = v41;
  v7 = _Block_copy(aBlock);
  v52 = 0u;
  v53 = 0u;
  v50 = 0u;
  v51 = 0u;
  insertions = [v5 insertions];
  v9 = [insertions countByEnumeratingWithState:&v50 objects:v68 count:16];
  v10 = 0;
  if (!v9)
  {
    index = 0x7FFFFFFFFFFFFFFFLL;
    goto LABEL_21;
  }

  v11 = *v51;
  index = 0x7FFFFFFFFFFFFFFFLL;
  do
  {
    for (i = 0; i != v9; ++i)
    {
      if (*v51 != v11)
      {
        objc_enumerationMutation(insertions);
      }

      v14 = *(*(&v50 + 1) + 8 * i);
      if (index == 0x7FFFFFFFFFFFFFFFLL)
      {
        index = [*(*(&v50 + 1) + 8 * i) index];
LABEL_14:
        ++v10;
        continue;
      }

      if ([*(*(&v50 + 1) + 8 * i) index] == index + v10)
      {
        goto LABEL_14;
      }

      v7[2](v7, index, v10);
      index = [v14 index];
      v10 = 1;
    }

    v9 = [insertions countByEnumeratingWithState:&v50 objects:v68 count:16];
  }

  while (v9);
LABEL_21:

  v7[2](v7, index, v10);
  v16 = +[EMQueryingCollection log];
  if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
  {
    v17 = [(NSOrderedSet *)self->_recoveringItemIDs count];
    v18 = [(NSMutableOrderedSet *)self->_itemIDs count];
    removals = [v40 removals];
    v20 = [removals count];
    v21 = [v41 count];
    *buf = 134219266;
    selfCopy3 = self;
    v58 = 2048;
    v59 = v17;
    v60 = 2048;
    v61 = v18;
    v62 = 2048;
    v63 = v20;
    v64 = 2048;
    v65 = v21;
    v66 = 2114;
    selfCopy4 = self;
    _os_log_impl(&dword_1C6655000, v16, OS_LOG_TYPE_DEFAULT, "<%p> Finishing recovery, number of items went from %lu to %lu (%lu removals, %lu grouped insertions)\n%{public}@", buf, 0x3Eu);
  }

  v22 = self->_recoveringItemIDs;
  self->_recoveringItemIDs = 0;

  v15 = v40;
  selfCopy5 = self;
LABEL_24:
  v23 = [(NSMutableOrderedSet *)selfCopy5->_itemIDs count];
  selfCopy5->_foundAllItemIDs = 1;
  selfCopy5->_foundFirstBatch = 1;
  v24 = selfCopy5->_allItemIDsPromise;
  allItemIDsPromise = selfCopy5->_allItemIDsPromise;
  selfCopy5->_allItemIDsPromise = 0;

  if (v24)
  {
    v26 = [(NSMutableSet *)self->_itemIDsAnticipatingDelete count];
    itemIDs = self->_itemIDs;
    if (v26)
    {
      array3 = [(NSMutableOrderedSet *)itemIDs mutableCopy];
      [array3 minusSet:self->_itemIDsAnticipatingDelete];
      array2 = [array3 array];
    }

    else
    {
      array3 = [(NSMutableOrderedSet *)itemIDs array];
      array2 = [array3 copy];
    }

    v30 = array2;
  }

  else
  {
    v30 = 0;
  }

  os_unfair_lock_unlock(&self->_itemIDsLock);
  removals2 = [v15 removals];
  if ([removals2 count])
  {

    goto LABEL_33;
  }

  v32 = [v41 count] == 0;

  if (v32)
  {
    if (!v23)
    {
      observerScheduler = [(EMQueryingCollection *)self observerScheduler];
      v45[0] = MEMORY[0x1E69E9820];
      v45[1] = 3221225472;
      v45[2] = __49__EMQueryingCollection_queryDidFinishInitialLoad__block_invoke_34;
      v45[3] = &unk_1E826C098;
      v45[4] = self;
      [observerScheduler performSyncBlock:v45];
    }
  }

  else
  {
LABEL_33:
    observerScheduler2 = [(EMQueryingCollection *)self observerScheduler];
    v46[0] = MEMORY[0x1E69E9820];
    v46[1] = 3221225472;
    v46[2] = __49__EMQueryingCollection_queryDidFinishInitialLoad__block_invoke_31;
    v46[3] = &unk_1E826C230;
    v47 = v15;
    selfCopy6 = self;
    v49 = v41;
    [observerScheduler2 performSyncBlock:v46];
  }

  selfCopy8 = self;
  if (recoveringItemIDs)
  {
    observerScheduler3 = [(EMQueryingCollection *)self observerScheduler];
    v44[0] = MEMORY[0x1E69E9820];
    v44[1] = 3221225472;
    v44[2] = __49__EMQueryingCollection_queryDidFinishInitialLoad__block_invoke_2_35;
    v44[3] = &unk_1E826C098;
    v44[4] = self;
    [observerScheduler3 performSyncBlock:v44];

    selfCopy8 = self;
  }

  observerScheduler4 = [(EMQueryingCollection *)selfCopy8 observerScheduler];
  v43[0] = MEMORY[0x1E69E9820];
  v43[1] = 3221225472;
  v43[2] = __49__EMQueryingCollection_queryDidFinishInitialLoad__block_invoke_4;
  v43[3] = &unk_1E826C098;
  v43[4] = selfCopy8;
  [observerScheduler4 performSyncBlock:v43];

  [(EMQueryingCollection *)self _cancelQueryIfNeeded];
  [(EFPromise *)v24 finishWithResult:v30];

  v37 = *MEMORY[0x1E69E9840];
}

void __49__EMQueryingCollection_queryDidFinishInitialLoad__block_invoke_4(uint64_t a1)
{
  v2 = +[EMQueryingCollection signpostLog];
  v3 = *(a1 + 32);
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __49__EMQueryingCollection_queryDidFinishInitialLoad__block_invoke_5;
  v5[3] = &unk_1E826DDD0;
  v5[4] = v3;
  v6 = v2;
  v4 = v2;
  [v3 enumerateObserversWithBlock:v5];
}

void __49__EMQueryingCollection_queryDidFinishInitialLoad__block_invoke_5(uint64_t a1, void *a2)
{
  v3 = a2;
  if (objc_opt_respondsToSelector())
  {
    [v3 collectionDidFinishInitialLoad:*(a1 + 32)];
  }

  v4 = os_signpost_id_make_with_pointer(*(a1 + 40), v3);
  v5 = *(a1 + 40);
  v6 = v5;
  if (v4 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v5))
  {
    *v7 = 0;
    _os_signpost_emit_with_name_impl(&dword_1C6655000, v6, OS_SIGNPOST_INTERVAL_END, v4, "EMCollectionTotal", " enableTelemetry=YES ", v7, 2u);
  }
}

- (void)_cancelQueryIfNeeded
{
  queryScheduler = [(EMQueryingCollection *)self queryScheduler];
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __44__EMQueryingCollection__cancelQueryIfNeeded__block_invoke;
  v4[3] = &unk_1E826C098;
  v4[4] = self;
  [queryScheduler performBlock:v4];
}

void __44__EMQueryingCollection__cancelQueryIfNeeded__block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) changeObservers];
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __44__EMQueryingCollection__cancelQueryIfNeeded__block_invoke_2;
  v3[3] = &unk_1E826CE90;
  v3[4] = *(a1 + 32);
  [v2 performWhileLocked:v3];
}

- (unint64_t)signpostID
{
  signpostLog = [objc_opt_class() signpostLog];
  v4 = os_signpost_id_make_with_pointer(signpostLog, self);

  return v4;
}

- (EMQueryingCollection)initWithQuery:(id)query repository:(id)repository
{
  queryCopy = query;
  repositoryCopy = repository;
  v8 = [(EMQueryingCollection *)self initWithObjectID:0 query:queryCopy];
  [(EMRepositoryObject *)v8 setRepository:repositoryCopy];

  return v8;
}

- (EMQueryingCollection)initWithObjectID:(id)d query:(id)query
{
  dCopy = d;
  queryCopy = query;
  v11.receiver = self;
  v11.super_class = EMQueryingCollection;
  v8 = [(EMObject *)&v11 initWithObjectID:dCopy];
  v9 = v8;
  if (v8)
  {
    [(EMQueryingCollection *)v8 _commonInitWithQuery:queryCopy];
  }

  return v9;
}

- (void)_commonInitWithQuery:(id)query
{
  queryCopy = query;
  objc_storeStrong(&self->_query, query);
  self->_itemIDsLock._os_unfair_lock_opaque = 0;
  v5 = objc_alloc_init(MEMORY[0x1E695DFA0]);
  itemIDs = self->_itemIDs;
  self->_itemIDs = v5;

  v7 = objc_alloc_init(MEMORY[0x1E695DFA8]);
  itemIDsAnticipatingDelete = self->_itemIDsAnticipatingDelete;
  self->_itemIDsAnticipatingDelete = v7;

  immediateScheduler = [MEMORY[0x1E699B978] immediateScheduler];
  observerScheduler = self->_observerScheduler;
  self->_observerScheduler = immediateScheduler;

  v11 = objc_alloc(MEMORY[0x1E699B7F0]);
  weakObjectsHashTable = [MEMORY[0x1E696AC70] weakObjectsHashTable];
  v13 = [v11 initWithObject:weakObjectsHashTable];
  changeObservers = self->_changeObservers;
  self->_changeObservers = v13;
}

- (EMQueryingCollection)initWithCoder:(id)coder
{
  coderCopy = coder;
  v8.receiver = self;
  v8.super_class = EMQueryingCollection;
  v5 = [(EMObject *)&v8 initWithCoder:coderCopy];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"EFPropertyKey_query"];
    [(EMQueryingCollection *)v5 _commonInitWithQuery:v6];
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  v5.receiver = self;
  v5.super_class = EMQueryingCollection;
  [(EMObject *)&v5 encodeWithCoder:coderCopy];
  [coderCopy encodeObject:self->_query forKey:@"EFPropertyKey_query"];
}

- (id)objectIDForItemID:(id)d
{
  dCopy = d;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = dCopy;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (void)insertItemIDs:(id)ds before:(id)before extraInfo:(id)info
{
  dsCopy = ds;
  beforeCopy = before;
  os_unfair_lock_lock(&self->_itemIDsLock);
  [(NSMutableOrderedSet *)self->_itemIDs removeObjectsInArray:dsCopy];
  [(NSMutableOrderedSet *)self->_itemIDs ef_insertObjects:dsCopy before:beforeCopy];
  os_unfair_lock_unlock(&self->_itemIDsLock);
}

- (void)insertItemIDs:(id)ds after:(id)after extraInfo:(id)info
{
  dsCopy = ds;
  afterCopy = after;
  os_unfair_lock_lock(&self->_itemIDsLock);
  [(NSMutableOrderedSet *)self->_itemIDs removeObjectsInArray:dsCopy];
  [(NSMutableOrderedSet *)self->_itemIDs ef_insertObjects:dsCopy after:afterCopy];
  os_unfair_lock_unlock(&self->_itemIDsLock);
}

- (id)removeItemIDs:(id)ds
{
  v18 = *MEMORY[0x1E69E9840];
  dsCopy = ds;
  v5 = objc_alloc_init(MEMORY[0x1E695DF70]);
  os_unfair_lock_lock(&self->_itemIDsLock);
  v15 = 0u;
  v16 = 0u;
  v13 = 0u;
  v14 = 0u;
  v6 = dsCopy;
  v7 = [v6 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v7)
  {
    v8 = *v14;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v14 != v8)
        {
          objc_enumerationMutation(v6);
        }

        v10 = *(*(&v13 + 1) + 8 * i);
        if ([(NSMutableSet *)self->_itemIDsAnticipatingDelete containsObject:v10])
        {
          [(NSMutableSet *)self->_itemIDsAnticipatingDelete removeObject:v10];
        }

        else
        {
          [v5 addObject:v10];
        }
      }

      v7 = [v6 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v7);
  }

  [(NSMutableOrderedSet *)self->_itemIDs removeObjectsInArray:v6];
  os_unfair_lock_unlock(&self->_itemIDsLock);

  v11 = *MEMORY[0x1E69E9840];

  return v5;
}

- (BOOL)containsItemID:(id)d includeRecovery:(BOOL)recovery
{
  recoveryCopy = recovery;
  dCopy = d;
  os_unfair_lock_lock(&self->_itemIDsLock);
  v7 = [(NSMutableOrderedSet *)self->_itemIDs containsObject:dCopy];
  if (((v7 | !recoveryCopy) & 1) == 0)
  {
    LOBYTE(v7) = [(NSOrderedSet *)self->_recoveringItemIDs containsObject:dCopy];
  }

  os_unfair_lock_unlock(&self->_itemIDsLock);

  return v7;
}

- (id)firstExistingItemIDAfterItemID:(id)d
{
  v3 = [(EMQueryingCollection *)self _firstExistingItemIDForItemID:d inReverse:0];

  return v3;
}

- (id)firstExistingItemIDBeforeItemID:(id)d
{
  v3 = [(EMQueryingCollection *)self _firstExistingItemIDForItemID:d inReverse:1];

  return v3;
}

- (id)_iterateItemIDsStartingAtItemID:(id)d inReverse:(BOOL)reverse includeStartingItem:(BOOL)item withBlock:(id)block
{
  itemCopy = item;
  reverseCopy = reverse;
  dCopy = d;
  blockCopy = block;
  v12 = dCopy;
  os_unfair_lock_lock(&self->_itemIDsLock);
  if (itemCopy)
  {
    v13 = blockCopy[2](blockCopy, v12);
  }

  else
  {
    v13 = 1;
  }

  v14 = v12;
  while ((v13 & 1) != 0)
  {
    itemIDs = self->_itemIDs;
    if (reverseCopy)
    {
      [(NSMutableOrderedSet *)itemIDs ef_objectBeforeObject:v14];
    }

    else
    {
      [(NSMutableOrderedSet *)itemIDs ef_objectAfterObject:v14];
    }
    v16 = ;

    if (!v16)
    {
      v14 = 0;
      break;
    }

    v14 = v16;
    v13 = blockCopy[2](blockCopy, v16);
  }

  os_unfair_lock_unlock(&self->_itemIDsLock);

  return v14;
}

- (void)notifyChangeObserversAboutAddedItemIDs:(id)ds before:(id)before extraInfo:(id)info
{
  v23 = *MEMORY[0x1E69E9840];
  dsCopy = ds;
  beforeCopy = before;
  v9 = [(EMQueryingCollection *)self firstExistingItemIDAfterItemID:beforeCopy];
  v10 = +[EMQueryingCollection log];
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134218498;
    v18 = [dsCopy count];
    v19 = 2114;
    v20 = v9;
    v21 = 2114;
    v22 = beforeCopy;
    _os_log_impl(&dword_1C6655000, v10, OS_LOG_TYPE_DEFAULT, "Notifying observer %lu itemIDs were added before undeletedItemID %{public}@ (derived from existingItemID: %{public}@)", buf, 0x20u);
  }

  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __80__EMQueryingCollection_notifyChangeObserversAboutAddedItemIDs_before_extraInfo___block_invoke;
  v14[3] = &unk_1E826DFD8;
  v14[4] = self;
  v11 = dsCopy;
  v15 = v11;
  v12 = v9;
  v16 = v12;
  [(EMQueryingCollection *)self enumerateObserversWithBlock:v14];

  v13 = *MEMORY[0x1E69E9840];
}

- (void)notifyChangeObserversAboutAddedItemIDs:(id)ds after:(id)after extraInfo:(id)info
{
  v23 = *MEMORY[0x1E69E9840];
  dsCopy = ds;
  afterCopy = after;
  v9 = [(EMQueryingCollection *)self firstExistingItemIDBeforeItemID:afterCopy];
  v10 = +[EMQueryingCollection log];
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134218498;
    v18 = [dsCopy count];
    v19 = 2114;
    v20 = v9;
    v21 = 2114;
    v22 = afterCopy;
    _os_log_impl(&dword_1C6655000, v10, OS_LOG_TYPE_DEFAULT, "Notifying observer %lu itemIDs were added after undeletedItemID %{public}@ (derived from existingItemID: %{public}@)", buf, 0x20u);
  }

  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __79__EMQueryingCollection_notifyChangeObserversAboutAddedItemIDs_after_extraInfo___block_invoke;
  v14[3] = &unk_1E826DFD8;
  v14[4] = self;
  v11 = dsCopy;
  v15 = v11;
  v12 = v9;
  v16 = v12;
  [(EMQueryingCollection *)self enumerateObserversWithBlock:v14];

  v13 = *MEMORY[0x1E69E9840];
}

- (void)notifyChangeObserversAboutChangedItemIDs:(id)ds extraInfo:(id)info
{
  dsCopy = ds;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __75__EMQueryingCollection_notifyChangeObserversAboutChangedItemIDs_extraInfo___block_invoke;
  v7[3] = &unk_1E826DDD0;
  v7[4] = self;
  v8 = dsCopy;
  v6 = dsCopy;
  [(EMQueryingCollection *)self enumerateObserversWithBlock:v7];
}

- (void)notifyChangeObserversAboutMovedItemIDs:(id)ds before:(id)before extraInfo:(id)info
{
  dsCopy = ds;
  beforeCopy = before;
  v9 = [(EMQueryingCollection *)self firstExistingItemIDAfterItemID:beforeCopy];
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __80__EMQueryingCollection_notifyChangeObserversAboutMovedItemIDs_before_extraInfo___block_invoke;
  v12[3] = &unk_1E826DFD8;
  v12[4] = self;
  v10 = dsCopy;
  v13 = v10;
  v14 = v9;
  v11 = v9;
  [(EMQueryingCollection *)self enumerateObserversWithBlock:v12];
}

- (void)notifyChangeObserversAboutMovedItemIDs:(id)ds after:(id)after extraInfo:(id)info
{
  dsCopy = ds;
  afterCopy = after;
  v9 = [(EMQueryingCollection *)self firstExistingItemIDBeforeItemID:afterCopy];
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __79__EMQueryingCollection_notifyChangeObserversAboutMovedItemIDs_after_extraInfo___block_invoke;
  v12[3] = &unk_1E826DFD8;
  v12[4] = self;
  v10 = dsCopy;
  v13 = v10;
  v14 = v9;
  v11 = v9;
  [(EMQueryingCollection *)self enumerateObserversWithBlock:v12];
}

- (EFFuture)allItemIDs
{
  os_unfair_lock_lock(&self->_itemIDsLock);
  if (self->_foundAllItemIDs)
  {
    v3 = [(NSMutableSet *)self->_itemIDsAnticipatingDelete count];
    itemIDs = self->_itemIDs;
    if (v3)
    {
      array2 = [(NSMutableOrderedSet *)itemIDs mutableCopy];
      [array2 minusSet:self->_itemIDsAnticipatingDelete];
      array = [array2 array];
    }

    else
    {
      array2 = [(NSMutableOrderedSet *)itemIDs array];
      array = [array2 copy];
    }

    v11 = array;

    os_unfair_lock_unlock(&self->_itemIDsLock);
    if (v11)
    {
      v12 = [MEMORY[0x1E699B7C8] futureWithResult:v11];

      future = v12;
      goto LABEL_12;
    }

    future = 0;
  }

  else
  {
    allItemIDsPromise = self->_allItemIDsPromise;
    if (!allItemIDsPromise)
    {
      promise = [MEMORY[0x1E699B868] promise];
      v9 = self->_allItemIDsPromise;
      self->_allItemIDsPromise = promise;

      allItemIDsPromise = self->_allItemIDsPromise;
    }

    future = [(EFPromise *)allItemIDsPromise future];
    os_unfair_lock_unlock(&self->_itemIDsLock);
  }

  [(EMQueryingCollection *)self _performQueryIfNeeded];
LABEL_12:

  return future;
}

- (void)beginObserving:(id)observing
{
  v30 = *MEMORY[0x1E69E9840];
  observingCopy = observing;
  v5 = +[EMQueryingCollection log];
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134218242;
    selfCopy = self;
    v26 = 2114;
    v27 = observingCopy;
    _os_log_impl(&dword_1C6655000, v5, OS_LOG_TYPE_DEFAULT, "<%p> Observer added: %{public}@", buf, 0x16u);
  }

  v6 = +[EMQueryingCollection signpostLog];
  v7 = os_signpost_id_make_with_pointer(v6, observingCopy);
  query = [(EMQueryingCollection *)self query];
  v9 = v6;
  v10 = v9;
  if (v7 - 1 > 0xFFFFFFFFFFFFFFFDLL)
  {

    v18 = v10;
  }

  else
  {
    if (os_signpost_enabled(v9))
    {
      v11 = NSStringFromClass([query targetClass]);
      label = [query label];
      v13 = objc_opt_class();
      *buf = 138543874;
      selfCopy = v11;
      v26 = 2114;
      v27 = label;
      v28 = 2114;
      v29 = v13;
      _os_signpost_emit_with_name_impl(&dword_1C6655000, v10, OS_SIGNPOST_INTERVAL_BEGIN, v7, "EMCollectionTotal", "resultClass=%{signpost.description:attribute,public}@ label=%{signpost.description:attribute,public}@ observer=%{signpost.description:attribute,public}@ enableTelemetry=YES ", buf, 0x20u);
    }

    v14 = v10;
    if (os_signpost_enabled(v14))
    {
      v15 = NSStringFromClass([query targetClass]);
      label2 = [query label];
      v17 = objc_opt_class();
      *buf = 138543874;
      selfCopy = v15;
      v26 = 2114;
      v27 = label2;
      v28 = 2114;
      v29 = v17;
      _os_signpost_emit_with_name_impl(&dword_1C6655000, v14, OS_SIGNPOST_INTERVAL_BEGIN, v7, "EMCollectionFirstBatch", "resultClass=%{signpost.description:attribute,public}@ label=%{signpost.description:attribute,public}@ observer=%{signpost.description:attribute,public}@ enableTelemetry=YES ", buf, 0x20u);
    }
  }

  queryScheduler = [(EMQueryingCollection *)self queryScheduler];
  v22[0] = MEMORY[0x1E69E9820];
  v22[1] = 3221225472;
  v22[2] = __39__EMQueryingCollection_beginObserving___block_invoke;
  v22[3] = &unk_1E826C148;
  v22[4] = self;
  v20 = observingCopy;
  v23 = v20;
  [queryScheduler performBlock:v22];

  v21 = *MEMORY[0x1E69E9840];
}

void __39__EMQueryingCollection_beginObserving___block_invoke(uint64_t a1)
{
  v11 = 0;
  v12 = &v11;
  v13 = 0x2020000000;
  v14 = 0;
  v2 = [*(a1 + 32) changeObservers];
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __39__EMQueryingCollection_beginObserving___block_invoke_2;
  v8[3] = &unk_1E826F2D8;
  v3 = *(a1 + 40);
  v8[4] = *(a1 + 32);
  v9 = v3;
  v10 = &v11;
  [v2 performWhileLocked:v8];

  if (*(v12 + 24) == 1)
  {
    v4 = [*(a1 + 32) observerScheduler];
    v6[0] = MEMORY[0x1E69E9820];
    v6[1] = 3221225472;
    v6[2] = __39__EMQueryingCollection_beginObserving___block_invoke_23;
    v6[3] = &unk_1E826C148;
    v5 = *(a1 + 40);
    v6[4] = *(a1 + 32);
    v7 = v5;
    [v4 performSyncBlock:v6];
  }

  _Block_object_dispose(&v11, 8);
}

void __39__EMQueryingCollection_beginObserving___block_invoke_2(uint64_t a1, void *a2)
{
  v15 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = [v3 anyObject];

  if (v4)
  {
    v5 = +[EMQueryingCollection log];
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v6 = *(a1 + 32);
      v7 = *(a1 + 40);
      v9 = 134218498;
      v10 = v6;
      v11 = 2114;
      v12 = v7;
      v13 = 2114;
      v14 = v3;
      _os_log_impl(&dword_1C6655000, v5, OS_LOG_TYPE_DEFAULT, "<%p> Observer already started: %{public}@ to: %{public}@", &v9, 0x20u);
    }

    *(*(*(a1 + 48) + 8) + 24) = 1;
  }

  else
  {
    [*(a1 + 32) _cancelQuery];
    [v3 addObject:*(a1 + 40)];
    [*(a1 + 32) _performQuery];
  }

  v8 = *MEMORY[0x1E69E9840];
}

void __39__EMQueryingCollection_beginObserving___block_invoke_23(uint64_t a1)
{
  v2 = [*(a1 + 32) changeObservers];
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __39__EMQueryingCollection_beginObserving___block_invoke_2_24;
  v5[3] = &unk_1E826F300;
  v3 = *(a1 + 40);
  v4 = *(a1 + 32);
  v6 = v3;
  v7 = v4;
  [v2 performWhileLocked:v5];
}

void __39__EMQueryingCollection_beginObserving___block_invoke_2_24(uint64_t a1, void *a2)
{
  v3 = a2;
  [v3 addObject:*(a1 + 32)];
  [*(a1 + 40) _notifyNewChangeObserverAboutExistingState:*(a1 + 32)];
}

- (void)stopObserving:(id)observing
{
  v13 = *MEMORY[0x1E69E9840];
  observingCopy = observing;
  v5 = +[EMQueryingCollection log];
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134218242;
    selfCopy = self;
    v11 = 2114;
    v12 = observingCopy;
    _os_log_impl(&dword_1C6655000, v5, OS_LOG_TYPE_DEFAULT, "<%p> Observer removed: %{public}@", buf, 0x16u);
  }

  queryScheduler = [(EMQueryingCollection *)self queryScheduler];
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __38__EMQueryingCollection_stopObserving___block_invoke;
  v8[3] = &unk_1E826F350;
  v8[4] = self;
  v8[5] = observingCopy;
  [queryScheduler performBlock:v8];

  v7 = *MEMORY[0x1E69E9840];
}

void __38__EMQueryingCollection_stopObserving___block_invoke(uint64_t a1)
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x2020000000;
  v8 = 1;
  v2 = [*(a1 + 32) changeObservers];
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __38__EMQueryingCollection_stopObserving___block_invoke_2;
  v4[3] = &unk_1E826F328;
  v3 = *(a1 + 40);
  v4[4] = &v5;
  v4[5] = v3;
  [v2 performWhileLocked:v4];

  if (*(v6 + 24) == 1)
  {
    [*(a1 + 32) _cancelQuery];
  }

  _Block_object_dispose(&v5, 8);
}

void __38__EMQueryingCollection_stopObserving___block_invoke_2(uint64_t a1, void *a2)
{
  v14 = *MEMORY[0x1E69E9840];
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v3 = a2;
  v4 = [v3 countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v4)
  {
    v5 = 0;
    v6 = *v10;
    do
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v10 != v6)
        {
          objc_enumerationMutation(v3);
        }

        if (*(*(&v9 + 1) + 8 * i) == *(a1 + 40))
        {
          v5 = 1;
        }

        else
        {
          *(*(*(a1 + 32) + 8) + 24) = 0;
        }
      }

      v4 = [v3 countByEnumeratingWithState:&v9 objects:v13 count:16];
    }

    while (v4);

    if (v5)
    {
      [v3 removeObject:{*(a1 + 40), v9}];
    }
  }

  else
  {
  }

  v8 = *MEMORY[0x1E69E9840];
}

- (void)refresh
{
  queryScheduler = [(EMQueryingCollection *)self queryScheduler];
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __31__EMQueryingCollection_refresh__block_invoke;
  v4[3] = &unk_1E826C098;
  v4[4] = self;
  [queryScheduler performBlock:v4];
}

void __31__EMQueryingCollection_refresh__block_invoke(uint64_t a1)
{
  v2 = +[EMQueryingCollection log];
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_1C6655000, v2, OS_LOG_TYPE_DEFAULT, "Pulling to refresh", buf, 2u);
  }

  if ([*(a1 + 32) isRecovering])
  {
    v3 = +[EMQueryingCollection log];
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      *v5 = 0;
      _os_log_impl(&dword_1C6655000, v3, OS_LOG_TYPE_DEFAULT, "Do not trigger recovery for pulling to refresh since recovery is in progress", v5, 2u);
    }
  }

  else
  {
    v4 = [*(a1 + 32) cancelationToken];

    if (!v4)
    {
      return;
    }

    v3 = [*(a1 + 32) repository];
    [v3 refreshQueryWithObserver:*(a1 + 32)];
  }
}

- (void)_performQueryIfNeeded
{
  queryScheduler = [(EMQueryingCollection *)self queryScheduler];
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __45__EMQueryingCollection__performQueryIfNeeded__block_invoke;
  v4[3] = &unk_1E826C098;
  v4[4] = self;
  [queryScheduler performBlock:v4];
}

void __45__EMQueryingCollection__performQueryIfNeeded__block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) cancelationToken];

  if (!v2)
  {
    v3 = *(a1 + 32);

    [v3 _performQuery];
  }
}

void __44__EMQueryingCollection__cancelQueryIfNeeded__block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  if (![v3 count])
  {
    [*(a1 + 32) _cancelQuery];
  }
}

- (void)finishRecovery
{
  v9 = *MEMORY[0x1E69E9840];
  v3 = +[EMQueryingCollection log];
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v5 = 134218242;
    selfCopy = self;
    v7 = 2114;
    selfCopy2 = self;
    _os_log_impl(&dword_1C6655000, v3, OS_LOG_TYPE_DEFAULT, "<%p> Finish Recovery\n%{public}@", &v5, 0x16u);
  }

  v4 = *MEMORY[0x1E69E9840];
}

- (void)enumerateObserversWithBlock:(id)block
{
  blockCopy = block;
  changeObservers = [(EMQueryingCollection *)self changeObservers];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __52__EMQueryingCollection_enumerateObserversWithBlock___block_invoke;
  v7[3] = &unk_1E826F378;
  v6 = blockCopy;
  v8 = v6;
  [changeObservers performWhileLocked:v7];
}

void __52__EMQueryingCollection_enumerateObserversWithBlock___block_invoke(uint64_t a1, void *a2)
{
  v14 = *MEMORY[0x1E69E9840];
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v3 = a2;
  v4 = [v3 countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v4)
  {
    v5 = *v10;
    do
    {
      v6 = 0;
      do
      {
        if (*v10 != v5)
        {
          objc_enumerationMutation(v3);
        }

        v7 = *(*(&v9 + 1) + 8 * v6);
        (*(*(a1 + 32) + 16))(*(a1 + 32));
        ++v6;
      }

      while (v4 != v6);
      v4 = [v3 countByEnumeratingWithState:&v9 objects:v13 count:16];
    }

    while (v4);
  }

  v8 = *MEMORY[0x1E69E9840];
}

- (void)queryDidStartRecovery
{
  v15 = *MEMORY[0x1E69E9840];
  os_unfair_lock_lock(&self->_itemIDsLock);
  if (self->_recoveringItemIDs)
  {
    v3 = +[EMQueryingCollection log];
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      v9 = 134218242;
      selfCopy3 = self;
      v11 = 2114;
      selfCopy2 = self;
      _os_log_impl(&dword_1C6655000, v3, OS_LOG_TYPE_DEFAULT, "<%p> Restarting recovery\n%{public}@", &v9, 0x16u);
    }
  }

  else
  {
    v4 = +[EMQueryingCollection log];
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v5 = [(NSMutableOrderedSet *)self->_itemIDs count];
      v9 = 134218498;
      selfCopy3 = self;
      v11 = 2048;
      selfCopy2 = v5;
      v13 = 2114;
      selfCopy4 = self;
      _os_log_impl(&dword_1C6655000, v4, OS_LOG_TYPE_DEFAULT, "<%p> Starting recovery (%lu existing items)\n%{public}@", &v9, 0x20u);
    }

    v6 = [(NSMutableOrderedSet *)self->_itemIDs copy];
    recoveringItemIDs = self->_recoveringItemIDs;
    self->_recoveringItemIDs = v6;
  }

  [(NSMutableOrderedSet *)self->_itemIDs removeAllObjects];
  self->_foundAllItemIDs = 0;
  self->_foundFirstBatch = 0;
  os_unfair_lock_unlock(&self->_itemIDsLock);
  v8 = *MEMORY[0x1E69E9840];
}

- (void)queryMatchedAddedObjectIDs:(id)ds before:(id)before extraInfo:(id)info
{
  v28 = *MEMORY[0x1E69E9840];
  dsCopy = ds;
  beforeCopy = before;
  infoCopy = info;
  v11 = +[EMQueryingCollection log];
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    v12 = [dsCopy count];
    ef_publicDescription = [(EMObject *)self ef_publicDescription];
    *buf = 134218754;
    selfCopy = self;
    v22 = 2048;
    v23 = v12;
    v24 = 2114;
    v25 = beforeCopy;
    v26 = 2114;
    v27 = ef_publicDescription;
    _os_log_impl(&dword_1C6655000, v11, OS_LOG_TYPE_DEFAULT, "<%p> Added %lu objectIDs before %{public}@\n%{public}@", buf, 0x2Au);
  }

  isRecovering = [(EMQueryingCollection *)self isRecovering];
  v17[0] = MEMORY[0x1E69E9820];
  v17[1] = 3221225472;
  v17[2] = __68__EMQueryingCollection_queryMatchedAddedObjectIDs_before_extraInfo___block_invoke;
  v17[3] = &unk_1E826F3C0;
  v17[4] = self;
  v15 = infoCopy;
  v18 = v15;
  v19 = isRecovering;
  [(EMQueryingCollection *)self _filterAndTransformObjectIDs:dsCopy before:1 existingObjectID:beforeCopy batchBlock:v17];

  v16 = *MEMORY[0x1E69E9840];
}

void __68__EMQueryingCollection_queryMatchedAddedObjectIDs_before_extraInfo___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  [*(a1 + 32) insertItemIDs:v5 before:v6 extraInfo:*(a1 + 40)];
  if ((*(a1 + 48) & 1) == 0)
  {
    v7 = [*(a1 + 32) observerScheduler];
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 3221225472;
    v8[2] = __68__EMQueryingCollection_queryMatchedAddedObjectIDs_before_extraInfo___block_invoke_2;
    v8[3] = &unk_1E826D498;
    v8[4] = *(a1 + 32);
    v9 = v5;
    v10 = v6;
    v11 = *(a1 + 40);
    [v7 performSyncBlock:v8];
  }
}

uint64_t __68__EMQueryingCollection_queryMatchedAddedObjectIDs_before_extraInfo___block_invoke_2(uint64_t a1)
{
  *(*(a1 + 32) + 61) = 1;
  [*(a1 + 32) notifyChangeObserversAboutAddedItemIDs:*(a1 + 40) before:*(a1 + 48) extraInfo:*(a1 + 56)];
  v2 = *(a1 + 32);

  return [v2 enumerateObserversWithBlock:&__block_literal_global_42];
}

void __68__EMQueryingCollection_queryMatchedAddedObjectIDs_before_extraInfo___block_invoke_3(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = +[EMQueryingCollection signpostLog];
  v4 = os_signpost_id_make_with_pointer(v3, v2);
  v5 = v3;
  v6 = v5;
  if (v4 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v5))
  {
    *v7 = 0;
    _os_signpost_emit_with_name_impl(&dword_1C6655000, v6, OS_SIGNPOST_INTERVAL_END, v4, "EMCollectionFirstBatch", " enableTelemetry=YES ", v7, 2u);
  }
}

- (void)queryMatchedAddedObjectIDs:(id)ds after:(id)after extraInfo:(id)info
{
  v28 = *MEMORY[0x1E69E9840];
  dsCopy = ds;
  afterCopy = after;
  infoCopy = info;
  v11 = +[EMQueryingCollection log];
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    v12 = [dsCopy count];
    ef_publicDescription = [(EMObject *)self ef_publicDescription];
    *buf = 134218754;
    selfCopy = self;
    v22 = 2048;
    v23 = v12;
    v24 = 2114;
    v25 = afterCopy;
    v26 = 2114;
    v27 = ef_publicDescription;
    _os_log_impl(&dword_1C6655000, v11, OS_LOG_TYPE_DEFAULT, "<%p> Added %lu objectIDs after %{public}@\n%{public}@", buf, 0x2Au);
  }

  isRecovering = [(EMQueryingCollection *)self isRecovering];
  v17[0] = MEMORY[0x1E69E9820];
  v17[1] = 3221225472;
  v17[2] = __67__EMQueryingCollection_queryMatchedAddedObjectIDs_after_extraInfo___block_invoke;
  v17[3] = &unk_1E826F3C0;
  v17[4] = self;
  v15 = infoCopy;
  v18 = v15;
  v19 = isRecovering;
  [(EMQueryingCollection *)self _filterAndTransformObjectIDs:dsCopy before:0 existingObjectID:afterCopy batchBlock:v17];

  v16 = *MEMORY[0x1E69E9840];
}

void __67__EMQueryingCollection_queryMatchedAddedObjectIDs_after_extraInfo___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  [*(a1 + 32) insertItemIDs:v5 after:v6 extraInfo:*(a1 + 40)];
  if ((*(a1 + 48) & 1) == 0)
  {
    v7 = [*(a1 + 32) observerScheduler];
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 3221225472;
    v8[2] = __67__EMQueryingCollection_queryMatchedAddedObjectIDs_after_extraInfo___block_invoke_2;
    v8[3] = &unk_1E826D498;
    v8[4] = *(a1 + 32);
    v9 = v5;
    v10 = v6;
    v11 = *(a1 + 40);
    [v7 performSyncBlock:v8];
  }
}

- (void)queryMatchedMovedObjectIDs:(id)ds before:(id)before extraInfo:(id)info
{
  v30 = *MEMORY[0x1E69E9840];
  dsCopy = ds;
  beforeCopy = before;
  infoCopy = info;
  v11 = +[EMQueryingCollection log];
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    v12 = [dsCopy count];
    ef_publicDescription = [(EMObject *)self ef_publicDescription];
    *buf = 134218754;
    selfCopy = self;
    v24 = 2048;
    v25 = v12;
    v26 = 2114;
    v27 = beforeCopy;
    v28 = 2114;
    v29 = ef_publicDescription;
    _os_log_impl(&dword_1C6655000, v11, OS_LOG_TYPE_DEFAULT, "<%p> Moved %lu objectIDs before %{public}@\n%{public}@", buf, 0x2Au);
  }

  v14 = [(EMQueryingCollection *)self _itemIDsForObjectIDs:dsCopy];
  v15 = [(EMQueryingCollection *)self itemIDForObjectID:beforeCopy];
  [(EMQueryingCollection *)self insertItemIDs:v14 before:v15 extraInfo:infoCopy];
  if (![(EMQueryingCollection *)self isRecovering])
  {
    observerScheduler = [(EMQueryingCollection *)self observerScheduler];
    v18[0] = MEMORY[0x1E69E9820];
    v18[1] = 3221225472;
    v18[2] = __68__EMQueryingCollection_queryMatchedMovedObjectIDs_before_extraInfo___block_invoke;
    v18[3] = &unk_1E826D498;
    v18[4] = self;
    v19 = v14;
    v20 = v15;
    v21 = infoCopy;
    [observerScheduler performSyncBlock:v18];
  }

  v17 = *MEMORY[0x1E69E9840];
}

- (void)queryMatchedMovedObjectIDs:(id)ds after:(id)after extraInfo:(id)info
{
  v24 = *MEMORY[0x1E69E9840];
  dsCopy = ds;
  afterCopy = after;
  infoCopy = info;
  v11 = +[EMQueryingCollection log];
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    v12 = [dsCopy count];
    ef_publicDescription = [(EMObject *)self ef_publicDescription];
    *buf = 134218754;
    *&buf[4] = self;
    *&buf[12] = 2048;
    *&buf[14] = v12;
    *&buf[22] = 2114;
    v22 = afterCopy;
    LOWORD(v23) = 2114;
    *(&v23 + 2) = ef_publicDescription;
    _os_log_impl(&dword_1C6655000, v11, OS_LOG_TYPE_DEFAULT, "<%p> Moved %lu objectIDs after %{public}@\n%{public}@", buf, 0x2Au);
  }

  v14 = [(EMQueryingCollection *)self _itemIDsForObjectIDs:dsCopy];
  *buf = 0;
  *&buf[8] = buf;
  *&buf[16] = 0x3032000000;
  v22 = __Block_byref_object_copy__11;
  *&v23 = __Block_byref_object_dispose__11;
  *(&v23 + 1) = [(EMQueryingCollection *)self itemIDForObjectID:afterCopy];
  [(EMQueryingCollection *)self insertItemIDs:v14 after:*(*&buf[8] + 40) extraInfo:infoCopy];
  if (![(EMQueryingCollection *)self isRecovering])
  {
    observerScheduler = [(EMQueryingCollection *)self observerScheduler];
    v17[0] = MEMORY[0x1E69E9820];
    v17[1] = 3221225472;
    v17[2] = __67__EMQueryingCollection_queryMatchedMovedObjectIDs_after_extraInfo___block_invoke;
    v17[3] = &unk_1E826F3E8;
    v17[4] = self;
    v18 = v14;
    v20 = buf;
    v19 = infoCopy;
    [observerScheduler performSyncBlock:v17];
  }

  _Block_object_dispose(buf, 8);

  v16 = *MEMORY[0x1E69E9840];
}

- (void)queryMatchedChangedObjectIDs:(id)ds extraInfo:(id)info
{
  v27 = *MEMORY[0x1E69E9840];
  dsCopy = ds;
  infoCopy = info;
  v8 = +[EMQueryingCollection log];
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543874;
    selfCopy2 = self;
    v23 = 2048;
    v24 = [(EMQueryingCollection *)dsCopy count];
    v25 = 2114;
    selfCopy3 = dsCopy;
    _os_log_impl(&dword_1C6655000, v8, OS_LOG_TYPE_DEFAULT, "%{public}@ Changed %lu objectIDs: %{public}@", buf, 0x20u);
  }

  v9 = [(EMQueryingCollection *)self _itemIDsForObjectIDs:dsCopy];
  os_unfair_lock_lock(&self->_itemIDsLock);
  recoveringItemIDs = self->_recoveringItemIDs;
  if (recoveringItemIDs)
  {
    v20[0] = MEMORY[0x1E69E9820];
    v20[1] = 3221225472;
    v20[2] = __63__EMQueryingCollection_queryMatchedChangedObjectIDs_extraInfo___block_invoke;
    v20[3] = &unk_1E826DD80;
    v20[4] = self;
    v11 = [v9 ef_filter:v20];

    v9 = v11;
  }

  os_unfair_lock_unlock(&self->_itemIDsLock);
  v12 = [v9 count];
  if (v12 != [(EMQueryingCollection *)dsCopy count])
  {
    if (recoveringItemIDs)
    {
      v13 = +[EMQueryingCollection log];
      if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
      {
        v14 = [v9 count];
        *buf = 134218498;
        selfCopy2 = self;
        v23 = 2048;
        v24 = v14;
        v25 = 2114;
        selfCopy3 = self;
        _os_log_impl(&dword_1C6655000, v13, OS_LOG_TYPE_DEFAULT, "<%p> %lu changed itemIDs while recovering\n%{public}@", buf, 0x20u);
      }
    }

    else
    {
      v13 = +[EMQueryingCollection log];
      if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
      {
        -[EMQueryingCollection queryMatchedChangedObjectIDs:extraInfo:].cold.1(self, buf, [v9 count], v13);
      }
    }
  }

  if ([v9 count])
  {
    observerScheduler = [(EMQueryingCollection *)self observerScheduler];
    v17[0] = MEMORY[0x1E69E9820];
    v17[1] = 3221225472;
    v17[2] = __63__EMQueryingCollection_queryMatchedChangedObjectIDs_extraInfo___block_invoke_28;
    v17[3] = &unk_1E826C230;
    v17[4] = self;
    v18 = v9;
    v19 = infoCopy;
    [observerScheduler performSyncBlock:v17];
  }

  v16 = *MEMORY[0x1E69E9840];
}

- (void)queryAnticipatesDeletedObjectIDs:(id)ds
{
  v17 = *MEMORY[0x1E69E9840];
  dsCopy = ds;
  v5 = +[EMQueryingCollection log];
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134218498;
    selfCopy = self;
    v13 = 2048;
    v14 = [dsCopy count];
    v15 = 2114;
    selfCopy2 = self;
    _os_log_impl(&dword_1C6655000, v5, OS_LOG_TYPE_DEFAULT, "<%p> Anticipating delete of %lu objectIDs\n%{public}@", buf, 0x20u);
  }

  v6 = [(EMQueryingCollection *)self _itemIDsForObjectIDs:dsCopy];
  os_unfair_lock_lock(&self->_itemIDsLock);
  [(NSMutableSet *)self->_itemIDsAnticipatingDelete addObjectsFromArray:v6];
  os_unfair_lock_unlock(&self->_itemIDsLock);
  if (![(EMQueryingCollection *)self isRecovering])
  {
    observerScheduler = [(EMQueryingCollection *)self observerScheduler];
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = __57__EMQueryingCollection_queryAnticipatesDeletedObjectIDs___block_invoke;
    v9[3] = &unk_1E826C148;
    v9[4] = self;
    v10 = v6;
    [observerScheduler performSyncBlock:v9];
  }

  v8 = *MEMORY[0x1E69E9840];
}

void __57__EMQueryingCollection_queryAnticipatesDeletedObjectIDs___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2[0] = MEMORY[0x1E69E9820];
  v2[1] = 3221225472;
  v2[2] = __57__EMQueryingCollection_queryAnticipatesDeletedObjectIDs___block_invoke_2;
  v2[3] = &unk_1E826DDD0;
  v2[4] = v1;
  v3 = *(a1 + 40);
  [v1 enumerateObserversWithBlock:v2];
}

- (void)queryMatchedDeletedObjectIDs:(id)ds
{
  v18 = *MEMORY[0x1E69E9840];
  dsCopy = ds;
  v5 = +[EMQueryingCollection log];
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134218498;
    selfCopy = self;
    v14 = 2048;
    v15 = [dsCopy count];
    v16 = 2114;
    selfCopy2 = self;
    _os_log_impl(&dword_1C6655000, v5, OS_LOG_TYPE_DEFAULT, "<%p> Deleted %lu objectIDs\n%{public}@", buf, 0x20u);
  }

  v6 = [(EMQueryingCollection *)self _itemIDsForObjectIDs:dsCopy];
  v7 = [(EMQueryingCollection *)self removeItemIDs:v6];
  if (!-[EMQueryingCollection isRecovering](self, "isRecovering") && [v7 count])
  {
    observerScheduler = [(EMQueryingCollection *)self observerScheduler];
    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v10[2] = __53__EMQueryingCollection_queryMatchedDeletedObjectIDs___block_invoke;
    v10[3] = &unk_1E826C148;
    v10[4] = self;
    v11 = v7;
    [observerScheduler performSyncBlock:v10];
  }

  v9 = *MEMORY[0x1E69E9840];
}

void __53__EMQueryingCollection_queryMatchedDeletedObjectIDs___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2[0] = MEMORY[0x1E69E9820];
  v2[1] = 3221225472;
  v2[2] = __53__EMQueryingCollection_queryMatchedDeletedObjectIDs___block_invoke_2;
  v2[3] = &unk_1E826DDD0;
  v2[4] = v1;
  v3 = *(a1 + 40);
  [v1 enumerateObserversWithBlock:v2];
}

void __49__EMQueryingCollection_queryDidFinishInitialLoad__block_invoke(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a3)
  {
    if (a2)
    {
      v9 = [*(*(a1 + 32) + 24) objectAtIndexedSubscript:a2 - 1];
    }

    else
    {
      v9 = 0;
    }

    v6 = [*(*(a1 + 32) + 24) ef_subarrayWithRange:{a2, a3}];
    v7 = *(a1 + 40);
    v8 = [MEMORY[0x1E699B848] pairWithFirst:v9 second:v6];
    [v7 addObject:v8];
  }
}

void __49__EMQueryingCollection_queryDidFinishInitialLoad__block_invoke_31(uint64_t a1)
{
  v28 = *MEMORY[0x1E69E9840];
  v2 = [*(a1 + 32) removals];
  v3 = [v2 count];

  if (v3)
  {
    v4 = *(a1 + 40);
    v21[0] = MEMORY[0x1E69E9820];
    v21[1] = 3221225472;
    v21[2] = __49__EMQueryingCollection_queryDidFinishInitialLoad__block_invoke_2;
    v21[3] = &unk_1E826DDD0;
    v21[4] = v4;
    v22 = *(a1 + 32);
    [v4 enumerateObserversWithBlock:v21];
  }

  v5 = +[EMQueryingCollection log];
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = [*(a1 + 48) count];
    v7 = *(a1 + 40);
    *buf = 134218242;
    v25 = v6;
    v26 = 2114;
    v27 = v7;
    _os_log_impl(&dword_1C6655000, v5, OS_LOG_TYPE_DEFAULT, "Start to notify observer of %lu grouped insertions\n%{public}@", buf, 0x16u);
  }

  v19 = 0u;
  v20 = 0u;
  v17 = 0u;
  v18 = 0u;
  v8 = *(a1 + 48);
  v9 = [v8 countByEnumeratingWithState:&v17 objects:v23 count:16];
  if (v9)
  {
    v10 = *v18;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v18 != v10)
        {
          objc_enumerationMutation(v8);
        }

        v12 = *(*(&v17 + 1) + 8 * i);
        v13 = *(a1 + 40);
        v14 = [v12 second];
        v15 = [v12 first];
        [v13 notifyChangeObserversAboutAddedItemIDs:v14 after:v15 extraInfo:0];
      }

      v9 = [v8 countByEnumeratingWithState:&v17 objects:v23 count:16];
    }

    while (v9);
  }

  v16 = *MEMORY[0x1E69E9840];
}

void __49__EMQueryingCollection_queryDidFinishInitialLoad__block_invoke_2(uint64_t a1, void *a2)
{
  v6 = a2;
  v3 = *(a1 + 32);
  v4 = [*(a1 + 40) removals];
  v5 = [v4 ef_mapSelector:sel_object];
  [v6 collection:v3 deletedItemIDs:v5];
}

uint64_t __49__EMQueryingCollection_queryDidFinishInitialLoad__block_invoke_2_35(uint64_t a1)
{
  v1 = *(a1 + 32);
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __49__EMQueryingCollection_queryDidFinishInitialLoad__block_invoke_3;
  v3[3] = &unk_1E826F438;
  v3[4] = v1;
  return [v1 enumerateObserversWithBlock:v3];
}

void __49__EMQueryingCollection_queryDidFinishInitialLoad__block_invoke_3(uint64_t a1, void *a2)
{
  v3 = a2;
  if (objc_opt_respondsToSelector())
  {
    [v3 didFinishRecoveryForCollection:*(a1 + 32)];
  }
}

- (void)queryDidFinishRemoteSearch
{
  v2[0] = MEMORY[0x1E69E9820];
  v2[1] = 3221225472;
  v2[2] = __50__EMQueryingCollection_queryDidFinishRemoteSearch__block_invoke;
  v2[3] = &unk_1E826F438;
  v2[4] = self;
  [(EMQueryingCollection *)self enumerateObserversWithBlock:v2];
}

void __50__EMQueryingCollection_queryDidFinishRemoteSearch__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if (objc_opt_respondsToSelector())
  {
    [v3 didFinishRemoteSearchForCollection:*(a1 + 32)];
  }
}

- (id)_itemIDsForObjectIDs:(id)ds
{
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __45__EMQueryingCollection__itemIDsForObjectIDs___block_invoke;
  v5[3] = &unk_1E826E078;
  v5[4] = self;
  v3 = [ds ef_map:v5];

  return v3;
}

id __45__EMQueryingCollection__itemIDsForObjectIDs___block_invoke(uint64_t a1, uint64_t a2)
{
  v2 = [*(a1 + 32) itemIDForObjectID:a2];

  return v2;
}

- (void)_filterAndTransformObjectIDs:(id)ds before:(BOOL)before existingObjectID:(id)d batchBlock:(id)block
{
  beforeCopy = before;
  v46 = *MEMORY[0x1E69E9840];
  dsCopy = ds;
  dCopy = d;
  blockCopy = block;
  v12 = objc_alloc_init(MEMORY[0x1E695DF70]);
  os_unfair_lock_lock(&self->_itemIDsLock);
  v43[0] = 0;
  v43[1] = v43;
  v43[2] = 0x3032000000;
  v43[3] = __Block_byref_object_copy__11;
  v43[4] = __Block_byref_object_dispose__11;
  v44 = [(EMQueryingCollection *)self itemIDForObjectID:dCopy, v12];
  v13 = objc_alloc_init(MEMORY[0x1E695DF70]);
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __88__EMQueryingCollection__filterAndTransformObjectIDs_before_existingObjectID_batchBlock___block_invoke;
  aBlock[3] = &unk_1E826F460;
  v14 = v13;
  v39 = v14;
  v41 = v43;
  v42 = beforeCopy;
  v15 = v12;
  v40 = v15;
  v16 = _Block_copy(aBlock);
  if (beforeCopy)
  {
    v17 = 2;
  }

  else
  {
    v17 = 0;
  }

  v33[0] = MEMORY[0x1E69E9820];
  v33[1] = 3221225472;
  v33[2] = __88__EMQueryingCollection__filterAndTransformObjectIDs_before_existingObjectID_batchBlock___block_invoke_2;
  v33[3] = &unk_1E826F488;
  v33[4] = self;
  v18 = v14;
  v34 = v18;
  v19 = v16;
  v35 = v19;
  v36 = v43;
  v37 = beforeCopy;
  [dsCopy enumerateObjectsWithOptions:v17 usingBlock:v33];
  if ([v18 count])
  {
    v19[2](v19);
  }

  _Block_object_dispose(v43, 8);
  os_unfair_lock_unlock(&self->_itemIDsLock);
  v31 = 0u;
  v32 = 0u;
  v29 = 0u;
  v30 = 0u;
  v20 = v15;
  v21 = [v20 countByEnumeratingWithState:&v29 objects:v45 count:16];
  if (v21)
  {
    v22 = *v30;
    do
    {
      for (i = 0; i != v21; ++i)
      {
        if (*v30 != v22)
        {
          objc_enumerationMutation(v20);
        }

        v24 = *(*(&v29 + 1) + 8 * i);
        first = [v24 first];
        second = [v24 second];
        blockCopy[2](blockCopy, first, second);
      }

      v21 = [v20 countByEnumeratingWithState:&v29 objects:v45 count:16];
    }

    while (v21);
  }

  v27 = *MEMORY[0x1E69E9840];
}

void __88__EMQueryingCollection__filterAndTransformObjectIDs_before_existingObjectID_batchBlock___block_invoke(uint64_t a1)
{
  v2 = MEMORY[0x1E699B848];
  v3 = [*(a1 + 32) copy];
  v5 = [v2 pairWithFirst:v3 second:*(*(*(a1 + 48) + 8) + 40)];

  v4 = *(a1 + 40);
  if (*(a1 + 56) == 1)
  {
    [v4 insertObject:v5 atIndex:0];
  }

  else
  {
    [v4 addObject:v5];
  }

  [*(a1 + 32) removeAllObjects];
}

void __88__EMQueryingCollection__filterAndTransformObjectIDs_before_existingObjectID_batchBlock___block_invoke_2(uint64_t a1, void *a2)
{
  v15 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = [*(a1 + 32) itemIDForObjectID:v3];
  if ([*(*(a1 + 32) + 24) containsObject:v4])
  {
    v5 = +[EMQueryingCollection log];
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v6 = *(a1 + 32);
      v9 = 134218498;
      v10 = v6;
      v11 = 2114;
      v12 = v4;
      v13 = 2114;
      v14 = v6;
      _os_log_impl(&dword_1C6655000, v5, OS_LOG_TYPE_DEFAULT, "<%p> Found duplicate: %{public}@\n%{public}@", &v9, 0x20u);
    }

    if ([*(a1 + 40) count])
    {
      (*(*(a1 + 48) + 16))();
    }

    objc_storeStrong((*(*(a1 + 56) + 8) + 40), v4);
  }

  else
  {
    v7 = *(a1 + 40);
    if (*(a1 + 64) == 1)
    {
      [v7 insertObject:v4 atIndex:0];
    }

    else
    {
      [v7 addObject:v4];
    }
  }

  v8 = *MEMORY[0x1E69E9840];
}

- (BOOL)observerContainsObjectID:(id)d
{
  dCopy = d;
  if ([(EMQueryingCollection *)self objectIDBelongsToCollection:dCopy])
  {
    v5 = [(EMQueryingCollection *)self itemIDForObjectID:dCopy];
    v6 = [(EMQueryingCollection *)self containsItemID:v5 includeRecovery:0];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (void)queryReplacedObjectID:(id)d withNewObjectID:(id)iD
{
  v26 = *MEMORY[0x1E69E9840];
  dCopy = d;
  iDCopy = iD;
  if ([(EMQueryingCollection *)self objectIDBelongsToCollection:dCopy])
  {
    v8 = +[EMQueryingCollection log];
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 134218754;
      selfCopy3 = self;
      v20 = 2114;
      v21 = dCopy;
      v22 = 2114;
      v23 = iDCopy;
      v24 = 2114;
      selfCopy2 = self;
      _os_log_impl(&dword_1C6655000, v8, OS_LOG_TYPE_DEFAULT, "<%p> Replace objectID %{public}@ with %{public}@\n%{public}@", buf, 0x2Au);
    }

    v9 = [(EMQueryingCollection *)self itemIDForObjectID:dCopy];
    if (v9)
    {
      v10 = [(EMQueryingCollection *)self itemIDForObjectID:iDCopy];
      os_unfair_lock_lock(&self->_itemIDsLock);
      v11 = [(NSMutableOrderedSet *)self->_itemIDs indexOfObject:v9];
      if (v11 != 0x7FFFFFFFFFFFFFFFLL)
      {
        [(NSMutableOrderedSet *)self->_itemIDs replaceObjectAtIndex:v11 withObject:v10];
      }

      os_unfair_lock_unlock(&self->_itemIDsLock);
      observerScheduler = [(EMQueryingCollection *)self observerScheduler];
      v15[0] = MEMORY[0x1E69E9820];
      v15[1] = 3221225472;
      v15[2] = __62__EMQueryingCollection_queryReplacedObjectID_withNewObjectID___block_invoke;
      v15[3] = &unk_1E826C230;
      v15[4] = self;
      v16 = v9;
      v13 = v10;
      v17 = v13;
      [observerScheduler performSyncBlock:v15];
    }

    else
    {
      v13 = +[EMQueryingCollection log];
      if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 134218242;
        selfCopy3 = self;
        v20 = 2114;
        v21 = dCopy;
        _os_log_impl(&dword_1C6655000, v13, OS_LOG_TYPE_DEFAULT, "<%p> Replace objectID %{public}@ but itemIDForObjectID is nil", buf, 0x16u);
      }
    }
  }

  v14 = *MEMORY[0x1E69E9840];
}

void __62__EMQueryingCollection_queryReplacedObjectID_withNewObjectID___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __62__EMQueryingCollection_queryReplacedObjectID_withNewObjectID___block_invoke_2;
  v3[3] = &unk_1E826DFD8;
  v3[4] = v2;
  v4 = *(a1 + 40);
  v5 = *(a1 + 48);
  [v2 enumerateObserversWithBlock:v3];
}

- (void)notifyNewChangeObserverAboutExistingState:(id)state
{
  stateCopy = state;
  observerScheduler = [(EMQueryingCollection *)self observerScheduler];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __66__EMQueryingCollection_notifyNewChangeObserverAboutExistingState___block_invoke;
  v7[3] = &unk_1E826C148;
  v7[4] = self;
  v6 = stateCopy;
  v8 = v6;
  [observerScheduler performBlock:v7];
}

- (void)_notifyNewChangeObserverAboutExistingState:(id)state
{
  v21 = *MEMORY[0x1E69E9840];
  stateCopy = state;
  v5 = +[EMQueryingCollection signpostLog];
  v6 = os_signpost_id_make_with_pointer(v5, stateCopy);
  if (self->_foundFirstBatch && ![(EMQueryingCollection *)self isRecovering])
  {
    v7 = +[EMQueryingCollection log];
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v8 = [(NSMutableOrderedSet *)self->_itemIDs count];
      v15 = 134218498;
      selfCopy = self;
      v17 = 2048;
      v18 = v8;
      v19 = 2114;
      selfCopy2 = self;
      _os_log_impl(&dword_1C6655000, v7, OS_LOG_TYPE_DEFAULT, "<%p> Added stocked %lu objectIDs\n%{public}@", &v15, 0x20u);
    }

    array = [(NSMutableOrderedSet *)self->_itemIDs array];
    [(EMQueryingCollection *)self notifyChangeObserver:stateCopy stockedItemIDs:array];

    v10 = v5;
    v11 = v10;
    if (v6 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v10))
    {
      LOWORD(v15) = 0;
      _os_signpost_emit_with_name_impl(&dword_1C6655000, v11, OS_SIGNPOST_INTERVAL_END, v6, "EMCollectionFirstBatch", " enableTelemetry=YES ", &v15, 2u);
    }
  }

  if (self->_foundAllItemIDs && (objc_opt_respondsToSelector() & 1) != 0)
  {
    [stateCopy collectionDidFinishInitialLoad:self];
    v12 = v5;
    v13 = v12;
    if (v6 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v12))
    {
      LOWORD(v15) = 0;
      _os_signpost_emit_with_name_impl(&dword_1C6655000, v13, OS_SIGNPOST_INTERVAL_END, v6, "EMCollectionTotal", " enableTelemetry=YES ", &v15, 2u);
    }
  }

  v14 = *MEMORY[0x1E69E9840];
}

- (void)queryMatchedChangedObjectIDs:(uint64_t)a3 extraInfo:(os_log_t)log .cold.1(uint64_t a1, uint8_t *buf, uint64_t a3, os_log_t log)
{
  *buf = 134218498;
  *(buf + 4) = a1;
  *(buf + 6) = 2048;
  *(buf + 14) = a3;
  *(buf + 11) = 2114;
  *(buf + 3) = a1;
  _os_log_error_impl(&dword_1C6655000, log, OS_LOG_TYPE_ERROR, "<%p> Fewer than expected changed itemIDs: %lu\n%{public}@", buf, 0x20u);
}

@end