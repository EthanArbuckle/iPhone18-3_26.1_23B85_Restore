@interface ICCoreDataDataSource
- (BOOL)needsReindexWithCollectionDifference:(id)a3 controller:(id)a4 identifiersToReload:(id)a5;
- (ICCoreDataDataSource)initWithCollectionView:(id)a3 cellProvider:(id)a4 indexer:(id)a5;
- (id)firstRelevantItemIdentifier;
- (id)nextRelevantItemIdentifierAfter:(id)a3;
- (void)applySnapshotAnimated:(BOOL)a3 dataRenderedBlock:(id)a4;
- (void)indexer:(id)a3 didChangeContentWithDifference:(id)a4 controller:(id)a5;
- (void)managedObjectContextUpdaterDidMerge:(id)a3;
- (void)noteLockManagerDidToggleLock:(id)a3;
- (void)performBlockSuspendingUpdates:(id)a3 andApplySnapshotAnimated:(BOOL)a4;
- (void)reindexDataAnimated:(BOOL)a3 dataIndexedBlock:(id)a4 dataRenderedBlock:(id)a5;
- (void)reloadDataAnimated:(BOOL)a3 dataIndexedBlock:(id)a4 dataRenderedBlock:(id)a5;
- (void)setAutoExpandMode:(unint64_t)a3;
- (void)setExpanded:(BOOL)a3 itemIdentifiers:(id)a4 completion:(id)a5;
@end

@implementation ICCoreDataDataSource

- (ICCoreDataDataSource)initWithCollectionView:(id)a3 cellProvider:(id)a4 indexer:(id)a5
{
  v9 = a5;
  v28.receiver = self;
  v28.super_class = ICCoreDataDataSource;
  v10 = [(ICDataSource *)&v28 initWithCollectionView:a3 cellProvider:a4];
  v11 = v10;
  if (v10)
  {
    objc_storeStrong(&v10->_indexer, a5);
    [(ICCoreDataIndexer *)v11->_indexer setDelegate:v11];
    v12 = [v9 legacyManagedObjectContext];
    applySnapshotLegacyManagedObjectContext = v11->_applySnapshotLegacyManagedObjectContext;
    v11->_applySnapshotLegacyManagedObjectContext = v12;

    v14 = [v9 modernManagedObjectContext];
    applySnapshotModernManagedObjectContext = v11->_applySnapshotModernManagedObjectContext;
    v11->_applySnapshotModernManagedObjectContext = v14;

    v16 = [objc_alloc(MEMORY[0x1E69B7AB0]) initWithTarget:v11 selector:sel_reindexAndApplySnapshot delay:1 waitToFireUntilRequestsStop:0 callOnMainThread:0.1];
    reindexDelayer = v11->_reindexDelayer;
    v11->_reindexDelayer = v16;

    v18 = [MEMORY[0x1E695DF00] distantPast];
    lastReindexParentModificationDate = v11->_lastReindexParentModificationDate;
    v11->_lastReindexParentModificationDate = v18;

    v20 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v21 = dispatch_queue_attr_make_with_qos_class(v20, QOS_CLASS_USER_INITIATED, 0);

    v22 = dispatch_queue_create("com.apple.notes.expansion-state-completion-queue", v21);
    expansionStateCompletionQueue = v11->_expansionStateCompletionQueue;
    v11->_expansionStateCompletionQueue = v22;

    v24 = dispatch_queue_create("com.apple.notes.apply-snapshot-completion-queue", v21);
    applySnapshotCompletionQueue = v11->_applySnapshotCompletionQueue;
    v11->_applySnapshotCompletionQueue = v24;

    v26 = [MEMORY[0x1E696AD88] defaultCenter];
    [v26 addObserver:v11 selector:sel_managedObjectContextUpdaterDidMerge_ name:*MEMORY[0x1E69B7A08] object:0];
  }

  return v11;
}

- (void)reloadDataAnimated:(BOOL)a3 dataIndexedBlock:(id)a4 dataRenderedBlock:(id)a5
{
  v8 = a4;
  v9 = a5;
  v10 = [(ICCoreDataDataSource *)self indexer];
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __78__ICCoreDataDataSource_reloadDataAnimated_dataIndexedBlock_dataRenderedBlock___block_invoke;
  v13[3] = &unk_1E846A238;
  v13[4] = self;
  v14 = v8;
  v16 = a3;
  v15 = v9;
  v11 = v9;
  v12 = v8;
  [v10 reloadData:v13];
}

void __78__ICCoreDataDataSource_reloadDataAnimated_dataIndexedBlock_dataRenderedBlock___block_invoke(uint64_t a1)
{
  v3 = *(a1 + 40);
  performBlockOnMainThread();
  v2 = *(a1 + 48);
  performBlockOnMainThreadAndWait();
}

void __78__ICCoreDataDataSource_reloadDataAnimated_dataIndexedBlock_dataRenderedBlock___block_invoke_2(uint64_t a1)
{
  v1 = *(a1 + 40);
  if (v1)
  {
    v2 = [*(a1 + 32) indexer];
    (*(v1 + 16))(v1, v2);
  }
}

