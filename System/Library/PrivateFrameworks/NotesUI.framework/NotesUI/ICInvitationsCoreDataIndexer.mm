@interface ICInvitationsCoreDataIndexer
+ (NSDate)defaultReceivedSince;
- (ICInvitationsCoreDataIndexer)initWithModernManagedObjectContext:(id)a3 sectionIdentifier:(id)a4;
- (NSFetchedResultsController)fetchedResultsController;
- (id)activeFetchedResultsControllers;
- (id)firstRelevantItemIdentifier;
- (id)indexObjectsInSection:(id)a3 sectionIndex:(unint64_t)a4 fetchedResultsController:(id)a5;
- (id)newSnapshotFromIndexWithLegacyManagedObjectContext:(id)a3 modernManagedObjectContext:(id)a4;
- (id)nextRelevantItemIdentifierAfter:(id)a3;
- (id)sectionIdentifiersForSectionType:(unint64_t)a3;
- (id)sectionSnapshotsForSectionType:(unint64_t)a3 legacyManagedObjectContext:(id)a4 modernManagedObjectContext:(id)a5;
- (unint64_t)totalInvitationsCount;
- (void)deleteObjectWithIDFromIndex:(id)a3 inSection:(id)a4;
- (void)setAccount:(id)a3;
- (void)setReceivedSince:(id)a3;
- (void)setSortType:(id)a3;
- (void)willIndex;
@end

@implementation ICInvitationsCoreDataIndexer

+ (NSDate)defaultReceivedSince
{
  v2 = [MEMORY[0x1E695DEE8] currentCalendar];
  v3 = [MEMORY[0x1E695DF00] now];
  v4 = [v2 dateByAddingUnit:16 value:-30 toDate:v3 options:0];

  return v4;
}

- (void)willIndex
{
  v3 = [(ICInvitationsCoreDataIndexer *)self indexAccessQueue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __41__ICInvitationsCoreDataIndexer_willIndex__block_invoke;
  block[3] = &unk_1E8468BA0;
  block[4] = self;
  dispatch_sync(v3, block);
}

void __41__ICInvitationsCoreDataIndexer_willIndex__block_invoke(uint64_t a1)
{
  v1 = [*(a1 + 32) invitationObjectIDs];
  [v1 removeAllObjects];
}

- (id)activeFetchedResultsControllers
{
  v3 = [MEMORY[0x1E695DFA8] set];
  v4 = [(ICInvitationsCoreDataIndexer *)self fetchedResultsController];
  [v3 ic_addNonNilObject:v4];

  v5 = [v3 copy];

  return v5;
}

- (NSFetchedResultsController)fetchedResultsController
{
  if (!self->_fetchedResultsController)
  {
    v3 = [(ICCoreDataIndexer *)self modernManagedObjectContext];

    if (v3)
    {
      v4 = [MEMORY[0x1E695D5E0] fetchRequestWithEntityName:*MEMORY[0x1E69B74B0]];
      [v4 setReturnsObjectsAsFaults:0];
      v5 = MEMORY[0x1E69B7A88];
      v6 = [(ICInvitationsCoreDataIndexer *)self sortType];
      v7 = [v5 sortDescriptorsForCurrentTypeIncludingPinnedNotes:0 folderNoteSortType:v6];
      [v4 setSortDescriptors:v7];

      v8 = MEMORY[0x1E69B7790];
      v9 = [(ICInvitationsCoreDataIndexer *)self account];
      v10 = [(ICInvitationsCoreDataIndexer *)self receivedSince];
      v11 = [v8 predicateForPendingInvitationsInAccount:v9 receivedSince:v10];
      [v4 setPredicate:v11];

      v12 = objc_alloc(MEMORY[0x1E695D600]);
      v13 = [(ICCoreDataIndexer *)self modernManagedObjectContext];
      v14 = [v12 initWithFetchRequest:v4 managedObjectContext:v13 sectionNameKeyPath:0 cacheName:0];
      fetchedResultsController = self->_fetchedResultsController;
      self->_fetchedResultsController = v14;
    }
  }

  v16 = self->_fetchedResultsController;

  return v16;
}

- (ICInvitationsCoreDataIndexer)initWithModernManagedObjectContext:(id)a3 sectionIdentifier:(id)a4
{
  v7 = a4;
  v20.receiver = self;
  v20.super_class = ICInvitationsCoreDataIndexer;
  v8 = [(ICCoreDataIndexer *)&v20 initWithLegacyManagedObjectContext:0 modernManagedObjectContext:a3];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_sectionIdentifier, a4);
    v10 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v11 = dispatch_queue_create("com.apple.notes.invitations-index-access-queue", v10);
    indexAccessQueue = v9->_indexAccessQueue;
    v9->_indexAccessQueue = v11;

    v13 = [MEMORY[0x1E695DFA0] orderedSet];
    invitationObjectIDs = v9->_invitationObjectIDs;
    v9->_invitationObjectIDs = v13;

    v15 = [MEMORY[0x1E69B7A68] noteSortTypeDefaultAscending];
    sortType = v9->_sortType;
    v9->_sortType = v15;

    v17 = [objc_opt_class() defaultReceivedSince];
    receivedSince = v9->_receivedSince;
    v9->_receivedSince = v17;
  }

  return v9;
}

