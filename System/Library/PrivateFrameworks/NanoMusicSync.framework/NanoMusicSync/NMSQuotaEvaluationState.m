@interface NMSQuotaEvaluationState
- (NMSQuotaEvaluationState)initWithCurrentItem:(id)a3 downloadInfo:(id)a4;
@end

@implementation NMSQuotaEvaluationState

- (NMSQuotaEvaluationState)initWithCurrentItem:(id)a3 downloadInfo:(id)a4
{
  v6 = a3;
  v7 = a4;
  v14.receiver = self;
  v14.super_class = NMSQuotaEvaluationState;
  v8 = [(NMSQuotaEvaluationState *)&v14 init];
  if (v8)
  {
    v9 = [v6 mediaLibraryIdentifier];
    mediaLibraryIdentifier = v8->_mediaLibraryIdentifier;
    v8->_mediaLibraryIdentifier = v9;

    v11 = [v6 externalLibraryIdentifier];
    externalLibraryIdentifier = v8->_externalLibraryIdentifier;
    v8->_externalLibraryIdentifier = v11;

    v8->_itemSize = [v6 size];
    v8->_listTotalSize = [v7 totalItemSize];
  }

  return v8;
}

@end