- (void)reindexDataAnimated:(BOOL)a3 dataIndexedBlock:(id)a4 dataRenderedBlock:(id)a5
{
  v8 = a4;
  v9 = a5;
  if ([(ICCoreDataDataSource *)self suspendsUpdates])
  {
    v10 = os_log_create("com.apple.notes", "UI");
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
    {
      [ICCoreDataDataSource reindexDataAnimated:v10 dataIndexedBlock:? dataRenderedBlock:?];
    }
  }

  else
  {
    objc_initWeak(&location, self);
    v11 = [(ICCoreDataDataSource *)self indexer];
    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 3221225472;
    v12[2] = __79__ICCoreDataDataSource_reindexDataAnimated_dataIndexedBlock_dataRenderedBlock___block_invoke;
    v12[3] = &unk_1E846A260;
    v13 = v8;
    objc_copyWeak(&v15, &location);
    v16 = a3;
    v14 = v9;
    [v11 indexObjectsWithCompletion:v12];

    objc_destroyWeak(&v15);
    objc_destroyWeak(&location);
  }
}

void __79__ICCoreDataDataSource_reindexDataAnimated_dataIndexedBlock_dataRenderedBlock___block_invoke(uint64_t a1)
{
  v2[0] = MEMORY[0x1E69E9820];
  v2[1] = 3221225472;
  v2[2] = __79__ICCoreDataDataSource_reindexDataAnimated_dataIndexedBlock_dataRenderedBlock___block_invoke_2;
  v2[3] = &unk_1E846A260;
  v3 = *(a1 + 32);
  objc_copyWeak(&v5, (a1 + 48));
  v6 = *(a1 + 56);
  v4 = *(a1 + 40);
  dispatch_sync(MEMORY[0x1E69E96A0], v2);

  objc_destroyWeak(&v5);
}

void __79__ICCoreDataDataSource_reindexDataAnimated_dataIndexedBlock_dataRenderedBlock___block_invoke_2(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (v2)
  {
    WeakRetained = objc_loadWeakRetained((a1 + 48));
    v4 = [WeakRetained indexer];
    (*(v2 + 16))(v2, v4);
  }

  v5 = objc_loadWeakRetained((a1 + 48));
  [v5 applySnapshotAnimated:*(a1 + 56) dataRenderedBlock:*(a1 + 40)];
}

- (id)firstRelevantItemIdentifier
{
  v2 = [(ICCoreDataDataSource *)self indexer];
  v3 = [v2 firstRelevantItemIdentifier];

  return v3;
}

- (id)nextRelevantItemIdentifierAfter:(id)a3
{
  v4 = a3;
  v5 = [(ICCoreDataDataSource *)self indexer];
  v6 = [v5 nextRelevantItemIdentifierAfter:v4];

  return v6;
}

- (void)performBlockSuspendingUpdates:(id)a3 andApplySnapshotAnimated:(BOOL)a4
{
  v5 = a3;
  [(ICCoreDataDataSource *)self setSuspendsUpdates:1];
  v5[2](v5);

  v6 = [(ICCoreDataDataSource *)self reindexDelayer];
  [v6 cancelPreviousFireRequests];

  performBlockOnMainThread();
}

uint64_t __79__ICCoreDataDataSource_performBlockSuspendingUpdates_andApplySnapshotAnimated___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __79__ICCoreDataDataSource_performBlockSuspendingUpdates_andApplySnapshotAnimated___block_invoke_2;
  v3[3] = &unk_1E8468BA0;
  v3[4] = v1;
  return [v1 applySnapshotAnimated:1 dataRenderedBlock:v3];
}

