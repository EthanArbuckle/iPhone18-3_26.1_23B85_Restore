@interface ICBaseSearchIndexerDataSource
+ (BOOL)isAccountReindexedForMigration:(id)a3;
+ (void)markAccountReindexedForMigration:(id)a3;
- (BOOL)_loadStateDictionaryWithFileManager:(id *)a3 fileURL:(id *)a4 NSError:(id *)a5 fileExists:(BOOL *)a6 savedDictionary:(id *)a7;
- (BOOL)addNewObjectsForProcessing:(id)a3;
- (BOOL)saveStateDictionary:(id)a3;
- (BOOL)shouldIndexableObjectExistInIndexing:(id)a3;
- (ICBaseSearchIndexerDataSource)init;
- (NSString)stateFilename;
- (NSString)uuid;
- (NSURL)stateFileURL;
- (id)allIndexableObjectIDsInReversedReindexingOrderWithContext:(id)a3;
- (id)indexableObjectIDsWithURIs:(id)a3 context:(id)a4;
- (id)loadStateDictionary;
- (id)moveIndexingTrackingFromUserDefaultsToFileIfNecessary;
- (id)newManagedObjectContext;
- (id)objectForManagedObjectIDURI:(id)a3 context:(id)a4;
- (id)objectForSearchableItem:(id)a3 context:(id)a4;
- (id)objectIDsFromSearchableItems:(id)a3;
- (id)objectIDsNeedingProcessing;
- (id)searchableItemResultForObject:(id)a3;
- (int64_t)decisionOnObjectID:(id)a3 searchableItemToIndex:(id *)a4 additionalItemsToIndex:(id *)a5 objectIDURIToDelete:(id *)a6 additionalUniqueIdentifiersToDelete:(id *)a7 context:(id)a8;
- (void)clearObjectIDsToIgnoreAndStageForReindexing;
- (void)clearObjectIDsToProcess;
- (void)contextWillSave:(id)a3;
- (void)loadOrClearStateIfNecessary;
- (void)logFileSizeForFileAtPath:(id)a3 fileManager:(id)a4;
- (void)moveIndexingTrackingFromUserDefaultsToFileIfNecessary;
- (void)resetContextObservers;
- (void)saveStateIfNecessary;
- (void)searchIndexerDidFinishDeletingSearchableItemsWithObjectIDURIs:(id)a3 error:(id)a4;
- (void)searchIndexerDidFinishIndexingObjectIDs:(id)a3 error:(id)a4;
- (void)searchIndexerWillDeleteSearchableItemsWithObjectIDURIs:(id)a3;
- (void)searchIndexerWillIndexObjectIDs:(id)a3;
- (void)stageForReindexingWithContext:(id)a3;
- (void)stageObjectIDURIsForIndexing:(id)a3 context:(id)a4;
- (void)startObservingChanges;
- (void)stopObservingChanges;
@end

@implementation ICBaseSearchIndexerDataSource

- (void)startObservingChanges
{
  v11 = *MEMORY[0x1E69E9840];
  v3 = [(ICBaseSearchIndexerDataSource *)self isObservingChanges];
  v4 = os_log_create("com.apple.notes", "SearchIndexer");
  v5 = v4;
  if (v3)
  {
    if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
    {
      *buf = 138412290;
      v10 = self;
      _os_log_impl(&dword_1D4576000, v5, OS_LOG_TYPE_INFO, "Trying to start observing changes, but we already are %@", buf, 0xCu);
    }
  }

  else
  {
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
    {
      [ICBaseSearchIndexerDataSource startObservingChanges];
    }

    [(ICBaseSearchIndexerDataSource *)self setObservingChanges:1];
    [(ICBaseSearchIndexerDataSource *)self resetContextObservers];
    v6 = dispatch_time(0, 100000000);
    v7 = [(ICBaseSearchIndexerDataSource *)self processingQueue];
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __54__ICBaseSearchIndexerDataSource_startObservingChanges__block_invoke;
    block[3] = &unk_1E84848B8;
    block[4] = self;
    dispatch_after(v6, v7, block);
  }
}

- (void)resetContextObservers
{
  v3 = [MEMORY[0x1E696AD88] defaultCenter];
  v4 = *MEMORY[0x1E695D368];
  [v3 removeObserver:self name:*MEMORY[0x1E695D368] object:0];

  if ([(ICBaseSearchIndexerDataSource *)self isObservingChanges])
  {
    v5 = [MEMORY[0x1E696AD88] defaultCenter];
    [v5 addObserver:self selector:sel_contextWillSave_ name:v4 object:0];
  }
}

- (ICBaseSearchIndexerDataSource)init
{
  v9.receiver = self;
  v9.super_class = ICBaseSearchIndexerDataSource;
  v2 = [(ICBaseSearchIndexerDataSource *)&v9 init];
  if (v2)
  {
    v3 = [MEMORY[0x1E695DFA0] orderedSet];
    [(ICBaseSearchIndexerDataSource *)v2 setObjectIDsToProcess:v3];

    v4 = [MEMORY[0x1E695DFA0] orderedSet];
    [(ICBaseSearchIndexerDataSource *)v2 setObjectIDsBeingProcessed:v4];

    v5 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v6 = dispatch_get_global_queue(-32768, 0);
    v7 = dispatch_queue_create_with_target_V2("com.apple.notes.index.data-source", v5, v6);
    [(ICBaseSearchIndexerDataSource *)v2 setProcessingQueue:v7];

    [(ICBaseSearchIndexerDataSource *)v2 setObservingChanges:0];
    [(ICBaseSearchIndexerDataSource *)v2 setNeedsReindexing:0];
  }

  return v2;
}

- (NSString)uuid
{
  uuid = self->_uuid;
  if (!uuid)
  {
    v4 = [MEMORY[0x1E696AFB0] UUID];
    v5 = [v4 UUIDString];
    v6 = self->_uuid;
    self->_uuid = v5;

    uuid = self->_uuid;
  }

  return uuid;
}

- (id)newManagedObjectContext
{
  v3 = [objc_alloc(MEMORY[0x1E695D628]) initWithConcurrencyType:1];
  v4 = [(ICBaseSearchIndexerDataSource *)self persistentStoreCoordinator];
  [v3 setPersistentStoreCoordinator:v4];

  return v3;
}

- (id)objectForSearchableItem:(id)a3 context:(id)a4
{
  v31 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v8 = [v6 uniqueIdentifier];
  v9 = [(ICBaseSearchIndexerDataSource *)self persistentStoreCoordinator];
  v10 = [v9 ic_managedObjectIDForURIString:v8];

  if (v10)
  {
    *&buf = 0;
    *(&buf + 1) = &buf;
    v27 = 0x3032000000;
    v28 = __Block_byref_object_copy__0;
    v29 = __Block_byref_object_dispose__0;
    v30 = 0;
    v20[0] = MEMORY[0x1E69E9820];
    v20[1] = 3221225472;
    v20[2] = __65__ICBaseSearchIndexerDataSource_objectForSearchableItem_context___block_invoke;
    v20[3] = &unk_1E84848E0;
    p_buf = &buf;
    v21 = v7;
    v22 = v10;
    [v21 performBlockAndWait:v20];
    v11 = [*(*(&buf + 1) + 40) conformsToProtocol:&unk_1F4FEEE20];
    v12 = *(*(&buf + 1) + 40);
    if (v11)
    {
      v13 = v12;
    }

    else
    {
      if (v12)
      {
        v16 = os_log_create("com.apple.notes", "SearchIndexer");
        if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
        {
          v17 = objc_opt_class();
          v18 = NSStringFromClass(v17);
          *v24 = 138412290;
          v25 = v18;
          _os_log_impl(&dword_1D4576000, v16, OS_LOG_TYPE_INFO, "Trying to get object for a searchable item that is not indexable: %@", v24, 0xCu);
        }
      }

      v13 = 0;
    }

    _Block_object_dispose(&buf, 8);
  }

  else
  {
    v14 = os_log_create("com.apple.notes", "SearchIndexer");
    if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
    {
      v15 = [v6 uniqueIdentifier];
      LODWORD(buf) = 138412290;
      *(&buf + 4) = v15;
      _os_log_impl(&dword_1D4576000, v14, OS_LOG_TYPE_INFO, "Could not get object ID for searchable item %@", &buf, 0xCu);
    }

    v13 = 0;
  }

  return v13;
}

