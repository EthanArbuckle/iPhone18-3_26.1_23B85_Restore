@interface PKGroup
- (id)description;
- (id)initWithCatalogGroup:(void *)group passes:(void *)passes states:;
- (id)observers;
- (id)passAtIndex:(unint64_t)index;
- (id)stateAtIndex:(unint64_t)index;
- (uint64_t)_indexOfUniqueID:(void *)d;
- (uint64_t)containsPassesInAdditionToUniqueID:(uint64_t)d;
- (unint64_t)indexForPassUniqueID:(id)d;
- (unint64_t)passCount;
- (void)_moveUniqueID:(uint64_t)d toIndex:(int)index notify:;
- (void)_removeUniqueID:(int)d notify:;
- (void)addGroupObserver:(id)observer;
- (void)removeGroupObserver:(id)observer;
@end

@implementation PKGroup

- (unint64_t)passCount
{
  uniqueIDs = [(PKCatalogGroup *)self->_catalogGroup uniqueIDs];
  v3 = [uniqueIDs count];

  return v3;
}

- (id)initWithCatalogGroup:(void *)group passes:(void *)passes states:
{
  v33 = *MEMORY[0x1E69E9840];
  v8 = a2;
  groupCopy = group;
  passesCopy = passes;
  if (self)
  {
    v31.receiver = self;
    v31.super_class = PKGroup;
    v11 = objc_msgSendSuper2(&v31, sel_init);
    self = v11;
    if (v11)
    {
      v25 = v8;
      objc_storeStrong(v11 + 3, a2);
      v12 = objc_alloc_init(MEMORY[0x1E695DF90]);
      v13 = self[4];
      self[4] = v12;

      v14 = objc_alloc_init(MEMORY[0x1E695DF90]);
      v15 = self[5];
      self[5] = v14;

      *(self + 4) = 0;
      [self[3] uniqueIDs];
      v27 = 0u;
      v28 = 0u;
      v29 = 0u;
      v26 = v30 = 0u;
      v16 = [v26 copy];
      v17 = [v16 countByEnumeratingWithState:&v27 objects:v32 count:16];
      if (v17)
      {
        v18 = v17;
        v19 = *v28;
        do
        {
          for (i = 0; i != v18; ++i)
          {
            if (*v28 != v19)
            {
              objc_enumerationMutation(v16);
            }

            v21 = *(*(&v27 + 1) + 8 * i);
            v22 = [groupCopy objectForKey:{v21, v25}];
            if (v22)
            {
              [self[4] setObject:v22 forKeyedSubscript:v21];
              v23 = [passesCopy objectForKeyedSubscript:v21];
              [self[5] setObject:v23 forKeyedSubscript:v21];
            }

            else
            {
              [v26 removeObject:v21];
            }
          }

          v18 = [v16 countByEnumeratingWithState:&v27 objects:v32 count:16];
        }

        while (v18);
      }

      v8 = v25;
    }
  }

  return self;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  groupID = [(PKCatalogGroup *)self->_catalogGroup groupID];
  uniqueIDs = [(PKCatalogGroup *)self->_catalogGroup uniqueIDs];
  v6 = [v3 stringWithFormat:@"(%@) %@", groupID, uniqueIDs];

  return v6;
}

- (id)passAtIndex:(unint64_t)index
{
  uniqueIDs = [(PKCatalogGroup *)self->_catalogGroup uniqueIDs];
  if ([uniqueIDs count] <= index)
  {
    v7 = 0;
  }

  else
  {
    v6 = [uniqueIDs objectAtIndex:index];
    v7 = [(NSMutableDictionary *)self->_passes objectForKey:v6];
  }

  return v7;
}