- (void)setAutoExpandMode:(unint64_t)a3
{
  v39 = *MEMORY[0x1E69E9840];
  if (self->_autoExpandMode != a3)
  {
    self->_autoExpandMode = a3;
    v5 = [(ICCoreDataDataSource *)self indexer];
    v6 = [(ICCoreDataDataSource *)self applySnapshotLegacyManagedObjectContext];
    v7 = [(ICCoreDataDataSource *)self applySnapshotModernManagedObjectContext];
    v8 = [v5 newSnapshotFromIndexWithLegacyManagedObjectContext:v6 modernManagedObjectContext:v7];
    v9 = [v8 itemIdentifiers];
    v33 = [v9 mutableCopy];

    if (!a3)
    {
      v10 = +[ICExpansionState sharedExpansionState];
      v11 = [(ICCoreDataDataSource *)self indexer];
      v12 = [v11 expansionStateContext];
      v13 = [v10 expandedObjectIDsInContext:v12];

      v14 = [v13 allObjects];
      [v33 removeObjectsInArray:v14];
    }

    v36 = 0u;
    v37 = 0u;
    v34 = 0u;
    v35 = 0u;
    v15 = [(ICDataSource *)self collectionViewDiffableDataSource];
    v16 = [v15 snapshot];
    v17 = [v16 sectionIdentifiers];

    v18 = v17;
    v19 = [v17 countByEnumeratingWithState:&v34 objects:v38 count:16];
    if (v19)
    {
      v20 = v19;
      v21 = *v35;
      do
      {
        for (i = 0; i != v20; ++i)
        {
          if (*v35 != v21)
          {
            objc_enumerationMutation(v18);
          }

          v23 = *(*(&v34 + 1) + 8 * i);
          v24 = [(ICDataSource *)self collectionViewDiffableDataSource];
          v25 = [v24 snapshotForSection:v23];

          v26 = MEMORY[0x1E695DFA8];
          v27 = [v25 items];
          v28 = [v26 setWithArray:v27];

          if (a3 <= 1)
          {
            if (a3)
            {
              if (a3 != 1)
              {
                goto LABEL_21;
              }

              v29 = [MEMORY[0x1E695DFD8] setWithArray:v33];
              [v28 minusSet:v29];
              goto LABEL_18;
            }

            v30 = [MEMORY[0x1E695DFD8] setWithArray:v33];
            [v28 intersectSet:v30];

            v31 = [v28 allObjects];
            [v25 collapseItems:v31];
LABEL_20:

            goto LABEL_21;
          }

          if (a3 == 2)
          {
            v29 = [MEMORY[0x1E695DFD8] setWithArray:v33];
            [v28 intersectSet:v29];
LABEL_18:

LABEL_19:
            v31 = [v28 allObjects];
            [v25 expandItems:v31];
            goto LABEL_20;
          }

          if (a3 == 3)
          {
            goto LABEL_19;
          }

LABEL_21:
          v32 = [(ICDataSource *)self collectionViewDiffableDataSource];
          [v32 applySnapshot:v25 toSection:v23 animatingDifferences:1];
        }

        v20 = [v18 countByEnumeratingWithState:&v34 objects:v38 count:16];
      }

      while (v20);
    }
  }
}

- (void)managedObjectContextUpdaterDidMerge:(id)a3
{
  v4 = [(ICDataSource *)self collectionView];
  v5 = [v4 window];
  v6 = v5 != 0;

  [(ICDataSource *)self reloadDataAnimated:v6];
}

- (void)indexer:(id)a3 didChangeContentWithDifference:(id)a4 controller:(id)a5
{
  v7 = a4;
  v8 = a5;
  if (![(ICCoreDataDataSource *)self suspendsUpdates]&& ![(ICDataSource *)self isTogglingLock])
  {
    v9 = [MEMORY[0x1E695DFA8] set];
    if ([(ICCoreDataDataSource *)self needsReindexWithCollectionDifference:v7 controller:v8 identifiersToReload:v9])
    {
      v10 = [(ICCoreDataDataSource *)self reindexDelayer];
      [v10 requestFire];
    }

    else if ([v9 count])
    {
      objc_initWeak(&location, self);
      block[0] = MEMORY[0x1E69E9820];
      block[1] = 3221225472;
      block[2] = __74__ICCoreDataDataSource_indexer_didChangeContentWithDifference_controller___block_invoke;
      block[3] = &unk_1E846A288;
      objc_copyWeak(&v13, &location);
      v12 = v9;
      dispatch_async(MEMORY[0x1E69E96A0], block);

      objc_destroyWeak(&v13);
      objc_destroyWeak(&location);
    }
  }
}

uint64_t __74__ICCoreDataDataSource_indexer_didChangeContentWithDifference_controller___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    v3 = *(a1 + 32);
    v4 = MEMORY[0x1E695DFD8];
    v13 = WeakRetained;
    v5 = [WeakRetained collectionViewDiffableDataSource];
    v6 = [v5 snapshot];
    v7 = [v6 itemIdentifiers];
    v8 = [v4 setWithArray:v7];
    [v3 intersectSet:v8];

    if ([*(a1 + 32) count])
    {
      v9 = [v13 collectionViewDiffableDataSource];
      v10 = [v9 snapshot];
      v11 = [*(a1 + 32) allObjects];
      [v10 reloadItemsWithIdentifiers:v11];
    }
  }

  return MEMORY[0x1EEE66BB8]();
}

- (BOOL)needsReindexWithCollectionDifference:(id)a3 controller:(id)a4 identifiersToReload:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v22 = 0;
  v23 = &v22;
  v24 = 0x2020000000;
  v25 = 0;
  v11 = [v8 insertions];
  v12 = [v8 removals];
  v13 = [v11 arrayByAddingObjectsFromArray:v12];

  v17[0] = MEMORY[0x1E69E9820];
  v17[1] = 3221225472;
  v17[2] = __92__ICCoreDataDataSource_needsReindexWithCollectionDifference_controller_identifiersToReload___block_invoke;
  v17[3] = &unk_1E846A2D8;
  v14 = v9;
  v18 = v14;
  v19 = self;
  v21 = &v22;
  v15 = v10;
  v20 = v15;
  [v13 enumerateObjectsUsingBlock:v17];
  LOBYTE(v10) = *(v23 + 24);

  _Block_object_dispose(&v22, 8);
  return v10;
}

