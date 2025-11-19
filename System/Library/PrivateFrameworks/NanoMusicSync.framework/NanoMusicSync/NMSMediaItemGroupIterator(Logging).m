@interface NMSMediaItemGroupIterator(Logging)
- (NMSQuotaEvaluationState)evaluationState;
@end

@implementation NMSMediaItemGroupIterator(Logging)

- (NMSQuotaEvaluationState)evaluationState
{
  v3 = objc_alloc_init(NMSQuotaEvaluationState);
  v4 = [(NMSMediaItemGroupIterator *)self currentItem];
  v5 = [v4 mediaLibraryIdentifier];
  [(NMSQuotaEvaluationState *)v3 setMediaLibraryIdentifier:v5];

  v6 = [(NMSMediaItemGroupIterator *)self currentItem];
  v7 = [v6 externalLibraryIdentifier];
  [(NMSQuotaEvaluationState *)v3 setExternalLibraryIdentifier:v7];

  [(NMSQuotaEvaluationState *)v3 setContainerIndex:[(NMSMediaItemGroupIterator *)self currentContainerIndex]];
  [(NMSQuotaEvaluationState *)v3 setItemIndex:[(NMSMediaItemGroupIterator *)self currentItemIndex]];
  [(NMSQuotaEvaluationState *)v3 setItemSize:[(NMSMediaItemGroupIterator *)self sizeForCurrentIdentifier]];
  [(NMSQuotaEvaluationState *)v3 setListTotalSize:[(NMSMediaItemGroupIterator *)self sizeForItemListWithinQuota]];

  return v3;
}

@end