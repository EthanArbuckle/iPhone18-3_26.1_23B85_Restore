@interface _UIDocumentPickerCloudDirectoryObserver
- (BOOL)objectAttributeModified:(id)modified newObject:(id)object;
- (NSOrderedSet)staticItems;
- (NSPredicate)queryPredicate;
- (NSString)description;
- (_UIDocumentPickerCloudDirectoryObserver)initWithScopes:(id)scopes delegate:(id)delegate;
- (id)_queryResultsWithChangedObjects:(id)objects changedResults:(id *)results;
- (id)isVisiblePredicate;
- (void)_initialGatherFinished:(id)finished;
- (void)_queryUpdated:(id)updated;
- (void)_updateObservers:(id)observers;
- (void)_updateQuery;
- (void)callUpdateHandler:(id)handler changeDictionary:(id)dictionary;
- (void)dealloc;
- (void)invalidate;
- (void)setQuery:(id)query;
- (void)setQueryPredicate:(id)predicate;
- (void)setStaticItems:(id)items;
@end

@implementation _UIDocumentPickerCloudDirectoryObserver

- (_UIDocumentPickerCloudDirectoryObserver)initWithScopes:(id)scopes delegate:(id)delegate
{
  v35 = *MEMORY[0x277D85DE8];
  scopesCopy = scopes;
  v33.receiver = self;
  v33.super_class = _UIDocumentPickerCloudDirectoryObserver;
  v7 = [(_UIArrayController *)&v33 initWithDelegate:delegate];
  v8 = v7;
  if (v7)
  {
    [(_UIDocumentPickerCloudDirectoryObserver *)v7 setScopes:scopesCopy];
    v31 = 0u;
    v32 = 0u;
    v29 = 0u;
    v30 = 0u;
    v9 = scopesCopy;
    v10 = [v9 countByEnumeratingWithState:&v29 objects:v34 count:16];
    if (v10)
    {
      v11 = v10;
      v12 = *v30;
      while (2)
      {
        for (i = 0; i != v11; ++i)
        {
          if (*v30 != v12)
          {
            objc_enumerationMutation(v9);
          }

          v14 = *(*(&v29 + 1) + 8 * i);
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            objc_storeStrong(&v8->_firstURL, v14);
            goto LABEL_12;
          }
        }

        v11 = [v9 countByEnumeratingWithState:&v29 objects:v34 count:16];
        if (v11)
        {
          continue;
        }

        break;
      }
    }

LABEL_12:

    v15 = MEMORY[0x277CCACA8];
    firstObject = [v9 firstObject];
    v17 = [v15 stringWithFormat:@"directory observer queue for %@", firstObject];
    v18 = dispatch_queue_create([v17 UTF8String], 0);
    queryQueue = v8->_queryQueue;
    v8->_queryQueue = v18;

    v20 = objc_alloc_init(MEMORY[0x277CCABD8]);
    queryWorkerQueue = v8->_queryWorkerQueue;
    v8->_queryWorkerQueue = v20;

    [(NSOperationQueue *)v8->_queryWorkerQueue setMaxConcurrentOperationCount:1];
    [(NSOperationQueue *)v8->_queryWorkerQueue setUnderlyingQueue:v8->_queryQueue];
    [(NSOperationQueue *)v8->_queryWorkerQueue setQualityOfService:25];
    v22 = objc_opt_new();
    staticItems = v8->_staticItems;
    v8->_staticItems = v22;

    isVisiblePredicate = [(_UIDocumentPickerCloudDirectoryObserver *)v8 isVisiblePredicate];
    [(_UIArrayController *)v8 setPredicate:isVisiblePredicate];

    [(_UIDocumentPickerCloudDirectoryObserver *)v8 setQueryPredicate:0];
    v25 = v8->_queryWorkerQueue;
    v27[0] = MEMORY[0x277D85DD0];
    v27[1] = 3221225472;
    v27[2] = __67___UIDocumentPickerCloudDirectoryObserver_initWithScopes_delegate___block_invoke;
    v27[3] = &unk_278DD61B0;
    v28 = v8;
    [(NSOperationQueue *)v25 addOperationWithBlock:v27];
  }

  return v8;
}

- (void)dealloc
{
  v2.receiver = self;
  v2.super_class = _UIDocumentPickerCloudDirectoryObserver;
  [(_UIArrayController *)&v2 dealloc];
}

- (void)invalidate
{
  v5.receiver = self;
  v5.super_class = _UIDocumentPickerCloudDirectoryObserver;
  [(_UIArrayController *)&v5 invalidate];
  queryQueue = self->_queryQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __53___UIDocumentPickerCloudDirectoryObserver_invalidate__block_invoke;
  block[3] = &unk_278DD61B0;
  block[4] = self;
  dispatch_async(queryQueue, block);
}