void __92__ICCoreDataDataSource_needsReindexWithCollectionDifference_controller_identifiersToReload___block_invoke(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v6 = a2;
  v7 = [v6 object];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v8 = [v6 object];
    v9 = [v8 ic_isModernFolderType];

    if (v9)
    {
      v10 = [*(a1 + 32) managedObjectContext];
      v21 = MEMORY[0x1E69E9820];
      v22 = 3221225472;
      v23 = __92__ICCoreDataDataSource_needsReindexWithCollectionDifference_controller_identifiersToReload___block_invoke_2;
      v24 = &unk_1E846A2B0;
      v25 = *(a1 + 32);
      v11 = v6;
      v12 = *(a1 + 40);
      v26 = v11;
      v27 = v12;
      v28 = *(a1 + 56);
      [v10 performBlockAndWait:&v21];
    }
  }

  else
  {
  }

  v13 = [v6 index];
  if (v13 == [v6 associatedIndex])
  {
    v14 = [*(a1 + 40) collectionViewDiffableDataSource];
    v15 = [v14 snapshot];
    v16 = [v15 itemIdentifiers];
    v17 = [v6 object];
    v18 = [v16 containsObject:v17];

    if (v18)
    {
      v19 = *(a1 + 48);
      v20 = [v6 object];
      [v19 addObject:v20];
    }
  }

  else
  {
    *(*(*(a1 + 56) + 8) + 24) = 1;
  }

  *a4 = *(*(*(a1 + 56) + 8) + 24);
}

void __92__ICCoreDataDataSource_needsReindexWithCollectionDifference_controller_identifiersToReload___block_invoke_2(uint64_t a1)
{
  v2 = [*(a1 + 32) managedObjectContext];
  v3 = [*(a1 + 40) object];
  v9 = [v2 ic_existingObjectWithID:v3];

  v4 = [v9 parentModificationDate];
  v5 = [*(a1 + 48) lastReindexParentModificationDate];
  [v4 timeIntervalSinceDate:v5];
  v7 = v6;

  if (v7 > 0.0)
  {
    v8 = [v9 parentModificationDate];
    [*(a1 + 48) setLastReindexParentModificationDate:v8];

    *(*(*(a1 + 56) + 8) + 24) = 1;
  }
}

- (void)noteLockManagerDidToggleLock:(id)a3
{
  v4.receiver = self;
  v4.super_class = ICCoreDataDataSource;
  [(ICDataSource *)&v4 noteLockManagerDidToggleLock:a3];
  [(ICCoreDataDataSource *)self reindexAndApplySnapshot];
}

