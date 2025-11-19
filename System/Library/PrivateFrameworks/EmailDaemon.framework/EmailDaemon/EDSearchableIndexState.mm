@interface EDSearchableIndexState
- (BOOL)didPreprocessItem:(id)a3;
- (BOOL)needsImmediateProcessing;
- (BOOL)needsToScheduleRefresh;
- (BOOL)needsToScheduleVerification;
- (BOOL)queueContentsAllowsRefresh;
- (EDSearchableIndexState)initWithPendingIdentifierRemovals:(id)a3;
- (NSArray)pendingIdentifiers;
- (id)prepareToIndexItems:(id)a3;
- (id)processBatchOfSize:(unint64_t)a3;
- (id)removePendingDomainRemovals;
- (int64_t)indexItem:(id)a3;
- (int64_t)resume;
- (int64_t)suspend;
- (unint64_t)countOfItemsInPendingQueues;
- (void)removeIdentifiersFromPendingQueues:(id)a3 reasons:(id)a4;
- (void)removeItemsForDomainIdentifier:(id)a3;
- (void)startReindex;
@end

@implementation EDSearchableIndexState

- (EDSearchableIndexState)initWithPendingIdentifierRemovals:(id)a3
{
  v5 = a3;
  v20.receiver = self;
  v20.super_class = EDSearchableIndexState;
  v6 = [(EDSearchableIndexState *)&v20 init];
  if (v6)
  {
    v7 = objc_alloc_init(MEMORY[0x1E695DFA8]);
    removedIdentifiers = v6->_removedIdentifiers;
    v6->_removedIdentifiers = v7;

    v9 = objc_alloc_init(MEMORY[0x1E695DF70]);
    preparingItems = v6->_preparingItems;
    v6->_preparingItems = v9;

    v11 = objc_alloc_init(MEMORY[0x1E695DF70]);
    pendingItems = v6->_pendingItems;
    v6->_pendingItems = v11;

    v13 = objc_alloc_init(MEMORY[0x1E695DF70]);
    preprocessingItems = v6->_preprocessingItems;
    v6->_preprocessingItems = v13;

    v15 = objc_alloc_init(MEMORY[0x1E695DF70]);
    processingItems = v6->_processingItems;
    v6->_processingItems = v15;

    v17 = objc_alloc_init(MEMORY[0x1E695DFA8]);
    pendingDomainRemovals = v6->_pendingDomainRemovals;
    v6->_pendingDomainRemovals = v17;

    objc_storeStrong(&v6->_pendingIdentifierRemovals, a3);
  }

  return v6;
}

- (unint64_t)countOfItemsInPendingQueues
{
  v3 = [(EDSearchableIndexState *)self pendingItems];
  v4 = [v3 count];
  v5 = [(EDSearchableIndexState *)self pendingIdentifierRemovals];
  v6 = [v5 count];
  v7 = [(EDSearchableIndexState *)self pendingDomainRemovals];
  v8 = [v7 count];

  return v6 + v4 + v8;
}

- (NSArray)pendingIdentifiers
{
  v38 = *MEMORY[0x1E69E9840];
  v3 = objc_alloc_init(MEMORY[0x1E695DFA8]);
  v31 = 0u;
  v32 = 0u;
  v33 = 0u;
  v34 = 0u;
  v4 = [(EDSearchableIndexState *)self pendingItems];
  v5 = [v4 countByEnumeratingWithState:&v31 objects:v37 count:16];
  if (v5)
  {
    v6 = *v32;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v32 != v6)
        {
          objc_enumerationMutation(v4);
        }

        v8 = [*(*(&v31 + 1) + 8 * i) identifier];
        [v3 addObject:v8];
      }

      v5 = [v4 countByEnumeratingWithState:&v31 objects:v37 count:16];
    }

    while (v5);
  }

  v29 = 0u;
  v30 = 0u;
  v27 = 0u;
  v28 = 0u;
  v9 = [(EDSearchableIndexState *)self preprocessingItems];
  v10 = [v9 countByEnumeratingWithState:&v27 objects:v36 count:16];
  if (v10)
  {
    v11 = *v28;
    do
    {
      for (j = 0; j != v10; ++j)
      {
        if (*v28 != v11)
        {
          objc_enumerationMutation(v9);
        }

        v13 = [*(*(&v27 + 1) + 8 * j) identifier];
        [v3 addObject:v13];
      }

      v10 = [v9 countByEnumeratingWithState:&v27 objects:v36 count:16];
    }

    while (v10);
  }

  v25 = 0u;
  v26 = 0u;
  v23 = 0u;
  v24 = 0u;
  v14 = [(EDSearchableIndexState *)self processingItems];
  v15 = [v14 countByEnumeratingWithState:&v23 objects:v35 count:16];
  if (v15)
  {
    v16 = *v24;
    do
    {
      for (k = 0; k != v15; ++k)
      {
        if (*v24 != v16)
        {
          objc_enumerationMutation(v14);
        }

        v18 = [*(*(&v23 + 1) + 8 * k) identifier];
        [v3 addObject:v18];
      }

      v15 = [v14 countByEnumeratingWithState:&v23 objects:v35 count:16];
    }

    while (v15);
  }

  v19 = [(EDSearchableIndexState *)self removedIdentifiers];
  [v3 unionSet:v19];

  v20 = [v3 allObjects];

  v21 = *MEMORY[0x1E69E9840];

  return v20;
}

