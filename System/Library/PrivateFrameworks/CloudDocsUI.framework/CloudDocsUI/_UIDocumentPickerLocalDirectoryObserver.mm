@interface _UIDocumentPickerLocalDirectoryObserver
- (BOOL)objectAttributeModified:(id)a3 newObject:(id)a4;
- (NSOrderedSet)staticItems;
- (NSPredicate)queryPredicate;
- (NSString)description;
- (_UIDocumentPickerLocalDirectoryObserver)initWithScopes:(id)a3 delegate:(id)a4;
- (id)gatherResults;
- (id)gatherResultsForSource:(id)a3;
- (void)callUpdateHandler:(id)a3 changeDictionary:(id)a4;
- (void)dealloc;
- (void)dispatchSourceDidReceiveEvent:(id)a3;
- (void)initialUpdate;
- (void)invalidate;
- (void)setQueryPredicate:(id)a3;
- (void)setStaticItems:(id)a3;
- (void)updateResultsForSource:(id)a3;
@end

@implementation _UIDocumentPickerLocalDirectoryObserver

- (_UIDocumentPickerLocalDirectoryObserver)initWithScopes:(id)a3 delegate:(id)a4
{
  v38 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v36.receiver = self;
  v36.super_class = _UIDocumentPickerLocalDirectoryObserver;
  v7 = [(_UIArrayController *)&v36 initWithDelegate:a4];
  if (v7)
  {
    v8 = objc_alloc_init(MEMORY[0x277CCABD8]);
    queryWorkerQueue = v7->_queryWorkerQueue;
    v7->_queryWorkerQueue = v8;

    [(NSOperationQueue *)v7->_queryWorkerQueue setMaxConcurrentOperationCount:1];
    [(NSOperationQueue *)v7->_queryWorkerQueue setQualityOfService:17];
    v10 = [(NSOperationQueue *)v7->_queryWorkerQueue name];
    v11 = dispatch_queue_create([v10 fileSystemRepresentation], 0);
    queryDispatchQueue = v7->_queryDispatchQueue;
    v7->_queryDispatchQueue = v11;

    [(NSOperationQueue *)v7->_queryWorkerQueue setUnderlyingQueue:v7->_queryDispatchQueue];
    v13 = [MEMORY[0x277CCACA8] stringWithFormat:@"observer %p", v7];
    [(NSOperationQueue *)v7->_queryWorkerQueue setName:v13];

    v14 = [MEMORY[0x277CBEB18] array];
    v32 = 0u;
    v33 = 0u;
    v34 = 0u;
    v35 = 0u;
    v31 = v6;
    v15 = v6;
    v16 = [v15 countByEnumeratingWithState:&v32 objects:v37 count:16];
    if (v16)
    {
      v17 = v16;
      v18 = *v33;
      do
      {
        v19 = 0;
        do
        {
          if (*v33 != v18)
          {
            objc_enumerationMutation(v15);
          }

          v20 = *(*(&v32 + 1) + 8 * v19);
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v21 = [[_UIDocumentPickerVnodeDispatchSource alloc] initWithTarget:v7 url:v20 queue:v7->_queryDispatchQueue];
            [v14 addObject:v21];
          }

          ++v19;
        }

        while (v17 != v19);
        v17 = [v15 countByEnumeratingWithState:&v32 objects:v37 count:16];
      }

      while (v17);
    }

    v22 = objc_opt_new();
    resultsForSources = v7->_resultsForSources;
    v7->_resultsForSources = v22;

    v24 = [v14 copy];
    sources = v7->_sources;
    v7->_sources = v24;

    v26 = objc_opt_new();
    staticItems = v7->_staticItems;
    v7->_staticItems = v26;

    v28 = [(_UIDocumentPickerLocalDirectoryObserver *)v7 isVisiblePredicate];
    [(_UIArrayController *)v7 setPredicate:v28];

    v29 = [MEMORY[0x277CCAC30] predicateWithValue:1];
    [(_UIDocumentPickerLocalDirectoryObserver *)v7 setQueryPredicate:v29];

    [(_UIDocumentPickerLocalDirectoryObserver *)v7 initialUpdate];
    v6 = v31;
  }

  return v7;
}

