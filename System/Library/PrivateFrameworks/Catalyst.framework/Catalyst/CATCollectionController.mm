@interface CATCollectionController
- (CATCollectionController)init;
- (CATCollectionController)initWithObjects:(id)objects;
- (CATCollectionControllerDelegate)delegate;
- (NSArray)selectedObjects;
- (NSSet)content;
- (unint64_t)newIndexForObject:(id)object inArrangedObjects:(id)objects;
- (void)addObject:(id)object;
- (void)addObserversToObject:(id)object forKeyPaths:(id)paths;
- (void)arrangeObject:(id)object;
- (void)bindContentToObject:(id)object withKeyPath:(id)path usingTransformer:(id)transformer;
- (void)changeContent:(id)content;
- (void)changeObject:(id)object atIndex:(unint64_t)index forChangeType:(unint64_t)type newIndex:(unint64_t)newIndex;
- (void)dealloc;
- (void)notifyArrangedObjectsDidChangeWithPreviousArrangedObjects:(id)objects;
- (void)notifyArrangedObjectsWillChange;
- (void)observeValueForKeyPath:(id)path ofObject:(id)object change:(id)change context:(void *)context;
- (void)rearrangeTimerDidFire:(id)fire;
- (void)removeObject:(id)object;
- (void)removeObserversFromObject:(id)object forKeyPaths:(id)paths;
- (void)resolveArrangedObjectsAtIndexes:(id)indexes reply:(id)reply;
- (void)scheduleRearrangeTimerIfNeed;
- (void)setAutomaticallyRearrangesObjects:(BOOL)objects;
- (void)setFilterPredicate:(id)predicate;
- (void)setSelectionIndexes:(id)indexes;
- (void)setSortDescriptors:(id)descriptors;
- (void)unbindContent;
- (void)updateKeysAffectingArrangementForceUpdate:(BOOL)update includeAllContent:(BOOL)content;
- (void)updateObject:(id)object;
@end

@implementation CATCollectionController

- (CATCollectionControllerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)setAutomaticallyRearrangesObjects:(BOOL)objects
{
  if (self->_automaticallyRearrangesObjects != objects)
  {
    self->_automaticallyRearrangesObjects = objects;
    [(CATCollectionController *)self updateKeysAffectingArrangementForceUpdate:0 includeAllContent:0];
  }
}

- (void)setSortDescriptors:(id)descriptors
{
  descriptorsCopy = descriptors;
  if (([descriptorsCopy isEqualToArray:self->_sortDescriptors] & 1) == 0)
  {
    v4 = [descriptorsCopy copy];
    sortDescriptors = self->_sortDescriptors;
    self->_sortDescriptors = v4;

    [(CATCollectionController *)self updateKeysAffectingArrangementForceUpdate:1 includeAllContent:0];
  }
}

- (void)setFilterPredicate:(id)predicate
{
  predicateCopy = predicate;
  if (([predicateCopy isEqual:self->_filterPredicate] & 1) == 0)
  {
    v4 = [predicateCopy copy];
    filterPredicate = self->_filterPredicate;
    self->_filterPredicate = v4;

    [(CATCollectionController *)self updateKeysAffectingArrangementForceUpdate:1 includeAllContent:1];
  }
}

- (void)setSelectionIndexes:(id)indexes
{
  indexesCopy = indexes;
  if (![(NSIndexSet *)self->_selectionIndexes isEqualToIndexSet:?])
  {
    v4 = [indexesCopy copy];
    selectionIndexes = self->_selectionIndexes;
    self->_selectionIndexes = v4;

    delegate = [(CATCollectionController *)self delegate];
    v7 = objc_opt_respondsToSelector();

    if (v7)
    {
      delegate2 = [(CATCollectionController *)self delegate];
      [delegate2 controllerDidChangeSelectionIndexes:self];
    }
  }
}

- (NSArray)selectedObjects
{
  selectionIndexes = [(CATCollectionController *)self selectionIndexes];
  v4 = [selectionIndexes count];

  if (v4)
  {
    arrangedObjects = [(CATCollectionController *)self arrangedObjects];
    selectionIndexes2 = [(CATCollectionController *)self selectionIndexes];
    v7 = [arrangedObjects objectsAtIndexes:selectionIndexes2];
  }

  else
  {
    v7 = MEMORY[0x277CBEBF8];
  }

  return v7;
}

- (NSSet)content
{
  v2 = [(NSMutableSet *)self->mContent copy];

  return v2;
}

