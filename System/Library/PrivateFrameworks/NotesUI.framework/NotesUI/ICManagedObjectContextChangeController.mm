@interface ICManagedObjectContextChangeController
- (ICManagedObjectContextChangeController)initWithManagedObjectContexts:(id)contexts delegate:(id)delegate;
- (ICManagedObjectContextChangeControllerDelegate)delegate;
- (NSSet)objectTypeKeys;
- (void)_performUpdatesIfNeeded;
- (void)addObservers;
- (void)dealloc;
- (void)managedObjectContextObjectsDidChange:(id)change;
- (void)performUpdatesIfNeeded;
- (void)performUpdatesIfNeededAndWait;
- (void)removeObservers;
- (void)setUpdateInterval:(double)interval;
@end

@implementation ICManagedObjectContextChangeController

- (void)addObservers
{
  v18 = *MEMORY[0x1E69E9840];
  managedObjectContexts = [(ICManagedObjectContextChangeController *)self managedObjectContexts];

  if (managedObjectContexts)
  {
    v15 = 0u;
    v16 = 0u;
    v13 = 0u;
    v14 = 0u;
    managedObjectContexts2 = [(ICManagedObjectContextChangeController *)self managedObjectContexts];
    v5 = [managedObjectContexts2 countByEnumeratingWithState:&v13 objects:v17 count:16];
    if (v5)
    {
      v6 = v5;
      v7 = *v14;
      v8 = *MEMORY[0x1E695D360];
      do
      {
        for (i = 0; i != v6; ++i)
        {
          if (*v14 != v7)
          {
            objc_enumerationMutation(managedObjectContexts2);
          }

          v10 = *(*(&v13 + 1) + 8 * i);
          defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
          [defaultCenter addObserver:self selector:sel_managedObjectContextObjectsDidChange_ name:v8 object:v10];
        }

        v6 = [managedObjectContexts2 countByEnumeratingWithState:&v13 objects:v17 count:16];
      }

      while (v6);
    }
  }

  else
  {
    defaultCenter2 = [MEMORY[0x1E696AD88] defaultCenter];
    [defaultCenter2 addObserver:self selector:sel_managedObjectContextObjectsDidChange_ name:*MEMORY[0x1E695D360] object:0];
  }
}

- (ICManagedObjectContextChangeController)initWithManagedObjectContexts:(id)contexts delegate:(id)delegate
{
  contextsCopy = contexts;
  delegateCopy = delegate;
  v19.receiver = self;
  v19.super_class = ICManagedObjectContextChangeController;
  v9 = [(ICManagedObjectContextChangeController *)&v19 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_managedObjectContexts, contexts);
    v11 = [MEMORY[0x1E695DFA8] set];
    needsUpdateManagedObjectIDs = v10->_needsUpdateManagedObjectIDs;
    v10->_needsUpdateManagedObjectIDs = v11;

    objc_storeWeak(&v10->_delegate, delegateCopy);
    v10->_objectTypes = 15;
    v13 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v14 = dispatch_queue_create("com.apple.notes.moc-change-controller-object-ids-serial-queue", v13);
    needsUpdateManagedObjectIDsSerialQueue = v10->_needsUpdateManagedObjectIDsSerialQueue;
    v10->_needsUpdateManagedObjectIDsSerialQueue = v14;

    v10->_updateInterval = 0.1;
    v16 = [objc_alloc(MEMORY[0x1E69B7AB0]) initWithTarget:v10 selector:sel_performUpdatesIfNeeded delay:1 waitToFireUntilRequestsStop:1 callOnMainThread:v10->_updateInterval];
    updateSelectorDelayer = v10->_updateSelectorDelayer;
    v10->_updateSelectorDelayer = v16;

    [(ICManagedObjectContextChangeController *)v10 addObservers];
  }

  return v10;
}

- (void)dealloc
{
  [(ICManagedObjectContextChangeController *)self removeObservers];
  v3.receiver = self;
  v3.super_class = ICManagedObjectContextChangeController;
  [(ICManagedObjectContextChangeController *)&v3 dealloc];
}

