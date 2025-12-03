@interface NMSSequentialMediaItemGroupIterator
- (void)_continueToNextContainer;
- (void)_continueToNextIdentifier;
- (void)markAllRemainingContainersAsSkipped;
@end

@implementation NMSSequentialMediaItemGroupIterator

- (void)_continueToNextIdentifier
{
  [(NMSMediaItemGroupIterator *)self _generateItemListAndSizesDictIfNecessary];
  v3 = [(NMSMediaItemGroupIterator *)self currentItemIndex]+ 1;
  selfCopy2 = self;
  while (1)
  {
    [(NMSMediaItemGroupIterator *)selfCopy2 setCurrentItemIndex:v3];
    currentContainerIndex = [(NMSMediaItemGroupIterator *)self currentContainerIndex];
    remainingItemLists = [(NMSMediaItemGroupIterator *)self remainingItemLists];
    if (currentContainerIndex >= [remainingItemLists count])
    {
      break;
    }

    currentItemIndex = [(NMSMediaItemGroupIterator *)self currentItemIndex];
    remainingItemLists2 = [(NMSMediaItemGroupIterator *)self remainingItemLists];
    v8 = [remainingItemLists2 objectAtIndex:{-[NMSMediaItemGroupIterator currentContainerIndex](self, "currentContainerIndex")}];
    v9 = [v8 count];

    if (currentItemIndex < v9)
    {
      return;
    }

    [(NMSMediaItemGroupIterator *)self setCurrentContainerIndex:[(NMSMediaItemGroupIterator *)self currentContainerIndex]+ 1];
    selfCopy2 = self;
    v3 = 0;
  }
}

- (void)_continueToNextContainer
{
  [(NMSMediaItemGroupIterator *)self _generateItemListAndSizesDictIfNecessary];
  [(NMSMediaItemGroupIterator *)self setCurrentContainerIndex:[(NMSMediaItemGroupIterator *)self currentContainerIndex]+ 1];

  [(NMSMediaItemGroupIterator *)self setCurrentItemIndex:0];
}

- (void)markAllRemainingContainersAsSkipped
{
  [(NMSMediaItemGroupIterator *)self _generateItemListAndSizesDictIfNecessary];
  while (1)
  {
    currentContainerIndex = [(NMSMediaItemGroupIterator *)self currentContainerIndex];
    remainingItemLists = [(NMSMediaItemGroupIterator *)self remainingItemLists];
    v5 = [remainingItemLists count];

    if (currentContainerIndex >= v5)
    {
      break;
    }

    currentItem = [(NMSMediaItemGroupIterator *)self currentItem];

    if (currentItem)
    {
      remainingContainers = [(NMSMediaItemGroupIterator *)self remainingContainers];
      v8 = [remainingContainers objectAtIndex:{-[NMSMediaItemGroupIterator currentContainerIndex](self, "currentContainerIndex")}];
      quotaData = [v8 quotaData];
      [quotaData setHasSkippedItems:1];
    }

    [(NMSSequentialMediaItemGroupIterator *)self _continueToNextContainer];
  }
}

@end