- (CATCollectionController)init
{
  v14.receiver = self;
  v14.super_class = CATCollectionController;
  v2 = [(CATCollectionController *)&v14 init];
  if (v2)
  {
    array = [MEMORY[0x277CBEA60] array];
    arrangedObjects = v2->_arrangedObjects;
    v2->_arrangedObjects = array;

    v5 = objc_opt_new();
    mContent = v2->mContent;
    v2->mContent = v5;

    v7 = [MEMORY[0x277CBEB58] set];
    mObjectsToRearrange = v2->mObjectsToRearrange;
    v2->mObjectsToRearrange = v7;

    v9 = objc_opt_new();
    mPendingInsertedObjects = v2->mPendingInsertedObjects;
    v2->mPendingInsertedObjects = v9;

    v11 = objc_opt_new();
    mPendingDeletedObjects = v2->mPendingDeletedObjects;
    v2->mPendingDeletedObjects = v11;
  }

  return v2;
}

- (CATCollectionController)initWithObjects:(id)objects
{
  v21 = *MEMORY[0x277D85DE8];
  objectsCopy = objects;
  v6 = [(CATCollectionController *)self init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->mOriginalObjects, objects);
    v18 = 0u;
    v19 = 0u;
    v16 = 0u;
    v17 = 0u;
    v8 = objectsCopy;
    v9 = [v8 countByEnumeratingWithState:&v16 objects:v20 count:16];
    if (v9)
    {
      v10 = v9;
      v11 = *v17;
      do
      {
        v12 = 0;
        do
        {
          if (*v17 != v11)
          {
            objc_enumerationMutation(v8);
          }

          [(CATCollectionController *)v7 addObject:*(*(&v16 + 1) + 8 * v12++), v16];
        }

        while (v10 != v12);
        v10 = [v8 countByEnumeratingWithState:&v16 objects:v20 count:16];
      }

      while (v10);
    }

    mChangingSelection = v7->mChangingSelection;
    v7->mChangingSelection = 0;
  }

  v14 = *MEMORY[0x277D85DE8];
  return v7;
}

- (void)dealloc
{
  [(CATCollectionController *)self setDelegate:0];
  [(CATCollectionController *)self unbindContent];
  v3.receiver = self;
  v3.super_class = CATCollectionController;
  [(CATCollectionController *)&v3 dealloc];
}

- (void)resolveArrangedObjectsAtIndexes:(id)indexes reply:(id)reply
{
  indexesCopy = indexes;
  replyCopy = reply;
  v8 = replyCopy;
  if (replyCopy)
  {
    v9 = MEMORY[0x277CBEB88];
    v10[0] = MEMORY[0x277D85DD0];
    v10[1] = 3221225472;
    v10[2] = __65__CATCollectionController_resolveArrangedObjectsAtIndexes_reply___block_invoke;
    v10[3] = &unk_278DA7230;
    v12 = replyCopy;
    v10[4] = self;
    v11 = indexesCopy;
    [v9 cat_performBlockOnMainRunLoop:v10];
  }
}

void __65__CATCollectionController_resolveArrangedObjectsAtIndexes_reply___block_invoke(void *a1)
{
  v1 = a1[6];
  v2 = [*(a1[4] + 152) objectsAtIndexes:a1[5]];
  (*(v1 + 16))(v1, v2, 0);
}

- (void)bindContentToObject:(id)object withKeyPath:(id)path usingTransformer:(id)transformer
{
  objectCopy = object;
  pathCopy = path;
  transformerCopy = transformer;
  if (objectCopy)
  {
    if (self->mTarget)
    {
      [(CATCollectionController *)a2 bindContentToObject:objectCopy withKeyPath:pathCopy usingTransformer:?];
    }

    if ([(NSMutableSet *)self->mContent count])
    {
      [CATCollectionController bindContentToObject:a2 withKeyPath:self usingTransformer:?];
    }

    self->mTarget = objectCopy;
    v11 = [pathCopy copy];
    mKeyPath = self->mKeyPath;
    self->mKeyPath = v11;

    objc_storeStrong(&self->mTransformer, transformer);
    [self->mTarget addObserver:self forKeyPath:self->mKeyPath options:7 context:"_CATCollectionControllerContentObservationContext"];
  }
}

- (void)unbindContent
{
  v18 = *MEMORY[0x277D85DE8];
  mTarget = self->mTarget;
  if (mTarget)
  {
    [mTarget removeObserver:self forKeyPath:self->mKeyPath];
    mKeyPath = self->mKeyPath;
    self->mTarget = 0;
    self->mKeyPath = 0;

    mTransformer = self->mTransformer;
    self->mTransformer = 0;

    v6 = [(NSMutableSet *)self->mContent copy];
    v13 = 0u;
    v14 = 0u;
    v15 = 0u;
    v16 = 0u;
    v7 = v6;
    v8 = [v7 countByEnumeratingWithState:&v13 objects:v17 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = *v14;
      do
      {
        v11 = 0;
        do
        {
          if (*v14 != v10)
          {
            objc_enumerationMutation(v7);
          }

          [(CATCollectionController *)self removeObserversFromObject:*(*(&v13 + 1) + 8 * v11++) forKeyPaths:self->mKeysAffectingArrangement, v13];
        }

        while (v9 != v11);
        v9 = [v7 countByEnumeratingWithState:&v13 objects:v17 count:16];
      }

      while (v9);
    }

    [(CATCollectionController *)self setArrangedObjects:MEMORY[0x277CBEBF8]];
    [(NSMutableSet *)self->mContent removeAllObjects];
  }

  v12 = *MEMORY[0x277D85DE8];
}