- (BOOL)needsToScheduleRefresh
{
  v3 = [(EDSearchableIndexState *)self needsRefresh];
  if (v3)
  {
    LOBYTE(v3) = ![(EDSearchableIndexState *)self scheduledRefresh];
  }

  return v3;
}

- (BOOL)needsToScheduleVerification
{
  v3 = [(EDSearchableIndexState *)self countOfItemsInPendingQueues];
  if ([(EDSearchableIndexState *)self needsVerification])
  {
    v4 = ![(EDSearchableIndexState *)self scheduledVerification];
  }

  else
  {
    LOBYTE(v4) = 0;
  }

  return !v3 && v4;
}

- (BOOL)needsImmediateProcessing
{
  v3 = [(EDSearchableIndexState *)self countOfItemsInPendingQueues];
  v4 = [(EDSearchableIndexState *)self pendingDomainRemovals];
  if ([v4 count])
  {
    v5 = 1;
  }

  else
  {
    v6 = [(EDSearchableIndexState *)self indexImmediately];
    if (v3)
    {
      v5 = v6;
    }

    else
    {
      v5 = 0;
    }
  }

  return v5;
}

- (BOOL)queueContentsAllowsRefresh
{
  v3 = [(EDSearchableIndexState *)self preprocessingItems];
  v4 = [v3 ef_countObjectsPassingTest:&__block_literal_global_82];

  v5 = [(EDSearchableIndexState *)self countOfItemsInPendingQueues];
  v6 = [(EDSearchableIndexState *)self preprocessingItems];
  v7 = [v6 count];

  return v4 <= 0xC && v7 + v5 == 0;
}

BOOL __52__EDSearchableIndexState_queueContentsAllowsRefresh__block_invoke(uint64_t a1, void *a2)
{
  v2 = [a2 identifier];
  v3 = [EDSearchableIndexAttachmentItem attachmentPersistentIDFromItemIdentifier:v2];
  v4 = v3 != 0;

  return v4;
}

- (int64_t)suspend
{
  v3 = [(EDSearchableIndexState *)self resumeCount]- 1;
  [(EDSearchableIndexState *)self setResumeCount:v3];
  return v3;
}

- (int64_t)resume
{
  v3 = [(EDSearchableIndexState *)self resumeCount];
  [(EDSearchableIndexState *)self setResumeCount:v3 + 1];
  return v3 + 1;
}

- (id)prepareToIndexItems:(id)a3
{
  v4 = a3;
  [(NSMutableArray *)self->_preparingItems addObjectsFromArray:v4];
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __46__EDSearchableIndexState_prepareToIndexItems___block_invoke;
  v8[3] = &unk_1E8257290;
  v8[4] = self;
  v5 = [v4 indexesOfObjectsPassingTest:v8];
  if ([v5 count])
  {
    v6 = [v4 objectsAtIndexes:v5];
    [(NSMutableArray *)self->_preparingItems removeObjectsInArray:v6];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

uint64_t __46__EDSearchableIndexState_prepareToIndexItems___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(a1 + 32) removedIdentifiers];
  v5 = [v3 identifier];
  v6 = [v4 containsObject:v5];

  return v6;
}

- (BOOL)didPreprocessItem:(id)a3
{
  v4 = a3;
  v5 = [(NSMutableArray *)self->_preprocessingItems indexOfObject:v4];
  if (v5 != 0x7FFFFFFFFFFFFFFFLL)
  {
    [(NSMutableArray *)self->_preprocessingItems removeObjectAtIndex:v5];
  }

  return v5 != 0x7FFFFFFFFFFFFFFFLL;
}

