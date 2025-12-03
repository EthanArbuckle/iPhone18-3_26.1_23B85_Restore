@interface NWStatisticsDelegateBlockWrapper
- (void)sourceDidReceiveCounts:(id)counts;
- (void)sourceDidReceiveDescription:(id)description;
- (void)statisticsManager:(id)manager didAddSource:(id)source;
- (void)statisticsManager:(id)manager didRemoveSource:(id)source;
@end

@implementation NWStatisticsDelegateBlockWrapper

- (void)statisticsManager:(id)manager didAddSource:(id)source
{
  sourceCopy = source;
  addedBlock = [(NWStatisticsDelegateBlockWrapper *)self addedBlock];

  if (addedBlock)
  {
    addedBlock2 = [(NWStatisticsDelegateBlockWrapper *)self addedBlock];
    (addedBlock2)[2](addedBlock2, sourceCopy);
  }
}

- (void)statisticsManager:(id)manager didRemoveSource:(id)source
{
  sourceCopy = source;
  delegate = [sourceCopy delegate];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if (isKindOfClass)
  {
    delegate2 = [sourceCopy delegate];
    eventsBlock = [delegate2 eventsBlock];
    v8 = eventsBlock;
    if (eventsBlock)
    {
      (*(eventsBlock + 16))(eventsBlock, sourceCopy, 2);
    }

    else
    {
      removedBlock = [delegate2 removedBlock];
      v10 = removedBlock;
      if (removedBlock)
      {
        (*(removedBlock + 16))(removedBlock);
      }
    }

    [sourceCopy setDelegate:0];
  }
}

- (void)sourceDidReceiveCounts:(id)counts
{
  countsCopy = counts;
  eventsBlock = [(NWStatisticsDelegateBlockWrapper *)self eventsBlock];

  if (eventsBlock)
  {
    eventsBlock2 = [(NWStatisticsDelegateBlockWrapper *)self eventsBlock];
    (eventsBlock2)[2](eventsBlock2, countsCopy, 0);
  }

  else
  {
    countsBlock = [(NWStatisticsDelegateBlockWrapper *)self countsBlock];

    if (!countsBlock)
    {
      goto LABEL_6;
    }

    eventsBlock2 = [countsCopy currentSnapshot];
    traditionalDictionary = [eventsBlock2 traditionalDictionary];
    countsBlock2 = [(NWStatisticsDelegateBlockWrapper *)self countsBlock];
    (countsBlock2)[2](countsBlock2, traditionalDictionary);
  }

LABEL_6:
}

- (void)sourceDidReceiveDescription:(id)description
{
  descriptionCopy = description;
  eventsBlock = [(NWStatisticsDelegateBlockWrapper *)self eventsBlock];

  if (eventsBlock)
  {
    eventsBlock2 = [(NWStatisticsDelegateBlockWrapper *)self eventsBlock];
    (eventsBlock2)[2](eventsBlock2, descriptionCopy, 1);
  }

  else
  {
    descriptionBlock = [(NWStatisticsDelegateBlockWrapper *)self descriptionBlock];

    if (!descriptionBlock)
    {
      goto LABEL_6;
    }

    eventsBlock2 = [descriptionCopy currentSnapshot];
    traditionalDictionary = [eventsBlock2 traditionalDictionary];
    descriptionBlock2 = [(NWStatisticsDelegateBlockWrapper *)self descriptionBlock];
    (descriptionBlock2)[2](descriptionBlock2, traditionalDictionary);
  }

LABEL_6:
}

@end