- (void)observeValueForKeyPath:(id)path ofObject:(id)object change:(id)change context:(void *)context
{
  pathCopy = path;
  objectCopy = object;
  changeCopy = change;
  v13 = changeCopy;
  if (context == "_CATCollectionControllerContentObservationContext")
  {
    cat_calculateAddedObjects = [changeCopy cat_calculateAddedObjects];
    cat_calculateRemovedObjects = [v13 cat_calculateRemovedObjects];
    v19[0] = MEMORY[0x277D85DD0];
    v19[1] = 3221225472;
    v19[2] = __74__CATCollectionController_observeValueForKeyPath_ofObject_change_context___block_invoke;
    v19[3] = &unk_278DA7280;
    v20 = cat_calculateRemovedObjects;
    selfCopy = self;
    v22 = cat_calculateAddedObjects;
    v16 = cat_calculateAddedObjects;
    v17 = cat_calculateRemovedObjects;
    [(CATCollectionController *)self changeContent:v19];
  }

  else if (context == "_CATCollectionControllerArrangementKeyObservationContext")
  {
    [(NSMutableSet *)self->mObjectsToRearrange addObject:objectCopy];
    [(CATCollectionController *)self scheduleRearrangeTimerIfNeed];
  }

  else
  {
    v18.receiver = self;
    v18.super_class = CATCollectionController;
    [(CATCollectionController *)&v18 observeValueForKeyPath:pathCopy ofObject:objectCopy change:changeCopy context:context];
  }
}

uint64_t __74__CATCollectionController_observeValueForKeyPath_ofObject_change_context___block_invoke(void *a1)
{
  v2 = a1[4];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __74__CATCollectionController_observeValueForKeyPath_ofObject_change_context___block_invoke_2;
  v6[3] = &unk_278DA7258;
  v6[4] = a1[5];
  [v2 enumerateObjectsUsingBlock:v6];
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __74__CATCollectionController_observeValueForKeyPath_ofObject_change_context___block_invoke_3;
  v5[3] = &unk_278DA7258;
  v3 = a1[6];
  v5[4] = a1[5];
  return [v3 enumerateObjectsUsingBlock:v5];
}

uint64_t __74__CATCollectionController_observeValueForKeyPath_ofObject_change_context___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(*(a1 + 32) + 96);
  if (v4)
  {
    v7 = v3;
    v5 = [v4 transformedValue:v3];

    v3 = v5;
  }

  if (v3)
  {
    v8 = v3;
    v4 = [*(a1 + 32) removeObject:v3];
    v3 = v8;
  }

  return MEMORY[0x2821F96F8](v4, v3);
}

uint64_t __74__CATCollectionController_observeValueForKeyPath_ofObject_change_context___block_invoke_3(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(*(a1 + 32) + 96);
  if (v4)
  {
    v7 = v3;
    v5 = [v4 transformedValue:v3];

    v3 = v5;
  }

  if (v3)
  {
    v8 = v3;
    v4 = [*(a1 + 32) addObject:v3];
    v3 = v8;
  }

  return MEMORY[0x2821F96F8](v4, v3);
}