- (void)setQuery:(id)query
{
  queryCopy = query;
  [(_UIDocumentPickerCloudDirectoryObserver *)self assertOnQueryQueue];
  query = self->_query;
  if (query != queryCopy)
  {
    [(NSMetadataQuery *)query stopQuery];
    defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
    [defaultCenter removeObserver:self name:0 object:self->_query];

    objc_storeStrong(&self->_query, query);
  }
}

- (void)_updateQuery
{
  v45 = *MEMORY[0x277D85DE8];
  if (self->_query)
  {
    defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
    [defaultCenter removeObserver:self name:*MEMORY[0x277CCA4F0] object:self->_query];
  }

  v4 = objc_alloc_init(MEMORY[0x277CCAB28]);
  [(_UIDocumentPickerCloudDirectoryObserver *)self setQuery:v4];

  queryWorkerQueue = [(_UIDocumentPickerCloudDirectoryObserver *)self queryWorkerQueue];
  [(NSMetadataQuery *)self->_query setOperationQueue:queryWorkerQueue];

  scopes = [(_UIDocumentPickerCloudDirectoryObserver *)self scopes];
  v7 = [scopes arrayByAddingObject:*MEMORY[0x277CCA500]];
  [(NSMetadataQuery *)self->_query setSearchScopes:v7];

  array = [MEMORY[0x277CBEB18] array];
  allContainersByContainerID = [MEMORY[0x277CFAE20] allContainersByContainerID];
  v39 = 0u;
  v40 = 0u;
  v41 = 0u;
  v42 = 0u;
  selfCopy = self;
  obj = [(_UIDocumentPickerCloudDirectoryObserver *)self scopes];
  v9 = [obj countByEnumeratingWithState:&v39 objects:v44 count:16];
  if (!v9)
  {
    v35 = 0;
    goto LABEL_22;
  }

  v10 = v9;
  v35 = 0;
  v11 = *v40;
  v12 = *MEMORY[0x277CCA540];
  do
  {
    for (i = 0; i != v10; ++i)
    {
      if (*v40 != v11)
      {
        objc_enumerationMutation(obj);
      }

      v14 = *(*(&v39 + 1) + 8 * i);
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v15 = v14;
      }

      else
      {
        v16 = [allContainersByContainerID objectForKeyedSubscript:v14];
        documentsURL = [v16 documentsURL];

        if (documentsURL)
        {
          goto LABEL_15;
        }

        v18 = v35;
        if (!v35)
        {
          v18 = objc_opt_new();
        }

        v35 = v18;
        v15 = [v18 URLForUbiquityContainerIdentifier:v14];
      }

      documentsURL = v15;
LABEL_15:
      recursive = selfCopy->_recursive;
      v20 = MEMORY[0x277CCAC30];
      path = [documentsURL path];
      v22 = path;
      if (recursive)
      {
        v23 = @"%K.URLByDeletingLastPathComponent.path BEGINSWITH %@";
      }

      else
      {
        v23 = @"%K.URLByDeletingLastPathComponent.path = %@";
      }

      v24 = [v20 predicateWithFormat:v23, v12, path];

      [array addObject:v24];
    }

    v10 = [obj countByEnumeratingWithState:&v39 objects:v44 count:16];
  }

  while (v10);
LABEL_22:

  v25 = [objc_alloc(MEMORY[0x277CCA920]) initWithType:2 subpredicates:array];
  queryPredicate = selfCopy->_queryPredicate;
  if (queryPredicate)
  {
    v27 = [MEMORY[0x277CCAC30] predicateWithValue:0];
    v28 = [(NSPredicate *)queryPredicate isEqual:v27];

    if (v28)
    {
      v29 = selfCopy->_queryPredicate;
      query = selfCopy->_query;
      goto LABEL_26;
    }

    v31 = objc_alloc(MEMORY[0x277CCA920]);
    v43[0] = selfCopy->_queryPredicate;
    v43[1] = v25;
    v32 = [MEMORY[0x277CBEA60] arrayWithObjects:v43 count:2];
    v33 = [v31 initWithType:1 subpredicates:v32];
    [(NSMetadataQuery *)selfCopy->_query setPredicate:v33];
  }

  else
  {
    query = selfCopy->_query;
    v29 = v25;
LABEL_26:
    [(NSMetadataQuery *)query setPredicate:v29];
  }

  defaultCenter2 = [MEMORY[0x277CCAB98] defaultCenter];
  [defaultCenter2 addObserver:selfCopy selector:sel__initialGatherFinished_ name:*MEMORY[0x277CCA4E8] object:selfCopy->_query];

  [(NSMetadataQuery *)selfCopy->_query startQuery];
}