- (void)performUpdatesIfNeeded
{
  objc_initWeak(&location, self);
  needsUpdateManagedObjectIDsSerialQueue = [(ICManagedObjectContextChangeController *)self needsUpdateManagedObjectIDsSerialQueue];
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __64__ICManagedObjectContextChangeController_performUpdatesIfNeeded__block_invoke;
  v4[3] = &unk_1E846AA18;
  objc_copyWeak(&v5, &location);
  dispatch_async(needsUpdateManagedObjectIDsSerialQueue, v4);

  objc_destroyWeak(&v5);
  objc_destroyWeak(&location);
}

void __64__ICManagedObjectContextChangeController_performUpdatesIfNeeded__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _performUpdatesIfNeeded];
}

- (void)performUpdatesIfNeededAndWait
{
  if (([MEMORY[0x1E696AF00] isMainThread] & 1) == 0)
  {
    [MEMORY[0x1E69B7A38] handleFailedAssertWithCondition:"[NSThread isMainThread]" functionName:"-[ICManagedObjectContextChangeController performUpdatesIfNeededAndWait]" simulateCrash:1 showAlert:0 format:@"Unexpected call from background thread"];
  }

  [(ICManagedObjectContextChangeController *)self _performUpdatesIfNeeded];
}

- (void)setUpdateInterval:(double)interval
{
  self->_updateInterval = interval;
  updateSelectorDelayer = [(ICManagedObjectContextChangeController *)self updateSelectorDelayer];
  [updateSelectorDelayer setDelay:interval];
}

- (void)managedObjectContextObjectsDidChange:(id)change
{
  val = self;
  v27 = *MEMORY[0x1E69E9840];
  changeCopy = change;
  v4 = [MEMORY[0x1E695DFA8] set];
  v24 = 0u;
  v25 = 0u;
  v22 = 0u;
  v23 = 0u;
  objectTypeKeys = [(ICManagedObjectContextChangeController *)val objectTypeKeys];
  v6 = [objectTypeKeys countByEnumeratingWithState:&v22 objects:v26 count:16];
  if (v6)
  {
    v7 = *v23;
    v8 = *MEMORY[0x1E695D4D0];
    do
    {
      v9 = 0;
      do
      {
        if (*v23 != v7)
        {
          objc_enumerationMutation(objectTypeKeys);
        }

        v10 = *(*(&v22 + 1) + 8 * v9);
        userInfo = [changeCopy userInfo];
        v12 = [userInfo objectForKeyedSubscript:v10];

        if ([v10 isEqualToString:v8])
        {
          v13 = [v12 objectsPassingTest:&__block_literal_global_51];

          v12 = v13;
        }

        [v4 unionSet:v12];

        ++v9;
      }

      while (v6 != v9);
      v6 = [objectTypeKeys countByEnumeratingWithState:&v22 objects:v26 count:16];
    }

    while (v6);
  }

  delegate = [(ICManagedObjectContextChangeController *)val delegate];
  v15 = [delegate managedObjectContextChangeController:val managedObjectIDsToUpdateForUpdatedManagedObjects:v4];

  if ([v15 count])
  {
    objc_initWeak(&location, val);
    needsUpdateManagedObjectIDsSerialQueue = [(ICManagedObjectContextChangeController *)val needsUpdateManagedObjectIDsSerialQueue];
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __79__ICManagedObjectContextChangeController_managedObjectContextObjectsDidChange___block_invoke_2;
    block[3] = &unk_1E846A288;
    objc_copyWeak(&v20, &location);
    v19 = v15;
    dispatch_async(needsUpdateManagedObjectIDsSerialQueue, block);

    objc_destroyWeak(&v20);
    objc_destroyWeak(&location);
  }
}

BOOL __79__ICManagedObjectContextChangeController_managedObjectContextObjectsDidChange___block_invoke(uint64_t a1, void *a2)
{
  v2 = [a2 changedValues];
  v3 = [v2 count] != 0;

  return v3;
}