- (void)addObserversToObject:(id)object forKeyPaths:(id)paths
{
  v18 = *MEMORY[0x277D85DE8];
  objectCopy = object;
  pathsCopy = paths;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v8 = [pathsCopy countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v14;
    do
    {
      v11 = 0;
      do
      {
        if (*v14 != v10)
        {
          objc_enumerationMutation(pathsCopy);
        }

        [objectCopy addObserver:self forKeyPath:*(*(&v13 + 1) + 8 * v11++) options:3 context:"_CATCollectionControllerArrangementKeyObservationContext"];
      }

      while (v9 != v11);
      v9 = [pathsCopy countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v9);
  }

  v12 = *MEMORY[0x277D85DE8];
}

- (void)removeObserversFromObject:(id)object forKeyPaths:(id)paths
{
  v18 = *MEMORY[0x277D85DE8];
  objectCopy = object;
  pathsCopy = paths;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v8 = [pathsCopy countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v14;
    do
    {
      v11 = 0;
      do
      {
        if (*v14 != v10)
        {
          objc_enumerationMutation(pathsCopy);
        }

        [objectCopy removeObserver:self forKeyPath:*(*(&v13 + 1) + 8 * v11++)];
      }

      while (v9 != v11);
      v9 = [pathsCopy countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v9);
  }

  v12 = *MEMORY[0x277D85DE8];
}

- (void)addObject:(id)object
{
  objectCopy = object;
  if (([(NSMutableSet *)self->mContent containsObject:?]& 1) == 0)
  {
    [(NSMutableSet *)self->mContent addObject:objectCopy];
    [(CATCollectionController *)self addObserversToObject:objectCopy forKeyPaths:self->mKeysAffectingArrangement];
    [(CATCollectionController *)self arrangeObject:objectCopy];
  }
}

- (void)removeObject:(id)object
{
  objectCopy = object;
  [(NSMutableSet *)self->mObjectsToRearrange removeObject:objectCopy];
  if ([(NSMutableSet *)self->mContent containsObject:objectCopy])
  {
    [(CATCollectionController *)self removeObserversFromObject:objectCopy forKeyPaths:self->mKeysAffectingArrangement];
    v4 = [(NSMutableArray *)self->mPendingArrangedObjects indexOfObject:objectCopy];
    [(NSMutableSet *)self->mContent removeObject:objectCopy];
    if (v4 != 0x7FFFFFFFFFFFFFFFLL)
    {
      [(CATCollectionController *)self changeObject:objectCopy atIndex:v4 forChangeType:2 newIndex:0x7FFFFFFFFFFFFFFFLL];
    }
  }
}

- (void)updateObject:(id)object
{
  objectCopy = object;
  [(CATCollectionController *)self arrangeObject:objectCopy];
  v4 = [(NSMutableArray *)self->mPendingArrangedObjects indexOfObject:objectCopy];
  if (v4 != 0x7FFFFFFFFFFFFFFFLL)
  {
    [(CATCollectionController *)self changeObject:objectCopy atIndex:v4 forChangeType:4 newIndex:v4];
  }
}

- (void)arrangeObject:(id)object
{
  objectCopy = object;
  filterPredicate = [(CATCollectionController *)self filterPredicate];
  if (filterPredicate)
  {
    filterPredicate2 = [(CATCollectionController *)self filterPredicate];
    v6 = [filterPredicate2 evaluateWithObject:objectCopy];
  }

  else
  {
    v6 = 1;
  }

  v7 = [(NSMutableArray *)self->mPendingArrangedObjects indexOfObject:objectCopy];
  v8 = v7;
  if (v6)
  {
    v9 = self->mPendingArrangedObjects;
    if (v8 != 0x7FFFFFFFFFFFFFFFLL)
    {
      v10 = [(NSMutableArray *)self->mPendingArrangedObjects mutableCopy];
      [v10 removeObjectAtIndex:v8];
      v11 = [v10 copy];

      v9 = v11;
    }

    v12 = [(CATCollectionController *)self newIndexForObject:objectCopy inArrangedObjects:v9];
    if (v8 != v12)
    {
      if (v8 == 0x7FFFFFFFFFFFFFFFLL)
      {
        v13 = 1;
      }

      else
      {
        v13 = 3;
      }

      [(CATCollectionController *)self changeObject:objectCopy atIndex:v8 forChangeType:v13 newIndex:v12];
    }
  }

  else if (v7 != 0x7FFFFFFFFFFFFFFFLL)
  {
    [(CATCollectionController *)self changeObject:objectCopy atIndex:v7 forChangeType:2 newIndex:0x7FFFFFFFFFFFFFFFLL];
  }
}

- (unint64_t)newIndexForObject:(id)object inArrangedObjects:(id)objects
{
  objectsCopy = objects;
  objectCopy = object;
  sortDescriptors = [(CATCollectionController *)self sortDescriptors];
  v9 = [sortDescriptors count];

  if (v9)
  {
    goto LABEL_2;
  }

  mOriginalObjects = self->mOriginalObjects;
  if (mOriginalObjects)
  {
    v12 = mOriginalObjects;
  }

  else
  {
    mTarget = self->mTarget;
    if (!mTarget || !self->mKeyPath)
    {
      v10 = 0;
      goto LABEL_10;
    }

    v12 = [mTarget valueForKeyPath:?];
  }

  v10 = v12;
LABEL_10:
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {

LABEL_2:
      v10 = 0;
    }
  }

  v14 = [objectsCopy count];
  v18[0] = MEMORY[0x277D85DD0];
  v18[1] = 3221225472;
  v18[2] = __63__CATCollectionController_newIndexForObject_inArrangedObjects___block_invoke;
  v18[3] = &unk_278DA72A8;
  v18[4] = self;
  v19 = v10;
  v15 = v10;
  v16 = [objectsCopy indexOfObject:objectCopy inSortedRange:0 options:v14 usingComparator:{1024, v18}];

  return v16;
}

uint64_t __63__CATCollectionController_newIndexForObject_inArrangedObjects___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v26 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  v7 = [*(a1 + 32) sortDescriptors];
  v8 = [v7 count];

  if (v8)
  {
    v23 = 0u;
    v24 = 0u;
    v21 = 0u;
    v22 = 0u;
    v9 = [*(a1 + 32) sortDescriptors];
    v10 = [v9 countByEnumeratingWithState:&v21 objects:v25 count:16];
    if (v10)
    {
      v11 = v10;
      v12 = *v22;
      while (2)
      {
        v13 = 0;
        do
        {
          if (*v22 != v12)
          {
            objc_enumerationMutation(v9);
          }

          v14 = [*(*(&v21 + 1) + 8 * v13) compareObject:v5 toObject:v6];
          if (v14)
          {
            v15 = v14;
            goto LABEL_12;
          }

          ++v13;
        }

        while (v11 != v13);
        v11 = [v9 countByEnumeratingWithState:&v21 objects:v25 count:16];
        if (v11)
        {
          continue;
        }

        break;
      }
    }

    v15 = 0;
LABEL_12:
  }

  else
  {
    v16 = *(a1 + 40);
    if (v16)
    {
      v17 = [v16 indexOfObject:v5];
      v18 = [*(a1 + 40) indexOfObject:v6];
      if (v17 < v18)
      {
        v15 = -1;
      }

      else
      {
        v15 = v17 != v18;
      }
    }

    else if (objc_opt_respondsToSelector())
    {
      v15 = [v5 compare:v6];
    }

    else if (v5 >= v6)
    {
      v15 = v5 != v6;
    }

    else
    {
      v15 = -1;
    }
  }

  v19 = *MEMORY[0x277D85DE8];
  return v15;
}