- (void)setQueryPredicate:(id)predicate
{
  predicateCopy = predicate;
  queryWorkerQueue = self->_queryWorkerQueue;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __61___UIDocumentPickerCloudDirectoryObserver_setQueryPredicate___block_invoke;
  v7[3] = &unk_278DD6200;
  v7[4] = self;
  v8 = predicateCopy;
  v6 = predicateCopy;
  [(NSOperationQueue *)queryWorkerQueue addOperationWithBlock:v7];
}

- (NSPredicate)queryPredicate
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x3032000000;
  v9 = __Block_byref_object_copy_;
  v10 = __Block_byref_object_dispose_;
  v11 = 0;
  queryQueue = self->_queryQueue;
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __57___UIDocumentPickerCloudDirectoryObserver_queryPredicate__block_invoke;
  v5[3] = &unk_278DD6348;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(queryQueue, v5);
  v3 = v7[5];
  _Block_object_dispose(&v6, 8);

  return v3;
}

- (void)_initialGatherFinished:(id)finished
{
  v29 = *MEMORY[0x277D85DE8];
  finishedCopy = finished;
  [(_UIDocumentPickerCloudDirectoryObserver *)self assertOnQueryQueue];
  v5 = 0x277CCA000uLL;
  defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
  [defaultCenter removeObserver:self name:*MEMORY[0x277CCA4E8] object:self->_query];

  if (![(NSMetadataQuery *)self->_query resultCount]&& !self->_queryPredicate && [(NSArray *)self->_scopes count])
  {
    v20 = finishedCopy;
    allContainersByContainerID = [MEMORY[0x277CFAE20] allContainersByContainerID];
    v23 = 0u;
    v24 = 0u;
    v25 = 0u;
    v26 = 0u;
    v9 = self->_scopes;
    v11 = [(NSArray *)v9 countByEnumeratingWithState:&v23 objects:v28 count:16];
    if (v11)
    {
      v12 = v11;
      v21 = *v24;
      while (2)
      {
        v13 = 0;
        do
        {
          if (*v24 != v21)
          {
            objc_enumerationMutation(v9);
          }

          v14 = *(*(&v23 + 1) + 8 * v13);
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v15 = [allContainersByContainerID objectForKey:v14];
            documentsURL = [v15 documentsURL];
          }

          else
          {
            documentsURL = v14;
          }

          v17 = objc_alloc_init(MEMORY[0x277CCAA00]);
          memset(v22, 0, sizeof(v22));
          v18 = [v17 enumeratorAtURL:documentsURL includingPropertiesForKeys:0 options:4 errorHandler:0];
          v19 = [v18 countByEnumeratingWithState:v22 objects:v27 count:16];

          if (v19)
          {
            finishedCopy = v20;
            v5 = 0x277CCA000;
            goto LABEL_7;
          }

          ++v13;
        }

        while (v12 != v13);
        v12 = [(NSArray *)v9 countByEnumeratingWithState:&v23 objects:v28 count:16];
        if (v12)
        {
          continue;
        }

        break;
      }
    }

    finishedCopy = v20;
    v5 = 0x277CCA000;
  }

  userInfo = [finishedCopy userInfo];
  allContainersByContainerID = [userInfo objectForKey:*MEMORY[0x277CCA508]];

  if (allContainersByContainerID)
  {
    v9 = [MEMORY[0x277CBEB98] setWithArray:allContainersByContainerID];
  }

  else
  {
    v9 = 0;
  }

  [(_UIDocumentPickerCloudDirectoryObserver *)self _updateObservers:v9];
LABEL_7:

  defaultCenter2 = [*(v5 + 2968) defaultCenter];
  [defaultCenter2 addObserver:self selector:sel__queryUpdated_ name:*MEMORY[0x277CCA4F0] object:self->_query];
}

- (void)_queryUpdated:(id)updated
{
  updatedCopy = updated;
  [(_UIDocumentPickerCloudDirectoryObserver *)self assertOnQueryQueue];
  userInfo = [updatedCopy userInfo];

  v7 = [userInfo objectForKey:*MEMORY[0x277CCA508]];

  if (v7)
  {
    v6 = [MEMORY[0x277CBEB98] setWithArray:v7];
  }

  else
  {
    v6 = 0;
  }

  [(_UIDocumentPickerCloudDirectoryObserver *)self _updateObservers:v6];
}

