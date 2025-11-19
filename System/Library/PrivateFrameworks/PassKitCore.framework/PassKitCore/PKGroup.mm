@interface PKGroup
- (id)description;
- (id)initWithCatalogGroup:(void *)a3 passes:(void *)a4 states:;
- (id)observers;
- (id)passAtIndex:(unint64_t)a3;
- (id)stateAtIndex:(unint64_t)a3;
- (uint64_t)_indexOfUniqueID:(void *)a1;
- (uint64_t)containsPassesInAdditionToUniqueID:(uint64_t)a1;
- (unint64_t)indexForPassUniqueID:(id)a3;
- (unint64_t)passCount;
- (void)_moveUniqueID:(uint64_t)a3 toIndex:(int)a4 notify:;
- (void)_removeUniqueID:(int)a3 notify:;
- (void)addGroupObserver:(id)a3;
- (void)removeGroupObserver:(id)a3;
@end

@implementation PKGroup

- (unint64_t)passCount
{
  v2 = [(PKCatalogGroup *)self->_catalogGroup uniqueIDs];
  v3 = [v2 count];

  return v3;
}

- (id)initWithCatalogGroup:(void *)a3 passes:(void *)a4 states:
{
  v33 = *MEMORY[0x1E69E9840];
  v8 = a2;
  v9 = a3;
  v10 = a4;
  if (a1)
  {
    v31.receiver = a1;
    v31.super_class = PKGroup;
    v11 = objc_msgSendSuper2(&v31, sel_init);
    a1 = v11;
    if (v11)
    {
      v25 = v8;
      objc_storeStrong(v11 + 3, a2);
      v12 = objc_alloc_init(MEMORY[0x1E695DF90]);
      v13 = a1[4];
      a1[4] = v12;

      v14 = objc_alloc_init(MEMORY[0x1E695DF90]);
      v15 = a1[5];
      a1[5] = v14;

      *(a1 + 4) = 0;
      [a1[3] uniqueIDs];
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
            v22 = [v9 objectForKey:{v21, v25}];
            if (v22)
            {
              [a1[4] setObject:v22 forKeyedSubscript:v21];
              v23 = [v10 objectForKeyedSubscript:v21];
              [a1[5] setObject:v23 forKeyedSubscript:v21];
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

  return a1;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = [(PKCatalogGroup *)self->_catalogGroup groupID];
  v5 = [(PKCatalogGroup *)self->_catalogGroup uniqueIDs];
  v6 = [v3 stringWithFormat:@"(%@) %@", v4, v5];

  return v6;
}

- (id)passAtIndex:(unint64_t)a3
{
  v5 = [(PKCatalogGroup *)self->_catalogGroup uniqueIDs];
  if ([v5 count] <= a3)
  {
    v7 = 0;
  }

  else
  {
    v6 = [v5 objectAtIndex:a3];
    v7 = [(NSMutableDictionary *)self->_passes objectForKey:v6];
  }

  return v7;
}

- (id)stateAtIndex:(unint64_t)a3
{
  v4 = [(PKGroup *)self passAtIndex:a3];
  v5 = v4;
  if (v4)
  {
    v6 = [v4 uniqueID];
    v7 = [(PKGroup *)self stateForPassUniqueID:v6];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (void)_moveUniqueID:(uint64_t)a3 toIndex:(int)a4 notify:
{
  v21 = *MEMORY[0x1E69E9840];
  v7 = a2;
  v8 = [(PKGroup *)*(a1 + 24) _indexOfUniqueID:v7];
  if (v8 != a3)
  {
    v9 = v8;
    v10 = [*(a1 + 24) uniqueIDs];
    [v10 removeObjectAtIndex:v9];
    [v10 insertObject:v7 atIndex:a3];
    if (a4)
    {
      v11 = [(PKGroup *)a1 observers];
      v16 = 0u;
      v17 = 0u;
      v18 = 0u;
      v19 = 0u;
      v12 = [v11 countByEnumeratingWithState:&v16 objects:v20 count:16];
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
              objc_enumerationMutation(v11);
            }

            [*(*(&v16 + 1) + 8 * v15++) group:a1 didMovePassFromIndex:v9 toIndex:a3];
          }

          while (v13 != v15);
          v13 = [v11 countByEnumeratingWithState:&v16 objects:v20 count:16];
        }

        while (v13);
      }
    }
  }
}

- (unint64_t)indexForPassUniqueID:(id)a3
{
  catalogGroup = self->_catalogGroup;
  v4 = a3;
  v5 = [(PKCatalogGroup *)catalogGroup uniqueIDs];
  v6 = [v5 indexOfObject:v4];

  return v6;
}

- (id)observers
{
  os_unfair_lock_lock((a1 + 16));
  v2 = [*(a1 + 8) allObjects];
  v3 = [v2 copy];

  os_unfair_lock_unlock((a1 + 16));

  return v3;
}

- (uint64_t)_indexOfUniqueID:(void *)a1
{
  v3 = a2;
  v4 = [a1 uniqueIDs];
  v5 = [v4 indexOfObject:v3];

  return v5;
}

- (void)_removeUniqueID:(int)a3 notify:
{
  v19 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = [a1[4] objectForKey:v5];
  v7 = [(PKGroup *)a1[3] _indexOfUniqueID:v5];
  [a1[4] removeObjectForKey:v5];
  [a1[5] removeObjectForKey:v5];
  v8 = [a1[3] uniqueIDs];
  [v8 removeObjectAtIndex:v7];

  if (a3)
  {
    v9 = [(PKGroup *)a1 observers];
    v14 = 0u;
    v15 = 0u;
    v16 = 0u;
    v17 = 0u;
    v10 = [v9 countByEnumeratingWithState:&v14 objects:v18 count:16];
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
            objc_enumerationMutation(v9);
          }

          [*(*(&v14 + 1) + 8 * v13++) group:a1 didRemovePass:v6 atIndex:v7];
        }

        while (v11 != v13);
        v11 = [v9 countByEnumeratingWithState:&v14 objects:v18 count:16];
      }

      while (v11);
    }
  }
}

- (uint64_t)containsPassesInAdditionToUniqueID:(uint64_t)a1
{
  v3 = a2;
  if (a1 && ([*(a1 + 24) uniqueIDs], v4 = objc_claimAutoreleasedReturnValue(), v5 = objc_msgSend(v4, "count"), v4, v5))
  {
    v6 = 1;
    if (v3 && v5 == 1)
    {
      v7 = [*(a1 + 24) uniqueIDs];
      v8 = [v7 objectAtIndexedSubscript:0];
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

- (void)addGroupObserver:(id)a3
{
  v7 = a3;
  os_unfair_lock_lock(&self->_observersLock);
  observers = self->_observers;
  if (!observers)
  {
    v5 = [MEMORY[0x1E696AC70] pk_weakObjectsHashTableUsingPointerPersonality];
    v6 = self->_observers;
    self->_observers = v5;

    observers = self->_observers;
  }

  [(NSHashTable *)observers addObject:v7];
  os_unfair_lock_unlock(&self->_observersLock);
}

- (void)removeGroupObserver:(id)a3
{
  v4 = a3;
  os_unfair_lock_lock(&self->_observersLock);
  [(NSHashTable *)self->_observers removeObject:v4];

  os_unfair_lock_unlock(&self->_observersLock);
}

@end