@interface ICBundleChangeObserver
- (ICBundleChangeObserver)init;
- (ICBundleChangeObserver)initWithPersistentStoreCoordinator:(id)a3 managedObjectContext:(id)a4;
- (id)filePresenters;
- (void)addManagedObjectContextDidSaveObserver;
- (void)addObserverForBundleWithObjectID:(id)a3 url:(id)a4;
- (void)addObserversForExistingPaperAttachments;
- (void)addObserversForObjects:(id)a3;
- (void)contextDidSave:(id)a3;
- (void)processObjectIDs:(id)a3 completion:(id)a4;
- (void)removeManagedObjectContextDidSaveObserver;
- (void)removeObserverForBundleWithURL:(id)a3;
- (void)start;
- (void)stopAndNotifyObservers:(BOOL)a3;
@end

@implementation ICBundleChangeObserver

- (ICBundleChangeObserver)initWithPersistentStoreCoordinator:(id)a3 managedObjectContext:(id)a4
{
  v7 = a3;
  v8 = a4;
  v19.receiver = self;
  v19.super_class = ICBundleChangeObserver;
  v9 = [(ICBundleChangeObserver *)&v19 init];
  v10 = v9;
  if (v9)
  {
    v9->_isObserving = 0;
    objc_storeStrong(&v9->_persistentStoreCoordinator, a3);
    objc_storeStrong(&v10->_managedObjectContext, a4);
    v11 = [MEMORY[0x277CBEB38] dictionary];
    mutableFilePresenters = v10->_mutableFilePresenters;
    v10->_mutableFilePresenters = v11;

    v13 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v14 = dispatch_queue_create("com.apple.notes.bundle-change-observer-processing-queue", v13);
    processingQueue = v10->_processingQueue;
    v10->_processingQueue = v14;

    didChangeFilePresenters = v10->_didChangeFilePresenters;
    v10->_didChangeFilePresenters = 0;

    attachmentDidChange = v10->_attachmentDidChange;
    v10->_attachmentDidChange = 0;
  }

  return v10;
}

- (ICBundleChangeObserver)init
{
  v3 = +[ICNoteContext sharedContext];
  v4 = [v3 persistentStoreCoordinator];
  v5 = [v3 workerManagedObjectContext];
  v6 = [(ICBundleChangeObserver *)self initWithPersistentStoreCoordinator:v4 managedObjectContext:v5];

  return v6;
}

- (void)start
{
  v16 = *MEMORY[0x277D85DE8];
  if (![(ICBundleChangeObserver *)self isObserving])
  {
    [(ICBundleChangeObserver *)self addManagedObjectContextDidSaveObserver];
    v13 = 0u;
    v14 = 0u;
    v11 = 0u;
    v12 = 0u;
    v3 = [(ICBundleChangeObserver *)self mutableFilePresenters];
    v4 = [v3 allValues];

    v5 = [v4 countByEnumeratingWithState:&v11 objects:v15 count:16];
    if (v5)
    {
      v6 = v5;
      v7 = *v12;
      do
      {
        v8 = 0;
        do
        {
          if (*v12 != v7)
          {
            objc_enumerationMutation(v4);
          }

          [MEMORY[0x277CCA9E8] addFilePresenter:*(*(&v11 + 1) + 8 * v8)];
          v9 = [(ICBundleChangeObserver *)self didChangeFilePresenters];

          if (v9)
          {
            v10 = [(ICBundleChangeObserver *)self didChangeFilePresenters];
            v10[2]();
          }

          ++v8;
        }

        while (v6 != v8);
        v6 = [v4 countByEnumeratingWithState:&v11 objects:v15 count:16];
      }

      while (v6);
    }

    [(ICBundleChangeObserver *)self setIsObserving:1];
    if (![(ICBundleChangeObserver *)self didAddForExistingPaperAttachments])
    {
      [(ICBundleChangeObserver *)self setDidAddForExistingPaperAttachments:1];
      [(ICBundleChangeObserver *)self addObserversForExistingPaperAttachments];
    }
  }
}

- (void)stopAndNotifyObservers:(BOOL)a3
{
  v3 = a3;
  v18 = *MEMORY[0x277D85DE8];
  if ([(ICBundleChangeObserver *)self isObserving])
  {
    [(ICBundleChangeObserver *)self removeManagedObjectContextDidSaveObserver];
    v15 = 0u;
    v16 = 0u;
    v13 = 0u;
    v14 = 0u;
    v5 = [(ICBundleChangeObserver *)self mutableFilePresenters];
    v6 = [v5 allValues];

    v7 = [v6 countByEnumeratingWithState:&v13 objects:v17 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = *v14;
      do
      {
        v10 = 0;
        do
        {
          if (*v14 != v9)
          {
            objc_enumerationMutation(v6);
          }

          [MEMORY[0x277CCA9E8] removeFilePresenter:*(*(&v13 + 1) + 8 * v10)];
          if (v3)
          {
            v11 = [(ICBundleChangeObserver *)self didChangeFilePresenters];

            if (v11)
            {
              v12 = [(ICBundleChangeObserver *)self didChangeFilePresenters];
              v12[2]();
            }
          }

          ++v10;
        }

        while (v8 != v10);
        v8 = [v6 countByEnumeratingWithState:&v13 objects:v17 count:16];
      }

      while (v8);
    }

    [(ICBundleChangeObserver *)self setIsObserving:0];
  }
}