- (void)applySnapshotAnimated:(BOOL)a3 dataRenderedBlock:(id)a4
{
  v62 = a3;
  v109 = *MEMORY[0x1E69E9840];
  v5 = a4;
  if (([MEMORY[0x1E696AF00] isMainThread] & 1) == 0)
  {
    [MEMORY[0x1E69B7A38] handleFailedAssertWithCondition:"[NSThread isMainThread]" functionName:"-[ICCoreDataDataSource applySnapshotAnimated:dataRenderedBlock:]" simulateCrash:1 showAlert:0 format:@"Unexpected call from background thread"];
  }

  v6 = [MEMORY[0x1E695DF70] array];
  v102 = 0u;
  v103 = 0u;
  v100 = 0u;
  v101 = 0u;
  v7 = [(ICDataSource *)self collectionView];
  v8 = [v7 indexPathsForSelectedItems];

  v9 = [v8 countByEnumeratingWithState:&v100 objects:v108 count:16];
  if (v9)
  {
    v10 = *v101;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v101 != v10)
        {
          objc_enumerationMutation(v8);
        }

        v12 = *(*(&v100 + 1) + 8 * i);
        v13 = [(ICDataSource *)self collectionViewDiffableDataSource];
        v14 = [v13 itemIdentifierForIndexPath:v12];

        [v6 ic_addNonNilObject:v14];
      }

      v9 = [v8 countByEnumeratingWithState:&v100 objects:v108 count:16];
    }

    while (v9);
  }

  v15 = os_log_create("com.apple.notes", "PointsOfInterest");
  v16 = os_signpost_id_generate(v15);
  v17 = v15;
  v18 = v17;
  if ((v16 - 1) <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v17))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_1D4171000, v18, OS_SIGNPOST_INTERVAL_BEGIN, v16, "com.apple.notes.datasource.applySnapshots", "", buf, 2u);
  }

  objc_initWeak(&location, self);
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __64__ICCoreDataDataSource_applySnapshotAnimated_dataRenderedBlock___block_invoke;
  aBlock[3] = &unk_1E846A300;
  objc_copyWeak(v98, &location);
  v60 = v6;
  v95 = v60;
  v59 = v5;
  v97 = v59;
  v61 = v18;
  v96 = v61;
  v98[1] = v16;
  v63 = _Block_copy(aBlock);
  v19 = [(ICDataSource *)self sectionTypes];

  if (v19)
  {
    v66 = [MEMORY[0x1E695DF90] dictionary];
    v20 = [MEMORY[0x1E695DF90] dictionary];
    v67 = [MEMORY[0x1E695DF70] array];
    v92 = 0u;
    v93 = 0u;
    v90 = 0u;
    v91 = 0u;
    v21 = [(ICDataSource *)self sectionTypes];
    v22 = [v21 countByEnumeratingWithState:&v90 objects:v107 count:16];
    if (v22)
    {
      obj = v21;
      v65 = *v91;
      do
      {
        for (j = 0; j != v22; ++j)
        {
          if (*v91 != v65)
          {
            objc_enumerationMutation(obj);
          }

          v24 = *(*(&v90 + 1) + 8 * j);
          v25 = [v24 unsignedIntegerValue];
          v26 = [(ICCoreDataDataSource *)self indexer];
          v27 = [(ICCoreDataDataSource *)self applySnapshotLegacyManagedObjectContext];
          v28 = [(ICCoreDataDataSource *)self applySnapshotModernManagedObjectContext];
          v29 = [v26 sectionSnapshotsForSectionType:v25 legacyManagedObjectContext:v27 modernManagedObjectContext:v28];

          [v66 addEntriesFromDictionary:v29];
          v30 = [(ICCoreDataDataSource *)self indexer];
          v31 = [v30 sectionIdentifiersForSectionType:v25];

          [v67 addObjectsFromArray:v31];
          v88 = 0u;
          v89 = 0u;
          v86 = 0u;
          v87 = 0u;
          v32 = v31;
          v33 = [v32 countByEnumeratingWithState:&v86 objects:v106 count:16];
          if (v33)
          {
            v34 = *v87;
            do
            {
              for (k = 0; k != v33; ++k)
              {
                if (*v87 != v34)
                {
                  objc_enumerationMutation(v32);
                }

                [v20 setObject:v24 forKeyedSubscript:*(*(&v86 + 1) + 8 * k)];
              }

              v33 = [v32 countByEnumeratingWithState:&v86 objects:v106 count:16];
            }

            while (v33);
          }
        }

        v21 = obj;
        v22 = [obj countByEnumeratingWithState:&v90 objects:v107 count:16];
      }

      while (v22);
    }

    v36 = dispatch_group_create();
    v37 = [(ICDataSource *)self collectionViewDiffableDataSource];
    v38 = [v37 snapshot];

    dispatch_group_enter(v36);
    [v38 ic_updateWithSectionIdentifiers:v67];
    v39 = os_log_create("com.apple.notes", "UI");
    v40 = os_log_type_enabled(v39, OS_LOG_TYPE_INFO);
    if (v62)
    {
      if (v40)
      {
        v41 = [v38 numberOfSections];
        *buf = 134217984;
        v105 = v41;
        _os_log_impl(&dword_1D4171000, v39, OS_LOG_TYPE_INFO, "Applying top-level snapshot animated with %ld sections", buf, 0xCu);
      }

      v42 = [(ICDataSource *)self collectionViewDiffableDataSource];
      v43 = v85;
      v85[0] = MEMORY[0x1E69E9820];
      v85[1] = 3221225472;
      v85[2] = __64__ICCoreDataDataSource_applySnapshotAnimated_dataRenderedBlock___block_invoke_34;
      v85[3] = &unk_1E8468BA0;
      v85[4] = v36;
      [v42 applySnapshot:v38 animatingDifferences:1 completion:v85];
    }

    else
    {
      if (v40)
      {
        v50 = [v38 numberOfSections];
        *buf = 134217984;
        v105 = v50;
        _os_log_impl(&dword_1D4171000, v39, OS_LOG_TYPE_INFO, "Applying top-level snapshot using reloadData with %ld sections", buf, 0xCu);
      }

      v42 = [(ICDataSource *)self collectionViewDiffableDataSource];
      v43 = v84;
      v84[0] = MEMORY[0x1E69E9820];
      v84[1] = 3221225472;
      v84[2] = __64__ICCoreDataDataSource_applySnapshotAnimated_dataRenderedBlock___block_invoke_35;
      v84[3] = &unk_1E8468BA0;
      v84[4] = v36;
      [v42 applySnapshotUsingReloadData:v38 completion:v84];
    }

    v78[0] = MEMORY[0x1E69E9820];
    v78[1] = 3221225472;
    v78[2] = __64__ICCoreDataDataSource_applySnapshotAnimated_dataRenderedBlock___block_invoke_2_36;
    v78[3] = &unk_1E846A350;
    v51 = v67;
    v79 = v51;
    v52 = v36;
    v80 = v52;
    v48 = v66;
    v81 = v48;
    v82 = self;
    v83 = v62;
    v53 = _Block_copy(v78);
    v54 = os_log_create("com.apple.notes", "UI");
    v55 = os_log_type_enabled(v54, OS_LOG_TYPE_INFO);
    if (v62)
    {
      if (v55)
      {
        *buf = 0;
        _os_log_impl(&dword_1D4171000, v54, OS_LOG_TYPE_INFO, "Applying section snapshots", buf, 2u);
      }

      v53[2](v53);
    }

    else
    {
      if (v55)
      {
        *buf = 0;
        _os_log_impl(&dword_1D4171000, v54, OS_LOG_TYPE_INFO, "Applying section snapshots using _performBatchApplyUsingReloadData", buf, 2u);
      }

      v56 = [(ICDataSource *)self collectionViewDiffableDataSource];
      v76[0] = MEMORY[0x1E69E9820];
      v76[1] = 3221225472;
      v76[2] = __64__ICCoreDataDataSource_applySnapshotAnimated_dataRenderedBlock___block_invoke_39;
      v76[3] = &unk_1E84690D0;
      v77 = v53;
      [v56 _performBatchApplyUsingReloadData:v76];
    }

    v71 = MEMORY[0x1E69E9820];
    v72 = 3221225472;
    v73 = __64__ICCoreDataDataSource_applySnapshotAnimated_dataRenderedBlock___block_invoke_40;
    v74 = &unk_1E8468BA0;
    v75 = self;
    performBlockOnMainThread();
    v57 = [(ICCoreDataDataSource *)self applySnapshotCompletionQueue];
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __64__ICCoreDataDataSource_applySnapshotAnimated_dataRenderedBlock___block_invoke_2_41;
    block[3] = &unk_1E8468CF8;
    v69 = v52;
    v70 = v63;
    v58 = v52;
    dispatch_async(v57, block);
  }

  else
  {
    v44 = [(ICDataSource *)self collectionView];

    if (!v44)
    {
      v63[2]();
      goto LABEL_46;
    }

    v45 = [(ICCoreDataDataSource *)self indexer];
    v46 = [(ICCoreDataDataSource *)self applySnapshotLegacyManagedObjectContext];
    v47 = [(ICCoreDataDataSource *)self applySnapshotModernManagedObjectContext];
    v48 = [v45 newSnapshotFromIndexWithLegacyManagedObjectContext:v46 modernManagedObjectContext:v47];

    v49 = [(ICDataSource *)self collectionViewDiffableDataSource];
    [v49 applySnapshot:v48 animatingDifferences:v62 completion:v63];

    performBlockOnMainThread();
  }

