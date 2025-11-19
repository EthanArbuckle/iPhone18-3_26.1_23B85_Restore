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
  v4 = self;
  while (1)
  {
    [(NMSMediaItemGroupIterator *)v4 setCurrentItemIndex:v3];
    v5 = [(NMSMediaItemGroupIterator *)self currentContainerIndex];
    v10 = [(NMSMediaItemGroupIterator *)self remainingItemLists];
    if (v5 >= [v10 count])
    {
      break;
    }

    v6 = [(NMSMediaItemGroupIterator *)self currentItemIndex];
    v7 = [(NMSMediaItemGroupIterator *)self remainingItemLists];
    v8 = [v7 objectAtIndex:{-[NMSMediaItemGroupIterator currentContainerIndex](self, "currentContainerIndex")}];
    v9 = [v8 count];

    if (v6 < v9)
    {
      return;
    }

    [(NMSMediaItemGroupIterator *)self setCurrentContainerIndex:[(NMSMediaItemGroupIterator *)self currentContainerIndex]+ 1];
    v4 = self;
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
    v3 = [(NMSMediaItemGroupIterator *)self currentContainerIndex];
    v4 = [(NMSMediaItemGroupIterator *)self remainingItemLists];
    v5 = [v4 count];

    if (v3 >= v5)
    {
      break;
    }

    v6 = [(NMSMediaItemGroupIterator *)self currentItem];

    if (v6)
    {
      v7 = [(NMSMediaItemGroupIterator *)self remainingContainers];
      v8 = [v7 objectAtIndex:{-[NMSMediaItemGroupIterator currentContainerIndex](self, "currentContainerIndex")}];
      v9 = [v8 quotaData];
      [v9 setHasSkippedItems:1];
    }

    [(NMSSequentialMediaItemGroupIterator *)self _continueToNextContainer];
  }
}

@end