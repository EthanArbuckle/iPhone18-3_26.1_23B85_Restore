@interface HMDBackingStoreFetchArchiveOperation
- (HMDBackingStoreFetchArchiveOperation)initWithFetchResult:(id)result;
- (id)mainReturningError;
@end

@implementation HMDBackingStoreFetchArchiveOperation

- (id)mainReturningError
{
  v24 = *MEMORY[0x277D85DE8];
  store = [(HMDBackingStoreOperation *)self store];
  local = [store local];
  v18 = 0;
  v19 = 0;
  v17 = 0;
  v5 = [local _selectArchiveWithIdentifier:@"homedata" archive:&v19 controllerUserName:&v18 error:&v17];
  v6 = v19;
  v7 = v18;
  v8 = v17;

  if ((v5 & 1) == 0)
  {
    v9 = objc_autoreleasePoolPush();
    selfCopy = self;
    v11 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      v12 = HMFGetLogIdentifier();
      *buf = 138543618;
      v21 = v12;
      v22 = 2112;
      v23 = v8;
      _os_log_impl(&dword_2531F8000, v11, OS_LOG_TYPE_ERROR, "%{public}@Failed to select archive: %@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v9);
  }

  fetchResult = [(HMDBackingStoreFetchArchiveOperation *)self fetchResult];
  (fetchResult)[2](fetchResult, v6, v7, v8);

  v14 = v8;
  v15 = *MEMORY[0x277D85DE8];
  return v8;
}

- (HMDBackingStoreFetchArchiveOperation)initWithFetchResult:(id)result
{
  resultCopy = result;
  v9.receiver = self;
  v9.super_class = HMDBackingStoreFetchArchiveOperation;
  v5 = [(HMDBackingStoreOperation *)&v9 init];
  if (v5)
  {
    v6 = _Block_copy(resultCopy);
    fetchResult = v5->_fetchResult;
    v5->_fetchResult = v6;
  }

  return v5;
}

@end