LABEL_46:
  objc_destroyWeak(v98);
  objc_destroyWeak(&location);
}

void __64__ICCoreDataDataSource_applySnapshotAnimated_dataRenderedBlock___block_invoke(id *a1)
{
  objc_copyWeak(v5, a1 + 7);
  v2 = a1[4];
  v4 = a1[6];
  v3 = a1[5];
  v5[1] = a1[8];
  performBlockOnMainThreadAndWait();

  objc_destroyWeak(v5);
}

void __64__ICCoreDataDataSource_applySnapshotAnimated_dataRenderedBlock___block_invoke_2(uint64_t a1)
{
  v24 = *MEMORY[0x1E69E9840];
  WeakRetained = objc_loadWeakRetained((a1 + 56));
  if (WeakRetained)
  {
    v21 = 0u;
    v22 = 0u;
    v19 = 0u;
    v20 = 0u;
    v3 = *(a1 + 32);
    v4 = [v3 countByEnumeratingWithState:&v19 objects:v23 count:16];
    if (v4)
    {
      v5 = v4;
      v6 = *v20;
      do
      {
        v7 = 0;
        do
        {
          if (*v20 != v6)
          {
            objc_enumerationMutation(v3);
          }

          v8 = *(*(&v19 + 1) + 8 * v7);
          v9 = [WeakRetained collectionViewDiffableDataSource];
          v10 = [v9 indexPathForItemIdentifier:v8];

          if (v10)
          {
            v11 = [WeakRetained collectionView];
            [v11 selectItemAtIndexPath:v10 animated:0 scrollPosition:0];
          }

          ++v7;
        }

        while (v5 != v7);
        v5 = [v3 countByEnumeratingWithState:&v19 objects:v23 count:16];
      }

      while (v5);
    }

    v12 = os_log_create("com.apple.notes", "UI");
    if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
    {
      *v18 = 0;
      _os_log_impl(&dword_1D4171000, v12, OS_LOG_TYPE_INFO, "Snaphot(s) fully applied", v18, 2u);
    }

    v13 = *(a1 + 48);
    if (v13)
    {
      (*(v13 + 16))();
    }

    v14 = [MEMORY[0x1E696AD88] defaultCenter];
    [v14 postNotificationName:@"ICDataSourceDataUpdateDidRenderNotification" object:WeakRetained];

    v15 = *(a1 + 40);
    v16 = v15;
    v17 = *(a1 + 64);
    if (v17 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v15))
    {
      *v18 = 0;
      _os_signpost_emit_with_name_impl(&dword_1D4171000, v16, OS_SIGNPOST_INTERVAL_END, v17, "com.apple.notes.datasource.applySnapshots", "", v18, 2u);
    }
  }
}