- (id)stateAtIndex:(unint64_t)index
{
  v4 = [(PKGroup *)self passAtIndex:index];
  v5 = v4;
  if (v4)
  {
    uniqueID = [v4 uniqueID];
    v7 = [(PKGroup *)self stateForPassUniqueID:uniqueID];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (void)_moveUniqueID:(uint64_t)d toIndex:(int)index notify:
{
  v21 = *MEMORY[0x1E69E9840];
  v7 = a2;
  v8 = [(PKGroup *)*(self + 24) _indexOfUniqueID:v7];
  if (v8 != d)
  {
    v9 = v8;
    uniqueIDs = [*(self + 24) uniqueIDs];
    [uniqueIDs removeObjectAtIndex:v9];
    [uniqueIDs insertObject:v7 atIndex:d];
    if (index)
    {
      observers = [(PKGroup *)self observers];
      v16 = 0u;
      v17 = 0u;
      v18 = 0u;
      v19 = 0u;
      v12 = [observers countByEnumeratingWithState:&v16 objects:v20 count:16];
      if (v12)
      {
        v13 = v12;
        v14 = *v17;
        do
        {
          v15 = 0;
          do
          {
            if (*v17 != v14)
            {
              objc_enumerationMutation(observers);
            }

            [*(*(&v16 + 1) + 8 * v15++) group:self didMovePassFromIndex:v9 toIndex:d];
          }

          while (v13 != v15);
          v13 = [observers countByEnumeratingWithState:&v16 objects:v20 count:16];
        }

        while (v13);
      }
    }
  }
}

- (unint64_t)indexForPassUniqueID:(id)d
{
  catalogGroup = self->_catalogGroup;
  dCopy = d;
  uniqueIDs = [(PKCatalogGroup *)catalogGroup uniqueIDs];
  v6 = [uniqueIDs indexOfObject:dCopy];

  return v6;
}

- (id)observers
{
  os_unfair_lock_lock((self + 16));
  allObjects = [*(self + 8) allObjects];
  v3 = [allObjects copy];

  os_unfair_lock_unlock((self + 16));

  return v3;
}

- (uint64_t)_indexOfUniqueID:(void *)d
{
  v3 = a2;
  uniqueIDs = [d uniqueIDs];
  v5 = [uniqueIDs indexOfObject:v3];

  return v5;
}

- (void)_removeUniqueID:(int)d notify:
{
  v19 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = [self[4] objectForKey:v5];
  v7 = [(PKGroup *)self[3] _indexOfUniqueID:v5];
  [self[4] removeObjectForKey:v5];
  [self[5] removeObjectForKey:v5];
  uniqueIDs = [self[3] uniqueIDs];
  [uniqueIDs removeObjectAtIndex:v7];

  if (d)
  {
    observers = [(PKGroup *)self observers];
    v14 = 0u;
    v15 = 0u;
    v16 = 0u;
    v17 = 0u;
    v10 = [observers countByEnumeratingWithState:&v14 objects:v18 count:16];
    if (v10)
    {
      v11 = v10;
      v12 = *v15;
      do
      {
        v13 = 0;
        do
        {
          if (*v15 != v12)
          {
            objc_enumerationMutation(observers);
          }

          [*(*(&v14 + 1) + 8 * v13++) group:self didRemovePass:v6 atIndex:v7];
        }

        while (v11 != v13);
        v11 = [observers countByEnumeratingWithState:&v14 objects:v18 count:16];
      }

      while (v11);
    }
  }
}

- (uint64_t)containsPassesInAdditionToUniqueID:(uint64_t)d
{
  v3 = a2;
  if (d && ([*(d + 24) uniqueIDs], v4 = objc_claimAutoreleasedReturnValue(), v5 = objc_msgSend(v4, "count"), v4, v5))
  {
    v6 = 1;
    if (v3 && v5 == 1)
    {
      uniqueIDs = [*(d + 24) uniqueIDs];
      v8 = [uniqueIDs objectAtIndexedSubscript:0];
      v9 = v3;
      if (v8 == v9)
      {
        v6 = 0;
      }

      else if (v8)
      {
        v6 = [v8 isEqualToString:v9] ^ 1;
      }
    }
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (void)addGroupObserver:(id)observer
{
  observerCopy = observer;
  os_unfair_lock_lock(&self->_observersLock);
  observers = self->_observers;
  if (!observers)
  {
    pk_weakObjectsHashTableUsingPointerPersonality = [MEMORY[0x1E696AC70] pk_weakObjectsHashTableUsingPointerPersonality];
    v6 = self->_observers;
    self->_observers = pk_weakObjectsHashTableUsingPointerPersonality;

    observers = self->_observers;
  }

  [(NSHashTable *)observers addObject:observerCopy];
  os_unfair_lock_unlock(&self->_observersLock);
}

- (void)removeGroupObserver:(id)observer
{
  observerCopy = observer;
  os_unfair_lock_lock(&self->_observersLock);
  [(NSHashTable *)self->_observers removeObject:observerCopy];

  os_unfair_lock_unlock(&self->_observersLock);
}

@end