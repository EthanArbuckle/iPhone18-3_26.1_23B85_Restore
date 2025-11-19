@interface ICRecentNotesCoreDataIndexer
- (ICRecentNotesCoreDataIndexer)initWithLegacyManagedObjectContext:(id)a3 modernManagedObjectContext:(id)a4;
- (NSArray)sortedSectionIdentifiers;
- (NSFetchedResultsController)legacyNoteFetchedResultsController;
- (NSFetchedResultsController)modernNoteFetchedResultsController;
- (NSMutableDictionary)sectionIdentifiersToManagedObjectIDs;
- (OS_dispatch_queue)indexAccessQueue;
- (id)activeFetchedResultsControllers;
- (id)firstRelevantItemIdentifier;
- (id)indexObjectsInSection:(id)a3 sectionIndex:(unint64_t)a4 fetchedResultsController:(id)a5;
- (id)newSnapshotFromIndexWithLegacyManagedObjectContext:(id)a3 modernManagedObjectContext:(id)a4;
- (id)nextRelevantItemIdentifierAfter:(id)a3;
- (id)sectionIdentifierForHeaderInSection:(int64_t)a3;
- (id)sectionIdentifiersForSectionType:(unint64_t)a3;
- (id)sectionSnapshotsForSectionType:(unint64_t)a3 legacyManagedObjectContext:(id)a4 modernManagedObjectContext:(id)a5;
- (void)setChecklistsOnly:(BOOL)a3;
- (void)setMaximumNumberOfNotesPerAccount:(unint64_t)a3;
- (void)setNonPasswordProtectedOnly:(BOOL)a3;
- (void)setPasswordProtectedOnly:(BOOL)a3;
- (void)setPinnedOnly:(BOOL)a3;
- (void)setShouldIncludeOutlineParentItems:(BOOL)a3;
- (void)setSortType:(int64_t)a3;
- (void)willIndex;
@end

@implementation ICRecentNotesCoreDataIndexer

- (ICRecentNotesCoreDataIndexer)initWithLegacyManagedObjectContext:(id)a3 modernManagedObjectContext:(id)a4
{
  v6.receiver = self;
  v6.super_class = ICRecentNotesCoreDataIndexer;
  v4 = [(ICCoreDataIndexer *)&v6 initWithLegacyManagedObjectContext:a3 modernManagedObjectContext:a4];
  if (v4)
  {
    -[ICRecentNotesCoreDataIndexer setSortType:](v4, "setSortType:", [MEMORY[0x1E69B7A88] currentNoteListSortType]);
  }

  return v4;
}

- (void)setShouldIncludeOutlineParentItems:(BOOL)a3
{
  v3 = a3;
  v5 = os_log_create("com.apple.notes", "UI");
  if (os_log_type_enabled(v5, OS_LOG_TYPE_FAULT))
  {
    [ICRecentNotesCoreDataIndexer setShouldIncludeOutlineParentItems:v5];
  }

  v6.receiver = self;
  v6.super_class = ICRecentNotesCoreDataIndexer;
  [(ICCoreDataIndexer *)&v6 setShouldIncludeOutlineParentItems:v3];
}

- (void)setMaximumNumberOfNotesPerAccount:(unint64_t)a3
{
  self->_maximumNumberOfNotesPerAccount = a3;
  v5 = [(ICRecentNotesCoreDataIndexer *)self legacyNoteFetchedResultsController];
  v6 = [v5 fetchRequest];
  [v6 setFetchBatchSize:a3];

  v8 = [(ICRecentNotesCoreDataIndexer *)self modernNoteFetchedResultsController];
  v7 = [v8 fetchRequest];
  [v7 setFetchBatchSize:a3];
}

- (void)setChecklistsOnly:(BOOL)a3
{
  if (self->_checklistsOnly != a3)
  {
    self->_checklistsOnly = a3;
    legacyNoteFetchedResultsController = self->_legacyNoteFetchedResultsController;
    self->_legacyNoteFetchedResultsController = 0;

    modernNoteFetchedResultsController = self->_modernNoteFetchedResultsController;
    self->_modernNoteFetchedResultsController = 0;
  }
}

