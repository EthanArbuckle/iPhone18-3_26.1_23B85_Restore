@interface CKRecordFetchAggregatorOperationInfo
- (CKRecordFetchAggregatorOperationInfo)init;
@end

@implementation CKRecordFetchAggregatorOperationInfo

- (CKRecordFetchAggregatorOperationInfo)init
{
  v3.receiver = self;
  v3.super_class = CKRecordFetchAggregatorOperationInfo;
  result = [(CKOperationInfo *)&v3 init];
  if (result)
  {
    result->_fetchAssetContents = 1;
    result->_fetchMergeableValues = 1;
  }

  return result;
}

@end