- (int64_t)indexItem:(id)a3
{
  v4 = a3;
  v5 = [(EDSearchableIndexState *)self preprocessingItems];
  v6 = [v5 indexOfObject:v4];

  if (v6 == 0x7FFFFFFFFFFFFFFFLL)
  {
    if ([v4 requiresPreprocessing])
    {
      [(NSMutableArray *)self->_preprocessingItems addObject:v4];
      v7 = 0;
    }

    else
    {
      v11 = [(EDSearchableIndexState *)self pendingItems];
      v12 = [v11 indexOfObject:v4];

      if (v12 == 0x7FFFFFFFFFFFFFFFLL)
      {
        v13 = [(EDSearchableIndexState *)self pendingItems];
        v14 = [v13 ef_indexWhereObjectWouldBeInserted:v4 usingComparator:&__block_literal_global_6_0];

        [(NSMutableArray *)self->_pendingItems insertObject:v4 atIndex:v14];
        v15 = [(EDSearchableIndexState *)self pendingItems];
        v16 = [v15 count];

        if (v16 >= 0x800 && (-[NSMutableArray removeLastObject](self->_pendingItems, "removeLastObject"), -[EDSearchableIndexState pendingItems](self, "pendingItems"), v17 = objc_claimAutoreleasedReturnValue(), v18 = [v17 count], v17, v14 == v18))
        {
          v7 = 4;
        }

        else
        {
          v7 = 3;
        }
      }

      else
      {
        v19 = [(EDSearchableIndexState *)self pendingItems];
        v20 = [v19 objectAtIndexedSubscript:v12];

        [v20 addPendingItem:v4];
        v7 = 2;
      }
    }
  }

  else
  {
    v8 = [(EDSearchableIndexState *)self preprocessingItems];
    v9 = [v8 objectAtIndexedSubscript:v6];

    [v9 addPendingItem:v4];
    v7 = 1;
  }

  return v7;
}

- (void)removeIdentifiersFromPendingQueues:(id)a3 reasons:(id)a4
{
  v34 = *MEMORY[0x1E69E9840];
  v24 = a3;
  v23 = a4;
  if ([v24 count])
  {
    [(NSMutableSet *)self->_removedIdentifiers addObjectsFromArray:v24];
    v21 = [MEMORY[0x1E695DFD8] setWithArray:v24];
    v6 = [(EDSearchableIndexState *)self pendingItems];
    v31[0] = MEMORY[0x1E69E9820];
    v31[1] = 3221225472;
    v31[2] = __69__EDSearchableIndexState_removeIdentifiersFromPendingQueues_reasons___block_invoke;
    v31[3] = &unk_1E82572D8;
    v7 = v21;
    v32 = v7;
    v22 = [v6 indexesOfObjectsPassingTest:v31];

    [(NSMutableArray *)self->_pendingItems removeObjectsAtIndexes:v22];
    v8 = [(EDSearchableIndexState *)self pendingIdentifierRemovals];
    [v8 addIdentifiers:v24 withReasons:v23];

    v9 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v29 = 0u;
    v30 = 0u;
    v27 = 0u;
    v28 = 0u;
    v10 = [(EDSearchableIndexState *)self preprocessingItems];
    v11 = [v10 countByEnumeratingWithState:&v27 objects:v33 count:16];
    if (v11)
    {
      v12 = *v28;
      do
      {
        for (i = 0; i != v11; ++i)
        {
          if (*v28 != v12)
          {
            objc_enumerationMutation(v10);
          }

          v14 = *(*(&v27 + 1) + 8 * i);
          v15 = [v14 identifier];
          v16 = [v7 containsObject:v15];

          if (v16)
          {
            [v9 addObject:v14];
          }
        }

        v11 = [v10 countByEnumeratingWithState:&v27 objects:v33 count:16];
      }

      while (v11);
    }

    if ([v9 count])
    {
      [(NSMutableArray *)self->_preprocessingItems removeObjectsInArray:v9];
    }

    v17 = [(EDSearchableIndexState *)self preparingItems];
    v25[0] = MEMORY[0x1E69E9820];
    v25[1] = 3221225472;
    v25[2] = __69__EDSearchableIndexState_removeIdentifiersFromPendingQueues_reasons___block_invoke_2;
    v25[3] = &unk_1E8257290;
    v18 = v7;
    v26 = v18;
    v19 = [v17 indexesOfObjectsPassingTest:v25];

    [(NSMutableArray *)self->_preparingItems removeObjectsAtIndexes:v19];
  }

  v20 = *MEMORY[0x1E69E9840];
}

uint64_t __69__EDSearchableIndexState_removeIdentifiersFromPendingQueues_reasons___block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = [a2 identifier];
  v4 = [v2 containsObject:v3];

  return v4;
}

uint64_t __69__EDSearchableIndexState_removeIdentifiersFromPendingQueues_reasons___block_invoke_2(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = [a2 identifier];
  v4 = [v2 containsObject:v3];

  return v4;
}