- (NSString)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  v5 = [(NSArray *)self->_sources componentsJoinedByString:@" "];
  v6 = [v3 stringWithFormat:@"<%@: %p>, %@", v4, self, v5];

  return v6;
}

- (void)dealloc
{
  v3 = [MEMORY[0x277CCAB98] defaultCenter];
  [v3 removeObserver:self];

  v4.receiver = self;
  v4.super_class = _UIDocumentPickerLocalDirectoryObserver;
  [(_UIArrayController *)&v4 dealloc];
}

- (void)invalidate
{
  [(NSArray *)self->_sources makeObjectsPerformSelector:sel_invalidate];
  [(NSOperationQueue *)self->_queryWorkerQueue cancelAllOperations];
  v3.receiver = self;
  v3.super_class = _UIDocumentPickerLocalDirectoryObserver;
  [(_UIArrayController *)&v3 invalidate];
}

- (void)setQueryPredicate:(id)a3
{
  v4 = a3;
  queryWorkerQueue = self->_queryWorkerQueue;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __61___UIDocumentPickerLocalDirectoryObserver_setQueryPredicate___block_invoke;
  v7[3] = &unk_278DD6200;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  [(NSOperationQueue *)queryWorkerQueue addOperationWithBlock:v7];
}

- (NSPredicate)queryPredicate
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x3032000000;
  v10 = __Block_byref_object_copy__1;
  v11 = __Block_byref_object_dispose__1;
  v12 = 0;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __57___UIDocumentPickerLocalDirectoryObserver_queryPredicate__block_invoke;
  v6[3] = &unk_278DD6348;
  v6[4] = self;
  v6[5] = &v7;
  v3 = [MEMORY[0x277CCA8C8] blockOperationWithBlock:v6];
  [(NSOperationQueue *)self->_queryWorkerQueue addOperation:v3];
  [v3 waitUntilFinished];
  v4 = v8[5];

  _Block_object_dispose(&v7, 8);

  return v4;
}

- (void)setStaticItems:(id)a3
{
  v4 = a3;
  queryWorkerQueue = self->_queryWorkerQueue;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __58___UIDocumentPickerLocalDirectoryObserver_setStaticItems___block_invoke;
  v7[3] = &unk_278DD6200;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  [(NSOperationQueue *)queryWorkerQueue addOperationWithBlock:v7];
}

- (NSOrderedSet)staticItems
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x3032000000;
  v9 = __Block_byref_object_copy__1;
  v10 = __Block_byref_object_dispose__1;
  v11 = 0;
  queryWorkerQueue = self->_queryWorkerQueue;
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __54___UIDocumentPickerLocalDirectoryObserver_staticItems__block_invoke;
  v5[3] = &unk_278DD6348;
  v5[4] = self;
  v5[5] = &v6;
  [(NSOperationQueue *)queryWorkerQueue addOperationWithBlock:v5];
  v3 = v7[5];
  _Block_object_dispose(&v6, 8);

  return v3;
}

- (BOOL)objectAttributeModified:(id)a3 newObject:(id)a4
{
  v6 = a3;
  v7 = a4;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v8 = [v6 attributesModified:v7];
  }

  else
  {
    v9 = [v7 modificationDate];

    [v9 timeIntervalSinceReferenceDate];
    v11 = v10;
    v12 = [(_UIDocumentPickerLocalDirectoryObserver *)self lastSnapshotDate];
    [v12 timeIntervalSinceReferenceDate];
    v8 = v11 > v13;

    v7 = v9;
  }

  return v8;
}

