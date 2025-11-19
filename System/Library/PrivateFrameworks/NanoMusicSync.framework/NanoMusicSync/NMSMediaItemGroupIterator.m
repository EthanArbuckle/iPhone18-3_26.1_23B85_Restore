@interface NMSMediaItemGroupIterator
- (BOOL)isCurrentIdentifierEstimate;
- (NMSMediaItemGroupIterator)initWithItemGroups:(id)a3 estimatedItemSize:(unint64_t)a4;
- (NMSQuotaEvaluationState)evaluationState;
- (NSMutableArray)indexesToBeRemoved;
- (NSMutableArray)remainingContainers;
- (NSMutableOrderedSet)mutableItemListWithinQuota;
- (id)currentItem;
- (id)downloadInfoWithinQuota;
- (id)identifiersForContainersOfType:(unint64_t)a3;
- (id)mediaContainersAboveQuota;
- (unint64_t)sizeForCurrentIdentifier;
- (void)_generateItemListAndSizesDictIfNecessary;
- (void)_markToBeRemoved;
- (void)addCurrentIdentifierToWithinQuotaListAndCountSizeTowardsQuota:(BOOL)a3;
- (void)removeCurrentIdentifier;
- (void)resetToIterateOverQuotaIdentifiers;
- (void)skipCurrentIdentifier;
@end

@implementation NMSMediaItemGroupIterator

- (NMSQuotaEvaluationState)evaluationState
{
  v3 = objc_alloc_init(NMSQuotaEvaluationState_Legacy);
  v4 = [(NMSMediaItemGroupIterator *)self currentItem];
  v5 = [v4 mediaLibraryIdentifier];
  [(NMSQuotaEvaluationState_Legacy *)v3 setMediaLibraryIdentifier:v5];

  v6 = [(NMSMediaItemGroupIterator *)self currentItem];
  v7 = [v6 externalLibraryIdentifier];
  [(NMSQuotaEvaluationState_Legacy *)v3 setExternalLibraryIdentifier:v7];

  [(NMSQuotaEvaluationState_Legacy *)v3 setContainerIndex:[(NMSMediaItemGroupIterator *)self currentContainerIndex]];
  [(NMSQuotaEvaluationState_Legacy *)v3 setItemIndex:[(NMSMediaItemGroupIterator *)self currentItemIndex]];
  [(NMSQuotaEvaluationState_Legacy *)v3 setItemSize:[(NMSMediaItemGroupIterator *)self sizeForCurrentIdentifier]];
  [(NMSQuotaEvaluationState_Legacy *)v3 setListTotalSize:[(NMSMediaItemGroupIterator *)self sizeForItemListWithinQuota]];

  return v3;
}

- (NMSMediaItemGroupIterator)initWithItemGroups:(id)a3 estimatedItemSize:(unint64_t)a4
{
  v6 = a3;
  v11.receiver = self;
  v11.super_class = NMSMediaItemGroupIterator;
  v7 = [(NMSMediaItemGroupIterator *)&v11 init];
  if (v7)
  {
    v8 = [v6 copy];
    itemGroups = v7->_itemGroups;
    v7->_itemGroups = v8;

    v7->_estimatedItemSize = a4;
  }

  return v7;
}

- (NSMutableArray)remainingContainers
{
  remainingContainers = self->_remainingContainers;
  if (!remainingContainers)
  {
    v4 = [(NSArray *)self->_itemGroups mutableCopy];
    v5 = self->_remainingContainers;
    self->_remainingContainers = v4;

    remainingContainers = self->_remainingContainers;
  }

  return remainingContainers;
}

- (NSMutableOrderedSet)mutableItemListWithinQuota
{
  mutableItemListWithinQuota = self->_mutableItemListWithinQuota;
  if (!mutableItemListWithinQuota)
  {
    v4 = objc_alloc_init(MEMORY[0x277CBEB40]);
    v5 = self->_mutableItemListWithinQuota;
    self->_mutableItemListWithinQuota = v4;

    mutableItemListWithinQuota = self->_mutableItemListWithinQuota;
  }

  return mutableItemListWithinQuota;
}