- (void)removeItemsForDomainIdentifier:(id)a3
{
  v25 = *MEMORY[0x1E69E9840];
  v15 = a3;
  v3 = [(EDSearchableIndexState *)self pendingItems];
  v22[0] = MEMORY[0x1E69E9820];
  v22[1] = 3221225472;
  v22[2] = __57__EDSearchableIndexState_removeItemsForDomainIdentifier___block_invoke;
  v22[3] = &unk_1E82572D8;
  v4 = v15;
  v23 = v4;
  v16 = [v3 indexesOfObjectsPassingTest:v22];

  [(NSMutableArray *)self->_pendingItems removeObjectsAtIndexes:v16];
  [(NSMutableSet *)self->_pendingDomainRemovals addObject:v4];
  v5 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v20 = 0u;
  v21 = 0u;
  v18 = 0u;
  v19 = 0u;
  v6 = [(EDSearchableIndexState *)self preprocessingItems];
  v7 = [v6 countByEnumeratingWithState:&v18 objects:v24 count:16];
  if (v7)
  {
    v8 = *v19;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v19 != v8)
        {
          objc_enumerationMutation(v6);
        }

        v10 = *(*(&v18 + 1) + 8 * i);
        v11 = [v10 referenceItem];
        v12 = [v11 domainIdentifier];
        v13 = [v12 hasPrefix:v4];

        if (v13)
        {
          [v5 addObject:v10];
        }
      }

      v7 = [v6 countByEnumeratingWithState:&v18 objects:v24 count:16];
    }

    while (v7);
  }

  if ([v5 count])
  {
    [(NSMutableArray *)self->_preprocessingItems removeObjectsInArray:v5];
  }

  v14 = *MEMORY[0x1E69E9840];
}

uint64_t __57__EDSearchableIndexState_removeItemsForDomainIdentifier___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 referenceItem];
  v4 = [v3 domainIdentifier];
  v5 = [v4 hasPrefix:*(a1 + 32)];

  return v5;
}

- (id)processBatchOfSize:(unint64_t)a3
{
  v28 = *MEMORY[0x1E69E9840];
  v4 = [(EDSearchableIndexState *)self pendingItems];
  v5 = [v4 count];

  if (v5 >= a3)
  {
    v6 = a3;
  }

  else
  {
    v6 = v5;
  }

  if (v6)
  {
    v22 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:a3];
    v23 = 0u;
    v24 = 0u;
    v25 = 0u;
    v26 = 0u;
    v7 = [(EDSearchableIndexState *)self pendingItems];
    obj = v7;
    v8 = [v7 countByEnumeratingWithState:&v23 objects:v27 count:16];
    if (v8)
    {
      v9 = 0;
      v20 = 0;
      v10 = *v24;
      while (2)
      {
        v11 = 0;
        v12 = v20 + 1;
        v20 += v8;
        do
        {
          if (*v24 != v10)
          {
            objc_enumerationMutation(obj);
          }

          v13 = *(*(&v23 + 1) + 8 * v11);
          v14 = [v13 estimatedSizeInBytes];
          if (v14 <= 0x2000000)
          {
            v15 = v14;
          }

          else
          {
            v15 = 0;
          }

          v16 = [v13 items];
          [v22 addObjectsFromArray:v16];

          if (v12 >= v6 || (v9 += v15, v9 >= 0x2000000))
          {
            v20 = v12;
            v7 = obj;
            goto LABEL_21;
          }

          ++v11;
          ++v12;
        }

        while (v8 != v11);
        v7 = obj;
        v8 = [obj countByEnumeratingWithState:&v23 objects:v27 count:16];
        if (v8)
        {
          continue;
        }

        break;
      }
    }

    else
    {
      v20 = 0;
    }

LABEL_21:

    [(NSMutableArray *)self->_pendingItems removeObjectsInRange:0, v20];
    [(NSMutableArray *)self->_processingItems addObjectsFromArray:v22];
  }

  else
  {
    v22 = MEMORY[0x1E695E0F0];
  }

  v17 = *MEMORY[0x1E69E9840];

  return v22;
}

- (id)removePendingDomainRemovals
{
  v3 = [(EDSearchableIndexState *)self pendingDomainRemovals];
  v4 = objc_alloc_init(MEMORY[0x1E695DFA8]);
  pendingDomainRemovals = self->_pendingDomainRemovals;
  self->_pendingDomainRemovals = v4;

  return v3;
}

- (void)startReindex
{
  [(EDSearchableIndexState *)self setTransaction:0];
  [(EDSearchableIndexState *)self setClientStateFetched:0];
  [(NSMutableArray *)self->_processingItems removeAllObjects];
  [(NSMutableArray *)self->_pendingItems removeAllObjects];
  [(NSMutableArray *)self->_preprocessingItems removeAllObjects];
  [(NSMutableSet *)self->_pendingDomainRemovals removeAllObjects];
  v3 = [(EDSearchableIndexState *)self pendingIdentifierRemovals];
  [v3 removeAllIdentifiers];
}

@end