- (void)contextDidSave:(id)a3
{
  v4 = a3;
  v5 = objc_autoreleasePoolPush();
  v6 = [v4 userInfo];
  v7 = [v6 objectForKeyedSubscript:*MEMORY[0x277CBE180]];

  if ([v7 count])
  {
    v8[0] = MEMORY[0x277D85DD0];
    v8[1] = 3221225472;
    v8[2] = __41__ICBundleChangeObserver_contextDidSave___block_invoke;
    v8[3] = &unk_278197A60;
    v8[4] = self;
    [(ICBundleChangeObserver *)self processObjectIDs:v7 completion:v8];
  }

  objc_autoreleasePoolPop(v5);
}

- (void)addObserversForExistingPaperAttachments
{
  v3 = [(ICBundleChangeObserver *)self processingQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __65__ICBundleChangeObserver_addObserversForExistingPaperAttachments__block_invoke;
  block[3] = &unk_278194B00;
  block[4] = self;
  dispatch_async(v3, block);
}

void __65__ICBundleChangeObserver_addObserversForExistingPaperAttachments__block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) managedObjectContext];
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __65__ICBundleChangeObserver_addObserversForExistingPaperAttachments__block_invoke_2;
  v5[3] = &unk_278194AD8;
  v3 = *(a1 + 32);
  v6 = v2;
  v7 = v3;
  v4 = v2;
  [v4 performBlockAndWait:v5];
}

void __65__ICBundleChangeObserver_addObserversForExistingPaperAttachments__block_invoke_2(uint64_t a1)
{
  v2 = [ICAttachment predicateForVisibleAttachmentsWithTypeUTI:@"com.apple.paper" inContext:*(a1 + 32)];
  v3 = [ICAttachment ic_objectIDsMatchingPredicate:v2 context:*(a1 + 32)];
  v4 = *(a1 + 40);
  v5 = [MEMORY[0x277CBEB98] setWithArray:v3];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __65__ICBundleChangeObserver_addObserversForExistingPaperAttachments__block_invoke_3;
  v6[3] = &unk_278197A60;
  v6[4] = *(a1 + 40);
  [v4 processObjectIDs:v5 completion:v6];
}

- (void)addObserversForObjects:(id)a3
{
  v3 = a3;
  if ([v3 count])
  {
    v4 = v3;
    performBlockOnMainThread();
  }
}

void __49__ICBundleChangeObserver_addObserversForObjects___block_invoke(uint64_t a1)
{
  v15 = *MEMORY[0x277D85DE8];
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v2 = [*(a1 + 32) allKeys];
  v3 = [v2 countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v11;
    do
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v11 != v5)
        {
          objc_enumerationMutation(v2);
        }

        v7 = *(*(&v10 + 1) + 8 * i);
        v8 = *(a1 + 40);
        v9 = [*(a1 + 32) objectForKeyedSubscript:v7];
        [v8 addObserverForBundleWithObjectID:v7 url:v9];
      }

      v4 = [v2 countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v4);
  }
}

- (void)addObserverForBundleWithObjectID:(id)a3 url:(id)a4
{
  v6 = a3;
  v7 = a4;
  if (([MEMORY[0x277CCACC8] isMainThread] & 1) == 0)
  {
    [MEMORY[0x277D36198] handleFailedAssertWithCondition:"[NSThread isMainThread]" functionName:"-[ICBundleChangeObserver addObserverForBundleWithObjectID:url:]" simulateCrash:1 showAlert:0 format:@"Must be on main thread here"];
  }

  v8 = [(ICBundleChangeObserver *)self filePresenters];
  v9 = [v8 objectForKeyedSubscript:v7];

  if (!v9)
  {
    v10 = [ICBundleChangeFilePresenter alloc];
    v11 = [(ICBundleChangeObserver *)self managedObjectContext];
    v12 = [(ICBundleChangeFilePresenter *)v10 initWithObjectID:v6 url:v7 managedObjectContext:v11];

    v13 = [(ICBundleChangeObserver *)self mutableFilePresenters];
    [v13 setObject:v12 forKeyedSubscript:v7];

    if ([v6 ic_isEntityOfClass:objc_opt_class()])
    {
      objc_initWeak(&location, self);
      v16[0] = MEMORY[0x277D85DD0];
      v16[1] = 3221225472;
      v16[2] = __63__ICBundleChangeObserver_addObserverForBundleWithObjectID_url___block_invoke;
      v16[3] = &unk_278197A88;
      objc_copyWeak(&v18, &location);
      v17 = v6;
      [(ICBundleChangeFilePresenter *)v12 setPresentedItemDidApplyChanges:v16];

      objc_destroyWeak(&v18);
      objc_destroyWeak(&location);
    }

    if ([(ICBundleChangeObserver *)self isObserving])
    {
      [MEMORY[0x277CCA9E8] addFilePresenter:v12];
      v14 = [(ICBundleChangeObserver *)self didChangeFilePresenters];

      if (v14)
      {
        v15 = [(ICBundleChangeObserver *)self didChangeFilePresenters];
        v15[2]();
      }
    }
  }
}

