@interface DOCItemCollectionObserver
- (DOCItemCollectionObserver)initWithItemCollection:(id)collection;
- (id)addSubscriber:(id)subscriber;
- (void)_enumerateItemCollectionIndexPathBasedDelegatesWithBlock:(id)block;
- (void)_purgeOrphanedContainers;
- (void)addItemCollectionDelegate:(id)delegate;
- (void)collection:(id)collection didDeleteItemsAtIndexPaths:(id)paths;
- (void)collection:(id)collection didInsertItemsAtIndexPaths:(id)paths;
- (void)collection:(id)collection didMoveItemsFromIndexPaths:(id)paths toIndexPaths:(id)indexPaths;
- (void)collection:(id)collection didPerformBatchUpdateWithReplayBlock:(id)block;
- (void)collection:(id)collection didUpdateItemsAtIndexPaths:(id)paths changes:(id)changes;
- (void)dataForCollectionShouldBeReloaded:(id)reloaded;
- (void)dealloc;
- (void)notifySubscribers;
- (void)observeValueForKeyPath:(id)path ofObject:(id)object change:(id)change context:(void *)context;
- (void)removeItemCollectionDelegate:(id)delegate;
- (void)removeSubscriber:(id)subscriber;
@end

@implementation DOCItemCollectionObserver

- (void)notifySubscribers
{
  v18 = *MEMORY[0x277D85DE8];
  if (([(FPItemCollection *)self->_itemCollection isGathering]& 1) == 0)
  {
    items = [(FPItemCollection *)self->_itemCollection items];
    v13 = 0u;
    v14 = 0u;
    v15 = 0u;
    v16 = 0u;
    subscribers = [(DOCItemCollectionObserver *)self subscribers];
    v5 = [subscribers countByEnumeratingWithState:&v13 objects:v17 count:16];
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
            objc_enumerationMutation(subscribers);
          }

          v9 = *(*(&v13 + 1) + 8 * i);
          updateBlock = [v9 updateBlock];

          if (updateBlock)
          {
            updateBlock2 = [v9 updateBlock];
            (updateBlock2)[2](updateBlock2, items);
          }
        }

        v6 = [subscribers countByEnumeratingWithState:&v13 objects:v17 count:16];
      }

      while (v6);
    }
  }

  v12 = *MEMORY[0x277D85DE8];
}

- (DOCItemCollectionObserver)initWithItemCollection:(id)collection
{
  collectionCopy = collection;
  v12.receiver = self;
  v12.super_class = DOCItemCollectionObserver;
  v6 = [(DOCItemCollectionObserver *)&v12 init];
  if (v6)
  {
    array = [MEMORY[0x277CBEB18] array];
    subscribers = v6->_subscribers;
    v6->_subscribers = array;

    array2 = [MEMORY[0x277CBEB18] array];
    delegates = v6->_delegates;
    v6->_delegates = array2;

    objc_storeStrong(&v6->_itemCollection, collection);
    [(FPItemCollection *)v6->_itemCollection setDelegate:v6];
    [(FPItemCollection *)v6->_itemCollection addObserver:v6 forKeyPath:@"gathering" options:1 context:&DOCItemCollectionObserverObservationContext];
    [(FPItemCollection *)v6->_itemCollection doc_startObserving];
  }

  return v6;
}

- (void)dealloc
{
  itemCollection = [(DOCItemCollectionObserver *)self itemCollection];
  [itemCollection doc_stopObserving];

  itemCollection2 = [(DOCItemCollectionObserver *)self itemCollection];
  [itemCollection2 removeObserver:self forKeyPath:@"gathering"];

  v5.receiver = self;
  v5.super_class = DOCItemCollectionObserver;
  [(DOCItemCollectionObserver *)&v5 dealloc];
}

- (void)observeValueForKeyPath:(id)path ofObject:(id)object change:(id)change context:(void *)context
{
  if (context == &DOCItemCollectionObserverObservationContext)
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
    [(DOCItemCollectionObserver *)&v6 observeValueForKeyPath:path ofObject:object change:change context:?];
  }
}

- (id)addSubscriber:(id)subscriber
{
  subscriberCopy = subscriber;
  v5 = [[DOCItemCollectionSubscriber alloc] initWithUpdateBlock:subscriberCopy];

  subscribers = [(DOCItemCollectionObserver *)self subscribers];
  [subscribers addObject:v5];

  return v5;
}