- (id)downloadInfoWithinQuota
{
  v3 = [NMSMediaDownloadInfo alloc];
  v4 = [(NMSMediaItemGroupIterator *)self mutableItemListWithinQuota];
  v5 = [(NMSMediaDownloadInfo *)v3 initWithItems:v4];

  return v5;
}

- (void)_generateItemListAndSizesDictIfNecessary
{
  v41 = *MEMORY[0x277D85DE8];
  v3 = [(NMSMediaItemGroupIterator *)self remainingItemLists];

  if (!v3)
  {
    v4 = [MEMORY[0x277CBEB18] arrayWithCapacity:{-[NSArray count](self->_itemGroups, "count")}];
    [(NMSMediaItemGroupIterator *)self setRemainingItemLists:v4];

    v5 = [NMLogActionsCoalescer alloc];
    v6 = objc_opt_class();
    v7 = NMLogForCategory(6);
    v8 = [(NMLogActionsCoalescer *)v5 initWithIdentifier:v6 logCategory:v7];

    v9 = [@"[MediaQuota]" stringByAppendingString:@" Building item list"];
    v29 = v8;
    [(NMLogActionsCoalescer *)v8 setPrefix:v9];

    v37 = 0u;
    v38 = 0u;
    v35 = 0u;
    v36 = 0u;
    obj = self->_itemGroups;
    v30 = [(NSArray *)obj countByEnumeratingWithState:&v35 objects:v40 count:16];
    if (v30)
    {
      v10 = 0;
      v28 = *v36;
      do
      {
        for (i = 0; i != v30; ++i)
        {
          if (*v36 != v28)
          {
            objc_enumerationMutation(obj);
          }

          v12 = *(*(&v35 + 1) + 8 * i);
          v13 = [v12 itemList];
          if ([v13 count])
          {
            v14 = [(NMSMediaItemGroupIterator *)self remainingItemLists];
            v15 = [MEMORY[0x277CBEB18] arrayWithArray:v13];
            [v14 addObject:v15];

            v33 = 0u;
            v34 = 0u;
            v31 = 0u;
            v32 = 0u;
            v16 = v13;
            v17 = [v16 countByEnumeratingWithState:&v31 objects:v39 count:16];
            if (v17)
            {
              v18 = v17;
              v19 = *v32;
              do
              {
                for (j = 0; j != v18; ++j)
                {
                  if (*v32 != v19)
                  {
                    objc_enumerationMutation(v16);
                  }

                  v21 = *(*(&v31 + 1) + 8 * j);
                  if (([v21 isManuallyAdded] & 1) == 0)
                  {
                    self->_nominatedItemSize += [v21 size];
                  }
                }

                v18 = [v16 countByEnumeratingWithState:&v31 objects:v39 count:16];
              }

              while (v18);
            }

            v22 = MEMORY[0x277CCACA8];
            v23 = [v12 itemList];
            v24 = [v22 stringWithFormat:@"CTNR:%3d %@ generated item list which has %lu items.", v10, v12, objc_msgSend(v23, "count")];

            v10 = (v10 + 1);
          }

          else
          {
            v24 = [MEMORY[0x277CCACA8] stringWithFormat:@"Skipped %@ because it's empty.", v12];
          }

          v25 = [NMGenericMessageLogAction logActionWithMessage:v24];
          [(NMLogActionsCoalescer *)v29 addLogAction:v25];
        }

        v30 = [(NSArray *)obj countByEnumeratingWithState:&v35 objects:v40 count:16];
      }

      while (v30);
    }

    [(NMLogActionsCoalescer *)v29 flush];
  }

  v26 = *MEMORY[0x277D85DE8];
}

- (id)currentItem
{
  [(NMSMediaItemGroupIterator *)self _generateItemListAndSizesDictIfNecessary];
  v3 = [(NMSMediaItemGroupIterator *)self currentContainerIndex];
  v4 = [(NMSMediaItemGroupIterator *)self remainingItemLists];
  if (v3 >= [v4 count])
  {
    v10 = 0;
    goto LABEL_5;
  }

  v5 = [(NMSMediaItemGroupIterator *)self currentItemIndex];
  v6 = [(NMSMediaItemGroupIterator *)self remainingItemLists];
  v7 = [v6 objectAtIndex:{-[NMSMediaItemGroupIterator currentContainerIndex](self, "currentContainerIndex")}];
  v8 = [v7 count];

  if (v5 < v8)
  {
    v4 = [(NMSMediaItemGroupIterator *)self remainingItemLists];
    v9 = [v4 objectAtIndex:{-[NMSMediaItemGroupIterator currentContainerIndex](self, "currentContainerIndex")}];
    v10 = [v9 objectAtIndex:{-[NMSMediaItemGroupIterator currentItemIndex](self, "currentItemIndex")}];

LABEL_5:
    goto LABEL_7;
  }

  v10 = 0;
LABEL_7:

  return v10;
}