- (void)setPinnedOnly:(BOOL)a3
{
  if (self->_pinnedOnly != a3)
  {
    self->_pinnedOnly = a3;
    legacyNoteFetchedResultsController = self->_legacyNoteFetchedResultsController;
    self->_legacyNoteFetchedResultsController = 0;

    modernNoteFetchedResultsController = self->_modernNoteFetchedResultsController;
    self->_modernNoteFetchedResultsController = 0;
  }
}

- (void)setPasswordProtectedOnly:(BOOL)a3
{
  if (self->_passwordProtectedOnly != a3)
  {
    self->_passwordProtectedOnly = a3;
    legacyNoteFetchedResultsController = self->_legacyNoteFetchedResultsController;
    self->_legacyNoteFetchedResultsController = 0;

    modernNoteFetchedResultsController = self->_modernNoteFetchedResultsController;
    self->_modernNoteFetchedResultsController = 0;
  }
}

- (void)setNonPasswordProtectedOnly:(BOOL)a3
{
  if (self->_nonPasswordProtectedOnly != a3)
  {
    self->_nonPasswordProtectedOnly = a3;
    legacyNoteFetchedResultsController = self->_legacyNoteFetchedResultsController;
    self->_legacyNoteFetchedResultsController = 0;

    modernNoteFetchedResultsController = self->_modernNoteFetchedResultsController;
    self->_modernNoteFetchedResultsController = 0;
  }
}

- (void)setSortType:(int64_t)a3
{
  self->_sortType = a3;
  v4 = [MEMORY[0x1E69B7A88] legacySortDescriptorsForType:{-[ICRecentNotesCoreDataIndexer sortType](self, "sortType")}];
  v5 = [(ICRecentNotesCoreDataIndexer *)self legacyNoteFetchedResultsController];
  v6 = [v5 fetchRequest];
  [v6 setSortDescriptors:v4];

  v9 = [MEMORY[0x1E69B7A88] sortDescriptorsForType:{-[ICRecentNotesCoreDataIndexer sortType](self, "sortType")}];
  v7 = [(ICRecentNotesCoreDataIndexer *)self modernNoteFetchedResultsController];
  v8 = [v7 fetchRequest];
  [v8 setSortDescriptors:v9];
}

- (OS_dispatch_queue)indexAccessQueue
{
  indexAccessQueue = self->_indexAccessQueue;
  if (!indexAccessQueue)
  {
    v4 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v5 = dispatch_queue_create("com.apple.notes.recent-notes-index-access-queue", v4);
    v6 = self->_indexAccessQueue;
    self->_indexAccessQueue = v5;

    indexAccessQueue = self->_indexAccessQueue;
  }

  return indexAccessQueue;
}

- (NSFetchedResultsController)legacyNoteFetchedResultsController
{
  if (!self->_legacyNoteFetchedResultsController && ![(ICRecentNotesCoreDataIndexer *)self pinnedOnly]&& ![(ICRecentNotesCoreDataIndexer *)self checklistsOnly])
  {
    v3 = MEMORY[0x1E695D5E0];
    v4 = ICLegacyEntityNameNote();
    v5 = [v3 fetchRequestWithEntityName:v4];

    v6 = [MEMORY[0x1E69B7A88] legacySortDescriptorsForType:{-[ICRecentNotesCoreDataIndexer sortType](self, "sortType")}];
    [v5 setSortDescriptors:v6];

    v7 = [MEMORY[0x1E69B7140] visibleNotesPredicate];
    [v5 setPredicate:v7];

    v8 = objc_alloc(MEMORY[0x1E695D600]);
    v9 = [(ICCoreDataIndexer *)self legacyManagedObjectContext];
    v10 = [v8 initWithFetchRequest:v5 managedObjectContext:v9 sectionNameKeyPath:0 cacheName:0];
    legacyNoteFetchedResultsController = self->_legacyNoteFetchedResultsController;
    self->_legacyNoteFetchedResultsController = v10;
  }

  v12 = self->_legacyNoteFetchedResultsController;

  return v12;
}