- (void)rearrangeTimerDidFire:(id)fire
{
  [(NSTimer *)self->mRearrangeTimer invalidate];
  mRearrangeTimer = self->mRearrangeTimer;
  self->mRearrangeTimer = 0;

  if ([(NSMutableSet *)self->mObjectsToRearrange count])
  {
    v5[0] = MEMORY[0x277D85DD0];
    v5[1] = 3221225472;
    v5[2] = __49__CATCollectionController_rearrangeTimerDidFire___block_invoke;
    v5[3] = &unk_278DA72D0;
    v5[4] = self;
    [(CATCollectionController *)self changeContent:v5];
  }
}

void __49__CATCollectionController_rearrangeTimerDidFire___block_invoke(uint64_t a1)
{
  v13 = *MEMORY[0x277D85DE8];
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v2 = *(*(a1 + 32) + 80);
  v3 = [v2 countByEnumeratingWithState:&v8 objects:v12 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v9;
    do
    {
      v6 = 0;
      do
      {
        if (*v9 != v5)
        {
          objc_enumerationMutation(v2);
        }

        [*(a1 + 32) arrangeObject:{*(*(&v8 + 1) + 8 * v6++), v8}];
      }

      while (v4 != v6);
      v4 = [v2 countByEnumeratingWithState:&v8 objects:v12 count:16];
    }

    while (v4);
  }

  v7 = *MEMORY[0x277D85DE8];
}

- (void)scheduleRearrangeTimerIfNeed
{
  if (!self->mRearrangeTimer)
  {
    v4 = [MEMORY[0x277CBEBB8] scheduledTimerWithTimeInterval:self target:sel_rearrangeTimerDidFire_ selector:0 userInfo:0 repeats:0.25];
    mRearrangeTimer = self->mRearrangeTimer;
    self->mRearrangeTimer = v4;

    MEMORY[0x2821F96F8](v4, mRearrangeTimer);
  }
}

- (void)updateKeysAffectingArrangementForceUpdate:(BOOL)update includeAllContent:(BOOL)content
{
  contentCopy = content;
  updateCopy = update;
  v7 = [MEMORY[0x277CBEB58] set];
  if ([(CATCollectionController *)self automaticallyRearrangesObjects])
  {
    sortDescriptors = [(CATCollectionController *)self sortDescriptors];
    v9 = [sortDescriptors valueForKeyPath:@"key"];
    [v7 addObjectsFromArray:v9];
  }

  null = [MEMORY[0x277CBEB68] null];
  [v7 removeObject:null];

  [v7 removeObject:&stru_2855FDC88];
  if (contentCopy)
  {
    v11 = [MEMORY[0x277CBEB58] setWithSet:self->mContent];
  }

  else if (updateCopy)
  {
    v11 = [MEMORY[0x277CBEB58] setWithArray:self->_arrangedObjects];
  }

  else
  {
    v11 = 0;
  }

  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __87__CATCollectionController_updateKeysAffectingArrangementForceUpdate_includeAllContent___block_invoke;
  v14[3] = &unk_278DA7280;
  v14[4] = self;
  v15 = v7;
  v16 = v11;
  v12 = v11;
  v13 = v7;
  [(CATCollectionController *)self changeContent:v14];
}

