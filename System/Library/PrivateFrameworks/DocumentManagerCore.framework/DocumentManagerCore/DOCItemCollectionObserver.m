@interface DOCItemCollectionObserver
- (DOCItemCollectionObserver)initWithItemCollection:(id)a3;
- (id)addSubscriber:(id)a3;
- (void)_enumerateItemCollectionIndexPathBasedDelegatesWithBlock:(id)a3;
- (void)_purgeOrphanedContainers;
- (void)addItemCollectionDelegate:(id)a3;
- (void)collection:(id)a3 didDeleteItemsAtIndexPaths:(id)a4;
- (void)collection:(id)a3 didInsertItemsAtIndexPaths:(id)a4;
- (void)collection:(id)a3 didMoveItemsFromIndexPaths:(id)a4 toIndexPaths:(id)a5;
- (void)collection:(id)a3 didPerformBatchUpdateWithReplayBlock:(id)a4;
- (void)collection:(id)a3 didUpdateItemsAtIndexPaths:(id)a4 changes:(id)a5;
- (void)dataForCollectionShouldBeReloaded:(id)a3;
- (void)dealloc;
- (void)notifySubscribers;
- (void)observeValueForKeyPath:(id)a3 ofObject:(id)a4 change:(id)a5 context:(void *)a6;
- (void)removeItemCollectionDelegate:(id)a3;
- (void)removeSubscriber:(id)a3;
@end

@implementation DOCItemCollectionObserver

- (void)notifySubscribers
{
  v18 = *MEMORY[0x277D85DE8];
  if (([(FPItemCollection *)self->_itemCollection isGathering]& 1) == 0)
  {
    v3 = [(FPItemCollection *)self->_itemCollection items];
    v13 = 0u;
    v14 = 0u;
    v15 = 0u;
    v16 = 0u;
    v4 = [(DOCItemCollectionObserver *)self subscribers];
    v5 = [v4 countByEnumeratingWithState:&v13 objects:v17 count:16];
    if (v5)
    {
      v6 = v5;
      v7 = *v14;
      do
      {
        for (i = 0; i != v6; ++i)
        {
          if (*v14 != v7)
          {
            objc_enumerationMutation(v4);
          }

          v9 = *(*(&v13 + 1) + 8 * i);
          v10 = [v9 updateBlock];

          if (v10)
          {
            v11 = [v9 updateBlock];
            (v11)[2](v11, v3);
          }
        }

        v6 = [v4 countByEnumeratingWithState:&v13 objects:v17 count:16];
      }

      while (v6);
    }
  }

  v12 = *MEMORY[0x277D85DE8];
}

- (DOCItemCollectionObserver)initWithItemCollection:(id)a3
{
  v5 = a3;
  v12.receiver = self;
  v12.super_class = DOCItemCollectionObserver;
  v6 = [(DOCItemCollectionObserver *)&v12 init];
  if (v6)
  {
    v7 = [MEMORY[0x277CBEB18] array];
    subscribers = v6->_subscribers;
    v6->_subscribers = v7;

    v9 = [MEMORY[0x277CBEB18] array];
    delegates = v6->_delegates;
    v6->_delegates = v9;

    objc_storeStrong(&v6->_itemCollection, a3);
    [(FPItemCollection *)v6->_itemCollection setDelegate:v6];
    [(FPItemCollection *)v6->_itemCollection addObserver:v6 forKeyPath:@"gathering" options:1 context:&DOCItemCollectionObserverObservationContext];
    [(FPItemCollection *)v6->_itemCollection doc_startObserving];
  }

  return v6;
}

- (void)dealloc
{
  v3 = [(DOCItemCollectionObserver *)self itemCollection];
  [v3 doc_stopObserving];

  v4 = [(DOCItemCollectionObserver *)self itemCollection];
  [v4 removeObserver:self forKeyPath:@"gathering"];

  v5.receiver = self;
  v5.super_class = DOCItemCollectionObserver;
  [(DOCItemCollectionObserver *)&v5 dealloc];
}

- (void)observeValueForKeyPath:(id)a3 ofObject:(id)a4 change:(id)a5 context:(void *)a6
{
  if (a6 == &DOCItemCollectionObserverObservationContext)
  {
    v7[0] = MEMORY[0x277D85DD0];
    v7[1] = 3221225472;
    v7[2] = __76__DOCItemCollectionObserver_observeValueForKeyPath_ofObject_change_context___block_invoke;
    v7[3] = &unk_278F9B408;
    v7[4] = self;
    DOCRunInMainThread(v7);
  }

  else
  {
    v6.receiver = self;
    v6.super_class = DOCItemCollectionObserver;
    [(DOCItemCollectionObserver *)&v6 observeValueForKeyPath:a3 ofObject:a4 change:a5 context:?];
  }
}

