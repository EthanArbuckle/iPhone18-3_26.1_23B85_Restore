@interface NMSMediaItemGroupIterator
- (BOOL)isCurrentIdentifierEstimate;
- (NMSMediaItemGroupIterator)initWithItemGroups:(id)groups estimatedItemSize:(unint64_t)size;
- (NMSQuotaEvaluationState)evaluationState;
- (NSMutableArray)indexesToBeRemoved;
- (NSMutableArray)remainingContainers;
- (NSMutableOrderedSet)mutableItemListWithinQuota;
- (id)currentItem;
- (id)downloadInfoWithinQuota;
- (id)identifiersForContainersOfType:(unint64_t)type;
- (id)mediaContainersAboveQuota;
- (unint64_t)sizeForCurrentIdentifier;
- (void)_generateItemListAndSizesDictIfNecessary;
- (void)_markToBeRemoved;
- (void)addCurrentIdentifierToWithinQuotaListAndCountSizeTowardsQuota:(BOOL)quota;
- (void)removeCurrentIdentifier;
- (void)resetToIterateOverQuotaIdentifiers;
- (void)skipCurrentIdentifier;
@end

@implementation NMSMediaItemGroupIterator

- (NMSQuotaEvaluationState)evaluationState
{
  v3 = objc_alloc_init(NMSQuotaEvaluationState_Legacy);
  currentItem = [(NMSMediaItemGroupIterator *)self currentItem];
  mediaLibraryIdentifier = [currentItem mediaLibraryIdentifier];
  [(NMSQuotaEvaluationState_Legacy *)v3 setMediaLibraryIdentifier:mediaLibraryIdentifier];

  currentItem2 = [(NMSMediaItemGroupIterator *)self currentItem];
  externalLibraryIdentifier = [currentItem2 externalLibraryIdentifier];
  [(NMSQuotaEvaluationState_Legacy *)v3 setExternalLibraryIdentifier:externalLibraryIdentifier];

  [(NMSQuotaEvaluationState_Legacy *)v3 setContainerIndex:[(NMSMediaItemGroupIterator *)self currentContainerIndex]];
  [(NMSQuotaEvaluationState_Legacy *)v3 setItemIndex:[(NMSMediaItemGroupIterator *)self currentItemIndex]];
  [(NMSQuotaEvaluationState_Legacy *)v3 setItemSize:[(NMSMediaItemGroupIterator *)self sizeForCurrentIdentifier]];
  [(NMSQuotaEvaluationState_Legacy *)v3 setListTotalSize:[(NMSMediaItemGroupIterator *)self sizeForItemListWithinQuota]];

  return v3;
}