void __65__ICBaseSearchIndexerDataSource_objectForSearchableItem_context___block_invoke(void *a1)
{
  v15 = *MEMORY[0x1E69E9840];
  v2 = a1[4];
  v3 = a1[5];
  v10 = 0;
  v4 = [v2 existingObjectWithID:v3 error:&v10];
  v5 = v10;
  v6 = *(a1[6] + 8);
  v7 = *(v6 + 40);
  *(v6 + 40) = v4;

  if (v5)
  {
    v8 = os_log_create("com.apple.notes", "SearchIndexer");
    if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
    {
      v9 = a1[5];
      *buf = 138412546;
      v12 = v9;
      v13 = 2112;
      v14 = v5;
      _os_log_impl(&dword_1D4576000, v8, OS_LOG_TYPE_INFO, "Error fetching object with ID %@: %@", buf, 0x16u);
    }
  }
}

- (id)objectForManagedObjectIDURI:(id)a3 context:(id)a4
{
  v21 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v8 = [(ICBaseSearchIndexerDataSource *)self persistentStoreCoordinator];
  v9 = [v8 ic_managedObjectIDForURIString:v6];

  if (!v9)
  {
    v12 = 0;
    goto LABEL_14;
  }

  v16 = 0;
  v10 = [v7 existingObjectWithID:v9 error:&v16];
  v11 = v16;
  if (v10)
  {
    if ([v10 conformsToProtocol:&unk_1F4FEEE20])
    {
      v12 = v10;
      if (![v12 isHiddenFromIndexing])
      {
        goto LABEL_13;
      }
    }

    else
    {
      v12 = os_log_create("com.apple.notes", "SearchIndexer");
      if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
      {
        v13 = objc_opt_class();
        v14 = NSStringFromClass(v13);
        *buf = 138412546;
        v18 = v14;
        v19 = 2112;
        v20 = v6;
        _os_log_impl(&dword_1D4576000, v12, OS_LOG_TYPE_INFO, "Found %@ for objectIDURI %@, but it's not a search indexable object", buf, 0x16u);
      }
    }
  }

  else
  {
    v12 = os_log_create("com.apple.notes", "SearchIndexer");
    if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
    {
      *buf = 138412546;
      v18 = v6;
      v19 = 2112;
      v20 = v11;
      _os_log_impl(&dword_1D4576000, v12, OS_LOG_TYPE_INFO, "No managed object for searchable item %@: %@", buf, 0x16u);
    }
  }

  v12 = 0;
LABEL_13:

LABEL_14:

  return v12;
}

- (id)searchableItemResultForObject:(id)a3
{
  v4 = a3;
  v5 = [v4 objectID];
  v6 = [v5 URIRepresentation];
  v7 = [v6 absoluteString];

  if (objc_opt_class())
  {
    v8 = objc_opt_class();
    v9 = NSStringFromClass(v8);
  }

  else
  {
    v9 = @"<ICSearchIndexable>";
  }

  v10 = os_log_create("com.apple.notes", "SearchIndexer");
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
  {
    [ICBaseSearchIndexerDataSource searchableItemResultForObject:];
  }

  if (v5 && v7)
  {
    v11 = [v4 searchableItemAttributeSet];
    if (v11)
    {
      v12 = objc_alloc_init(MEMORY[0x1E6964E80]);
      v13 = [v4 searchIndexingIdentifier];
      [v12 setUniqueIdentifier:v13];

      v14 = [v4 searchDomainIdentifier];
      [v12 setDomainIdentifier:v14];

      v15 = [MEMORY[0x1E695DF00] distantFuture];
      [v12 setExpirationDate:v15];

      v16 = [(ICBaseSearchIndexerDataSource *)self dataSourceIdentifier];
      [v11 setIc_dataSourceIdentifier:v16];

      [v12 setAttributeSet:v11];
      v17 = [v11 eligibleForPhotosProcessing];
      [v12 setIsUpdate:{-[NSObject BOOLValue](v17, "BOOLValue")}];
    }

    else
    {
      v17 = os_log_create("com.apple.notes", "SearchIndexer");
      if (os_log_type_enabled(v17, OS_LOG_TYPE_DEBUG))
      {
        [ICBaseSearchIndexerDataSource searchableItemResultForObject:];
      }

      v12 = 0;
    }
  }

  else
  {
    v11 = os_log_create("com.apple.notes", "SearchIndexer");
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
    {
      [ICBaseSearchIndexerDataSource searchableItemResultForObject:];
    }

    v12 = 0;
  }

  v18 = objc_alloc_init(ICSearchableItemResult);
  [(ICSearchableItemResult *)v18 setSearchableItem:v12];

  return v18;
}

void __54__ICBaseSearchIndexerDataSource_startObservingChanges__block_invoke(uint64_t a1)
{
  v1 = (a1 + 32);
  [*(a1 + 32) loadOrClearStateIfNecessary];
  if ((ICUseCoreDataCoreSpotlightIntegration() & 1) == 0)
  {
    v2 = [*v1 objectIDsToProcess];
    v3 = [v2 count];

    if (v3)
    {
      v4 = os_log_create("com.apple.notes", "SearchIndexer");
      if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
      {
        __54__ICBaseSearchIndexerDataSource_startObservingChanges__block_invoke_cold_1();
      }

      v5 = [MEMORY[0x1E696AD88] defaultCenter];
      [v5 postNotificationName:@"ICSearchIndexerDataSourceDidChangeNotification" object:*v1];
    }
  }
}

- (void)stopObservingChanges
{
  v8 = *MEMORY[0x1E69E9840];
  v3 = [(ICBaseSearchIndexerDataSource *)self isObservingChanges];
  v4 = os_log_create("com.apple.notes", "SearchIndexer");
  v5 = v4;
  if (v3)
  {
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
    {
      [ICBaseSearchIndexerDataSource stopObservingChanges];
    }

    [(ICBaseSearchIndexerDataSource *)self setObservingChanges:0];
    [(ICBaseSearchIndexerDataSource *)self resetContextObservers];
  }

  else
  {
    if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
    {
      v6 = 138412290;
      v7 = self;
      _os_log_impl(&dword_1D4576000, v5, OS_LOG_TYPE_INFO, "Trying to stop observing changes, but we already aren't observing %@", &v6, 0xCu);
    }
  }
}

