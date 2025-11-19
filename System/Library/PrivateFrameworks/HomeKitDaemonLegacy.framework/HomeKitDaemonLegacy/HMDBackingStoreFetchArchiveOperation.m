@interface HMDBackingStoreFetchArchiveOperation
- (HMDBackingStoreFetchArchiveOperation)initWithFetchResult:(id)a3;
- (id)mainReturningError;
@end

@implementation HMDBackingStoreFetchArchiveOperation

- (id)mainReturningError
{
  v24 = *MEMORY[0x277D85DE8];
  v3 = [(HMDBackingStoreOperation *)self store];
  v4 = [v3 local];
  v18 = 0;
  v19 = 0;
  v17 = 0;
  v5 = [v4 _selectArchiveWithIdentifier:@"homedata" archive:&v19 controllerUserName:&v18 error:&v17];
  v6 = v19;
  v7 = v18;
  v8 = v17;

  if ((v5 & 1) == 0)
  {
    v9 = objc_autoreleasePoolPush();
    v10 = self;
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

  v13 = [(HMDBackingStoreFetchArchiveOperation *)self fetchResult];
  (v13)[2](v13, v6, v7, v8);

  v14 = v8;
  v15 = *MEMORY[0x277D85DE8];
  return v8;
}

- (HMDBackingStoreFetchArchiveOperation)initWithFetchResult:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = HMDBackingStoreFetchArchiveOperation;
  v5 = [(HMDBackingStoreOperation *)&v9 init];
  if (v5)
  {
    v6 = _Block_copy(v4);
    fetchResult = v5->_fetchResult;
    v5->_fetchResult = v6;
  }

  return v5;
}

@end