@interface NMSMediaItemGroupIterator(Logging)
- (NMSQuotaEvaluationState)evaluationState;
@end

@implementation NMSMediaItemGroupIterator(Logging)

- (NMSQuotaEvaluationState)evaluationState
{
  v3 = objc_alloc_init(NMSQuotaEvaluationState);
  currentItem = [(NMSMediaItemGroupIterator *)self currentItem];
  mediaLibraryIdentifier = [currentItem mediaLibraryIdentifier];
  [(NMSQuotaEvaluationState *)v3 setMediaLibraryIdentifier:mediaLibraryIdentifier];

  currentItem2 = [(NMSMediaItemGroupIterator *)self currentItem];
  externalLibraryIdentifier = [currentItem2 externalLibraryIdentifier];
  [(NMSQuotaEvaluationState *)v3 setExternalLibraryIdentifier:externalLibraryIdentifier];

  [(NMSQuotaEvaluationState *)v3 setContainerIndex:[(NMSMediaItemGroupIterator *)self currentContainerIndex]];
  [(NMSQuotaEvaluationState *)v3 setItemIndex:[(NMSMediaItemGroupIterator *)self currentItemIndex]];
  [(NMSQuotaEvaluationState *)v3 setItemSize:[(NMSMediaItemGroupIterator *)self sizeForCurrentIdentifier]];
  [(NMSQuotaEvaluationState *)v3 setListTotalSize:[(NMSMediaItemGroupIterator *)self sizeForItemListWithinQuota]];

  return v3;
}

@end