- (void)contextWillSave:(id)a3
{
  v81 = *MEMORY[0x1E69E9840];
  v4 = a3;
  if ((ICUseCoreDataCoreSpotlightIntegration() & 1) == 0)
  {
    v5 = [v4 object];
    v6 = [v5 persistentStoreCoordinator];
    v7 = [(ICBaseSearchIndexerDataSource *)self persistentStoreCoordinator];
    v8 = [v6 isEqual:v7];

    if (v8)
    {
      v53 = v4;
      v9 = [MEMORY[0x1E695DF70] array];
      v10 = [MEMORY[0x1E695DFA8] set];
      v11 = [v5 insertedObjects];
      v12 = [v11 count];

      if (v12)
      {
        v13 = [v5 insertedObjects];
        [v10 unionSet:v13];
      }

      v14 = [v5 updatedObjects];
      v15 = [v14 count];

      if (v15)
      {
        v16 = [v5 updatedObjects];
        [v10 unionSet:v16];
      }

      v17 = [v5 deletedObjects];
      v18 = [v17 count];

      if (v18)
      {
        v19 = [v5 deletedObjects];
        [v10 unionSet:v19];
      }

      v54 = [MEMORY[0x1E695DF70] array];
      v70 = 0u;
      v71 = 0u;
      v72 = 0u;
      v73 = 0u;
      obj = v10;
      v58 = [obj countByEnumeratingWithState:&v70 objects:v80 count:16];
      if (v58)
      {
        v57 = *v71;
        v56 = self;
        do
        {
          for (i = 0; i != v58; ++i)
          {
            if (*v71 != v57)
            {
              objc_enumerationMutation(obj);
            }

            v21 = *(*(&v70 + 1) + 8 * i);
            v22 = objc_opt_new();
            if ([(ICBaseSearchIndexerDataSource *)self isFolderWithServerShareChanged:v21])
            {
              [v54 addObject:v21];
            }

            if ([v21 conformsToProtocol:&unk_1F4FEEE80])
            {
              v23 = [v21 targetSearchIndexable];
              [v22 ic_addNonNilObject:v23];
            }

            else if ([v21 conformsToProtocol:&unk_1F4FEEE20])
            {
              [v22 ic_addNonNilObject:v21];
            }

            if ([v22 count])
            {
              v24 = [v22 firstObject];
              v25 = objc_opt_respondsToSelector();

              if (v25)
              {
                v26 = MEMORY[0x1E695DFD8];
                v27 = [v21 changedValues];
                v28 = [v27 allKeys];
                v29 = [v26 setWithArray:v28];

                v30 = [v22 firstObject];
                v31 = [v30 additionalSearchIndexablesForChangedKeys:v29];

                if ([v31 count])
                {
                  v32 = [v31 allObjects];
                  [v22 ic_addObjectsFromNonNilArray:v32];
                }
              }

              v59 = v22;
              v60 = i;
              v68 = 0u;
              v69 = 0u;
              v66 = 0u;
              v67 = 0u;
              v33 = v22;
              v34 = [v33 countByEnumeratingWithState:&v66 objects:v79 count:16];
              if (v34)
              {
                v35 = v34;
                v36 = *v67;
                do
                {
                  for (j = 0; j != v35; ++j)
                  {
                    if (*v67 != v36)
                    {
                      objc_enumerationMutation(v33);
                    }

                    v38 = *(*(&v66 + 1) + 8 * j);
                    v39 = [v38 objectID];
                    v40 = [v39 isTemporaryID];

                    if (v40)
                    {
                      v41 = [v38 managedObjectContext];
                      v78 = v38;
                      v42 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v78 count:1];
                      v65 = 0;
                      v43 = [v41 obtainPermanentIDsForObjects:v42 error:&v65];
                      v44 = v65;

                      if ((v43 & 1) == 0)
                      {
                        v45 = os_log_create("com.apple.notes", "SearchIndexer");
                        if (os_log_type_enabled(v45, OS_LOG_TYPE_ERROR))
                        {
                          v49 = objc_opt_class();
                          v50 = NSStringFromClass(v49);
                          *buf = 138412546;
                          v75 = v50;
                          v76 = 2112;
                          v77 = v44;
                          _os_log_error_impl(&dword_1D4576000, v45, OS_LOG_TYPE_ERROR, "Error obtaining permanent ID for %@: %@", buf, 0x16u);
                        }
                      }
                    }

                    v46 = [v38 objectID];
                    v47 = [v46 isTemporaryID];

                    if ((v47 & 1) == 0)
                    {
                      v48 = [v38 objectID];
                      [v9 addObject:v48];
                    }
                  }

                  v35 = [v33 countByEnumeratingWithState:&v66 objects:v79 count:16];
                }

                while (v35);
              }

              self = v56;
              v22 = v59;
              i = v60;
            }
          }

          v58 = [obj countByEnumeratingWithState:&v70 objects:v80 count:16];
        }

        while (v58);
      }

      if ([v9 count] || objc_msgSend(v54, "count"))
      {
        v51 = [(ICBaseSearchIndexerDataSource *)self processingQueue];
        block[0] = MEMORY[0x1E69E9820];
        block[1] = 3221225472;
        block[2] = __49__ICBaseSearchIndexerDataSource_contextWillSave___block_invoke;
        block[3] = &unk_1E8484908;
        v62 = v54;
        v63 = self;
        v64 = v9;
        dispatch_async(v51, block);
      }

      v5 = v52;
      v4 = v53;
    }
  }
}