void __79__ICManagedObjectContextChangeController_managedObjectContextObjectsDidChange___block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v3 = WeakRetained;
  if (WeakRetained)
  {
    v4 = [WeakRetained needsUpdateManagedObjectIDs];
    [v4 unionSet:*(a1 + 32)];

    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __79__ICManagedObjectContextChangeController_managedObjectContextObjectsDidChange___block_invoke_3;
    block[3] = &unk_1E846AA18;
    objc_copyWeak(&v6, (a1 + 40));
    dispatch_async(MEMORY[0x1E69E96A0], block);
    objc_destroyWeak(&v6);
  }
}

void __79__ICManagedObjectContextChangeController_managedObjectContextObjectsDidChange___block_invoke_3(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v5 = WeakRetained;
    v2 = [WeakRetained delegate];
    v3 = [v2 managedObjectContextChangeControllerShouldUpdateImmediately:v5];

    WeakRetained = v5;
    if (v3)
    {
      v4 = [v5 updateSelectorDelayer];
      [v4 requestFire];

      WeakRetained = v5;
    }
  }
}

- (void)_performUpdatesIfNeeded
{
  needsUpdateManagedObjectIDs = [(ICManagedObjectContextChangeController *)self needsUpdateManagedObjectIDs];
  v4 = [needsUpdateManagedObjectIDs count];

  if (v4)
  {
    objc_initWeak(&location, self);
    updateSelectorDelayer = [(ICManagedObjectContextChangeController *)self updateSelectorDelayer];
    [updateSelectorDelayer cancelPreviousFireRequests];

    v7 = MEMORY[0x1E69E9820];
    objc_copyWeak(&v8, &location);
    performBlockOnMainThreadAndWait();
    v6 = [(ICManagedObjectContextChangeController *)self needsUpdateManagedObjectIDs:v7];
    [v6 removeAllObjects];

    objc_destroyWeak(&v8);
    objc_destroyWeak(&location);
  }
}

void __65__ICManagedObjectContextChangeController__performUpdatesIfNeeded__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v1 = [WeakRetained delegate];
  v2 = [WeakRetained needsUpdateManagedObjectIDs];
  [v1 managedObjectContextChangeController:WeakRetained performUpdatesForManagedObjectIDs:v2];
}

- (void)removeObservers
{
  v15 = *MEMORY[0x1E69E9840];
  defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  managedObjectContexts = [(ICManagedObjectContextChangeController *)self managedObjectContexts];
  v5 = [managedObjectContexts countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v11;
    v8 = *MEMORY[0x1E695D360];
    do
    {
      v9 = 0;
      do
      {
        if (*v11 != v7)
        {
          objc_enumerationMutation(managedObjectContexts);
        }

        [defaultCenter removeObserver:self name:v8 object:*(*(&v10 + 1) + 8 * v9++)];
      }

      while (v6 != v9);
      v6 = [managedObjectContexts countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v6);
  }
}

- (NSSet)objectTypeKeys
{
  v3 = [MEMORY[0x1E695DFA8] set];
  if (([(ICManagedObjectContextChangeController *)self objectTypes]& 2) != 0)
  {
    [v3 addObject:*MEMORY[0x1E695D328]];
  }

  if (([(ICManagedObjectContextChangeController *)self objectTypes]& 8) != 0)
  {
    [v3 addObject:*MEMORY[0x1E695D468]];
  }

  if (([(ICManagedObjectContextChangeController *)self objectTypes]& 1) != 0)
  {
    [v3 addObject:*MEMORY[0x1E695D4D0]];
  }

  if (([(ICManagedObjectContextChangeController *)self objectTypes]& 4) != 0)
  {
    [v3 addObject:*MEMORY[0x1E695D2F8]];
  }

  if (([(ICManagedObjectContextChangeController *)self objectTypes]& 0x10) != 0)
  {
    [v3 addObject:*MEMORY[0x1E695D340]];
  }

  v4 = [v3 copy];

  return v4;
}

- (ICManagedObjectContextChangeControllerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end