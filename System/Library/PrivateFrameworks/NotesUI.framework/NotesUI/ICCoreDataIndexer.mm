@interface ICCoreDataIndexer
- (ICCoreDataIndexer)initWithLegacyManagedObjectContext:(id)context modernManagedObjectContext:(id)objectContext;
- (ICCoreDataIndexerDelegate)delegate;
- (id)newSnapshotFromIndex;
- (id)sectionSnapshotsForSectionType:(unint64_t)type;
- (void)controller:(id)controller didChangeContentWithDifference:(id)difference;
- (void)indexObjectsWithCompletion:(id)completion;
- (void)performAndWaitForFetchedResultsControllers:(id)controllers block:(id)block;
- (void)reloadData:(id)data;
- (void)reloadDataAndWait;
- (void)unsafelyIndexAllObjectsForFetchedResultsController:(id)controller;
- (void)unsafelyReloadData;
@end

@implementation ICCoreDataIndexer

- (void)unsafelyReloadData
{
  v34 = *MEMORY[0x1E69E9840];
  if (-[ICCoreDataIndexer needsFetchedResultsControllerUpdate](self, "needsFetchedResultsControllerUpdate") || (-[ICCoreDataIndexer activeFetchedResultsControllers](self, "activeFetchedResultsControllers"), v3 = objc_claimAutoreleasedReturnValue(), v4 = [v3 count], v3, !v4))
  {
    modernManagedObjectContext = [(ICCoreDataIndexer *)self modernManagedObjectContext];
    v31[0] = MEMORY[0x1E69E9820];
    v31[1] = 3221225472;
    v31[2] = __39__ICCoreDataIndexer_unsafelyReloadData__block_invoke;
    v31[3] = &unk_1E8468BA0;
    v31[4] = self;
    [modernManagedObjectContext performBlockAndWait:v31];

    legacyManagedObjectContext = [(ICCoreDataIndexer *)self legacyManagedObjectContext];
    v30[0] = MEMORY[0x1E69E9820];
    v30[1] = 3221225472;
    v30[2] = __39__ICCoreDataIndexer_unsafelyReloadData__block_invoke_2;
    v30[3] = &unk_1E8468BA0;
    v30[4] = self;
    [legacyManagedObjectContext performBlockAndWait:v30];

    [(ICCoreDataIndexer *)self setNeedsFetchedResultsControllerUpdate:0];
  }

  [(ICCoreDataIndexer *)self activeFetchedResultsControllers];
  v28 = 0u;
  v29 = 0u;
  v26 = 0u;
  v7 = v27 = 0u;
  v8 = [v7 countByEnumeratingWithState:&v26 objects:v33 count:16];
  if (v8)
  {
    v9 = *v27;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v27 != v9)
        {
          objc_enumerationMutation(v7);
        }

        [*(*(&v26 + 1) + 8 * i) setDelegate:self];
      }

      v8 = [v7 countByEnumeratingWithState:&v26 objects:v33 count:16];
    }

    while (v8);
  }

  [v7 ic_map:&__block_literal_global_80];
  v24 = 0u;
  v25 = 0u;
  v23 = 0u;
  v11 = v22 = 0u;
  v12 = [v11 countByEnumeratingWithState:&v22 objects:v32 count:16];
  if (v12)
  {
    v13 = *v23;
    do
    {
      for (j = 0; j != v12; ++j)
      {
        if (*v23 != v13)
        {
          objc_enumerationMutation(v11);
        }

        v15 = *(*(&v22 + 1) + 8 * j);
        if (([v15 automaticallyMergesChangesFromParent] & 1) == 0)
        {
          [v15 setAutomaticallyMergesChangesFromParent:1];
        }

        if ([v15 concurrencyType] != 2)
        {
          v21[0] = MEMORY[0x1E69E9820];
          v21[1] = 3221225472;
          v21[2] = __39__ICCoreDataIndexer_unsafelyReloadData__block_invoke_4;
          v21[3] = &unk_1E8468BA0;
          v21[4] = v15;
          [v15 performBlockAndWait:v21];
        }
      }

      v12 = [v11 countByEnumeratingWithState:&v22 objects:v32 count:16];
    }

    while (v12);
  }

  v17 = 0;
  v18 = &v17;
  v19 = 0x2020000000;
  v20 = 0;
  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = __39__ICCoreDataIndexer_unsafelyReloadData__block_invoke_5;
  v16[3] = &unk_1E846DB98;
  v16[4] = self;
  v16[5] = &v17;
  [(ICCoreDataIndexer *)self performAndWaitForFetchedResultsControllers:v7 block:v16];
  if ((v18[3] & 1) == 0)
  {
    [(ICCoreDataIndexer *)self willIndex];
  }

  [(ICCoreDataIndexer *)self didIndex];
  _Block_object_dispose(&v17, 8);
}