uint64_t __49__ICBaseSearchIndexerDataSource_contextWillSave___block_invoke(id *a1)
{
  v15 = *MEMORY[0x1E69E9840];
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v2 = a1[4];
  v3 = [v2 countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v11;
    do
    {
      v6 = 0;
      do
      {
        if (*v11 != v5)
        {
          objc_enumerationMutation(v2);
        }

        v7 = [a1[5] addNotesFromSubtree:{*(*(&v10 + 1) + 8 * v6), v10}];
        [a1[6] addObjectsFromArray:v7];

        ++v6;
      }

      while (v4 != v6);
      v4 = [v2 countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v4);
  }

  result = [a1[6] count];
  if (result)
  {
    result = [a1[5] addNewObjectsForProcessing:a1[6]];
    if (result)
    {
      v9 = [MEMORY[0x1E696AD88] defaultCenter];
      [v9 postNotificationName:@"ICSearchIndexerDataSourceDidChangeNotification" object:a1[5]];

      return [a1[5] saveStateIfNecessary];
    }
  }

  return result;
}

- (BOOL)addNewObjectsForProcessing:(id)a3
{
  v4 = a3;
  v5 = [(ICBaseSearchIndexerDataSource *)self objectIDsToProcess];
  v6 = [v5 mutableCopy];

  v7 = [(ICBaseSearchIndexerDataSource *)self objectIDsToProcess];
  [v7 removeObjectsInArray:v4];

  v8 = [(ICBaseSearchIndexerDataSource *)self objectIDsToProcess];
  [v8 addObjectsFromArray:v4];

  v9 = [(ICBaseSearchIndexerDataSource *)self objectIDsToProcess];
  LOBYTE(v4) = [v6 isEqual:v9];

  return v4 ^ 1;
}

- (id)indexableObjectIDsWithURIs:(id)a3 context:(id)a4
{
  v6 = a3;
  v7 = a4;
  v15 = 0;
  v16 = &v15;
  v17 = 0x3032000000;
  v18 = __Block_byref_object_copy__0;
  v19 = __Block_byref_object_dispose__0;
  v20 = 0;
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __68__ICBaseSearchIndexerDataSource_indexableObjectIDsWithURIs_context___block_invoke;
  v11[3] = &unk_1E8484870;
  v8 = v6;
  v12 = v8;
  v13 = self;
  v14 = &v15;
  [v7 performBlockAndWait:v11];
  v9 = v16[5];

  _Block_object_dispose(&v15, 8);

  return v9;
}

void __68__ICBaseSearchIndexerDataSource_indexableObjectIDsWithURIs_context___block_invoke(uint64_t a1)
{
  v18 = *MEMORY[0x1E69E9840];
  v2 = [MEMORY[0x1E695DF70] array];
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v3 = *(a1 + 32);
  v4 = [v3 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v14;
    do
    {
      v7 = 0;
      do
      {
        if (*v14 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = *(*(&v13 + 1) + 8 * v7);
        v9 = [*(a1 + 40) persistentStoreCoordinator];
        v10 = [v9 ic_managedObjectIDForURIString:v8];

        if (v10)
        {
          [v2 addObject:v10];
        }

        ++v7;
      }

      while (v5 != v7);
      v5 = [v3 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v5);
  }

  v11 = *(*(a1 + 48) + 8);
  v12 = *(v11 + 40);
  *(v11 + 40) = v2;
}

- (id)allIndexableObjectIDsInReversedReindexingOrderWithContext:(id)a3
{
  v3 = objc_alloc_init(MEMORY[0x1E695DEC8]);

  return v3;
}

- (BOOL)shouldIndexableObjectExistInIndexing:(id)a3
{
  v3 = a3;
  if ([v3 isDeleted])
  {
    LOBYTE(v4) = 0;
  }

  else
  {
    v4 = [v3 isHiddenFromIndexing] ^ 1;
  }

  return v4;
}

- (id)objectIDsNeedingProcessing
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x3032000000;
  v10 = __Block_byref_object_copy__0;
  v11 = __Block_byref_object_dispose__0;
  v12 = 0;
  v3 = [(ICBaseSearchIndexerDataSource *)self processingQueue];
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __59__ICBaseSearchIndexerDataSource_objectIDsNeedingProcessing__block_invoke;
  v6[3] = &unk_1E8484848;
  v6[4] = self;
  v6[5] = &v7;
  dispatch_sync(v3, v6);

  v4 = v8[5];
  _Block_object_dispose(&v7, 8);

  return v4;
}

void __59__ICBaseSearchIndexerDataSource_objectIDsNeedingProcessing__block_invoke(uint64_t a1)
{
  v6 = [*(a1 + 32) objectIDsToProcess];
  v2 = [v6 array];
  v3 = [v2 copy];
  v4 = *(*(a1 + 40) + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = v3;
}

- (int64_t)decisionOnObjectID:(id)a3 searchableItemToIndex:(id *)a4 additionalItemsToIndex:(id *)a5 objectIDURIToDelete:(id *)a6 additionalUniqueIdentifiersToDelete:(id *)a7 context:(id)a8
{
  v12 = a3;
  v13 = a8;
  v59 = 0;
  v60 = &v59;
  v61 = 0x2020000000;
  v62 = 0;
  v53 = 0;
  v54 = &v53;
  v55 = 0x3032000000;
  v56 = __Block_byref_object_copy__0;
  v57 = __Block_byref_object_dispose__0;
  v58 = 0;
  v47 = 0;
  v48 = &v47;
  v49 = 0x3032000000;
  v50 = __Block_byref_object_copy__0;
  v51 = __Block_byref_object_dispose__0;
  v52 = 0;
  v41 = 0;
  v42 = &v41;
  v43 = 0x3032000000;
  v44 = __Block_byref_object_copy__0;
  v45 = __Block_byref_object_dispose__0;
  v46 = 0;
  v35 = 0;
  v36 = &v35;
  v37 = 0x3032000000;
  v38 = __Block_byref_object_copy__0;
  v39 = __Block_byref_object_dispose__0;
  v40 = 0;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __161__ICBaseSearchIndexerDataSource_decisionOnObjectID_searchableItemToIndex_additionalItemsToIndex_objectIDURIToDelete_additionalUniqueIdentifiersToDelete_context___block_invoke;
  aBlock[3] = &unk_1E8484930;
  v14 = v13;
  v27 = v14;
  v15 = v12;
  v28 = v15;
  v29 = self;
  v30 = &v59;
  v31 = &v53;
  v32 = &v41;
  v33 = &v35;
  v34 = &v47;
  v16 = _Block_copy(aBlock);
  v23[0] = MEMORY[0x1E69E9820];
  v23[1] = 3221225472;
  v23[2] = __161__ICBaseSearchIndexerDataSource_decisionOnObjectID_searchableItemToIndex_additionalItemsToIndex_objectIDURIToDelete_additionalUniqueIdentifiersToDelete_context___block_invoke_153;
  v23[3] = &unk_1E8484958;
  v17 = v16;
  v25 = v17;
  v18 = v15;
  v24 = v18;
  [v14 performBlockAndWait:v23];
  if (a4)
  {
    *a4 = v54[5];
  }

  if (a5)
  {
    *a5 = v42[5];
  }

  if (a7)
  {
    *a7 = v36[5];
  }

  if (a6)
  {
    *a6 = v48[5];
  }

  v19 = v60[3];

  _Block_object_dispose(&v35, 8);
  _Block_object_dispose(&v41, 8);

  _Block_object_dispose(&v47, 8);
  _Block_object_dispose(&v53, 8);

  _Block_object_dispose(&v59, 8);
  return v19;
}

void __161__ICBaseSearchIndexerDataSource_decisionOnObjectID_searchableItemToIndex_additionalItemsToIndex_objectIDURIToDelete_additionalUniqueIdentifiersToDelete_context___block_invoke(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  v3 = *(a1 + 40);
  v4 = *(a1 + 32);
  v30 = 0;
  v5 = [v4 existingObjectWithID:v3 error:&v30];
  v6 = v30;
  if (v5)
  {
    if (![v5 conformsToProtocol:&unk_1F4FEEE20])
    {
      v7 = 0;
      goto LABEL_15;
    }

    v7 = v5;
    if ([*(a1 + 48) shouldIndexableObjectExistInIndexing:v7])
    {
      v8 = [*(a1 + 48) isPaperKitOrSynapseAttachment:v7];
      v9 = *(*(a1 + 56) + 8);
      if (v8)
      {
        v10 = 3;
      }

      else
      {
        v10 = 1;
      }

      goto LABEL_14;
    }

    v12 = os_log_create("com.apple.notes", "SearchIndexer");
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
    {
      __161__ICBaseSearchIndexerDataSource_decisionOnObjectID_searchableItemToIndex_additionalItemsToIndex_objectIDURIToDelete_additionalUniqueIdentifiersToDelete_context___block_invoke_cold_1(a1 + 40, v7);
    }
  }

  else
  {
    v11 = os_log_create("com.apple.notes", "SearchIndexer");
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
    {
      __161__ICBaseSearchIndexerDataSource_decisionOnObjectID_searchableItemToIndex_additionalItemsToIndex_objectIDURIToDelete_additionalUniqueIdentifiersToDelete_context___block_invoke_cold_2();
    }

    v7 = 0;
  }

  v9 = *(*(a1 + 56) + 8);
  v10 = 2;
LABEL_14:
  *(v9 + 24) = v10;
LABEL_15:
  v13 = *(*(*(a1 + 56) + 8) + 24);
  if (v13 == 1)
  {
    if (!v7)
    {
      goto LABEL_27;
    }

    goto LABEL_22;
  }

  if (v13 == 3 && v7 != 0)
  {
LABEL_22:
    v15 = [*(a1 + 48) searchableItemResultForObject:v7];
    v16 = [v15 searchableItem];
    v17 = *(*(a1 + 64) + 8);
    v18 = *(v17 + 40);
    *(v17 + 40) = v16;

    v19 = [v15 additionalSearchableItems];
    v20 = *(*(a1 + 72) + 8);
    v21 = *(v20 + 40);
    *(v20 + 40) = v19;

    v13 = *(*(*(a1 + 56) + 8) + 24);
  }

  if ((v13 & 0xFFFFFFFFFFFFFFFELL) == 2)
  {
    if (v7)
    {
      v22 = [*(a1 + 48) additionalUniqueIdentifiersToDeleteForObject:v7];
      v23 = *(*(a1 + 80) + 8);
      v24 = *(v23 + 40);
      *(v23 + 40) = v22;
    }

    v25 = [*(a1 + 40) URIRepresentation];
    v26 = [v25 absoluteString];
    v27 = *(*(a1 + 88) + 8);
    v28 = *(v27 + 40);
    *(v27 + 40) = v26;
  }

LABEL_27:
  v29 = [v5 managedObjectContext];
  [v29 refreshObject:v5 mergeChanges:0];

  objc_autoreleasePoolPop(v2);
}

void __161__ICBaseSearchIndexerDataSource_decisionOnObjectID_searchableItemToIndex_additionalItemsToIndex_objectIDURIToDelete_additionalUniqueIdentifiersToDelete_context___block_invoke_153(uint64_t a1)
{
  v1 = [ICErrors performBlockByCatchingExceptionsAsError:*(a1 + 40)];
  if (v1)
  {
    v2 = os_log_create("com.apple.notes", "SearchIndexer");
    if (os_log_type_enabled(v2, OS_LOG_TYPE_FAULT))
    {
      __161__ICBaseSearchIndexerDataSource_decisionOnObjectID_searchableItemToIndex_additionalItemsToIndex_objectIDURIToDelete_additionalUniqueIdentifiersToDelete_context___block_invoke_153_cold_1();
    }
  }
}

- (void)searchIndexerWillIndexObjectIDs:(id)a3
{
  v4 = a3;
  v5 = [(ICBaseSearchIndexerDataSource *)self processingQueue];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __65__ICBaseSearchIndexerDataSource_searchIndexerWillIndexObjectIDs___block_invoke;
  v7[3] = &unk_1E8484980;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_async(v5, v7);
}

void __65__ICBaseSearchIndexerDataSource_searchIndexerWillIndexObjectIDs___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) objectIDsToProcess];
  [v2 removeObjectsInArray:*(a1 + 40)];

  v3 = [*(a1 + 32) objectIDsBeingProcessed];
  [v3 addObjectsFromArray:*(a1 + 40)];
}