- (NMSMediaItemGroupIterator)initWithItemGroups:(id)groups estimatedItemSize:(unint64_t)size
{
  groupsCopy = groups;
  v11.receiver = self;
  v11.super_class = NMSMediaItemGroupIterator;
  v7 = [(NMSMediaItemGroupIterator *)&v11 init];
  if (v7)
  {
    v8 = [groupsCopy copy];
    itemGroups = v7->_itemGroups;
    v7->_itemGroups = v8;

    v7->_estimatedItemSize = size;
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
  mutableItemListWithinQuota = [(NMSMediaItemGroupIterator *)self mutableItemListWithinQuota];
  v5 = [(NMSMediaDownloadInfo *)v3 initWithItems:mutableItemListWithinQuota];

  return v5;
}

- (void)_generateItemListAndSizesDictIfNecessary
{
  v41 = *MEMORY[0x277D85DE8];
  remainingItemLists = [(NMSMediaItemGroupIterator *)self remainingItemLists];

  if (!remainingItemLists)
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
          itemList = [v12 itemList];
          if ([itemList count])
          {
            remainingItemLists2 = [(NMSMediaItemGroupIterator *)self remainingItemLists];
            v15 = [MEMORY[0x277CBEB18] arrayWithArray:itemList];
            [remainingItemLists2 addObject:v15];

            v33 = 0u;
            v34 = 0u;
            v31 = 0u;
            v32 = 0u;
            v16 = itemList;
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
            itemList2 = [v12 itemList];
            v24 = [v22 stringWithFormat:@"CTNR:%3d %@ generated item list which has %lu items.", v10, v12, objc_msgSend(itemList2, "count")];

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
  currentContainerIndex = [(NMSMediaItemGroupIterator *)self currentContainerIndex];
  remainingItemLists = [(NMSMediaItemGroupIterator *)self remainingItemLists];
  if (currentContainerIndex >= [remainingItemLists count])
  {
    v10 = 0;
    goto LABEL_5;
  }

  currentItemIndex = [(NMSMediaItemGroupIterator *)self currentItemIndex];
  remainingItemLists2 = [(NMSMediaItemGroupIterator *)self remainingItemLists];
  v7 = [remainingItemLists2 objectAtIndex:{-[NMSMediaItemGroupIterator currentContainerIndex](self, "currentContainerIndex")}];
  v8 = [v7 count];

  if (currentItemIndex < v8)
  {
    remainingItemLists = [(NMSMediaItemGroupIterator *)self remainingItemLists];
    v9 = [remainingItemLists objectAtIndex:{-[NMSMediaItemGroupIterator currentContainerIndex](self, "currentContainerIndex")}];
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
  currentItem = [(NMSMediaItemGroupIterator *)self currentItem];

  if (currentItem)
  {
    remainingContainers = [(NMSMediaItemGroupIterator *)self remainingContainers];
    v5 = [remainingContainers objectAtIndex:{-[NMSMediaItemGroupIterator currentContainerIndex](self, "currentContainerIndex")}];
    quotaData = [v5 quotaData];
    [quotaData setHasSkippedItems:1];

    [(NMSMediaItemGroupIterator *)self _continueToNextIdentifier];
  }
}

- (void)removeCurrentIdentifier
{
  [(NMSMediaItemGroupIterator *)self _generateItemListAndSizesDictIfNecessary];
  currentItem = [(NMSMediaItemGroupIterator *)self currentItem];

  if (currentItem)
  {
    [(NMSMediaItemGroupIterator *)self _markToBeRemoved];
    remainingContainers = [(NMSMediaItemGroupIterator *)self remainingContainers];
    v5 = [remainingContainers objectAtIndex:{-[NMSMediaItemGroupIterator currentContainerIndex](self, "currentContainerIndex")}];
    quotaData = [v5 quotaData];
    [quotaData setHasRemovedItems:1];

    [(NMSMediaItemGroupIterator *)self _continueToNextIdentifier];
  }
}

- (void)addCurrentIdentifierToWithinQuotaListAndCountSizeTowardsQuota:(BOOL)quota
{
  quotaCopy = quota;
  [(NMSMediaItemGroupIterator *)self _generateItemListAndSizesDictIfNecessary];
  currentItem = [(NMSMediaItemGroupIterator *)self currentItem];
  if (currentItem)
  {
    v12 = currentItem;
    mutableItemListWithinQuota = [(NMSMediaItemGroupIterator *)self mutableItemListWithinQuota];
    v7 = [mutableItemListWithinQuota containsObject:v12];

    if ((v7 & 1) == 0)
    {
      mutableItemListWithinQuota2 = [(NMSMediaItemGroupIterator *)self mutableItemListWithinQuota];
      [mutableItemListWithinQuota2 addObject:v12];

      if (quotaCopy)
      {
        self->_sizeForItemListWithinQuota += [v12 size];
      }
    }

    remainingContainers = [(NMSMediaItemGroupIterator *)self remainingContainers];
    v10 = [remainingContainers objectAtIndex:{-[NMSMediaItemGroupIterator currentContainerIndex](self, "currentContainerIndex")}];
    quotaData = [v10 quotaData];
    [quotaData setNumItemsAdded:{objc_msgSend(quotaData, "numItemsAdded") + 1}];

    [(NMSMediaItemGroupIterator *)self _markToBeRemoved];
    [(NMSMediaItemGroupIterator *)self _continueToNextIdentifier];
    currentItem = v12;
  }
}

- (void)resetToIterateOverQuotaIdentifiers
{
  [(NMSMediaItemGroupIterator *)self _generateItemListAndSizesDictIfNecessary];
  remainingItemLists = [(NMSMediaItemGroupIterator *)self remainingItemLists];
  v4 = [remainingItemLists count];

  if (v4)
  {
    v5 = 0;
    do
    {
      remainingItemLists2 = [(NMSMediaItemGroupIterator *)self remainingItemLists];
      v7 = [remainingItemLists2 objectAtIndex:v5];

      indexesToBeRemoved = [(NMSMediaItemGroupIterator *)self indexesToBeRemoved];
      v9 = [indexesToBeRemoved objectAtIndex:v5];
      [v7 removeObjectsAtIndexes:v9];

      if ([v7 count])
      {
        remainingContainers = [(NMSMediaItemGroupIterator *)self remainingContainers];
        v11 = [remainingContainers objectAtIndex:v5];
        quotaData = [v11 quotaData];
        [quotaData setHasSkippedItems:0];

        ++v5;
      }

      else
      {
        remainingItemLists3 = [(NMSMediaItemGroupIterator *)self remainingItemLists];
        [remainingItemLists3 removeObjectAtIndex:v5];

        remainingContainers2 = [(NMSMediaItemGroupIterator *)self remainingContainers];
        [remainingContainers2 removeObjectAtIndex:v5];

        indexesToBeRemoved2 = [(NMSMediaItemGroupIterator *)self indexesToBeRemoved];
        [indexesToBeRemoved2 removeObjectAtIndex:v5];
      }

      remainingItemLists4 = [(NMSMediaItemGroupIterator *)self remainingItemLists];
      v17 = [remainingItemLists4 count];
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
  currentItem = [(NMSMediaItemGroupIterator *)self currentItem];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    minimumSize = [currentItem minimumSize];
  }

  else
  {
    minimumSize = [currentItem size];
  }

  v5 = minimumSize;

  return v5;
}

- (BOOL)isCurrentIdentifierEstimate
{
  [(NMSMediaItemGroupIterator *)self _generateItemListAndSizesDictIfNecessary];
  remainingContainers = [(NMSMediaItemGroupIterator *)self remainingContainers];
  v4 = [remainingContainers objectAtIndex:self->_currentContainerIndex];
  isEstimate = [v4 isEstimate];

  return isEstimate;
}

- (id)identifiersForContainersOfType:(unint64_t)type
{
  v20 = *MEMORY[0x277D85DE8];
  array = [MEMORY[0x277CBEB18] array];
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  itemGroups = [(NMSMediaItemGroupIterator *)self itemGroups];
  v7 = [itemGroups countByEnumeratingWithState:&v15 objects:v19 count:16];
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
          objc_enumerationMutation(itemGroups);
        }

        v11 = [*(*(&v15 + 1) + 8 * i) identifiersForContainerType:type];
        [array addObjectsFromArray:v11];
      }

      v8 = [itemGroups countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v8);
  }

  v12 = [array copy];
  v13 = *MEMORY[0x277D85DE8];

  return v12;
}

- (id)mediaContainersAboveQuota
{
  itemGroups = [(NMSMediaItemGroupIterator *)self itemGroups];
  v3 = [MEMORY[0x277CCAC30] predicateWithBlock:&__block_literal_global_3];
  v4 = [itemGroups filteredArrayUsingPredicate:v3];

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
    remainingContainers = [(NMSMediaItemGroupIterator *)self remainingContainers];
    v5 = [v3 arrayWithCapacity:{objc_msgSend(remainingContainers, "count")}];
    indexesToBeRemoved = self->_indexesToBeRemoved;
    self->_indexesToBeRemoved = v5;

    remainingContainers2 = [(NMSMediaItemGroupIterator *)self remainingContainers];
    v8 = [remainingContainers2 count];

    if (v8)
    {
      v9 = 0;
      do
      {
        v10 = self->_indexesToBeRemoved;
        indexSet = [MEMORY[0x277CCAB58] indexSet];
        [(NSMutableArray *)v10 addObject:indexSet];

        ++v9;
        remainingContainers3 = [(NMSMediaItemGroupIterator *)self remainingContainers];
        v13 = [remainingContainers3 count];
      }

      while (v9 < v13);
    }
  }

  v14 = self->_indexesToBeRemoved;

  return v14;
}

- (void)_markToBeRemoved
{
  indexesToBeRemoved = [(NMSMediaItemGroupIterator *)self indexesToBeRemoved];
  v3 = [indexesToBeRemoved objectAtIndex:{-[NMSMediaItemGroupIterator currentContainerIndex](self, "currentContainerIndex")}];
  [v3 addIndex:{-[NMSMediaItemGroupIterator currentItemIndex](self, "currentItemIndex")}];
}

@end