- (void)skipCurrentIdentifier
{
  [(NMSMediaItemGroupIterator *)self _generateItemListAndSizesDictIfNecessary];
  v3 = [(NMSMediaItemGroupIterator *)self currentItem];

  if (v3)
  {
    v4 = [(NMSMediaItemGroupIterator *)self remainingContainers];
    v5 = [v4 objectAtIndex:{-[NMSMediaItemGroupIterator currentContainerIndex](self, "currentContainerIndex")}];
    v6 = [v5 quotaData];
    [v6 setHasSkippedItems:1];

    [(NMSMediaItemGroupIterator *)self _continueToNextIdentifier];
  }
}

- (void)removeCurrentIdentifier
{
  [(NMSMediaItemGroupIterator *)self _generateItemListAndSizesDictIfNecessary];
  v3 = [(NMSMediaItemGroupIterator *)self currentItem];

  if (v3)
  {
    [(NMSMediaItemGroupIterator *)self _markToBeRemoved];
    v4 = [(NMSMediaItemGroupIterator *)self remainingContainers];
    v5 = [v4 objectAtIndex:{-[NMSMediaItemGroupIterator currentContainerIndex](self, "currentContainerIndex")}];
    v6 = [v5 quotaData];
    [v6 setHasRemovedItems:1];

    [(NMSMediaItemGroupIterator *)self _continueToNextIdentifier];
  }
}

- (void)addCurrentIdentifierToWithinQuotaListAndCountSizeTowardsQuota:(BOOL)a3
{
  v3 = a3;
  [(NMSMediaItemGroupIterator *)self _generateItemListAndSizesDictIfNecessary];
  v5 = [(NMSMediaItemGroupIterator *)self currentItem];
  if (v5)
  {
    v12 = v5;
    v6 = [(NMSMediaItemGroupIterator *)self mutableItemListWithinQuota];
    v7 = [v6 containsObject:v12];

    if ((v7 & 1) == 0)
    {
      v8 = [(NMSMediaItemGroupIterator *)self mutableItemListWithinQuota];
      [v8 addObject:v12];

      if (v3)
      {
        self->_sizeForItemListWithinQuota += [v12 size];
      }
    }

    v9 = [(NMSMediaItemGroupIterator *)self remainingContainers];
    v10 = [v9 objectAtIndex:{-[NMSMediaItemGroupIterator currentContainerIndex](self, "currentContainerIndex")}];
    v11 = [v10 quotaData];
    [v11 setNumItemsAdded:{objc_msgSend(v11, "numItemsAdded") + 1}];

    [(NMSMediaItemGroupIterator *)self _markToBeRemoved];
    [(NMSMediaItemGroupIterator *)self _continueToNextIdentifier];
    v5 = v12;
  }
}

- (void)resetToIterateOverQuotaIdentifiers
{
  [(NMSMediaItemGroupIterator *)self _generateItemListAndSizesDictIfNecessary];
  v3 = [(NMSMediaItemGroupIterator *)self remainingItemLists];
  v4 = [v3 count];

  if (v4)
  {
    v5 = 0;
    do
    {
      v6 = [(NMSMediaItemGroupIterator *)self remainingItemLists];
      v7 = [v6 objectAtIndex:v5];

      v8 = [(NMSMediaItemGroupIterator *)self indexesToBeRemoved];
      v9 = [v8 objectAtIndex:v5];
      [v7 removeObjectsAtIndexes:v9];

      if ([v7 count])
      {
        v10 = [(NMSMediaItemGroupIterator *)self remainingContainers];
        v11 = [v10 objectAtIndex:v5];
        v12 = [v11 quotaData];
        [v12 setHasSkippedItems:0];

        ++v5;
      }

      else
      {
        v13 = [(NMSMediaItemGroupIterator *)self remainingItemLists];
        [v13 removeObjectAtIndex:v5];

        v14 = [(NMSMediaItemGroupIterator *)self remainingContainers];
        [v14 removeObjectAtIndex:v5];

        v15 = [(NMSMediaItemGroupIterator *)self indexesToBeRemoved];
        [v15 removeObjectAtIndex:v5];
      }

      v16 = [(NMSMediaItemGroupIterator *)self remainingItemLists];
      v17 = [v16 count];
    }

    while (v5 < v17);
  }

  [(NMSMediaItemGroupIterator *)self setCurrentContainerIndex:0];
  [(NMSMediaItemGroupIterator *)self setCurrentItemIndex:0];
  indexesToBeRemoved = self->_indexesToBeRemoved;
  self->_indexesToBeRemoved = 0;
}