void __39__ICCoreDataIndexer_unsafelyReloadData__block_invoke_5(uint64_t a1, void *a2)
{
  v3 = a2;
  v7 = 0;
  [v3 performFetch:&v7];
  v4 = v7;
  if (v4)
  {
    v5 = os_log_create("com.apple.notes", "UI");
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      __39__ICCoreDataIndexer_unsafelyReloadData__block_invoke_5_cold_1(v4, v5);
    }
  }

  else
  {
    v6 = *(a1 + 32);
    objc_sync_enter(v6);
    if ((*(*(*(a1 + 40) + 8) + 24) & 1) == 0)
    {
      [*(a1 + 32) willIndex];
      *(*(*(a1 + 40) + 8) + 24) = 1;
    }

    objc_sync_exit(v6);

    [*(a1 + 32) unsafelyIndexAllObjectsForFetchedResultsController:v3];
  }
}

- (id)newSnapshotFromIndex
{
  legacyManagedObjectContext = [(ICCoreDataIndexer *)self legacyManagedObjectContext];
  modernManagedObjectContext = [(ICCoreDataIndexer *)self modernManagedObjectContext];
  v5 = [(ICCoreDataIndexer *)self newSnapshotFromIndexWithLegacyManagedObjectContext:legacyManagedObjectContext modernManagedObjectContext:modernManagedObjectContext];

  return v5;
}

- (ICCoreDataIndexer)initWithLegacyManagedObjectContext:(id)context modernManagedObjectContext:(id)objectContext
{
  contextCopy = context;
  objectContextCopy = objectContext;
  v15.receiver = self;
  v15.super_class = ICCoreDataIndexer;
  v9 = [(ICCoreDataIndexer *)&v15 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_legacyManagedObjectContext, context);
    objc_storeStrong(&v10->_modernManagedObjectContext, objectContext);
    v11 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v12 = dispatch_queue_create("com.apple.notes.indexer-reload-data-serial-queue", v11);
    reloadDataSerialQueue = v10->_reloadDataSerialQueue;
    v10->_reloadDataSerialQueue = v12;
  }

  return v10;
}

- (void)reloadData:(id)data
{
  dataCopy = data;
  reloadDataSerialQueue = [(ICCoreDataIndexer *)self reloadDataSerialQueue];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __32__ICCoreDataIndexer_reloadData___block_invoke;
  v7[3] = &unk_1E8468CF8;
  v7[4] = self;
  v8 = dataCopy;
  v6 = dataCopy;
  dispatch_async(reloadDataSerialQueue, v7);
}

uint64_t __32__ICCoreDataIndexer_reloadData___block_invoke(uint64_t a1)
{
  [*(a1 + 32) unsafelyReloadData];
  result = *(a1 + 40);
  if (result)
  {
    v3 = *(result + 16);

    return v3();
  }

  return result;
}

- (void)reloadDataAndWait
{
  v3 = dispatch_semaphore_create(0);
  reloadDataSerialQueue = [(ICCoreDataIndexer *)self reloadDataSerialQueue];
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __38__ICCoreDataIndexer_reloadDataAndWait__block_invoke;
  v8[3] = &unk_1E8468F80;
  v8[4] = self;
  v5 = v3;
  v9 = v5;
  dispatch_sync(reloadDataSerialQueue, v8);

  v6 = dispatch_time(0, 10000000000);
  if (dispatch_semaphore_wait(v5, v6))
  {
    v7 = os_log_create("com.apple.notes", "UI");
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      [(ICCoreDataIndexer *)v7 reloadDataAndWait];
    }
  }
}

intptr_t __38__ICCoreDataIndexer_reloadDataAndWait__block_invoke(uint64_t a1)
{
  [*(a1 + 32) unsafelyReloadData];
  v2 = *(a1 + 40);

  return dispatch_semaphore_signal(v2);
}

- (void)indexObjectsWithCompletion:(id)completion
{
  completionCopy = completion;
  objc_initWeak(&location, self);
  reloadDataSerialQueue = [(ICCoreDataIndexer *)self reloadDataSerialQueue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __48__ICCoreDataIndexer_indexObjectsWithCompletion___block_invoke;
  block[3] = &unk_1E846D350;
  objc_copyWeak(&v9, &location);
  v8 = completionCopy;
  v6 = completionCopy;
  dispatch_async(reloadDataSerialQueue, block);

  objc_destroyWeak(&v9);
  objc_destroyWeak(&location);
}

void __48__ICCoreDataIndexer_indexObjectsWithCompletion___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v3 = WeakRetained;
  if (WeakRetained)
  {
    [WeakRetained willIndex];
    v4 = [v3 activeFetchedResultsControllers];
    v6[0] = MEMORY[0x1E69E9820];
    v6[1] = 3221225472;
    v6[2] = __48__ICCoreDataIndexer_indexObjectsWithCompletion___block_invoke_2;
    v6[3] = &unk_1E846DB50;
    v6[4] = v3;
    [v3 performAndWaitForFetchedResultsControllers:v4 block:v6];

    [v3 didIndex];
  }

  v5 = *(a1 + 32);
  if (v5)
  {
    (*(v5 + 16))();
  }
}