void __87__CATCollectionController_updateKeysAffectingArrangementForceUpdate_includeAllContent___block_invoke(id *a1)
{
  v29 = *MEMORY[0x277D85DE8];
  if (([*(a1[4] + 9) isEqualToSet:a1[5]] & 1) == 0)
  {
    v2 = [MEMORY[0x277CBEB58] setWithSet:*(a1[4] + 9)];
    v3 = [MEMORY[0x277CBEB58] setWithSet:a1[5]];
    [v2 minusSet:a1[5]];
    [v3 minusSet:*(a1[4] + 9)];
    if ([v2 count] || objc_msgSend(v3, "count"))
    {
      v25 = 0u;
      v26 = 0u;
      v23 = 0u;
      v24 = 0u;
      v4 = *(a1[4] + 4);
      v5 = [v4 countByEnumeratingWithState:&v23 objects:v28 count:16];
      if (v5)
      {
        v6 = v5;
        v7 = *v24;
        do
        {
          for (i = 0; i != v6; ++i)
          {
            if (*v24 != v7)
            {
              objc_enumerationMutation(v4);
            }

            v9 = *(*(&v23 + 1) + 8 * i);
            [a1[4] removeObserversFromObject:v9 forKeyPaths:v2];
            [a1[4] addObserversToObject:v9 forKeyPaths:v3];
            [a1[4] arrangeObject:v9];
            [a1[6] removeObject:v9];
          }

          v6 = [v4 countByEnumeratingWithState:&v23 objects:v28 count:16];
        }

        while (v6);
      }
    }

    v10 = [a1[5] copy];
    v11 = a1[4];
    v12 = v11[9];
    v11[9] = v10;
  }

  v21 = 0u;
  v22 = 0u;
  v19 = 0u;
  v20 = 0u;
  v13 = a1[6];
  v14 = [v13 countByEnumeratingWithState:&v19 objects:v27 count:16];
  if (v14)
  {
    v15 = v14;
    v16 = *v20;
    do
    {
      for (j = 0; j != v15; ++j)
      {
        if (*v20 != v16)
        {
          objc_enumerationMutation(v13);
        }

        [a1[4] arrangeObject:{*(*(&v19 + 1) + 8 * j), v19}];
      }

      v15 = [v13 countByEnumeratingWithState:&v19 objects:v27 count:16];
    }

    while (v15);
  }

  v18 = *MEMORY[0x277D85DE8];
}

- (void)changeContent:(id)content
{
  contentCopy = content;
  v23 = contentCopy;
  if (!contentCopy)
  {
    [(CATCollectionController *)a2 changeContent:?];
    contentCopy = 0;
  }

  if (self->mChangingSelection)
  {
    contentCopy[2]();
  }

  else
  {
    v6 = objc_alloc(MEMORY[0x277CCAB58]);
    selectionIndexes = [(CATCollectionController *)self selectionIndexes];
    v8 = [v6 initWithIndexSet:selectionIndexes];
    mChangingSelection = self->mChangingSelection;
    self->mChangingSelection = v8;

    v10 = [(NSArray *)self->_arrangedObjects mutableCopy];
    mPendingArrangedObjects = self->mPendingArrangedObjects;
    self->mPendingArrangedObjects = v10;

    [(NSMutableArray *)self->mPendingInsertedObjects removeAllObjects];
    [(NSMutableArray *)self->mPendingDeletedObjects removeAllObjects];
    v23[2]();
    [(CATCollectionController *)self notifyArrangedObjectsWillChange];
    v12 = [(NSArray *)self->_arrangedObjects copy];
    v13 = [(NSMutableArray *)self->mPendingArrangedObjects copy];
    [(CATCollectionController *)self setArrangedObjects:v13];

    selectionIndexes2 = [(CATCollectionController *)self selectionIndexes];
    v15 = [selectionIndexes2 isEqualToIndexSet:self->mChangingSelection];

    if (v15)
    {
      v16 = self->mChangingSelection;
      self->mChangingSelection = 0;

      [(CATCollectionController *)self notifyArrangedObjectsDidChangeWithPreviousArrangedObjects:v12];
    }

    else
    {
      [(CATCollectionController *)self willChangeValueForKey:@"selectionIndexes"];
      v17 = [(NSMutableIndexSet *)self->mChangingSelection copy];
      selectionIndexes = self->_selectionIndexes;
      self->_selectionIndexes = v17;

      [(CATCollectionController *)self didChangeValueForKey:@"selectionIndexes"];
      v19 = self->mChangingSelection;
      self->mChangingSelection = 0;

      [(CATCollectionController *)self notifyArrangedObjectsDidChangeWithPreviousArrangedObjects:v12];
      delegate = [(CATCollectionController *)self delegate];
      v21 = objc_opt_respondsToSelector();

      if (v21)
      {
        delegate2 = [(CATCollectionController *)self delegate];
        [delegate2 controllerDidChangeSelectionIndexes:self];
      }
    }
  }
}

