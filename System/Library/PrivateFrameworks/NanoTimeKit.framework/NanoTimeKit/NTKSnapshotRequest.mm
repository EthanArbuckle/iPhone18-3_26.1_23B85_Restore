@interface NTKSnapshotRequest
- (NTKSnapshotLoadState)loadState;
- (NTKSnapshotRequest)init;
- (id)observeChangesToLoadStateWithPriority:(unint64_t)priority callback:(id)callback;
- (unint64_t)priority;
- (void)observeChangesToLoadStateWithToken:(id)token;
- (void)setLoadState:(id)state;
- (void)stopObservingChanges:(id)changes;
- (void)updatePriority;
@end

@implementation NTKSnapshotRequest

- (NTKSnapshotRequest)init
{
  v9.receiver = self;
  v9.super_class = NTKSnapshotRequest;
  v2 = [(NTKSnapshotRequest *)&v9 init];
  v3 = v2;
  if (v2)
  {
    v2->_lock._os_unfair_lock_opaque = 0;
    weakObjectsHashTable = [MEMORY[0x277CCAA50] weakObjectsHashTable];
    lock_tokens = v3->_lock_tokens;
    v3->_lock_tokens = weakObjectsHashTable;

    v6 = +[NTKSnapshotLoadState pending];
    lock_loadState = v3->_lock_loadState;
    v3->_lock_loadState = v6;

    v3->_lock_priority = 1;
  }

  return v3;
}

- (NTKSnapshotLoadState)loadState
{
  os_unfair_lock_lock(&self->_lock);
  v3 = self->_lock_loadState;
  os_unfair_lock_unlock(&self->_lock);

  return v3;
}

- (void)setLoadState:(id)state
{
  stateCopy = state;
  os_unfair_lock_lock(&self->_lock);
  objc_storeStrong(&self->_lock_loadState, state);
  allObjects = [(NSHashTable *)self->_lock_tokens allObjects];
  os_unfair_lock_unlock(&self->_lock);
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 3221225472;
  aBlock[2] = __35__NTKSnapshotRequest_setLoadState___block_invoke;
  aBlock[3] = &unk_27877E438;
  v7 = allObjects;
  v13 = v7;
  v8 = stateCopy;
  v14 = v8;
  v9 = _Block_copy(aBlock);
  if ([MEMORY[0x277CCACC8] isMainThread])
  {
    v9[2](v9);
  }

  else
  {
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __35__NTKSnapshotRequest_setLoadState___block_invoke_2;
    block[3] = &unk_27877E960;
    v11 = v9;
    dispatch_async(MEMORY[0x277D85CD0], block);
  }
}

void __35__NTKSnapshotRequest_setLoadState___block_invoke(uint64_t a1)
{
  v14 = *MEMORY[0x277D85DE8];
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v2 = *(a1 + 32);
  v3 = [v2 countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v10;
    do
    {
      v6 = 0;
      do
      {
        if (*v10 != v5)
        {
          objc_enumerationMutation(v2);
        }

        v7 = [*(*(&v9 + 1) + 8 * v6) callback];
        v8 = v7;
        if (v7)
        {
          (*(v7 + 16))(v7, *(a1 + 40));
        }

        ++v6;
      }

      while (v4 != v6);
      v4 = [v2 countByEnumeratingWithState:&v9 objects:v13 count:16];
    }

    while (v4);
  }
}

- (void)updatePriority
{
  os_unfair_lock_lock(&self->_lock);
  allObjects = [(NSHashTable *)self->_lock_tokens allObjects];
  v5 = 0;
  v6 = &v5;
  v7 = 0x2020000000;
  v8 = 1;
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __36__NTKSnapshotRequest_updatePriority__block_invoke;
  v4[3] = &unk_278781D70;
  v4[4] = &v5;
  [allObjects enumerateObjectsUsingBlock:v4];
  self->_lock_priority = v6[3];
  os_unfair_lock_unlock(&self->_lock);
  _Block_object_dispose(&v5, 8);
}

unint64_t __36__NTKSnapshotRequest_updatePriority__block_invoke(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  result = [a2 priority];
  v7 = *(*(a1 + 32) + 8);
  if (result > *(v7 + 24))
  {
    *(v7 + 24) = result;
  }

  if (result == 3)
  {
    *a4 = 1;
  }

  return result;
}

- (unint64_t)priority
{
  os_unfair_lock_lock(&self->_lock);
  lock_priority = self->_lock_priority;
  os_unfair_lock_unlock(&self->_lock);
  return lock_priority;
}

- (void)observeChangesToLoadStateWithToken:(id)token
{
  tokenCopy = token;
  os_unfair_lock_lock(&self->_lock);
  [(NSHashTable *)self->_lock_tokens addObject:tokenCopy];
  v5 = self->_lock_loadState;
  os_unfair_lock_unlock(&self->_lock);
  callback = [tokenCopy callback];
  if (callback)
  {
    if ([MEMORY[0x277CCACC8] isMainThread])
    {
      (callback)[2](callback, v5);
    }

    else
    {
      v7 = MEMORY[0x277D85DD0];
      v8 = 3221225472;
      v9 = __57__NTKSnapshotRequest_observeChangesToLoadStateWithToken___block_invoke;
      v10 = &unk_27877E570;
      v12 = callback;
      v11 = v5;
      dispatch_async(MEMORY[0x277D85CD0], &v7);
    }
  }

  [tokenCopy setRequest:{self, v7, v8, v9, v10}];
  [(NTKSnapshotRequest *)self updatePriority];
}

- (id)observeChangesToLoadStateWithPriority:(unint64_t)priority callback:(id)callback
{
  callbackCopy = callback;
  v7 = [[NTKSnapshotToken alloc] initWithPriority:priority callback:callbackCopy];

  [(NTKSnapshotRequest *)self observeChangesToLoadStateWithToken:v7];

  return v7;
}

- (void)stopObservingChanges:(id)changes
{
  changesCopy = changes;
  os_unfair_lock_lock(&self->_lock);
  [(NSHashTable *)self->_lock_tokens removeObject:changesCopy];

  os_unfair_lock_unlock(&self->_lock);

  [(NTKSnapshotRequest *)self updatePriority];
}

@end