- (id)sectionSnapshotsForSectionType:(unint64_t)type
{
  legacyManagedObjectContext = [(ICCoreDataIndexer *)self legacyManagedObjectContext];
  modernManagedObjectContext = [(ICCoreDataIndexer *)self modernManagedObjectContext];
  v7 = [(ICCoreDataIndexer *)self sectionSnapshotsForSectionType:type legacyManagedObjectContext:legacyManagedObjectContext modernManagedObjectContext:modernManagedObjectContext];

  return v7;
}

- (void)controller:(id)controller didChangeContentWithDifference:(id)difference
{
  differenceCopy = difference;
  controllerCopy = controller;
  delegate = [(ICCoreDataIndexer *)self delegate];
  [delegate indexer:self didChangeContentWithDifference:differenceCopy controller:controllerCopy];
}

- (void)performAndWaitForFetchedResultsControllers:(id)controllers block:(id)block
{
  v43 = *MEMORY[0x1E69E9840];
  controllersCopy = controllers;
  blockCopy = block;
  v37 = 0u;
  v38 = 0u;
  v39 = 0u;
  v40 = 0u;
  v7 = [controllersCopy countByEnumeratingWithState:&v37 objects:v42 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v38;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v38 != v9)
        {
          objc_enumerationMutation(controllersCopy);
        }

        v11 = *(*(&v37 + 1) + 8 * i);
        managedObjectContext = [v11 managedObjectContext];
        concurrencyType = [managedObjectContext concurrencyType];

        if (concurrencyType == 2)
        {
          managedObjectContext2 = [v11 managedObjectContext];
          v35[0] = MEMORY[0x1E69E9820];
          v35[1] = 3221225472;
          v35[2] = __70__ICCoreDataIndexer_performAndWaitForFetchedResultsControllers_block___block_invoke;
          v35[3] = &unk_1E8468CD0;
          v15 = blockCopy;
          v35[4] = v11;
          v36 = v15;
          [managedObjectContext2 performBlockAndWait:v35];
        }
      }

      v8 = [controllersCopy countByEnumeratingWithState:&v37 objects:v42 count:16];
    }

    while (v8);
  }

  v16 = dispatch_group_create();
  v31 = 0u;
  v32 = 0u;
  v33 = 0u;
  v34 = 0u;
  v17 = controllersCopy;
  v18 = [v17 countByEnumeratingWithState:&v31 objects:v41 count:16];
  if (v18)
  {
    v19 = v18;
    v20 = *v32;
    do
    {
      for (j = 0; j != v19; ++j)
      {
        if (*v32 != v20)
        {
          objc_enumerationMutation(v17);
        }

        v22 = *(*(&v31 + 1) + 8 * j);
        managedObjectContext3 = [v22 managedObjectContext];
        concurrencyType2 = [managedObjectContext3 concurrencyType];

        if (concurrencyType2 != 2)
        {
          dispatch_group_enter(v16);
          managedObjectContext4 = [v22 managedObjectContext];
          v28[0] = MEMORY[0x1E69E9820];
          v28[1] = 3221225472;
          v28[2] = __70__ICCoreDataIndexer_performAndWaitForFetchedResultsControllers_block___block_invoke_2;
          v28[3] = &unk_1E846AFD0;
          v30 = blockCopy;
          v28[4] = v22;
          v29 = v16;
          [managedObjectContext4 performBlock:v28];
        }
      }

      v19 = [v17 countByEnumeratingWithState:&v31 objects:v41 count:16];
    }

    while (v19);
  }

  v26 = dispatch_time(0, 10000000000);
  if (dispatch_group_wait(v16, v26))
  {
    v27 = os_log_create("com.apple.notes", "UI");
    if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
    {
      [ICCoreDataIndexer performAndWaitForFetchedResultsControllers:v27 block:?];
    }
  }
}

uint64_t __70__ICCoreDataIndexer_performAndWaitForFetchedResultsControllers_block___block_invoke(uint64_t a1)
{
  result = *(a1 + 40);
  if (result)
  {
    return (*(result + 16))(result, *(a1 + 32));
  }

  return result;
}

void __70__ICCoreDataIndexer_performAndWaitForFetchedResultsControllers_block___block_invoke_2(void *a1)
{
  v2 = a1[6];
  if (v2)
  {
    (*(v2 + 16))(v2, a1[4]);
  }

  v3 = a1[5];

  dispatch_group_leave(v3);
}

- (void)unsafelyIndexAllObjectsForFetchedResultsController:(id)controller
{
  controllerCopy = controller;
  sections = [controllerCopy sections];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __72__ICCoreDataIndexer_unsafelyIndexAllObjectsForFetchedResultsController___block_invoke;
  v7[3] = &unk_1E846DBC0;
  v7[4] = self;
  v8 = controllerCopy;
  v6 = controllerCopy;
  [sections enumerateObjectsUsingBlock:v7];
}

- (ICCoreDataIndexerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

void __39__ICCoreDataIndexer_unsafelyReloadData__block_invoke_5_cold_1(uint64_t a1, NSObject *a2)
{
  v4 = *MEMORY[0x1E69E9840];
  v2 = 138412290;
  v3 = a1;
  _os_log_error_impl(&dword_1D4171000, a2, OS_LOG_TYPE_ERROR, "Error performing fetch: %@", &v2, 0xCu);
}

@end