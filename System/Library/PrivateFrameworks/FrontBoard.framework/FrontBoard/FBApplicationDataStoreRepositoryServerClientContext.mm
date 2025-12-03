@interface FBApplicationDataStoreRepositoryServerClientContext
- (FBApplicationDataStoreRepositoryServerClientContext)initWithDataStore:(id)store;
- (FBApplicationDataStoreRepositoryServerClientContextDelegate)delegate;
- (FBSServiceFacilityClientHandle)clientHandle;
- (void)_queue_updateObservers;
- (void)_repositoryInvalidated:(id)invalidated;
- (void)_valueChanged:(id)changed;
- (void)dealloc;
- (void)setInterestedInAllChanges:(BOOL)changes;
- (void)setPrefetchedKeys:(id)keys;
@end

@implementation FBApplicationDataStoreRepositoryServerClientContext

- (FBApplicationDataStoreRepositoryServerClientContext)initWithDataStore:(id)store
{
  storeCopy = store;
  v12.receiver = self;
  v12.super_class = FBApplicationDataStoreRepositoryServerClientContext;
  v6 = [(FBApplicationDataStoreRepositoryServerClientContext *)&v12 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_dataStore, store);
    Serial = BSDispatchQueueCreateSerial();
    queue = v7->_queue;
    v7->_queue = Serial;

    defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
    [defaultCenter addObserver:v7 selector:sel__repositoryInvalidated_ name:@"FBApplicationStoreRepositoryInvalidatedNotification" object:0];
  }

  return v7;
}

- (void)dealloc
{
  defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
  [defaultCenter removeObserver:self];

  v4.receiver = self;
  v4.super_class = FBApplicationDataStoreRepositoryServerClientContext;
  [(FBApplicationDataStoreRepositoryServerClientContext *)&v4 dealloc];
}

- (void)setInterestedInAllChanges:(BOOL)changes
{
  queue = self->_queue;
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __81__FBApplicationDataStoreRepositoryServerClientContext_setInterestedInAllChanges___block_invoke;
  v4[3] = &unk_1E783B948;
  v4[4] = self;
  changesCopy = changes;
  dispatch_sync(queue, v4);
}

uint64_t __81__FBApplicationDataStoreRepositoryServerClientContext_setInterestedInAllChanges___block_invoke(uint64_t result)
{
  v1 = *(result + 32);
  v2 = *(result + 40);
  if (*(v1 + 32) != v2)
  {
    *(v1 + 32) = v2;
    return [*(result + 32) _queue_updateObservers];
  }

  return result;
}

- (void)setPrefetchedKeys:(id)keys
{
  keysCopy = keys;
  queue = self->_queue;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __73__FBApplicationDataStoreRepositoryServerClientContext_setPrefetchedKeys___block_invoke;
  v7[3] = &unk_1E783B240;
  v7[4] = self;
  v8 = keysCopy;
  v6 = keysCopy;
  dispatch_sync(queue, v7);
}

uint64_t __73__FBApplicationDataStoreRepositoryServerClientContext_setPrefetchedKeys___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 40) copy];
  v3 = *(a1 + 32);
  v4 = *(v3 + 16);
  *(v3 + 16) = v2;

  v5 = *(a1 + 32);

  return [v5 _queue_updateObservers];
}

- (void)_queue_updateObservers
{
  if ([(NSSet *)self->_prefetchedKeys count])
  {
    interestedInAllChanges = 1;
  }

  else
  {
    interestedInAllChanges = self->_interestedInAllChanges;
  }

  v4 = interestedInAllChanges;
  if (self->_observingChanges != v4)
  {
    self->_observingChanges = v4;
    defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
    v6 = defaultCenter;
    if (self->_observingChanges)
    {
      [defaultCenter addObserver:self selector:sel__valueChanged_ name:@"FBApplicationStoreRepositoryChangeNotification" object:0];
    }

    else
    {
      [defaultCenter removeObserver:self name:@"FBApplicationStoreRepositoryChangeNotification" object:0];
    }
  }
}

- (void)_valueChanged:(id)changed
{
  changedCopy = changed;
  userInfo = [changedCopy userInfo];
  v11 = [userInfo objectForKey:@"FBApplicationStoreRepositoryChangeApp"];

  userInfo2 = [changedCopy userInfo];
  v7 = [userInfo2 objectForKey:@"FBApplicationStoreRepositoryChangeKey"];

  userInfo3 = [changedCopy userInfo];

  v9 = [userInfo3 objectForKey:@"FBApplicationStoreRepositoryChangeValue"];

  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [WeakRetained applicationDataStoreRepositoryClientContext:self valueChangedForObject:v9 key:v7 appID:v11];
}

- (void)_repositoryInvalidated:(id)invalidated
{
  userInfo = [invalidated userInfo];
  v6 = [userInfo objectForKey:@"FBApplicationStoreRepositoryChangeApp"];

  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [WeakRetained applicationDataStoreRepositoryClientContext:self repositoryInvalidatedForAppID:v6];
}

- (FBApplicationDataStoreRepositoryServerClientContextDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (FBSServiceFacilityClientHandle)clientHandle
{
  WeakRetained = objc_loadWeakRetained(&self->_client);

  return WeakRetained;
}

@end