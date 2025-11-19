@interface HMBCloudZoneFetchRecordsContext
- (HMBCloudZoneFetchRecordsContext)initWithRecordIDs:(id)a3 future:(id)a4;
@end

@implementation HMBCloudZoneFetchRecordsContext

- (HMBCloudZoneFetchRecordsContext)initWithRecordIDs:(id)a3 future:(id)a4
{
  v7 = a3;
  v8 = a4;
  v12.receiver = self;
  v12.super_class = HMBCloudZoneFetchRecordsContext;
  v9 = [(HMBCloudZoneFetchRecordsContext *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_recordIDs, a3);
    objc_storeStrong(&v10->_future, a4);
  }

  return v10;
}

@end