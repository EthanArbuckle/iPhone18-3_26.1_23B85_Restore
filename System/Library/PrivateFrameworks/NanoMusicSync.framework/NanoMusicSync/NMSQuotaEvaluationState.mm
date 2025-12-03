@interface NMSQuotaEvaluationState
- (NMSQuotaEvaluationState)initWithCurrentItem:(id)item downloadInfo:(id)info;
@end

@implementation NMSQuotaEvaluationState

- (NMSQuotaEvaluationState)initWithCurrentItem:(id)item downloadInfo:(id)info
{
  itemCopy = item;
  infoCopy = info;
  v14.receiver = self;
  v14.super_class = NMSQuotaEvaluationState;
  v8 = [(NMSQuotaEvaluationState *)&v14 init];
  if (v8)
  {
    mediaLibraryIdentifier = [itemCopy mediaLibraryIdentifier];
    mediaLibraryIdentifier = v8->_mediaLibraryIdentifier;
    v8->_mediaLibraryIdentifier = mediaLibraryIdentifier;

    externalLibraryIdentifier = [itemCopy externalLibraryIdentifier];
    externalLibraryIdentifier = v8->_externalLibraryIdentifier;
    v8->_externalLibraryIdentifier = externalLibraryIdentifier;

    v8->_itemSize = [itemCopy size];
    v8->_listTotalSize = [infoCopy totalItemSize];
  }

  return v8;
}

@end