void __63__ICBundleChangeObserver_addObserverForBundleWithObjectID_url___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    v5 = WeakRetained;
    v3 = [WeakRetained attachmentDidChange];

    WeakRetained = v5;
    if (v3)
    {
      v4 = [v5 attachmentDidChange];
      v4[2](v4, *(a1 + 32));

      WeakRetained = v5;
    }
  }
}

- (void)removeObserverForBundleWithURL:(id)a3
{
  v9 = a3;
  v4 = [(ICBundleChangeObserver *)self mutableFilePresenters];
  v5 = [v4 objectForKeyedSubscript:v9];

  if (v5)
  {
    v6 = [(ICBundleChangeObserver *)self mutableFilePresenters];
    [v6 setObject:0 forKeyedSubscript:v9];

    [MEMORY[0x277CCA9E8] removeFilePresenter:v5];
    v7 = [(ICBundleChangeObserver *)self didChangeFilePresenters];

    if (v7)
    {
      v8 = [(ICBundleChangeObserver *)self didChangeFilePresenters];
      v8[2]();
    }
  }
}

- (void)addManagedObjectContextDidSaveObserver
{
  v4 = [(ICBundleChangeObserver *)self persistentStoreCoordinator];
  v3 = [MEMORY[0x277CCAB98] defaultCenter];
  [v3 addObserver:self selector:sel_contextDidSave_ name:*MEMORY[0x277CBE1B0] object:v4];
}

- (void)removeManagedObjectContextDidSaveObserver
{
  v4 = [(ICBundleChangeObserver *)self persistentStoreCoordinator];
  v3 = [MEMORY[0x277CCAB98] defaultCenter];
  [v3 removeObserver:self name:*MEMORY[0x277CBE1B0] object:v4];
}

- (id)filePresenters
{
  v2 = [(ICBundleChangeObserver *)self mutableFilePresenters];
  v3 = [v2 copy];

  return v3;
}

- (void)processObjectIDs:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(ICBundleChangeObserver *)self processingQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __54__ICBundleChangeObserver_processObjectIDs_completion___block_invoke;
  block[3] = &unk_278194E38;
  block[4] = self;
  v12 = v6;
  v13 = v7;
  v9 = v7;
  v10 = v6;
  dispatch_async(v8, block);
}

void __54__ICBundleChangeObserver_processObjectIDs_completion___block_invoke(id *a1)
{
  v2 = [a1[4] managedObjectContext];
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __54__ICBundleChangeObserver_processObjectIDs_completion___block_invoke_2;
  v4[3] = &unk_278194E38;
  v5 = a1[5];
  v6 = v2;
  v7 = a1[6];
  v3 = v2;
  [v3 performBlockAndWait:v4];
}

void __54__ICBundleChangeObserver_processObjectIDs_completion___block_invoke_2(uint64_t a1)
{
  v1 = a1;
  v31 = *MEMORY[0x277D85DE8];
  v25 = [MEMORY[0x277CBEB38] dictionaryWithCapacity:{objc_msgSend(*(a1 + 32), "count")}];
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  obj = *(v1 + 32);
  v2 = [obj countByEnumeratingWithState:&v26 objects:v30 count:16];
  if (v2)
  {
    v3 = v2;
    v4 = *v27;
    v5 = 0x278192000uLL;
    v6 = 0x278192000uLL;
    do
    {
      v7 = 0;
      v23 = v3;
      do
      {
        if (*v27 != v4)
        {
          objc_enumerationMutation(obj);
        }

        v8 = *(*(&v26 + 1) + 8 * v7);
        if ([v8 ic_isEntityOfClass:objc_opt_class()])
        {
          v9 = v4;
          v10 = v6;
          v11 = v5;
          v12 = v1;
          v13 = [*(v1 + 40) objectWithID:v8];
          v14 = [v13 identifier];
          objc_opt_class();
          v15 = [v13 attachmentModel];
          v16 = ICDynamicCast();

          if (v16)
          {
            v17 = v14 == 0;
          }

          else
          {
            v17 = 1;
          }

          if (!v17)
          {
            v18 = [v16 paperBundleURL];
            [v25 setObject:v18 forKeyedSubscript:v8];
          }

          v5 = v11;
          v6 = v10;
          v1 = v12;
          v4 = v9;
          v3 = v23;
        }

        if ([v8 ic_isEntityOfClass:objc_opt_class()])
        {
          v19 = [*(v1 + 40) objectWithID:v8];
          v20 = [v19 mediaURL];
          [v25 setObject:v20 forKeyedSubscript:v8];
        }

        ++v7;
      }

      while (v3 != v7);
      v3 = [obj countByEnumeratingWithState:&v26 objects:v30 count:16];
    }

    while (v3);
  }

  v21 = *(v1 + 48);
  v22 = [v25 copy];
  (*(v21 + 16))(v21, v22);
}

@end