- (void)setAccount:(id)a3
{
  objc_storeStrong(&self->_account, a3);
  v6 = a3;
  fetchedResultsController = self->_fetchedResultsController;
  self->_fetchedResultsController = 0;
}

- (void)setSortType:(id)a3
{
  objc_storeStrong(&self->_sortType, a3);
  v6 = a3;
  fetchedResultsController = self->_fetchedResultsController;
  self->_fetchedResultsController = 0;
}

- (void)setReceivedSince:(id)a3
{
  objc_storeStrong(&self->_receivedSince, a3);
  v6 = a3;
  fetchedResultsController = self->_fetchedResultsController;
  self->_fetchedResultsController = 0;
}

- (id)indexObjectsInSection:(id)a3 sectionIndex:(unint64_t)a4 fetchedResultsController:(id)a5
{
  v7 = a3;
  v8 = a5;
  v17 = 0;
  v18 = &v17;
  v19 = 0x3032000000;
  v20 = __Block_byref_object_copy__27;
  v21 = __Block_byref_object_dispose__27;
  v22 = [MEMORY[0x1E695DF70] array];
  v9 = [(ICInvitationsCoreDataIndexer *)self indexAccessQueue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __92__ICInvitationsCoreDataIndexer_indexObjectsInSection_sectionIndex_fetchedResultsController___block_invoke;
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

void __92__ICInvitationsCoreDataIndexer_indexObjectsInSection_sectionIndex_fetchedResultsController___block_invoke(uint64_t a1)
{
  v17 = *MEMORY[0x1E69E9840];
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v2 = [*(a1 + 32) objects];
  v3 = [v2 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v13;
    do
    {
      v6 = 0;
      do
      {
        if (*v13 != v5)
        {
          objc_enumerationMutation(v2);
        }

        v7 = *(*(&v12 + 1) + 8 * v6);
        v8 = [*(a1 + 40) invitationObjectIDs];
        v9 = [v7 objectID];
        [v8 addObject:v9];

        v10 = *(*(*(a1 + 48) + 8) + 40);
        v11 = [v7 objectID];
        [v10 addObject:v11];

        ++v6;
      }

      while (v4 != v6);
      v4 = [v2 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v4);
  }
}

- (id)newSnapshotFromIndexWithLegacyManagedObjectContext:(id)a3 modernManagedObjectContext:(id)a4
{
  v6 = a3;
  v7 = a4;
  v12 = 0;
  v13 = &v12;
  v14 = 0x3032000000;
  v15 = __Block_byref_object_copy__27;
  v16 = __Block_byref_object_dispose__27;
  v17 = objc_alloc_init(MEMORY[0x1E69955A0]);
  v8 = [(ICInvitationsCoreDataIndexer *)self indexAccessQueue];
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __110__ICInvitationsCoreDataIndexer_newSnapshotFromIndexWithLegacyManagedObjectContext_modernManagedObjectContext___block_invoke;
  v11[3] = &unk_1E846B1D8;
  v11[4] = self;
  v11[5] = &v12;
  dispatch_sync(v8, v11);

  v9 = v13[5];
  _Block_object_dispose(&v12, 8);

  return v9;
}

void __110__ICInvitationsCoreDataIndexer_newSnapshotFromIndexWithLegacyManagedObjectContext_modernManagedObjectContext___block_invoke(uint64_t a1)
{
  v11[1] = *MEMORY[0x1E69E9840];
  v2 = [*(a1 + 32) invitationObjectIDs];
  v3 = [v2 count];

  if (v3)
  {
    v4 = *(*(*(a1 + 40) + 8) + 40);
    v5 = [*(a1 + 32) sectionIdentifier];
    v11[0] = v5;
    v6 = [MEMORY[0x1E695DEC8] arrayWithObjects:v11 count:1];
    [v4 appendSectionsWithIdentifiers:v6];

    v7 = *(*(*(a1 + 40) + 8) + 40);
    v8 = [*(a1 + 32) invitationObjectIDs];
    v9 = [v8 array];
    v10 = [*(a1 + 32) sectionIdentifier];
    [v7 appendItemsWithIdentifiers:v9 intoSectionWithIdentifier:v10];
  }
}

- (id)sectionSnapshotsForSectionType:(unint64_t)a3 legacyManagedObjectContext:(id)a4 modernManagedObjectContext:(id)a5
{
  v8 = a4;
  v9 = a5;
  if (a3 == 5)
  {
    v14 = 0;
    v15 = &v14;
    v16 = 0x3032000000;
    v17 = __Block_byref_object_copy__27;
    v18 = __Block_byref_object_dispose__27;
    v19 = [MEMORY[0x1E695DF90] dictionary];
    v10 = [(ICInvitationsCoreDataIndexer *)self indexAccessQueue];
    v13[0] = MEMORY[0x1E69E9820];
    v13[1] = 3221225472;
    v13[2] = __117__ICInvitationsCoreDataIndexer_sectionSnapshotsForSectionType_legacyManagedObjectContext_modernManagedObjectContext___block_invoke;
    v13[3] = &unk_1E846B1D8;
    v13[4] = self;
    v13[5] = &v14;
    dispatch_sync(v10, v13);

    v11 = v15[5];
    _Block_object_dispose(&v14, 8);
  }

  else
  {
    v11 = MEMORY[0x1E695E0F8];
  }

  return v11;
}

void __117__ICInvitationsCoreDataIndexer_sectionSnapshotsForSectionType_legacyManagedObjectContext_modernManagedObjectContext___block_invoke(uint64_t a1)
{
  v22[1] = *MEMORY[0x1E69E9840];
  v2 = [*(a1 + 32) invitationObjectIDs];
  v3 = [v2 count];

  if (v3)
  {
    v4 = objc_alloc_init(MEMORY[0x1E69DC5D0]);
    v5 = [*(a1 + 32) shouldIncludeOutlineParentItems];
    v6 = *(a1 + 32);
    if (v5)
    {
      v7 = [v6 sectionIdentifier];
      v22[0] = v7;
      v8 = [MEMORY[0x1E695DEC8] arrayWithObjects:v22 count:1];
      [v4 appendItems:v8];

      v9 = [*(a1 + 32) invitationObjectIDs];
      v10 = [v9 array];
      v11 = [*(a1 + 32) sectionIdentifier];
      [v4 appendItems:v10 intoParentItem:v11];

      v12 = +[ICExpansionState sharedExpansionState];
      v13 = [*(a1 + 32) sectionIdentifier];
      v14 = [*(a1 + 32) expansionStateContext];
      v15 = [v12 isSectionIdentiferExpanded:v13 inContext:v14];

      if (![*(a1 + 32) shouldIncludeOutlineParentItems] || !v15)
      {
        goto LABEL_8;
      }

      v16 = [*(a1 + 32) sectionIdentifier];
      v21 = v16;
      v17 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v21 count:1];
      [v4 expandItems:v17];
    }

    else
    {
      v16 = [v6 invitationObjectIDs];
      v17 = [v16 array];
      [v4 appendItems:v17];
    }

LABEL_8:
    v18 = *(a1 + 32);
    v19 = *(*(*(a1 + 40) + 8) + 40);
    v20 = [v18 sectionIdentifier];
    [v19 setObject:v4 forKeyedSubscript:v20];
  }
}

- (id)sectionIdentifiersForSectionType:(unint64_t)a3
{
  v6[1] = *MEMORY[0x1E69E9840];
  if (a3 == 5)
  {
    v3 = [(ICInvitationsCoreDataIndexer *)self sectionIdentifier];
    v6[0] = v3;
    v4 = [MEMORY[0x1E695DEC8] arrayWithObjects:v6 count:1];
  }

  else
  {
    v4 = MEMORY[0x1E695E0F0];
  }

  return v4;
}

- (unint64_t)totalInvitationsCount
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x2020000000;
  v10 = 0;
  v3 = [(ICInvitationsCoreDataIndexer *)self indexAccessQueue];
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __53__ICInvitationsCoreDataIndexer_totalInvitationsCount__block_invoke;
  v6[3] = &unk_1E8468FA8;
  v6[4] = self;
  v6[5] = &v7;
  dispatch_sync(v3, v6);

  v4 = v8[3];
  _Block_object_dispose(&v7, 8);
  return v4;
}

void __53__ICInvitationsCoreDataIndexer_totalInvitationsCount__block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) invitationObjectIDs];
  *(*(*(a1 + 40) + 8) + 24) = [v2 count];
}