- (void)callUpdateHandler:(id)a3 changeDictionary:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [MEMORY[0x277CBEAA8] date];
  [(_UIDocumentPickerLocalDirectoryObserver *)self setLastSnapshotDate:v8];

  if ([v7 count] || !-[_UIDocumentPickerLocalDirectoryObserver afterInitialUpdate](self, "afterInitialUpdate"))
  {
    [(_UIDocumentPickerLocalDirectoryObserver *)self setAfterInitialUpdate:1];
    v9.receiver = self;
    v9.super_class = _UIDocumentPickerLocalDirectoryObserver;
    [(_UIArrayController *)&v9 callUpdateHandler:v6 changeDictionary:v7];
  }
}

- (id)gatherResultsForSource:(id)a3
{
  v23 = *MEMORY[0x277D85DE8];
  v3 = a3;
  v4 = objc_alloc_init(MEMORY[0x277CCAA00]);
  v5 = [v3 url];
  v6 = +[_UIDocumentPickerContainerURLItem defaultKeys];
  v7 = [v4 enumeratorAtURL:v5 includingPropertiesForKeys:v6 options:1 errorHandler:&__block_literal_global_31_0];

  v8 = [MEMORY[0x277CBEB18] array];
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v9 = v7;
  v10 = [v9 countByEnumeratingWithState:&v18 objects:v22 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v19;
    do
    {
      for (i = 0; i != v11; ++i)
      {
        if (*v19 != v12)
        {
          objc_enumerationMutation(v9);
        }

        v14 = *(*(&v18 + 1) + 8 * i);
        v15 = [_UIDocumentPickerContainerURLItem alloc];
        v16 = [(_UIDocumentPickerContainerURLItem *)v15 initWithURL:v14, v18];
        [v8 addObject:v16];
      }

      v11 = [v9 countByEnumeratingWithState:&v18 objects:v22 count:16];
    }

    while (v11);
  }

  return v8;
}

- (id)gatherResults
{
  v18 = *MEMORY[0x277D85DE8];
  v3 = [MEMORY[0x277CBEB18] array];
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v4 = [(NSMutableDictionary *)self->_resultsForSources allValues];
  v5 = [v4 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v14;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v14 != v7)
        {
          objc_enumerationMutation(v4);
        }

        [v3 addObjectsFromArray:*(*(&v13 + 1) + 8 * i)];
      }

      v6 = [v4 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v6);
  }

  v9 = [(NSOrderedSet *)self->_staticItems array];
  [v3 addObjectsFromArray:v9];

  if (self->_queryPredicate)
  {
    v10 = [v3 filteredArrayUsingPredicate:?];
  }

  else
  {
    v10 = v3;
  }

  v11 = v10;

  return v11;
}

- (void)initialUpdate
{
  queryWorkerQueue = self->_queryWorkerQueue;
  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = 3221225472;
  v3[2] = __56___UIDocumentPickerLocalDirectoryObserver_initialUpdate__block_invoke;
  v3[3] = &unk_278DD61B0;
  v3[4] = self;
  [(NSOperationQueue *)queryWorkerQueue addOperationWithBlock:v3];
}

- (void)updateResultsForSource:(id)a3
{
  v4 = a3;
  queryWorkerQueue = self->_queryWorkerQueue;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __66___UIDocumentPickerLocalDirectoryObserver_updateResultsForSource___block_invoke;
  v7[3] = &unk_278DD6200;
  v8 = v4;
  v9 = self;
  v6 = v4;
  [(NSOperationQueue *)queryWorkerQueue addOperationWithBlock:v7];
}

- (void)dispatchSourceDidReceiveEvent:(id)a3
{
  v4 = a3;
  if (!self->_updateScheduled)
  {
    self->_updateScheduled = 1;
    v5 = dispatch_time(0, 500000000);
    queryDispatchQueue = self->_queryDispatchQueue;
    v7[0] = MEMORY[0x277D85DD0];
    v7[1] = 3221225472;
    v7[2] = __73___UIDocumentPickerLocalDirectoryObserver_dispatchSourceDidReceiveEvent___block_invoke;
    v7[3] = &unk_278DD6200;
    v7[4] = self;
    v8 = v4;
    dispatch_after(v5, queryDispatchQueue, v7);
  }
}

@end