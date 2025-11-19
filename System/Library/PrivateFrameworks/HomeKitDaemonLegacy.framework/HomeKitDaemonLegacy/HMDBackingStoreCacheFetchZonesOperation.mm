@interface HMDBackingStoreCacheFetchZonesOperation
- (HMDBackingStoreCacheFetchZonesOperation)initWithFetchResult:(id)a3;
- (id)mainReturningError;
@end

@implementation HMDBackingStoreCacheFetchZonesOperation

- (id)mainReturningError
{
  v3 = [(HMDBackingStoreCacheFetchZonesOperation *)self fetchResult];

  if (v3)
  {
    v4 = [(HMDBackingStoreCacheFetchZonesOperation *)self fetchResult];
    v5 = [(HMDBackingStoreOperation *)self store];
    v6 = [v5 local];
    v7 = [v6 zoneCache];
    (v4)[2](v4, v7, 0);
  }

  return 0;
}

- (HMDBackingStoreCacheFetchZonesOperation)initWithFetchResult:(id)a3
{
  v4 = a3;
  v10.receiver = self;
  v10.super_class = HMDBackingStoreCacheFetchZonesOperation;
  v5 = [(HMDBackingStoreOperation *)&v10 init];
  if (v5)
  {
    v6 = _Block_copy(v4);
    fetchResult = v5->_fetchResult;
    v5->_fetchResult = v6;

    v8 = v5;
  }

  return v5;
}

@end