- (void)removeSubscriber:(id)subscriber
{
  subscriberCopy = subscriber;
  subscribers = [(DOCItemCollectionObserver *)self subscribers];
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __46__DOCItemCollectionObserver_removeSubscriber___block_invoke;
  v9[3] = &unk_278F9BF68;
  v6 = subscriberCopy;
  v10 = v6;
  v7 = [subscribers indexOfObjectPassingTest:v9];

  if (v7 != 0x7FFFFFFFFFFFFFFFLL)
  {
    subscribers2 = [(DOCItemCollectionObserver *)self subscribers];
    [subscribers2 removeObjectAtIndex:v7];
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

- (void)addItemCollectionDelegate:(id)delegate
{
  delegateCopy = delegate;
  delegates = self->_delegates;
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __55__DOCItemCollectionObserver_addItemCollectionDelegate___block_invoke;
  v9[3] = &unk_278F9BF90;
  v6 = delegateCopy;
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

- (void)removeItemCollectionDelegate:(id)delegate
{
  delegateCopy = delegate;
  soleUpdatableDelegate = self->_soleUpdatableDelegate;
  if (soleUpdatableDelegate == delegateCopy)
  {
    self->_soleUpdatableDelegate = 0;
  }

  delegates = self->_delegates;
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __58__DOCItemCollectionObserver_removeItemCollectionDelegate___block_invoke;
  v9[3] = &unk_278F9BF90;
  v7 = delegateCopy;
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

- (void)_enumerateItemCollectionIndexPathBasedDelegatesWithBlock:(id)block
{
  v18 = *MEMORY[0x277D85DE8];
  blockCopy = block;
  v5 = blockCopy;
  if (self->_soleUpdatableDelegate)
  {
    (*(blockCopy + 2))(blockCopy);
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

          weakObjectValue = [*(*(&v13 + 1) + 8 * v10) weakObjectValue];
          if ([weakObjectValue conformsToProtocol:&unk_285C792E0])
          {
            (v5)[2](v5, weakObjectValue);
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

- (void)collection:(id)collection didInsertItemsAtIndexPaths:(id)paths
{
  collectionCopy = collection;
  pathsCopy = paths;
  v10 = MEMORY[0x277D85DD0];
  v11 = 3221225472;
  v12 = __67__DOCItemCollectionObserver_collection_didInsertItemsAtIndexPaths___block_invoke;
  v13 = &unk_278F9BFD8;
  v14 = collectionCopy;
  v15 = pathsCopy;
  v8 = pathsCopy;
  v9 = collectionCopy;
  [(DOCItemCollectionObserver *)self _enumerateItemCollectionIndexPathBasedDelegatesWithBlock:&v10];
  [(DOCItemCollectionObserver *)self notifySubscribers:v10];
}

- (void)collection:(id)collection didMoveItemsFromIndexPaths:(id)paths toIndexPaths:(id)indexPaths
{
  collectionCopy = collection;
  pathsCopy = paths;
  indexPathsCopy = indexPaths;
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __80__DOCItemCollectionObserver_collection_didMoveItemsFromIndexPaths_toIndexPaths___block_invoke;
  v14[3] = &unk_278F9C000;
  v15 = collectionCopy;
  v16 = pathsCopy;
  v17 = indexPathsCopy;
  v11 = indexPathsCopy;
  v12 = pathsCopy;
  v13 = collectionCopy;
  [(DOCItemCollectionObserver *)self _enumerateItemCollectionIndexPathBasedDelegatesWithBlock:v14];
  [(DOCItemCollectionObserver *)self notifySubscribers];
}

- (void)collection:(id)collection didDeleteItemsAtIndexPaths:(id)paths
{
  collectionCopy = collection;
  pathsCopy = paths;
  v10 = MEMORY[0x277D85DD0];
  v11 = 3221225472;
  v12 = __67__DOCItemCollectionObserver_collection_didDeleteItemsAtIndexPaths___block_invoke;
  v13 = &unk_278F9BFD8;
  v14 = collectionCopy;
  v15 = pathsCopy;
  v8 = pathsCopy;
  v9 = collectionCopy;
  [(DOCItemCollectionObserver *)self _enumerateItemCollectionIndexPathBasedDelegatesWithBlock:&v10];
  [(DOCItemCollectionObserver *)self notifySubscribers:v10];
}

- (void)collection:(id)collection didUpdateItemsAtIndexPaths:(id)paths changes:(id)changes
{
  collectionCopy = collection;
  pathsCopy = paths;
  changesCopy = changes;
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __75__DOCItemCollectionObserver_collection_didUpdateItemsAtIndexPaths_changes___block_invoke;
  v14[3] = &unk_278F9C000;
  v15 = collectionCopy;
  v16 = pathsCopy;
  v17 = changesCopy;
  v11 = changesCopy;
  v12 = pathsCopy;
  v13 = collectionCopy;
  [(DOCItemCollectionObserver *)self _enumerateItemCollectionIndexPathBasedDelegatesWithBlock:v14];
  [(DOCItemCollectionObserver *)self notifySubscribers];
}

- (void)dataForCollectionShouldBeReloaded:(id)reloaded
{
  reloadedCopy = reloaded;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __63__DOCItemCollectionObserver_dataForCollectionShouldBeReloaded___block_invoke;
  v6[3] = &unk_278F9C028;
  v7 = reloadedCopy;
  v5 = reloadedCopy;
  [(DOCItemCollectionObserver *)self _enumerateItemCollectionIndexPathBasedDelegatesWithBlock:v6];
  [(DOCItemCollectionObserver *)self notifySubscribers];
}

- (void)collection:(id)collection didPerformBatchUpdateWithReplayBlock:(id)block
{
  collectionCopy = collection;
  blockCopy = block;
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __77__DOCItemCollectionObserver_collection_didPerformBatchUpdateWithReplayBlock___block_invoke;
  v10[3] = &unk_278F9C078;
  v11 = collectionCopy;
  selfCopy = self;
  v13 = blockCopy;
  v8 = blockCopy;
  v9 = collectionCopy;
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