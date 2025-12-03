@interface HMDCloudSyncOperationLogEvent
- (HMDCloudSyncOperationLogEvent)initWithError:(id)error;
@end

@implementation HMDCloudSyncOperationLogEvent

- (HMDCloudSyncOperationLogEvent)initWithError:(id)error
{
  errorCopy = error;
  v8.receiver = self;
  v8.super_class = HMDCloudSyncOperationLogEvent;
  v5 = [(HMMLogEvent *)&v8 init];
  v6 = v5;
  if (v5)
  {
    [(HMMLogEvent *)v5 setError:errorCopy];
  }

  return v6;
}

@end