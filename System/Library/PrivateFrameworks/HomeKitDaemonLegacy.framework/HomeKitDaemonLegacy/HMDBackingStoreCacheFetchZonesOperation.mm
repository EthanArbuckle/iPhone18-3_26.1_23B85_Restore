@interface HMDBackingStoreCacheFetchZonesOperation
- (HMDBackingStoreCacheFetchZonesOperation)initWithFetchResult:(id)result;
- (id)mainReturningError;
@end

@implementation HMDBackingStoreCacheFetchZonesOperation

- (id)mainReturningError
{
  fetchResult = [(HMDBackingStoreCacheFetchZonesOperation *)self fetchResult];

  if (fetchResult)
  {
    fetchResult2 = [(HMDBackingStoreCacheFetchZonesOperation *)self fetchResult];
    store = [(HMDBackingStoreOperation *)self store];
    local = [store local];
    zoneCache = [local zoneCache];
    (fetchResult2)[2](fetchResult2, zoneCache, 0);
  }

  return 0;
}

- (HMDBackingStoreCacheFetchZonesOperation)initWithFetchResult:(id)result
{
  resultCopy = result;
  v10.receiver = self;
  v10.super_class = HMDBackingStoreCacheFetchZonesOperation;
  v5 = [(HMDBackingStoreOperation *)&v10 init];
  if (v5)
  {
    v6 = _Block_copy(resultCopy);
    fetchResult = v5->_fetchResult;
    v5->_fetchResult = v6;

    v8 = v5;
  }

  return v5;
}

@end