- (id)_queryResultsWithChangedObjects:(id)objects changedResults:(id *)results
{
  objectsCopy = objects;
  [(_UIDocumentPickerCloudDirectoryObserver *)self assertOnQueryQueue];
  array = [MEMORY[0x277CBEB18] array];
  v8 = [MEMORY[0x277CBEB58] set];
  query = self->_query;
  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 3221225472;
  v17[2] = __90___UIDocumentPickerCloudDirectoryObserver__queryResultsWithChangedObjects_changedResults___block_invoke;
  v17[3] = &unk_278DD6370;
  v10 = array;
  v18 = v10;
  v19 = objectsCopy;
  v20 = v8;
  v11 = v8;
  v12 = objectsCopy;
  [(NSMetadataQuery *)query enumerateResultsUsingBlock:v17];
  v13 = v11;
  *results = v11;
  v14 = v20;
  v15 = v10;

  return v10;
}

- (void)_updateObservers:(id)observers
{
  observersCopy = observers;
  [(_UIDocumentPickerCloudDirectoryObserver *)self assertOnQueryQueue];
  query = [(_UIDocumentPickerCloudDirectoryObserver *)self query];
  [query disableUpdates];

  v11 = 0;
  v6 = [(_UIDocumentPickerCloudDirectoryObserver *)self _queryResultsWithChangedObjects:observersCopy changedResults:&v11];

  v7 = v11;
  query2 = [(_UIDocumentPickerCloudDirectoryObserver *)self query];
  [query2 enableUpdates];

  if (self->_staticItems)
  {
    v9 = [MEMORY[0x277CBEB18] arrayWithArray:v6];
    array = [(NSOrderedSet *)self->_staticItems array];
    [v9 addObjectsFromArray:array];

    [(_UIArrayController *)self processUpdate:v9 changedObjects:v7];
  }

  else
  {
    [(_UIArrayController *)self processUpdate:v6 changedObjects:v7];
  }
}

- (void)setStaticItems:(id)items
{
  itemsCopy = items;
  queryQueue = self->_queryQueue;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __58___UIDocumentPickerCloudDirectoryObserver_setStaticItems___block_invoke;
  v7[3] = &unk_278DD6200;
  v7[4] = self;
  v8 = itemsCopy;
  v6 = itemsCopy;
  dispatch_async(queryQueue, v7);
}

- (NSOrderedSet)staticItems
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x3032000000;
  v9 = __Block_byref_object_copy_;
  v10 = __Block_byref_object_dispose_;
  v11 = 0;
  queryQueue = self->_queryQueue;
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __54___UIDocumentPickerCloudDirectoryObserver_staticItems__block_invoke;
  v5[3] = &unk_278DD6348;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(queryQueue, v5);
  v3 = v7[5];
  _Block_object_dispose(&v6, 8);

  return v3;
}

- (BOOL)objectAttributeModified:(id)modified newObject:(id)object
{
  modificationDate = [object modificationDate];
  [modificationDate timeIntervalSinceReferenceDate];
  v7 = v6;
  lastSnapshotDate = [(_UIDocumentPickerCloudDirectoryObserver *)self lastSnapshotDate];
  [lastSnapshotDate timeIntervalSinceReferenceDate];
  v10 = v7 > v9;

  return v10;
}

- (id)isVisiblePredicate
{
  if (self->_recursive)
  {
    v2 = &__block_literal_global_2;
  }

  else
  {
    v2 = &__block_literal_global_31;
  }

  v3 = [MEMORY[0x277CCAC30] predicateWithBlock:v2];

  return v3;
}

- (void)callUpdateHandler:(id)handler changeDictionary:(id)dictionary
{
  handlerCopy = handler;
  dictionaryCopy = dictionary;
  date = [MEMORY[0x277CBEAA8] date];
  [(_UIDocumentPickerCloudDirectoryObserver *)self setLastSnapshotDate:date];

  if (dictionaryCopy || ![(_UIDocumentPickerCloudDirectoryObserver *)self afterInitialUpdate])
  {
    [(_UIDocumentPickerCloudDirectoryObserver *)self setAfterInitialUpdate:1];
    v9.receiver = self;
    v9.super_class = _UIDocumentPickerCloudDirectoryObserver;
    [(_UIArrayController *)&v9 callUpdateHandler:handlerCopy changeDictionary:dictionaryCopy];
  }
}

- (NSString)description
{
  v3 = MEMORY[0x277CCACA8];
  v8.receiver = self;
  v8.super_class = _UIDocumentPickerCloudDirectoryObserver;
  v4 = [(_UIDocumentPickerCloudDirectoryObserver *)&v8 description];
  firstObject = [(NSArray *)self->_scopes firstObject];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, firstObject];

  return v6;
}

@end