- (id)addSubscriber:(id)a3
{
  v4 = a3;
  v5 = [[DOCItemCollectionSubscriber alloc] initWithUpdateBlock:v4];

  v6 = [(DOCItemCollectionObserver *)self subscribers];
  [v6 addObject:v5];

  return v5;
}

- (void)removeSubscriber:(id)a3
{
  v4 = a3;
  v5 = [(DOCItemCollectionObserver *)self subscribers];
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __46__DOCItemCollectionObserver_removeSubscriber___block_invoke;
  v9[3] = &unk_278F9BF68;
  v6 = v4;
  v10 = v6;
  v7 = [v5 indexOfObjectPassingTest:v9];

  if (v7 != 0x7FFFFFFFFFFFFFFFLL)
  {
    v8 = [(DOCItemCollectionObserver *)self subscribers];
    [v8 removeObjectAtIndex:v7];
  }
}

uint64_t __46__DOCItemCollectionObserver_removeSubscriber___block_invoke(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v6 = [a2 UUID];
  v7 = [*(a1 + 32) UUID];
  v8 = [v6 isEqual:v7];

  if (v8)
  {
    *a4 = 1;
  }

  return v8;
}

- (void)addItemCollectionDelegate:(id)a3
{
  v4 = a3;
  delegates = self->_delegates;
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __55__DOCItemCollectionObserver_addItemCollectionDelegate___block_invoke;
  v9[3] = &unk_278F9BF90;
  v6 = v4;
  v10 = v6;
  if ([(NSMutableArray *)delegates indexOfObjectPassingTest:v9]== 0x7FFFFFFFFFFFFFFFLL)
  {
    v7 = self->_delegates;
    v8 = [MEMORY[0x277CCAE60] valueWithWeakObject:v6];
    [(NSMutableArray *)v7 addObject:v8];
  }

  if ([(NSMutableArray *)self->_delegates count])
  {
    [(DOCItemCollectionObserver *)self _purgeOrphanedContainers];
  }
}

uint64_t __55__DOCItemCollectionObserver_addItemCollectionDelegate___block_invoke(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v6 = [a2 weakObjectValue];
  v7 = [v6 isEqual:*(a1 + 32)];

  if (v7)
  {
    *a4 = 1;
  }

  return v7;
}

- (void)removeItemCollectionDelegate:(id)a3
{
  v4 = a3;
  soleUpdatableDelegate = self->_soleUpdatableDelegate;
  if (soleUpdatableDelegate == v4)
  {
    self->_soleUpdatableDelegate = 0;
  }

  delegates = self->_delegates;
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __58__DOCItemCollectionObserver_removeItemCollectionDelegate___block_invoke;
  v9[3] = &unk_278F9BF90;
  v7 = v4;
  v10 = v7;
  v8 = [(NSMutableArray *)delegates indexOfObjectPassingTest:v9];
  if (v8 != 0x7FFFFFFFFFFFFFFFLL)
  {
    [(NSMutableArray *)self->_delegates removeObjectAtIndex:v8];
  }

  if ([(NSMutableArray *)self->_delegates count])
  {
    [(DOCItemCollectionObserver *)self _purgeOrphanedContainers];
  }
}

uint64_t __58__DOCItemCollectionObserver_removeItemCollectionDelegate___block_invoke(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v6 = [a2 weakObjectValue];
  v7 = [v6 isEqual:*(a1 + 32)];

  if (v7)
  {
    *a4 = 1;
  }

  return v7;
}

- (void)_purgeOrphanedContainers
{
  v3 = [(NSMutableArray *)self->_delegates indexesOfObjectsPassingTest:&__block_literal_global_10];
  if ([v3 count])
  {
    [(NSMutableArray *)self->_delegates removeObjectsAtIndexes:v3];
  }
}

BOOL __53__DOCItemCollectionObserver__purgeOrphanedContainers__block_invoke(uint64_t a1, void *a2)
{
  v2 = [a2 weakObjectValue];
  v3 = v2 == 0;

  return v3;
}

- (void)_enumerateItemCollectionIndexPathBasedDelegatesWithBlock:(id)a3
{
  v18 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = v4;
  if (self->_soleUpdatableDelegate)
  {
    (*(v4 + 2))(v4);
  }

  else
  {
    v15 = 0u;
    v16 = 0u;
    v13 = 0u;
    v14 = 0u;
    v6 = self->_delegates;
    v7 = [(NSMutableArray *)v6 countByEnumeratingWithState:&v13 objects:v17 count:16];
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

          v11 = [*(*(&v13 + 1) + 8 * v10) weakObjectValue];
          if ([v11 conformsToProtocol:&unk_285C792E0])
          {
            (v5)[2](v5, v11);
          }

          ++v10;
        }

        while (v8 != v10);
        v8 = [(NSMutableArray *)v6 countByEnumeratingWithState:&v13 objects:v17 count:16];
      }

      while (v8);
    }
  }

  v12 = *MEMORY[0x277D85DE8];
}