void __64__ICCoreDataDataSource_applySnapshotAnimated_dataRenderedBlock___block_invoke_2_36(uint64_t a1)
{
  v40 = *MEMORY[0x1E69E9840];
  v33 = 0u;
  v34 = 0u;
  v35 = 0u;
  v36 = 0u;
  obj = *(a1 + 32);
  v2 = [obj countByEnumeratingWithState:&v33 objects:v39 count:16];
  if (v2)
  {
    v3 = v2;
    v4 = *v34;
    do
    {
      for (i = 0; i != v3; ++i)
      {
        if (*v34 != v4)
        {
          objc_enumerationMutation(obj);
        }

        v6 = *(*(&v33 + 1) + 8 * i);
        dispatch_group_enter(*(a1 + 40));
        v7 = [*(a1 + 48) objectForKeyedSubscript:v6];
        if (!v7)
        {
          dispatch_group_leave(*(a1 + 40));
          goto LABEL_23;
        }

        v8 = [*(a1 + 56) autoExpandMode];
        if (v8 > 1)
        {
          if (v8 == 2)
          {
            v17 = [v7 items];
            v10 = [v17 mutableCopy];

            v14 = [*(a1 + 56) collectionViewDiffableDataSource];
            v18 = [v14 snapshot];
            v19 = [v18 sectionIdentifiers];
            [v10 removeObjectsInArray:v19];

LABEL_17:
            v13 = [MEMORY[0x1E695DFD8] setWithArray:v10];
LABEL_18:

            if (v13)
            {
              v31[0] = MEMORY[0x1E69E9820];
              v31[1] = 3221225472;
              v31[2] = __64__ICCoreDataDataSource_applySnapshotAnimated_dataRenderedBlock___block_invoke_3;
              v31[3] = &unk_1E846A328;
              v20 = v7;
              v32 = v20;
              v21 = [v13 objectsPassingTest:v31];
              v22 = [v21 allObjects];
              [v20 expandItems:v22];
            }

            goto LABEL_20;
          }

          if (v8 == 3)
          {
            v14 = [v7 items];
            v10 = [v14 mutableCopy];
            goto LABEL_17;
          }
        }

        else
        {
          if (!v8)
          {
            v10 = +[ICExpansionState sharedExpansionState];
            v15 = [*(a1 + 56) indexer];
            v16 = [v15 expansionStateContext];
            v13 = [v10 expandedObjectIDsInContext:v16];

            goto LABEL_18;
          }

          if (v8 == 1)
          {
            v9 = MEMORY[0x1E695DFD8];
            v10 = [*(a1 + 56) collectionViewDiffableDataSource];
            v11 = [v10 snapshot];
            v12 = [v11 sectionIdentifiers];
            v13 = [v9 setWithArray:v12];

            goto LABEL_18;
          }
        }

LABEL_20:
        v23 = os_log_create("com.apple.notes", "UI");
        if (os_log_type_enabled(v23, OS_LOG_TYPE_INFO))
        {
          v24 = [v7 items];
          v25 = [v24 count];
          *buf = 134217984;
          v38 = v25;
          _os_log_impl(&dword_1D4171000, v23, OS_LOG_TYPE_INFO, "Applying section snapshot with %ld items", buf, 0xCu);
        }

        v26 = [*(a1 + 56) collectionViewDiffableDataSource];
        v27 = *(a1 + 64);
        v29[0] = MEMORY[0x1E69E9820];
        v29[1] = 3221225472;
        v29[2] = __64__ICCoreDataDataSource_applySnapshotAnimated_dataRenderedBlock___block_invoke_38;
        v29[3] = &unk_1E8468BA0;
        v30 = *(a1 + 40);
        [v26 applySnapshot:v7 toSection:v6 animatingDifferences:v27 completion:v29];

LABEL_23:
      }

      v3 = [obj countByEnumeratingWithState:&v33 objects:v39 count:16];
    }

    while (v3);
  }
}

