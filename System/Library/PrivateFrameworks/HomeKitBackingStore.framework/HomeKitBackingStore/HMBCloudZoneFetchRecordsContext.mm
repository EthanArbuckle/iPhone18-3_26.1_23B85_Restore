@interface HMBCloudZoneFetchRecordsContext
- (HMBCloudZoneFetchRecordsContext)initWithRecordIDs:(id)ds future:(id)future;
@end

@implementation HMBCloudZoneFetchRecordsContext

- (HMBCloudZoneFetchRecordsContext)initWithRecordIDs:(id)ds future:(id)future
{
  dsCopy = ds;
  futureCopy = future;
  v12.receiver = self;
  v12.super_class = HMBCloudZoneFetchRecordsContext;
  v9 = [(HMBCloudZoneFetchRecordsContext *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_recordIDs, ds);
    objc_storeStrong(&v10->_future, future);
  }

  return v10;
}

@end