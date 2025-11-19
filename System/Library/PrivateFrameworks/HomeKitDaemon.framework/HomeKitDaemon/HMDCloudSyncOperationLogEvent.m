@interface HMDCloudSyncOperationLogEvent
- (HMDCloudSyncOperationLogEvent)initWithError:(id)a3;
@end

@implementation HMDCloudSyncOperationLogEvent

- (HMDCloudSyncOperationLogEvent)initWithError:(id)a3
{
  v4 = a3;
  v8.receiver = self;
  v8.super_class = HMDCloudSyncOperationLogEvent;
  v5 = [(HMMLogEvent *)&v8 init];
  v6 = v5;
  if (v5)
  {
    [(HMMLogEvent *)v5 setError:v4];
  }

  return v6;
}

@end