- (void)collection:(id)a3 didInsertItemsAtIndexPaths:(id)a4
{
  v6 = a3;
  v7 = a4;
  v10 = MEMORY[0x277D85DD0];
  v11 = 3221225472;
  v12 = __67__DOCItemCollectionObserver_collection_didInsertItemsAtIndexPaths___block_invoke;
  v13 = &unk_278F9BFD8;
  v14 = v6;
  v15 = v7;
  v8 = v7;
  v9 = v6;
  [(DOCItemCollectionObserver *)self _enumerateItemCollectionIndexPathBasedDelegatesWithBlock:&v10];
  [(DOCItemCollectionObserver *)self notifySubscribers:v10];
}

- (void)collection:(id)a3 didMoveItemsFromIndexPaths:(id)a4 toIndexPaths:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __80__DOCItemCollectionObserver_collection_didMoveItemsFromIndexPaths_toIndexPaths___block_invoke;
  v14[3] = &unk_278F9C000;
  v15 = v8;
  v16 = v9;
  v17 = v10;
  v11 = v10;
  v12 = v9;
  v13 = v8;
  [(DOCItemCollectionObserver *)self _enumerateItemCollectionIndexPathBasedDelegatesWithBlock:v14];
  [(DOCItemCollectionObserver *)self notifySubscribers];
}

- (void)collection:(id)a3 didDeleteItemsAtIndexPaths:(id)a4
{
  v6 = a3;
  v7 = a4;
  v10 = MEMORY[0x277D85DD0];
  v11 = 3221225472;
  v12 = __67__DOCItemCollectionObserver_collection_didDeleteItemsAtIndexPaths___block_invoke;
  v13 = &unk_278F9BFD8;
  v14 = v6;
  v15 = v7;
  v8 = v7;
  v9 = v6;
  [(DOCItemCollectionObserver *)self _enumerateItemCollectionIndexPathBasedDelegatesWithBlock:&v10];
  [(DOCItemCollectionObserver *)self notifySubscribers:v10];
}

- (void)collection:(id)a3 didUpdateItemsAtIndexPaths:(id)a4 changes:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __75__DOCItemCollectionObserver_collection_didUpdateItemsAtIndexPaths_changes___block_invoke;
  v14[3] = &unk_278F9C000;
  v15 = v8;
  v16 = v9;
  v17 = v10;
  v11 = v10;
  v12 = v9;
  v13 = v8;
  [(DOCItemCollectionObserver *)self _enumerateItemCollectionIndexPathBasedDelegatesWithBlock:v14];
  [(DOCItemCollectionObserver *)self notifySubscribers];
}

- (void)dataForCollectionShouldBeReloaded:(id)a3
{
  v4 = a3;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __63__DOCItemCollectionObserver_dataForCollectionShouldBeReloaded___block_invoke;
  v6[3] = &unk_278F9C028;
  v7 = v4;
  v5 = v4;
  [(DOCItemCollectionObserver *)self _enumerateItemCollectionIndexPathBasedDelegatesWithBlock:v6];
  [(DOCItemCollectionObserver *)self notifySubscribers];
}

- (void)collection:(id)a3 didPerformBatchUpdateWithReplayBlock:(id)a4
{
  v6 = a3;
  v7 = a4;
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __77__DOCItemCollectionObserver_collection_didPerformBatchUpdateWithReplayBlock___block_invoke;
  v10[3] = &unk_278F9C078;
  v11 = v6;
  v12 = self;
  v13 = v7;
  v8 = v7;
  v9 = v6;
  [(DOCItemCollectionObserver *)self _enumerateItemCollectionIndexPathBasedDelegatesWithBlock:v10];
  [(DOCItemCollectionObserver *)self notifySubscribers];
}

void __77__DOCItemCollectionObserver_collection_didPerformBatchUpdateWithReplayBlock___block_invoke(void *a1, void *a2)
{
  v3 = a2;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __77__DOCItemCollectionObserver_collection_didPerformBatchUpdateWithReplayBlock___block_invoke_2;
  v7[3] = &unk_278F9C050;
  v4 = a1[4];
  v5 = a1[6];
  v7[4] = a1[5];
  v8 = v3;
  v9 = v5;
  v6 = v3;
  [v6 collection:v4 didPerformBatchUpdateWithReplayBlock:v7];
}

uint64_t __77__DOCItemCollectionObserver_collection_didPerformBatchUpdateWithReplayBlock___block_invoke_2(uint64_t a1)
{
  [*(a1 + 32) setSoleUpdatableDelegate:*(a1 + 40)];
  (*(*(a1 + 48) + 16))();
  v2 = *(a1 + 32);

  return [v2 setSoleUpdatableDelegate:0];
}

@end