- (void)searchIndexerDidFinishIndexingObjectIDs:(id)a3 error:(id)a4
{
  v6 = a3;
  v7 = a4;
  if ([v6 count])
  {
    v8 = [(ICBaseSearchIndexerDataSource *)self processingQueue];
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __79__ICBaseSearchIndexerDataSource_searchIndexerDidFinishIndexingObjectIDs_error___block_invoke;
    block[3] = &unk_1E8484908;
    block[4] = self;
    v10 = v6;
    v11 = v7;
    dispatch_async(v8, block);
  }
}

uint64_t __79__ICBaseSearchIndexerDataSource_searchIndexerDidFinishIndexingObjectIDs_error___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) objectIDsBeingProcessed];
  [v2 removeObjectsInArray:*(a1 + 40)];

  if (*(a1 + 48))
  {
    v3 = [MEMORY[0x1E696AC90] indexSetWithIndexesInRange:{0, objc_msgSend(*(a1 + 40), "count")}];
    v4 = [*(a1 + 32) objectIDsToProcess];
    [v4 insertObjects:*(a1 + 40) atIndexes:v3];
  }

  v5 = *(a1 + 32);

  return [v5 saveStateIfNecessary];
}

- (void)searchIndexerWillDeleteSearchableItemsWithObjectIDURIs:(id)a3
{
  v4 = a3;
  v5 = [(ICBaseSearchIndexerDataSource *)self processingQueue];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __88__ICBaseSearchIndexerDataSource_searchIndexerWillDeleteSearchableItemsWithObjectIDURIs___block_invoke;
  v7[3] = &unk_1E8484980;
  v8 = v4;
  v9 = self;
  v6 = v4;
  dispatch_async(v5, v7);
}

void __88__ICBaseSearchIndexerDataSource_searchIndexerWillDeleteSearchableItemsWithObjectIDURIs___block_invoke(uint64_t a1)
{
  v25 = *MEMORY[0x1E69E9840];
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v2 = *(a1 + 32);
  v3 = [v2 countByEnumeratingWithState:&v18 objects:v24 count:16];
  if (v3)
  {
    v5 = v3;
    v6 = *v19;
    *&v4 = 138412290;
    v17 = v4;
    do
    {
      v7 = 0;
      do
      {
        if (*v19 != v6)
        {
          objc_enumerationMutation(v2);
        }

        v8 = *(*(&v18 + 1) + 8 * v7);
        v9 = [*(a1 + 40) persistentStoreCoordinator];
        v10 = [v9 ic_managedObjectIDForURIString:v8];

        if (v10)
        {
          v11 = [*(a1 + 40) objectIDsBeingProcessed];
          [v11 addObject:v10];

          v12 = [*(a1 + 40) objectIDsToProcess];
          [v12 removeObject:v10];

          v13 = os_log_create("com.apple.notes", "SearchIndexer");
          if (!os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
          {
            goto LABEL_10;
          }

          *buf = v17;
          v23 = v10;
          v14 = v13;
          v15 = "About to delete item from index: %@";
        }

        else
        {
          v13 = os_log_create("com.apple.notes", "SearchIndexer");
          if (!os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
          {
            goto LABEL_10;
          }

          *buf = v17;
          v23 = v8;
          v14 = v13;
          v15 = "About to delete an objectIDURI from the index, but we cannot retrieve its object ID: %@";
        }

        _os_log_debug_impl(&dword_1D4576000, v14, OS_LOG_TYPE_DEBUG, v15, buf, 0xCu);
LABEL_10:

        ++v7;
      }

      while (v5 != v7);
      v16 = [v2 countByEnumeratingWithState:&v18 objects:v24 count:16];
      v5 = v16;
    }

    while (v16);
  }
}

- (void)searchIndexerDidFinishDeletingSearchableItemsWithObjectIDURIs:(id)a3 error:(id)a4
{
  v6 = a3;
  v7 = a4;
  if ([v6 count])
  {
    v8 = [(ICBaseSearchIndexerDataSource *)self processingQueue];
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __101__ICBaseSearchIndexerDataSource_searchIndexerDidFinishDeletingSearchableItemsWithObjectIDURIs_error___block_invoke;
    block[3] = &unk_1E8484908;
    v10 = v6;
    v11 = self;
    v12 = v7;
    dispatch_async(v8, block);
  }
}

uint64_t __101__ICBaseSearchIndexerDataSource_searchIndexerDidFinishDeletingSearchableItemsWithObjectIDURIs_error___block_invoke(uint64_t a1)
{
  v18 = *MEMORY[0x1E69E9840];
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v2 = *(a1 + 32);
  v3 = [v2 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v14;
    do
    {
      v6 = 0;
      do
      {
        if (*v14 != v5)
        {
          objc_enumerationMutation(v2);
        }

        v7 = *(*(&v13 + 1) + 8 * v6);
        v8 = [*(a1 + 40) persistentStoreCoordinator];
        v9 = [v8 ic_managedObjectIDForURIString:v7];

        if (v9)
        {
          v10 = [*(a1 + 40) objectIDsBeingProcessed];
          [v10 removeObject:v9];

          if (*(a1 + 48))
          {
            v11 = [*(a1 + 40) objectIDsToProcess];
            [v11 insertObject:v9 atIndex:0];
          }
        }

        ++v6;
      }

      while (v4 != v6);
      v4 = [v2 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v4);
  }

  return [*(a1 + 40) saveStateIfNecessary];
}

- (void)stageForReindexingWithContext:(id)a3
{
  v4 = a3;
  if (ICVerboseSearchLogging())
  {
    v5 = os_log_create("com.apple.notes", "SearchIndexer");
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
    {
      [ICBaseSearchIndexerDataSource stageForReindexingWithContext:];
    }
  }

  v6 = [(ICBaseSearchIndexerDataSource *)self processingQueue];
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __63__ICBaseSearchIndexerDataSource_stageForReindexingWithContext___block_invoke;
  v8[3] = &unk_1E8484980;
  v8[4] = self;
  v9 = v4;
  v7 = v4;
  dispatch_sync(v6, v8);
}

void __63__ICBaseSearchIndexerDataSource_stageForReindexingWithContext___block_invoke(uint64_t a1)
{
  if (ICVerboseSearchLogging())
  {
    v2 = os_log_create("com.apple.notes", "SearchIndexer");
    if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
    {
      __63__ICBaseSearchIndexerDataSource_stageForReindexingWithContext___block_invoke_cold_1();
    }
  }

  v3 = *(a1 + 32);
  v4 = *(a1 + 40);
  v5 = (a1 + 32);
  v6 = [v3 allIndexableObjectIDsInReversedReindexingOrderWithContext:v4];
  if (ICVerboseSearchLogging())
  {
    v7 = os_log_create("com.apple.notes", "SearchIndexer");
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
    {
      __63__ICBaseSearchIndexerDataSource_stageForReindexingWithContext___block_invoke_cold_2();
    }
  }

  if (v6)
  {
    v8 = [*v5 addNewObjectsForProcessing:v6];
  }

  else
  {
    v9 = os_log_create("com.apple.notes", "SearchIndexer");
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      __63__ICBaseSearchIndexerDataSource_stageForReindexingWithContext___block_invoke_cold_3();
    }

    v8 = 0;
  }

  v10 = [*v5 needsReindexing];
  [*v5 setNeedsReindexing:0];
  if (ICVerboseSearchLogging())
  {
    v11 = os_log_create("com.apple.notes", "SearchIndexer");
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
    {
      __63__ICBaseSearchIndexerDataSource_stageForReindexingWithContext___block_invoke_cold_4();
    }
  }

  if ((v10 | v8))
  {
    [*v5 saveStateIfNecessary];
  }
}

- (void)clearObjectIDsToProcess
{
  v3 = [(ICBaseSearchIndexerDataSource *)self processingQueue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __56__ICBaseSearchIndexerDataSource_clearObjectIDsToProcess__block_invoke;
  block[3] = &unk_1E84848B8;
  block[4] = self;
  dispatch_async(v3, block);
}

void __56__ICBaseSearchIndexerDataSource_clearObjectIDsToProcess__block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) objectIDsToProcess];
  v3 = [v2 count];

  if (v3)
  {
    v4 = [*(a1 + 32) objectIDsToProcess];
    [v4 removeAllObjects];

    v5 = *(a1 + 32);

    [v5 saveStateIfNecessary];
  }
}