- (NSFetchedResultsController)modernNoteFetchedResultsController
{
  v39[2] = *MEMORY[0x1E69E9840];
  modernNoteFetchedResultsController = self->_modernNoteFetchedResultsController;
  if (!modernNoteFetchedResultsController)
  {
    v4 = MEMORY[0x1E696AB28];
    v5 = MEMORY[0x1E69B77F0];
    v6 = [(ICCoreDataIndexer *)self modernManagedObjectContext];
    v7 = [v5 predicateForVisibleNotesInContext:v6];
    v39[0] = v7;
    v8 = [MEMORY[0x1E69B77F0] predicateForSystemPaperNotesNotInTrash];
    v39[1] = v8;
    v9 = [MEMORY[0x1E695DEC8] arrayWithObjects:v39 count:2];
    v10 = [v4 orPredicateWithSubpredicates:v9];

    if ([(ICRecentNotesCoreDataIndexer *)self checklistsOnly])
    {
      v11 = MEMORY[0x1E696AB28];
      v38[0] = v10;
      v12 = [MEMORY[0x1E69B77F0] predicateForNotesWithChecklists];
      v38[1] = v12;
      v13 = [MEMORY[0x1E695DEC8] arrayWithObjects:v38 count:2];
      v14 = [v11 andPredicateWithSubpredicates:v13];

      v10 = v14;
    }

    if ([(ICRecentNotesCoreDataIndexer *)self pinnedOnly])
    {
      v15 = MEMORY[0x1E696AB28];
      v37[0] = v10;
      v16 = [MEMORY[0x1E69B77F0] predicateForPinnedNotes];
      v37[1] = v16;
      v17 = [MEMORY[0x1E695DEC8] arrayWithObjects:v37 count:2];
      v18 = [v15 andPredicateWithSubpredicates:v17];

      v10 = v18;
    }

    if ([(ICRecentNotesCoreDataIndexer *)self passwordProtectedOnly])
    {
      v19 = MEMORY[0x1E696AB28];
      v36[0] = v10;
      v20 = [MEMORY[0x1E69B7700] predicateForPasswordProtectedObjects];
      v36[1] = v20;
      v21 = [MEMORY[0x1E695DEC8] arrayWithObjects:v36 count:2];
      v22 = [v19 andPredicateWithSubpredicates:v21];

      v10 = v22;
    }

    if ([(ICRecentNotesCoreDataIndexer *)self nonPasswordProtectedOnly])
    {
      v23 = MEMORY[0x1E696AB28];
      v35[0] = v10;
      v24 = [MEMORY[0x1E69B7700] predicateForPasswordProtectedObjects];
      v25 = [v23 notPredicateWithSubpredicate:v24];
      v35[1] = v25;
      v26 = [MEMORY[0x1E695DEC8] arrayWithObjects:v35 count:2];
      v27 = [v23 andPredicateWithSubpredicates:v26];

      v10 = v27;
    }

    v28 = [MEMORY[0x1E695D5E0] fetchRequestWithEntityName:*MEMORY[0x1E69B74F0]];
    v29 = [MEMORY[0x1E69B7A88] sortDescriptorsForType:{-[ICRecentNotesCoreDataIndexer sortType](self, "sortType")}];
    [v28 setSortDescriptors:v29];

    [v28 setPredicate:v10];
    v30 = objc_alloc(MEMORY[0x1E695D600]);
    v31 = [(ICCoreDataIndexer *)self modernManagedObjectContext];
    v32 = [v30 initWithFetchRequest:v28 managedObjectContext:v31 sectionNameKeyPath:0 cacheName:0];
    v33 = self->_modernNoteFetchedResultsController;
    self->_modernNoteFetchedResultsController = v32;

    modernNoteFetchedResultsController = self->_modernNoteFetchedResultsController;
  }

  return modernNoteFetchedResultsController;
}