- (void)notifyArrangedObjectsWillChange
{
  v43 = *MEMORY[0x277D85DE8];
  if (self->mChangingSelection)
  {
    if (([(NSMutableArray *)self->mPendingInsertedObjects count]|| [(NSMutableArray *)self->mPendingDeletedObjects count]) && !self->mDelegateKnowsContentIsChanging)
    {
      delegate = [(CATCollectionController *)self delegate];
      v4 = objc_opt_respondsToSelector();

      if (v4)
      {
        delegate2 = [(CATCollectionController *)self delegate];
        [delegate2 controllerWillChangeContent:self];
      }

      self->mDelegateKnowsContentIsChanging = 1;
    }

    if (self->mChangingSelection)
    {
      delegate3 = [(CATCollectionController *)self delegate];
      v7 = objc_opt_respondsToSelector();

      if (v7)
      {
        v39 = 0u;
        v40 = 0u;
        v37 = 0u;
        v38 = 0u;
        v8 = self->mPendingDeletedObjects;
        v9 = [(NSMutableArray *)v8 countByEnumeratingWithState:&v37 objects:v42 count:16];
        if (v9)
        {
          v10 = v9;
          v11 = *v38;
          do
          {
            for (i = 0; i != v10; ++i)
            {
              if (*v38 != v11)
              {
                objc_enumerationMutation(v8);
              }

              v13 = *(*(&v37 + 1) + 8 * i);
              v14 = [(NSMutableArray *)self->mPendingInsertedObjects containsObject:v13];
              v15 = [(NSArray *)self->_arrangedObjects indexOfObject:v13];
              if (v14)
              {
                v16 = [(NSMutableArray *)self->mPendingArrangedObjects indexOfObject:v13];
                delegate4 = [(CATCollectionController *)self delegate];
                v18 = delegate4;
                selfCopy2 = self;
                v20 = v13;
                v21 = v15;
                v22 = 3;
                v23 = v16;
              }

              else
              {
                delegate4 = [(CATCollectionController *)self delegate];
                v18 = delegate4;
                selfCopy2 = self;
                v20 = v13;
                v21 = v15;
                v22 = 2;
                v23 = 0x7FFFFFFFFFFFFFFFLL;
              }

              [delegate4 controller:selfCopy2 willChangeObject:v20 atIndex:v21 forChangeType:v22 newIndex:v23];
            }

            v10 = [(NSMutableArray *)v8 countByEnumeratingWithState:&v37 objects:v42 count:16];
          }

          while (v10);
        }

        v35 = 0u;
        v36 = 0u;
        v33 = 0u;
        v34 = 0u;
        v24 = self->mPendingInsertedObjects;
        v25 = [(NSMutableArray *)v24 countByEnumeratingWithState:&v33 objects:v41 count:16];
        if (v25)
        {
          v26 = v25;
          v27 = *v34;
          do
          {
            for (j = 0; j != v26; ++j)
            {
              if (*v34 != v27)
              {
                objc_enumerationMutation(v24);
              }

              v29 = *(*(&v33 + 1) + 8 * j);
              if (([(NSMutableArray *)self->mPendingDeletedObjects containsObject:v29, v33]& 1) == 0)
              {
                v30 = [(NSMutableArray *)self->mPendingArrangedObjects indexOfObject:v29];
                delegate5 = [(CATCollectionController *)self delegate];
                [delegate5 controller:self willChangeObject:v29 atIndex:0x7FFFFFFFFFFFFFFFLL forChangeType:1 newIndex:v30];
              }
            }

            v26 = [(NSMutableArray *)v24 countByEnumeratingWithState:&v33 objects:v41 count:16];
          }

          while (v26);
        }
      }
    }
  }

  v32 = *MEMORY[0x277D85DE8];
}