- (void)stageObjectIDURIsForIndexing:(id)a3 context:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(ICBaseSearchIndexerDataSource *)self processingQueue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __70__ICBaseSearchIndexerDataSource_stageObjectIDURIsForIndexing_context___block_invoke;
  block[3] = &unk_1E8484908;
  block[4] = self;
  v12 = v6;
  v13 = v7;
  v9 = v7;
  v10 = v6;
  dispatch_sync(v8, block);
}

void __70__ICBaseSearchIndexerDataSource_stageObjectIDURIsForIndexing_context___block_invoke(uint64_t a1)
{
  v1 = (a1 + 32);
  v2 = [*(a1 + 32) indexableObjectIDsWithURIs:*(a1 + 40) context:*(a1 + 48)];
  if ([v2 count])
  {
    if ([*v1 addNewObjectsForProcessing:v2])
    {
      [*v1 saveStateIfNecessary];
    }
  }

  else
  {
    v3 = os_log_create("com.apple.notes", "SearchIndexer");
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      __70__ICBaseSearchIndexerDataSource_stageObjectIDURIsForIndexing_context___block_invoke_cold_1();
    }
  }
}

- (id)objectIDsFromSearchableItems:(id)a3
{
  v24 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [MEMORY[0x1E695DFA8] set];
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v6 = v4;
  v7 = [v6 countByEnumeratingWithState:&v17 objects:v23 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v18;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v18 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v17 + 1) + 8 * i);
        v12 = [v11 uniqueIdentifier];
        v13 = [(ICBaseSearchIndexerDataSource *)self persistentStoreCoordinator];
        v14 = [v13 ic_managedObjectIDForURIString:v12];

        if (v14)
        {
          [v5 addObject:v14];
        }

        else
        {
          v15 = os_log_create("com.apple.notes", "SearchIndexer");
          if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
          {
            [(ICBaseSearchIndexerDataSource *)v21 objectIDsFromSearchableItems:v11, &v22, v15];
          }
        }
      }

      v8 = [v6 countByEnumeratingWithState:&v17 objects:v23 count:16];
    }

    while (v8);
  }

  return v5;
}

- (void)saveStateIfNecessary
{
  v27 = *MEMORY[0x1E69E9840];
  if (ICVerboseSearchLogging())
  {
    v3 = os_log_create("com.apple.notes", "SearchIndexer");
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
    {
      [ICBaseSearchIndexerDataSource saveStateIfNecessary];
    }
  }

  if ((ICUseCoreDataCoreSpotlightIntegration() & 1) == 0)
  {
    v4 = [MEMORY[0x1E695DF90] dictionary];
    v5 = [(ICBaseSearchIndexerDataSource *)self needsReindexing];
    v6 = [MEMORY[0x1E696AD98] numberWithBool:v5];
    [v4 setObject:v6 forKeyedSubscript:@"NeedsReindexing"];

    v7 = [MEMORY[0x1E695DF70] array];
    v8 = [(ICBaseSearchIndexerDataSource *)self objectIDsBeingProcessed];
    v19[0] = MEMORY[0x1E69E9820];
    v19[1] = 3221225472;
    v19[2] = __53__ICBaseSearchIndexerDataSource_saveStateIfNecessary__block_invoke;
    v19[3] = &unk_1E84849A8;
    v9 = v7;
    v20 = v9;
    [v8 enumerateObjectsUsingBlock:v19];

    v10 = [(ICBaseSearchIndexerDataSource *)self objectIDsToProcess];
    v14 = MEMORY[0x1E69E9820];
    v15 = 3221225472;
    v16 = __53__ICBaseSearchIndexerDataSource_saveStateIfNecessary__block_invoke_2;
    v17 = &unk_1E84849A8;
    v11 = v9;
    v18 = v11;
    [v10 enumerateObjectsUsingBlock:&v14];

    [v4 setObject:v11 forKeyedSubscript:{@"ObjectIDURIs", v14, v15, v16, v17}];
    v12 = os_log_create("com.apple.notes", "SearchIndexer");
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
    {
      v13 = [v11 count];
      *buf = 138412802;
      v22 = self;
      v23 = 2048;
      v24 = v13;
      v25 = 1024;
      v26 = v5;
      _os_log_debug_impl(&dword_1D4576000, v12, OS_LOG_TYPE_DEBUG, "Saving indexing state for %@: objectIDs=%lu needsReindexing=%d", buf, 0x1Cu);
    }

    [(ICBaseSearchIndexerDataSource *)self saveStateDictionary:v4];
  }
}

void __53__ICBaseSearchIndexerDataSource_saveStateIfNecessary__block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v4 = *(a1 + 32);
  v6 = [a2 URIRepresentation];
  v5 = [v6 absoluteString];
  [v4 insertObject:v5 atIndex:a3];
}

void __53__ICBaseSearchIndexerDataSource_saveStateIfNecessary__block_invoke_2(uint64_t a1, void *a2, uint64_t a3)
{
  v4 = *(a1 + 32);
  v6 = [a2 URIRepresentation];
  v5 = [v6 absoluteString];
  [v4 insertObject:v5 atIndex:a3];
}

- (void)loadOrClearStateIfNecessary
{
  v2 = [a1 objectIDsToProcess];
  [v2 count];
  [a1 needsReindexing];
  OUTLINED_FUNCTION_5();
  _os_log_debug_impl(v3, v4, v5, v6, v7, 0x1Cu);
}