- (NSMutableDictionary)sectionIdentifiersToManagedObjectIDs
{
  sectionIdentifiersToManagedObjectIDs = self->_sectionIdentifiersToManagedObjectIDs;
  if (!sectionIdentifiersToManagedObjectIDs)
  {
    v4 = [MEMORY[0x1E695DF90] dictionary];
    v5 = self->_sectionIdentifiersToManagedObjectIDs;
    self->_sectionIdentifiersToManagedObjectIDs = v4;

    sectionIdentifiersToManagedObjectIDs = self->_sectionIdentifiersToManagedObjectIDs;
  }

  return sectionIdentifiersToManagedObjectIDs;
}

- (id)activeFetchedResultsControllers
{
  v3 = [MEMORY[0x1E695DFA8] set];
  v4 = [(ICRecentNotesCoreDataIndexer *)self legacyNoteFetchedResultsController];

  if (v4)
  {
    v5 = [(ICRecentNotesCoreDataIndexer *)self legacyNoteFetchedResultsController];
    [v3 addObject:v5];
  }

  v6 = [(ICRecentNotesCoreDataIndexer *)self modernNoteFetchedResultsController];

  if (v6)
  {
    v7 = [(ICRecentNotesCoreDataIndexer *)self modernNoteFetchedResultsController];
    [v3 addObject:v7];
  }

  v8 = [v3 copy];

  return v8;
}