- (id)firstRelevantItemIdentifier
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x3032000000;
  v10 = __Block_byref_object_copy__27;
  v11 = __Block_byref_object_dispose__27;
  v12 = 0;
  v3 = [(ICInvitationsCoreDataIndexer *)self indexAccessQueue];
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __59__ICInvitationsCoreDataIndexer_firstRelevantItemIdentifier__block_invoke;
  v6[3] = &unk_1E8468FA8;
  v6[4] = self;
  v6[5] = &v7;
  dispatch_sync(v3, v6);

  v4 = v8[5];
  _Block_object_dispose(&v7, 8);

  return v4;
}

void __59__ICInvitationsCoreDataIndexer_firstRelevantItemIdentifier__block_invoke(uint64_t a1)
{
  v5 = [*(a1 + 32) invitationObjectIDs];
  v2 = [v5 firstObject];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;
}

- (id)nextRelevantItemIdentifierAfter:(id)a3
{
  v4 = a3;
  v13 = 0;
  v14 = &v13;
  v15 = 0x3032000000;
  v16 = __Block_byref_object_copy__27;
  v17 = __Block_byref_object_dispose__27;
  v18 = 0;
  v5 = [(ICInvitationsCoreDataIndexer *)self indexAccessQueue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __64__ICInvitationsCoreDataIndexer_nextRelevantItemIdentifierAfter___block_invoke;
  block[3] = &unk_1E8469AE0;
  v11 = self;
  v12 = &v13;
  v10 = v4;
  v6 = v4;
  dispatch_sync(v5, block);

  v7 = v14[5];
  _Block_object_dispose(&v13, 8);

  return v7;
}

void __64__ICInvitationsCoreDataIndexer_nextRelevantItemIdentifierAfter___block_invoke(uint64_t a1)
{
  objc_opt_class();
  v2 = [*(a1 + 32) lastObject];
  v5 = ICDynamicCast();

  v3 = [*(a1 + 40) invitationObjectIDs];
  if (v5)
  {
    v2 = [v3 array];
    [v2 ic_objectAfter:v5];
  }

  else
  {
    [v3 firstObject];
  }
  v4 = ;
  objc_storeStrong((*(*(a1 + 48) + 8) + 40), v4);
  if (v5)
  {

    v4 = v2;
  }
}

- (void)deleteObjectWithIDFromIndex:(id)a3 inSection:(id)a4
{
  v5 = a3;
  v6 = [(ICInvitationsCoreDataIndexer *)self indexAccessQueue];
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __70__ICInvitationsCoreDataIndexer_deleteObjectWithIDFromIndex_inSection___block_invoke;
  v8[3] = &unk_1E8468F80;
  v8[4] = self;
  v9 = v5;
  v7 = v5;
  dispatch_sync(v6, v8);
}

void __70__ICInvitationsCoreDataIndexer_deleteObjectWithIDFromIndex_inSection___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) invitationObjectIDs];
  [v2 removeObject:*(a1 + 40)];
}

@end