void __60__ICBaseSearchIndexerDataSource_loadOrClearStateIfNecessary__block_invoke(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  v5 = [v3 persistentStoreCoordinator];
  v7 = [v5 ic_managedObjectIDForURIString:v4];

  v6 = v7;
  if (v7)
  {
    [*(a1 + 40) addObject:v7];
    v6 = v7;
  }
}

- (NSString)stateFilename
{
  v2 = MEMORY[0x1E696AEC0];
  v3 = [(ICBaseSearchIndexerDataSource *)self dataSourceIdentifier];
  v4 = [v2 stringWithFormat:@"NotesIndexerState-%@", v3];

  return v4;
}

- (id)moveIndexingTrackingFromUserDefaultsToFileIfNecessary
{
  v44 = *MEMORY[0x1E69E9840];
  v3 = [MEMORY[0x1E695E000] standardUserDefaults];
  v4 = [(ICBaseSearchIndexerDataSource *)self stateFilename];
  v5 = [v3 objectForKey:v4];

  if (v5)
  {
    v6 = os_log_create("com.apple.notes", "SearchIndexer");
    if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
    {
      v7 = [(ICBaseSearchIndexerDataSource *)self stateFilename];
      *buf = 138412290;
      v40 = v7;
      _os_log_impl(&dword_1D4576000, v6, OS_LOG_TYPE_INFO, "Moving Indexing Tracking from UserDefaults to file for %@.", buf, 0xCu);
    }

    v38 = 0;
    v36 = 0;
    v37 = 0;
    v34 = 0;
    v35 = 0;
    [(ICBaseSearchIndexerDataSource *)self _loadStateDictionaryWithFileManager:&v37 fileURL:&v36 NSError:&v35 fileExists:&v38 savedDictionary:&v34];
    v8 = v37;
    v9 = v36;
    v10 = v35;
    v11 = v34;
    v12 = [v5 mutableCopy];
    [v12 addEntriesFromDictionary:v11];
    v13 = os_log_create("com.apple.notes", "SearchIndexer");
    if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
    {
      *buf = 138412290;
      v40 = v12;
      _os_log_impl(&dword_1D4576000, v13, OS_LOG_TYPE_INFO, "Combined search indexer state dictionary: %@", buf, 0xCu);
    }

    v14 = [(ICBaseSearchIndexerDataSource *)self saveStateDictionary:v12];
    v15 = [v9 path];
    v38 = [v8 fileExistsAtPath:v15];

    if (v38 == 1 && !v10 && v14)
    {
      v16 = [MEMORY[0x1E695E000] standardUserDefaults];
      v17 = [(ICBaseSearchIndexerDataSource *)self stateFilename];
      [v16 removeObjectForKey:v17];
    }

    else
    {
      v16 = os_log_create("com.apple.notes", "SearchIndexer");
      if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
      {
        [ICBaseSearchIndexerDataSource moveIndexingTrackingFromUserDefaultsToFileIfNecessary];
      }
    }

    v28 = [v12 copy];
  }

  else
  {
    v8 = [MEMORY[0x1E695DF70] array];
    v30 = 0u;
    v31 = 0u;
    v32 = 0u;
    v33 = 0u;
    v18 = [MEMORY[0x1E695E000] standardUserDefaults];
    v19 = [v18 dictionaryRepresentation];
    v20 = [v19 allKeys];

    v21 = [v20 countByEnumeratingWithState:&v30 objects:v43 count:16];
    if (v21)
    {
      v22 = v21;
      v23 = *v31;
      do
      {
        for (i = 0; i != v22; ++i)
        {
          if (*v31 != v23)
          {
            objc_enumerationMutation(v20);
          }

          v25 = *(*(&v30 + 1) + 8 * i);
          if ([v25 hasPrefix:@"NotesIndexerState"])
          {
            [v8 addObject:v25];
          }
        }

        v22 = [v20 countByEnumeratingWithState:&v30 objects:v43 count:16];
      }

      while (v22);
    }

    v9 = os_log_create("com.apple.notes", "SearchIndexer");
    if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
    {
      v26 = [(ICBaseSearchIndexerDataSource *)self stateFilename];
      v27 = [v8 debugDescription];
      *buf = 138412546;
      v40 = v26;
      v41 = 2112;
      v42 = v27;
      _os_log_impl(&dword_1D4576000, v9, OS_LOG_TYPE_INFO, "Skipped moving index tracking data from user defaults: no data found for key %@. Other possibly related keys: %@", buf, 0x16u);
    }

    v28 = 0;
    v10 = v9;
  }

  return v28;
}

- (id)loadStateDictionary
{
  v10 = 0;
  v11 = 0;
  v9 = 0;
  [(ICBaseSearchIndexerDataSource *)self _loadStateDictionaryWithFileManager:&v11 fileURL:&v10 NSError:0 fileExists:0 savedDictionary:&v9];
  v3 = v11;
  v4 = v10;
  v5 = v9;
  v6 = [v4 path];
  [(ICBaseSearchIndexerDataSource *)self logFileSizeForFileAtPath:v6 fileManager:v3];

  v7 = [v5 copy];

  return v7;
}

- (BOOL)_loadStateDictionaryWithFileManager:(id *)a3 fileURL:(id *)a4 NSError:(id *)a5 fileExists:(BOOL *)a6 savedDictionary:(id *)a7
{
  v31 = *MEMORY[0x1E69E9840];
  v12 = [MEMORY[0x1E696AC08] defaultManager];
  v13 = [(ICBaseSearchIndexerDataSource *)self stateFileURL];
  v14 = [v13 path];
  v15 = [v12 fileExistsAtPath:v14];

  v16 = os_log_create("com.apple.notes", "SearchIndexer");
  if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
  {
    v17 = @"does not exist";
    if (v15)
    {
      v17 = @"exists";
    }

    *buf = 138412290;
    v30 = v17;
    _os_log_impl(&dword_1D4576000, v16, OS_LOG_TYPE_INFO, "Search indexer saved state dictionary file %@.", buf, 0xCu);
  }

  if (!v15)
  {
    v19 = 0;
    v18 = MEMORY[0x1E695E0F8];
LABEL_12:
    v21 = 1;
    if (!a3)
    {
      goto LABEL_14;
    }

    goto LABEL_13;
  }

  v28 = 0;
  v18 = [MEMORY[0x1E695DF20] dictionaryWithContentsOfURL:v13 error:&v28];
  v19 = v28;
  if (!v19)
  {
    goto LABEL_12;
  }

  v20 = os_log_create("com.apple.notes", "SearchIndexer");
  if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
  {
    [ICBaseSearchIndexerDataSource _loadStateDictionaryWithFileManager:fileURL:NSError:fileExists:savedDictionary:];
  }

  v21 = 0;
  if (a3)
  {
LABEL_13:
    v22 = v12;
    *a3 = v12;
  }

LABEL_14:
  if (a4)
  {
    v23 = v13;
    *a4 = v13;
  }

  if (a5)
  {
    v24 = v19;
    *a5 = v19;
  }

  if (a6)
  {
    *a6 = v15;
  }

  if (a7)
  {
    v25 = v18;
    *a7 = v18;
  }

  return v21;
}

- (NSURL)stateFileURL
{
  v3 = +[ICPaths applicationDocumentsURL];
  v4 = [(ICBaseSearchIndexerDataSource *)self stateFilename];
  v5 = [v3 URLByAppendingPathComponent:v4 isDirectory:0];

  return v5;
}

