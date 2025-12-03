@interface ICBundleChangeObserver
- (ICBundleChangeObserver)init;
- (ICBundleChangeObserver)initWithPersistentStoreCoordinator:(id)coordinator managedObjectContext:(id)context;
- (id)filePresenters;
- (void)addManagedObjectContextDidSaveObserver;
- (void)addObserverForBundleWithObjectID:(id)d url:(id)url;
- (void)addObserversForExistingPaperAttachments;
- (void)addObserversForObjects:(id)objects;
- (void)contextDidSave:(id)save;
- (void)processObjectIDs:(id)ds completion:(id)completion;
- (void)removeManagedObjectContextDidSaveObserver;
- (void)removeObserverForBundleWithURL:(id)l;
- (void)start;
- (void)stopAndNotifyObservers:(BOOL)observers;
@end

@implementation ICBundleChangeObserver

- (ICBundleChangeObserver)initWithPersistentStoreCoordinator:(id)coordinator managedObjectContext:(id)context
{
  coordinatorCopy = coordinator;
  contextCopy = context;
  v19.receiver = self;
  v19.super_class = ICBundleChangeObserver;
  v9 = [(ICBundleChangeObserver *)&v19 init];
  v10 = v9;
  if (v9)
  {
    v9->_isObserving = 0;
    objc_storeStrong(&v9->_persistentStoreCoordinator, coordinator);
    objc_storeStrong(&v10->_managedObjectContext, context);
    dictionary = [MEMORY[0x277CBEB38] dictionary];
    mutableFilePresenters = v10->_mutableFilePresenters;
    v10->_mutableFilePresenters = dictionary;

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
  persistentStoreCoordinator = [v3 persistentStoreCoordinator];
  workerManagedObjectContext = [v3 workerManagedObjectContext];
  v6 = [(ICBundleChangeObserver *)self initWithPersistentStoreCoordinator:persistentStoreCoordinator managedObjectContext:workerManagedObjectContext];

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
    mutableFilePresenters = [(ICBundleChangeObserver *)self mutableFilePresenters];
    allValues = [mutableFilePresenters allValues];

    v5 = [allValues countByEnumeratingWithState:&v11 objects:v15 count:16];
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
            objc_enumerationMutation(allValues);
          }

          [MEMORY[0x277CCA9E8] addFilePresenter:*(*(&v11 + 1) + 8 * v8)];
          didChangeFilePresenters = [(ICBundleChangeObserver *)self didChangeFilePresenters];

          if (didChangeFilePresenters)
          {
            didChangeFilePresenters2 = [(ICBundleChangeObserver *)self didChangeFilePresenters];
            didChangeFilePresenters2[2]();
          }

          ++v8;
        }

        while (v6 != v8);
        v6 = [allValues countByEnumeratingWithState:&v11 objects:v15 count:16];
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

- (void)stopAndNotifyObservers:(BOOL)observers
{
  observersCopy = observers;
  v18 = *MEMORY[0x277D85DE8];
  if ([(ICBundleChangeObserver *)self isObserving])
  {
    [(ICBundleChangeObserver *)self removeManagedObjectContextDidSaveObserver];
    v15 = 0u;
    v16 = 0u;
    v13 = 0u;
    v14 = 0u;
    mutableFilePresenters = [(ICBundleChangeObserver *)self mutableFilePresenters];
    allValues = [mutableFilePresenters allValues];

    v7 = [allValues countByEnumeratingWithState:&v13 objects:v17 count:16];
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
            objc_enumerationMutation(allValues);
          }

          [MEMORY[0x277CCA9E8] removeFilePresenter:*(*(&v13 + 1) + 8 * v10)];
          if (observersCopy)
          {
            didChangeFilePresenters = [(ICBundleChangeObserver *)self didChangeFilePresenters];

            if (didChangeFilePresenters)
            {
              didChangeFilePresenters2 = [(ICBundleChangeObserver *)self didChangeFilePresenters];
              didChangeFilePresenters2[2]();
            }
          }

          ++v10;
        }

        while (v8 != v10);
        v8 = [allValues countByEnumeratingWithState:&v13 objects:v17 count:16];
      }

      while (v8);
    }

    [(ICBundleChangeObserver *)self setIsObserving:0];
  }
}