- (void)notifyArrangedObjectsDidChangeWithPreviousArrangedObjects:(id)objects
{
  v45 = *MEMORY[0x277D85DE8];
  objectsCopy = objects;
  if (self->mDelegateKnowsContentIsChanging)
  {
    delegate = [(CATCollectionController *)self delegate];
    v6 = objc_opt_respondsToSelector();

    if (v6)
    {
      delegate2 = [(CATCollectionController *)self delegate];
      [delegate2 controllerDidChangeContent:self];
    }
  }

  self->mDelegateKnowsContentIsChanging = 0;
  delegate3 = [(CATCollectionController *)self delegate];
  v9 = objc_opt_respondsToSelector();

  if (v9)
  {
    v41 = 0u;
    v42 = 0u;
    v39 = 0u;
    v40 = 0u;
    v10 = self->mPendingDeletedObjects;
    v11 = [(NSMutableArray *)v10 countByEnumeratingWithState:&v39 objects:v44 count:16];
    if (v11)
    {
      v12 = v11;
      v13 = *v40;
      do
      {
        for (i = 0; i != v12; ++i)
        {
          if (*v40 != v13)
          {
            objc_enumerationMutation(v10);
          }

          v15 = *(*(&v39 + 1) + 8 * i);
          v16 = [(NSMutableArray *)self->mPendingInsertedObjects containsObject:v15];
          v17 = [objectsCopy indexOfObject:v15];
          if (v16)
          {
            v18 = [(NSMutableArray *)self->mPendingArrangedObjects indexOfObject:v15];
            delegate4 = [(CATCollectionController *)self delegate];
            v20 = delegate4;
            selfCopy2 = self;
            v22 = v15;
            v23 = v17;
            v24 = 3;
            v25 = v18;
          }

          else
          {
            delegate4 = [(CATCollectionController *)self delegate];
            v20 = delegate4;
            selfCopy2 = self;
            v22 = v15;
            v23 = v17;
            v24 = 2;
            v25 = 0x7FFFFFFFFFFFFFFFLL;
          }

          [delegate4 controller:selfCopy2 didChangeObject:v22 atIndex:v23 forChangeType:v24 newIndex:v25];
        }

        v12 = [(NSMutableArray *)v10 countByEnumeratingWithState:&v39 objects:v44 count:16];
      }

      while (v12);
    }

    v37 = 0u;
    v38 = 0u;
    v35 = 0u;
    v36 = 0u;
    v26 = self->mPendingInsertedObjects;
    v27 = [(NSMutableArray *)v26 countByEnumeratingWithState:&v35 objects:v43 count:16];
    if (v27)
    {
      v28 = v27;
      v29 = *v36;
      do
      {
        for (j = 0; j != v28; ++j)
        {
          if (*v36 != v29)
          {
            objc_enumerationMutation(v26);
          }

          v31 = *(*(&v35 + 1) + 8 * j);
          if (([(NSMutableArray *)self->mPendingDeletedObjects containsObject:v31, v35]& 1) == 0)
          {
            v32 = [(NSMutableArray *)self->mPendingArrangedObjects indexOfObject:v31];
            delegate5 = [(CATCollectionController *)self delegate];
            [delegate5 controller:self didChangeObject:v31 atIndex:0x7FFFFFFFFFFFFFFFLL forChangeType:1 newIndex:v32];
          }
        }

        v28 = [(NSMutableArray *)v26 countByEnumeratingWithState:&v35 objects:v43 count:16];
      }

      while (v28);
    }
  }

  v34 = *MEMORY[0x277D85DE8];
}

- (void)changeObject:(id)object atIndex:(unint64_t)index forChangeType:(unint64_t)type newIndex:(unint64_t)newIndex
{
  objectCopy = object;
  v11 = objectCopy;
  if (type == 3)
  {
    v13 = objectCopy;
    [(NSMutableIndexSet *)self->mChangingSelection cat_moveIndex:index toIndex:newIndex];
    [(NSMutableArray *)self->mPendingArrangedObjects removeObjectAtIndex:index];
    [(NSMutableArray *)self->mPendingArrangedObjects insertObject:v13 atIndex:newIndex];
    [(NSMutableArray *)self->mPendingInsertedObjects addObject:v13];
    goto LABEL_7;
  }

  if (type == 2)
  {
    v13 = objectCopy;
    [(NSMutableIndexSet *)self->mChangingSelection cat_shiftAndRemoveIndex:index];
    [(NSMutableArray *)self->mPendingArrangedObjects removeObjectAtIndex:index];
LABEL_7:
    v12 = 24;
    goto LABEL_8;
  }

  if (type != 1)
  {
    goto LABEL_9;
  }

  v13 = objectCopy;
  [(NSMutableIndexSet *)self->mChangingSelection shiftIndexesStartingAtIndex:newIndex by:1];
  [(NSMutableArray *)self->mPendingArrangedObjects insertObject:v13 atIndex:newIndex];
  v12 = 16;
LABEL_8:
  objectCopy = [*(&self->super.isa + v12) addObject:v13];
  v11 = v13;
LABEL_9:

  MEMORY[0x2821F96F8](objectCopy, v11);
}

- (void)bindContentToObject:(uint64_t)a3 withKeyPath:(uint64_t)a4 usingTransformer:.cold.1(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = [MEMORY[0x277CCA890] currentHandler];
  [v8 handleFailureInMethod:a1 object:a2 file:@"CATCollectionController.m" lineNumber:237 description:{@"%@ is already observing <%@: %p> on keypath %@", a2, a3, a3, a4}];
}

- (void)bindContentToObject:(const char *)a1 withKeyPath:(uint64_t)a2 usingTransformer:.cold.2(const char *a1, uint64_t a2)
{
  v5 = [MEMORY[0x277CCA890] currentHandler];
  v4 = NSStringFromSelector(a1);
  [v5 handleFailureInMethod:a1 object:a2 file:@"CATCollectionController.m" lineNumber:238 description:{@"%@ cannot call %@ when there is already content set", a2, v4}];
}

- (void)changeContent:(uint64_t)a1 .cold.1(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x277CCA890] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"CATCollectionController.m" lineNumber:559 description:{@"Invalid parameter not satisfying: %@", @"changeBlock"}];
}

@end