- (void)willIndex
{
  v3 = [(ICRecentNotesCoreDataIndexer *)self indexAccessQueue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __41__ICRecentNotesCoreDataIndexer_willIndex__block_invoke;
  block[3] = &unk_1E8468BA0;
  block[4] = self;
  dispatch_sync(v3, block);
}

void __41__ICRecentNotesCoreDataIndexer_willIndex__block_invoke(uint64_t a1)
{
  v1 = [*(a1 + 32) sectionIdentifiersToManagedObjectIDs];
  [v1 removeAllObjects];
}

- (id)indexObjectsInSection:(id)a3 sectionIndex:(unint64_t)a4 fetchedResultsController:(id)a5
{
  v7 = a3;
  v8 = a5;
  v17 = 0;
  v18 = &v17;
  v19 = 0x3032000000;
  v20 = __Block_byref_object_copy__62;
  v21 = __Block_byref_object_dispose__62;
  v22 = [MEMORY[0x1E695DF70] array];
  v9 = [(ICRecentNotesCoreDataIndexer *)self indexAccessQueue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __92__ICRecentNotesCoreDataIndexer_indexObjectsInSection_sectionIndex_fetchedResultsController___block_invoke;
  block[3] = &unk_1E8469190;
  v10 = v7;
  v14 = v10;
  v15 = self;
  v16 = &v17;
  dispatch_sync(v9, block);

  v11 = [v18[5] copy];
  _Block_object_dispose(&v17, 8);

  return v11;
}

void __92__ICRecentNotesCoreDataIndexer_indexObjectsInSection_sectionIndex_fetchedResultsController___block_invoke(uint64_t a1)
{
  v39 = *MEMORY[0x1E69E9840];
  v32 = 0u;
  v33 = 0u;
  v34 = 0u;
  v35 = 0u;
  obj = [*(a1 + 32) objects];
  v2 = [obj countByEnumeratingWithState:&v32 objects:v38 count:16];
  if (v2)
  {
    v4 = v2;
    v31 = *v33;
    *&v3 = 138412290;
    v29 = v3;
    do
    {
      v5 = 0;
      do
      {
        if (*v33 != v31)
        {
          objc_enumerationMutation(obj);
        }

        v6 = *(*(&v32 + 1) + 8 * v5);
        v7 = objc_autoreleasePoolPush();
        objc_opt_class();
        v8 = ICDynamicCast();
        v9 = [v8 isSystemPaper];
        v10 = [ICFolderListSectionIdentifier alloc];
        if (v9)
        {
          v11 = [(ICFolderListSectionIdentifier *)v10 initWithSectionType:1];
        }

        else
        {
          v11 = [(ICFolderListSectionIdentifier *)v10 initWithObject:v6];
        }

        v12 = v11;

        if (!v12)
        {
          v28 = os_log_create("com.apple.notes", "UI");
          if (os_log_type_enabled(v28, OS_LOG_TYPE_DEBUG))
          {
            *buf = v29;
            v37 = v6;
            _os_log_debug_impl(&dword_1D4171000, v28, OS_LOG_TYPE_DEBUG, "Cannot create folder list section identifier from object %@", buf, 0xCu);
          }

          goto LABEL_18;
        }

        v13 = [*(a1 + 40) sectionIdentifiersToManagedObjectIDs];
        v14 = [v13 objectForKeyedSubscript:v12];

        if (!v14)
        {
          v15 = [MEMORY[0x1E695DFA0] orderedSet];
          v16 = [*(a1 + 40) sectionIdentifiersToManagedObjectIDs];
          [v16 setObject:v15 forKeyedSubscript:v12];
        }

        v17 = [*(a1 + 40) sectionIdentifiersToManagedObjectIDs];
        v18 = [v17 objectForKeyedSubscript:v12];
        v19 = [v18 count];
        v20 = [*(a1 + 40) maximumNumberOfNotesPerAccount];

        if (v19 < v20)
        {
          v21 = [*(a1 + 40) sectionIdentifiersToManagedObjectIDs];
          v22 = [v21 objectForKeyedSubscript:v12];
          v23 = [v6 objectID];
          [v22 addObject:v23];

          v24 = *(*(*(a1 + 48) + 8) + 40);
          v25 = [v6 objectID];
          [v24 addObject:v25];

          if (([v6 hasChanges] & 1) == 0)
          {
            v26 = [v6 managedObjectContext];
            v27 = [v26 ic_isMainThreadContext];

            if ((v27 & 1) == 0)
            {
              v28 = [v6 managedObjectContext];
              [v28 refreshObject:v6 mergeChanges:0];
LABEL_18:
            }
          }
        }

        objc_autoreleasePoolPop(v7);
        ++v5;
      }

      while (v4 != v5);
      v4 = [obj countByEnumeratingWithState:&v32 objects:v38 count:16];
    }

    while (v4);
  }
}

- (id)newSnapshotFromIndexWithLegacyManagedObjectContext:(id)a3 modernManagedObjectContext:(id)a4
{
  v5 = objc_alloc_init(MEMORY[0x1E69955A0]);
  v6 = [(ICRecentNotesCoreDataIndexer *)self indexAccessQueue];
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __110__ICRecentNotesCoreDataIndexer_newSnapshotFromIndexWithLegacyManagedObjectContext_modernManagedObjectContext___block_invoke;
  v10[3] = &unk_1E8468F80;
  v7 = v5;
  v11 = v7;
  v12 = self;
  dispatch_sync(v6, v10);

  v8 = v7;
  return v8;
}

void __110__ICRecentNotesCoreDataIndexer_newSnapshotFromIndexWithLegacyManagedObjectContext_modernManagedObjectContext___block_invoke(uint64_t a1)
{
  v20 = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 32);
  v3 = [*(a1 + 40) sortedSectionIdentifiers];
  [v2 appendSectionsWithIdentifiers:v3];

  v17 = 0u;
  v18 = 0u;
  v15 = 0u;
  v16 = 0u;
  v4 = [*(a1 + 40) sectionIdentifiersToManagedObjectIDs];
  v5 = [v4 allKeys];

  v6 = [v5 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v16;
    do
    {
      v9 = 0;
      do
      {
        if (*v16 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v15 + 1) + 8 * v9);
        v11 = [*(a1 + 40) sectionIdentifiersToManagedObjectIDs];
        v12 = [v11 objectForKeyedSubscript:v10];

        v13 = *(a1 + 32);
        v14 = [v12 array];
        [v13 appendItemsWithIdentifiers:v14 intoSectionWithIdentifier:v10];

        ++v9;
      }

      while (v7 != v9);
      v7 = [v5 countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v7);
  }
}

- (id)sectionSnapshotsForSectionType:(unint64_t)a3 legacyManagedObjectContext:(id)a4 modernManagedObjectContext:(id)a5
{
  v6 = [MEMORY[0x1E695DF90] dictionary];
  v7 = [(ICRecentNotesCoreDataIndexer *)self indexAccessQueue];
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __117__ICRecentNotesCoreDataIndexer_sectionSnapshotsForSectionType_legacyManagedObjectContext_modernManagedObjectContext___block_invoke;
  v12[3] = &unk_1E8468F80;
  v12[4] = self;
  v8 = v6;
  v13 = v8;
  dispatch_sync(v7, v12);

  v9 = v13;
  v10 = v8;

  return v8;
}

void __117__ICRecentNotesCoreDataIndexer_sectionSnapshotsForSectionType_legacyManagedObjectContext_modernManagedObjectContext___block_invoke(uint64_t a1)
{
  v19 = *MEMORY[0x1E69E9840];
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v2 = [*(a1 + 32) sectionIdentifiersToManagedObjectIDs];
  v3 = [v2 allKeys];

  v4 = [v3 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v15;
    do
    {
      v7 = 0;
      do
      {
        if (*v15 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = *(*(&v14 + 1) + 8 * v7);
        v9 = objc_alloc_init(MEMORY[0x1E69DC5D0]);
        [*(a1 + 40) setObject:v9 forKeyedSubscript:v8];

        v10 = [*(a1 + 40) objectForKeyedSubscript:v8];
        v11 = [*(a1 + 32) sectionIdentifiersToManagedObjectIDs];
        v12 = [v11 objectForKeyedSubscript:v8];
        v13 = [v12 array];
        [v10 appendItems:v13];

        ++v7;
      }

      while (v5 != v7);
      v5 = [v3 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v5);
  }
}

- (NSArray)sortedSectionIdentifiers
{
  v2 = [(ICRecentNotesCoreDataIndexer *)self sectionIdentifiersToManagedObjectIDs];
  v3 = [v2 allKeys];
  v4 = +[ICFolderListSectionIdentifier sortDescriptors];
  v5 = [v3 sortedArrayUsingDescriptors:v4];

  return v5;
}

- (id)sectionIdentifierForHeaderInSection:(int64_t)a3
{
  if (a3 < 0 || (-[ICRecentNotesCoreDataIndexer sectionIdentifiersToManagedObjectIDs](self, "sectionIdentifiersToManagedObjectIDs"), v5 = objc_claimAutoreleasedReturnValue(), v6 = [v5 count], v5, v6 <= a3))
  {
    v8 = [(ICRecentNotesCoreDataIndexer *)self sectionIdentifiersToManagedObjectIDs];
    v9 = [v8 allKeys];
    v7 = [v9 objectAtIndexedSubscript:a3];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (id)sectionIdentifiersForSectionType:(unint64_t)a3
{
  v3 = [(ICRecentNotesCoreDataIndexer *)self sectionIdentifiersToManagedObjectIDs];
  v4 = [v3 allKeys];

  return v4;
}

- (id)firstRelevantItemIdentifier
{
  v3 = [(ICRecentNotesCoreDataIndexer *)self sectionIdentifiersToManagedObjectIDs];
  v4 = [(ICRecentNotesCoreDataIndexer *)self sortedSectionIdentifiers];
  v5 = [v4 firstObject];
  v6 = [v3 objectForKeyedSubscript:v5];
  v7 = [v6 firstObject];

  return v7;
}

- (id)nextRelevantItemIdentifierAfter:(id)a3
{
  v3 = os_log_create("com.apple.notes", "UI");
  if (os_log_type_enabled(v3, OS_LOG_TYPE_FAULT))
  {
    [ICRecentNotesCoreDataIndexer nextRelevantItemIdentifierAfter:v3];
  }

  return 0;
}

@end