- (void)contextDidSave:(id)save
{
  saveCopy = save;
  v5 = objc_autoreleasePoolPush();
  userInfo = [saveCopy userInfo];
  v7 = [userInfo objectForKeyedSubscript:*MEMORY[0x277CBE180]];

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
  processingQueue = [(ICBundleChangeObserver *)self processingQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __65__ICBundleChangeObserver_addObserversForExistingPaperAttachments__block_invoke;
  block[3] = &unk_278194B00;
  block[4] = self;
  dispatch_async(processingQueue, block);
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

- (void)addObserversForObjects:(id)objects
{
  objectsCopy = objects;
  if ([objectsCopy count])
  {
    v4 = objectsCopy;
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

- (void)addObserverForBundleWithObjectID:(id)d url:(id)url
{
  dCopy = d;
  urlCopy = url;
  if (([MEMORY[0x277CCACC8] isMainThread] & 1) == 0)
  {
    [MEMORY[0x277D36198] handleFailedAssertWithCondition:"[NSThread isMainThread]" functionName:"-[ICBundleChangeObserver addObserverForBundleWithObjectID:url:]" simulateCrash:1 showAlert:0 format:@"Must be on main thread here"];
  }

  filePresenters = [(ICBundleChangeObserver *)self filePresenters];
  v9 = [filePresenters objectForKeyedSubscript:urlCopy];

  if (!v9)
  {
    v10 = [ICBundleChangeFilePresenter alloc];
    managedObjectContext = [(ICBundleChangeObserver *)self managedObjectContext];
    v12 = [(ICBundleChangeFilePresenter *)v10 initWithObjectID:dCopy url:urlCopy managedObjectContext:managedObjectContext];

    mutableFilePresenters = [(ICBundleChangeObserver *)self mutableFilePresenters];
    [mutableFilePresenters setObject:v12 forKeyedSubscript:urlCopy];

    if ([dCopy ic_isEntityOfClass:objc_opt_class()])
    {
      objc_initWeak(&location, self);
      v16[0] = MEMORY[0x277D85DD0];
      v16[1] = 3221225472;
      v16[2] = __63__ICBundleChangeObserver_addObserverForBundleWithObjectID_url___block_invoke;
      v16[3] = &unk_278197A88;
      objc_copyWeak(&v18, &location);
      v17 = dCopy;
      [(ICBundleChangeFilePresenter *)v12 setPresentedItemDidApplyChanges:v16];

      objc_destroyWeak(&v18);
      objc_destroyWeak(&location);
    }

    if ([(ICBundleChangeObserver *)self isObserving])
    {
      [MEMORY[0x277CCA9E8] addFilePresenter:v12];
      didChangeFilePresenters = [(ICBundleChangeObserver *)self didChangeFilePresenters];

      if (didChangeFilePresenters)
      {
        didChangeFilePresenters2 = [(ICBundleChangeObserver *)self didChangeFilePresenters];
        didChangeFilePresenters2[2]();
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

- (void)removeObserverForBundleWithURL:(id)l
{
  lCopy = l;
  mutableFilePresenters = [(ICBundleChangeObserver *)self mutableFilePresenters];
  v5 = [mutableFilePresenters objectForKeyedSubscript:lCopy];

  if (v5)
  {
    mutableFilePresenters2 = [(ICBundleChangeObserver *)self mutableFilePresenters];
    [mutableFilePresenters2 setObject:0 forKeyedSubscript:lCopy];

    [MEMORY[0x277CCA9E8] removeFilePresenter:v5];
    didChangeFilePresenters = [(ICBundleChangeObserver *)self didChangeFilePresenters];

    if (didChangeFilePresenters)
    {
      didChangeFilePresenters2 = [(ICBundleChangeObserver *)self didChangeFilePresenters];
      didChangeFilePresenters2[2]();
    }
  }
}

- (void)addManagedObjectContextDidSaveObserver
{
  persistentStoreCoordinator = [(ICBundleChangeObserver *)self persistentStoreCoordinator];
  defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
  [defaultCenter addObserver:self selector:sel_contextDidSave_ name:*MEMORY[0x277CBE1B0] object:persistentStoreCoordinator];
}

- (void)removeManagedObjectContextDidSaveObserver
{
  persistentStoreCoordinator = [(ICBundleChangeObserver *)self persistentStoreCoordinator];
  defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
  [defaultCenter removeObserver:self name:*MEMORY[0x277CBE1B0] object:persistentStoreCoordinator];
}

- (id)filePresenters
{
  mutableFilePresenters = [(ICBundleChangeObserver *)self mutableFilePresenters];
  v3 = [mutableFilePresenters copy];

  return v3;
}

- (void)processObjectIDs:(id)ds completion:(id)completion
{
  dsCopy = ds;
  completionCopy = completion;
  processingQueue = [(ICBundleChangeObserver *)self processingQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __54__ICBundleChangeObserver_processObjectIDs_completion___block_invoke;
  block[3] = &unk_278194E38;
  block[4] = self;
  v12 = dsCopy;
  v13 = completionCopy;
  v9 = completionCopy;
  v10 = dsCopy;
  dispatch_async(processingQueue, block);
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