BOOL __64__ICCoreDataDataSource_applySnapshotAnimated_dataRenderedBlock___block_invoke_3(uint64_t a1, void *a2)
{
  v3 = a2;
  if ([*(a1 + 32) containsItem:v3])
  {
    v4 = [*(a1 + 32) childrenOfParent:v3];
    v5 = [v4 count] != 0;
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

void __64__ICCoreDataDataSource_applySnapshotAnimated_dataRenderedBlock___block_invoke_40(uint64_t a1)
{
  v2 = [MEMORY[0x1E696AD88] defaultCenter];
  [v2 postNotificationName:@"ICDataSourceDataDidUpdateNotification" object:*(a1 + 32)];
}

uint64_t __64__ICCoreDataDataSource_applySnapshotAnimated_dataRenderedBlock___block_invoke_2_41(uint64_t a1)
{
  dispatch_group_wait(*(a1 + 32), 0xFFFFFFFFFFFFFFFFLL);
  v2 = *(*(a1 + 40) + 16);

  return v2();
}

void __64__ICCoreDataDataSource_applySnapshotAnimated_dataRenderedBlock___block_invoke_3_42(uint64_t a1)
{
  v2 = [MEMORY[0x1E696AD88] defaultCenter];
  [v2 postNotificationName:@"ICDataSourceDataDidUpdateNotification" object:*(a1 + 32)];
}

- (void)setExpanded:(BOOL)a3 itemIdentifiers:(id)a4 completion:(id)a5
{
  v6 = a3;
  v55 = *MEMORY[0x1E69E9840];
  v34 = a4;
  v29 = a5;
  v8 = dispatch_group_create();
  v49 = 0u;
  v50 = 0u;
  v51 = 0u;
  v52 = 0u;
  v9 = [(ICDataSource *)self collectionViewDiffableDataSource];
  v10 = [v9 snapshot];
  v11 = [v10 sectionIdentifiers];

  obj = v11;
  v35 = [v11 countByEnumeratingWithState:&v49 objects:v54 count:16];
  if (v35)
  {
    v31 = *v50;
    v32 = self;
    v33 = v8;
    do
    {
      for (i = 0; i != v35; ++i)
      {
        if (*v50 != v31)
        {
          objc_enumerationMutation(obj);
        }

        v13 = *(*(&v49 + 1) + 8 * i);
        dispatch_group_enter(v8);
        v14 = [(ICDataSource *)self collectionViewDiffableDataSource];
        v15 = [v14 snapshotForSection:v13];

        v47[0] = MEMORY[0x1E69E9820];
        v47[1] = 3221225472;
        v47[2] = __63__ICCoreDataDataSource_setExpanded_itemIdentifiers_completion___block_invoke;
        v47[3] = &unk_1E846A378;
        v16 = v15;
        v48 = v16;
        v17 = [v34 ic_objectsPassingTest:v47];
        v18 = +[ICExpansionState sharedExpansionState];
        v19 = [(ICCoreDataDataSource *)self indexer];
        v20 = [v19 expansionStateContext];

        v45 = 0u;
        v46 = 0u;
        v43 = 0u;
        v44 = 0u;
        v21 = v17;
        v22 = [v21 countByEnumeratingWithState:&v43 objects:v53 count:16];
        if (v22)
        {
          v23 = v22;
          v24 = *v44;
          do
          {
            for (j = 0; j != v23; ++j)
            {
              if (*v44 != v24)
              {
                objc_enumerationMutation(v21);
              }

              v26 = *(*(&v43 + 1) + 8 * j);
              if (v6)
              {
                [v18 expandItemIdentifier:v26 context:v20];
              }

              else
              {
                [v18 collapseItemIdentifier:v26 context:v20];
              }
            }

            v23 = [v21 countByEnumeratingWithState:&v43 objects:v53 count:16];
          }

          while (v23);
        }

        if (v6)
        {
          [v16 expandItems:v21];
        }

        else
        {
          [v16 collapseItems:v21];
        }

        self = v32;
        v8 = v33;
        block[0] = MEMORY[0x1E69E9820];
        block[1] = 3221225472;
        block[2] = __63__ICCoreDataDataSource_setExpanded_itemIdentifiers_completion___block_invoke_2;
        block[3] = &unk_1E846A3A0;
        block[4] = v32;
        v40 = v16;
        v41 = v13;
        v42 = v33;
        v27 = v16;
        dispatch_async(MEMORY[0x1E69E96A0], block);
      }

      v35 = [obj countByEnumeratingWithState:&v49 objects:v54 count:16];
    }

    while (v35);
  }

  if (v29)
  {
    v28 = [(ICCoreDataDataSource *)self expansionStateCompletionQueue];
    v36[0] = MEMORY[0x1E69E9820];
    v36[1] = 3221225472;
    v36[2] = __63__ICCoreDataDataSource_setExpanded_itemIdentifiers_completion___block_invoke_4;
    v36[3] = &unk_1E8468CF8;
    v37 = v8;
    v38 = v29;
    dispatch_async(v28, v36);
  }
}

uint64_t __63__ICCoreDataDataSource_setExpanded_itemIdentifiers_completion___block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  v4 = [v2 items];
  v5 = [v4 containsObject:v3];

  return v5;
}

void __63__ICCoreDataDataSource_setExpanded_itemIdentifiers_completion___block_invoke_2(uint64_t a1)
{
  v2 = [*(a1 + 32) collectionViewDiffableDataSource];
  v3 = *(a1 + 40);
  v4 = *(a1 + 48);
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __63__ICCoreDataDataSource_setExpanded_itemIdentifiers_completion___block_invoke_3;
  v5[3] = &unk_1E8468BA0;
  v6 = *(a1 + 56);
  [v2 applySnapshot:v3 toSection:v4 animatingDifferences:1 completion:v5];
}

void __63__ICCoreDataDataSource_setExpanded_itemIdentifiers_completion___block_invoke_4(uint64_t a1)
{
  dispatch_group_wait(*(a1 + 32), 0xFFFFFFFFFFFFFFFFLL);
  v2 = *(a1 + 40);
  v3 = MEMORY[0x1E69E96A0];

  dispatch_async(v3, v2);
}

@end