- (unint64_t)sizeForCurrentIdentifier
{
  [(NMSMediaItemGroupIterator *)self _generateItemListAndSizesDictIfNecessary];
  v3 = [(NMSMediaItemGroupIterator *)self currentItem];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = [v3 minimumSize];
  }

  else
  {
    v4 = [v3 size];
  }

  v5 = v4;

  return v5;
}

- (BOOL)isCurrentIdentifierEstimate
{
  [(NMSMediaItemGroupIterator *)self _generateItemListAndSizesDictIfNecessary];
  v3 = [(NMSMediaItemGroupIterator *)self remainingContainers];
  v4 = [v3 objectAtIndex:self->_currentContainerIndex];
  v5 = [v4 isEstimate];

  return v5;
}

- (id)identifiersForContainersOfType:(unint64_t)a3
{
  v20 = *MEMORY[0x277D85DE8];
  v5 = [MEMORY[0x277CBEB18] array];
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v6 = [(NMSMediaItemGroupIterator *)self itemGroups];
  v7 = [v6 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v16;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v16 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = [*(*(&v15 + 1) + 8 * i) identifiersForContainerType:a3];
        [v5 addObjectsFromArray:v11];
      }

      v8 = [v6 countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v8);
  }

  v12 = [v5 copy];
  v13 = *MEMORY[0x277D85DE8];

  return v12;
}

- (id)mediaContainersAboveQuota
{
  v2 = [(NMSMediaItemGroupIterator *)self itemGroups];
  v3 = [MEMORY[0x277CCAC30] predicateWithBlock:&__block_literal_global_3];
  v4 = [v2 filteredArrayUsingPredicate:v3];

  return v4;
}

uint64_t __54__NMSMediaItemGroupIterator_mediaContainersAboveQuota__block_invoke(uint64_t a1, void *a2)
{
  v2 = [a2 quotaData];
  v3 = [v2 hasItemsAboveQuota];

  return v3;
}

- (NSMutableArray)indexesToBeRemoved
{
  if (!self->_indexesToBeRemoved)
  {
    v3 = MEMORY[0x277CBEB18];
    v4 = [(NMSMediaItemGroupIterator *)self remainingContainers];
    v5 = [v3 arrayWithCapacity:{objc_msgSend(v4, "count")}];
    indexesToBeRemoved = self->_indexesToBeRemoved;
    self->_indexesToBeRemoved = v5;

    v7 = [(NMSMediaItemGroupIterator *)self remainingContainers];
    v8 = [v7 count];

    if (v8)
    {
      v9 = 0;
      do
      {
        v10 = self->_indexesToBeRemoved;
        v11 = [MEMORY[0x277CCAB58] indexSet];
        [(NSMutableArray *)v10 addObject:v11];

        ++v9;
        v12 = [(NMSMediaItemGroupIterator *)self remainingContainers];
        v13 = [v12 count];
      }

      while (v9 < v13);
    }
  }

  v14 = self->_indexesToBeRemoved;

  return v14;
}

- (void)_markToBeRemoved
{
  v4 = [(NMSMediaItemGroupIterator *)self indexesToBeRemoved];
  v3 = [v4 objectAtIndex:{-[NMSMediaItemGroupIterator currentContainerIndex](self, "currentContainerIndex")}];
  [v3 addIndex:{-[NMSMediaItemGroupIterator currentItemIndex](self, "currentItemIndex")}];
}

@end