- (BOOL)saveStateDictionary:(id)a3
{
  v16 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [MEMORY[0x1E696AC08] defaultManager];
  v6 = [(ICBaseSearchIndexerDataSource *)self stateFileURL];
  v13[0] = 0;
  v7 = [v4 writeToURL:v6 error:v13];
  v8 = v13[0];
  v9 = os_log_create("com.apple.notes", "SearchIndexer");
  v10 = v9;
  if (v7)
  {
    if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
    {
      *buf = 138412290;
      v15 = v4;
      _os_log_impl(&dword_1D4576000, v10, OS_LOG_TYPE_INFO, "Wrote search indexer saved state dictionary to file: %@", buf, 0xCu);
    }
  }

  else if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
  {
    [ICBaseSearchIndexerDataSource saveStateDictionary:];
  }

  v11 = [v6 path];
  [(ICBaseSearchIndexerDataSource *)self logFileSizeForFileAtPath:v11 fileManager:v5];

  return v7;
}

- (void)logFileSizeForFileAtPath:(id)a3 fileManager:(id)a4
{
  v20 = *MEMORY[0x1E69E9840];
  v15 = 0;
  v4 = [a4 attributesOfItemAtPath:a3 error:&v15];
  v5 = v15;
  v6 = [v4 objectForKeyedSubscript:*MEMORY[0x1E696A3B8]];
  v7 = v6;
  v8 = &unk_1F4FD70B0;
  if (v6)
  {
    v8 = v6;
  }

  v9 = v8;

  v10 = os_log_create("com.apple.notes", "SearchIndexer");
  v11 = os_log_type_enabled(v10, OS_LOG_TYPE_INFO);
  if (v5)
  {
    if (v11)
    {
      *buf = 138412546;
      v17 = v9;
      v18 = 2112;
      v19 = v5;
      v12 = "Search indexer state dictionary file size: %@ bytes. error: %@";
      v13 = v10;
      v14 = 22;
LABEL_8:
      _os_log_impl(&dword_1D4576000, v13, OS_LOG_TYPE_INFO, v12, buf, v14);
    }
  }

  else if (v11)
  {
    *buf = 138412290;
    v17 = v9;
    v12 = "Search indexer state dictionary file size: %@ bytes.";
    v13 = v10;
    v14 = 12;
    goto LABEL_8;
  }
}

- (void)clearObjectIDsToIgnoreAndStageForReindexing
{
  [0 count];
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_5();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0x16u);
}

+ (BOOL)isAccountReindexedForMigration:(id)a3
{
  v4 = a3;
  v5 = [MEMORY[0x1E695E000] standardUserDefaults];
  v6 = [a1 didReindexForMigrationUserDefaultKeyForIdentifier:v4];
  v7 = [v5 objectForKey:v6];
  v8 = [v7 BOOLValue];

  v9 = os_log_create("com.apple.notes", "SearchIndexer");
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
  {
    +[ICBaseSearchIndexerDataSource isAccountReindexedForMigration:];
  }

  return v8;
}

+ (void)markAccountReindexedForMigration:(id)a3
{
  v4 = a3;
  v5 = os_log_create("com.apple.notes", "SearchIndexer");
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    +[ICBaseSearchIndexerDataSource markAccountReindexedForMigration:];
  }

  v6 = [MEMORY[0x1E695E000] standardUserDefaults];
  v7 = [a1 didReindexForMigrationUserDefaultKeyForIdentifier:v4];
  [v6 setObject:MEMORY[0x1E695E118] forKey:v7];
}

- (void)searchableItemResultForObject:.cold.3()
{
  v0 = objc_opt_class();
  v1 = NSStringFromClass(v0);
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_5();
  _os_log_debug_impl(v2, v3, v4, v5, v6, 0x16u);
}

void __54__ICBaseSearchIndexerDataSource_startObservingChanges__block_invoke_cold_1()
{
  OUTLINED_FUNCTION_7(*MEMORY[0x1E69E9840]);
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_3(&dword_1D4576000, v0, v1, "We have object IDs to process after starting to observe changes %@", v2, v3, v4, v5, v6);
}

void __161__ICBaseSearchIndexerDataSource_decisionOnObjectID_searchableItemToIndex_additionalItemsToIndex_objectIDURIToDelete_additionalUniqueIdentifiersToDelete_context___block_invoke_cold_1(uint64_t a1, void *a2)
{
  v3 = [MEMORY[0x1E696AD98] numberWithBool:{objc_msgSend(a2, "isDeleted")}];
  v9 = [MEMORY[0x1E696AD98] numberWithBool:{objc_msgSend(a2, "isHiddenFromIndexing")}];
  OUTLINED_FUNCTION_5();
  _os_log_debug_impl(v4, v5, v6, v7, v8, 0x20u);
}

void __161__ICBaseSearchIndexerDataSource_decisionOnObjectID_searchableItemToIndex_additionalItemsToIndex_objectIDURIToDelete_additionalUniqueIdentifiersToDelete_context___block_invoke_cold_2()
{
  OUTLINED_FUNCTION_7(*MEMORY[0x1E69E9840]);
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_2_0(&dword_1D4576000, v0, v1, "Cannot fetch object for objectID when evaluating if we should delete the object %@. Error = %@");
}

void __161__ICBaseSearchIndexerDataSource_decisionOnObjectID_searchableItemToIndex_additionalItemsToIndex_objectIDURIToDelete_additionalUniqueIdentifiersToDelete_context___block_invoke_153_cold_1()
{
  v2 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_1_0();
  _os_log_fault_impl(&dword_1D4576000, v0, OS_LOG_TYPE_FAULT, "Unable to make decision about index object %@ due to uncaught exception %@.", v1, 0x16u);
}

void __63__ICBaseSearchIndexerDataSource_stageForReindexingWithContext___block_invoke_cold_2()
{
  OUTLINED_FUNCTION_7(*MEMORY[0x1E69E9840]);
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_2_0(&dword_1D4576000, v0, v1, "stageForReindexingWithContext: data source %@ retrieved objectIDsToProcess %@");
}

void __63__ICBaseSearchIndexerDataSource_stageForReindexingWithContext___block_invoke_cold_3()
{
  OUTLINED_FUNCTION_7(*MEMORY[0x1E69E9840]);
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_0(&dword_1D4576000, v0, v1, "%@ Error fetching allIndexableObjectIDsInReversedReindexingOrder", v2, v3, v4, v5, v6);
}

void __70__ICBaseSearchIndexerDataSource_stageObjectIDURIsForIndexing_context___block_invoke_cold_1()
{
  OUTLINED_FUNCTION_7(*MEMORY[0x1E69E9840]);
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_0(&dword_1D4576000, v0, v1, "%@ Error fetching through indexableObjectIDsWithURIs:", v2, v3, v4, v5, v6);
}

- (void)objectIDsFromSearchableItems:(void *)a3 .cold.1(uint8_t *a1, void *a2, void *a3, NSObject *a4)
{
  v7 = [a2 uniqueIdentifier];
  *a1 = 138412290;
  *a3 = v7;
  _os_log_debug_impl(&dword_1D4576000, a4, OS_LOG_TYPE_DEBUG, "No object ID for searchable item: %@", a1, 0xCu);
}

- (void)moveIndexingTrackingFromUserDefaultsToFileIfNecessary
{
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_9(&dword_1D4576000, v0, v1, "Failed to write state dictionary to file. %@ (error: %@)");
}

- (void)saveStateDictionary:(void *)a3 .cold.2(void *a1, uint64_t a2, void *a3, NSObject **a4)
{
  v11 = *MEMORY[0x1E69E9840];
  v6 = objc_begin_catch(a1);
  *a3 = v6;
  v7 = v6;
  v8 = os_log_create("com.apple.notes", "SearchIndexer");
  *a4 = v8;
  if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
  {
    v9 = 138412290;
    v10 = v7;
    _os_log_error_impl(&dword_1D4576000, v8, OS_LOG_TYPE_ERROR, "An exception is thrown when writing search indexer saved state dictionary to file: %@", &v9, 0xCu);
  }
}

@end