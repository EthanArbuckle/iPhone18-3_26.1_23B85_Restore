@interface HMDCameraClipOperationDataSource
- (double)operationTimeout;
- (void)submitOperationEvent:(id)event;
@end

@implementation HMDCameraClipOperationDataSource

- (void)submitOperationEvent:(id)event
{
  eventCopy = event;
  v4 = +[HMDMetricsManager sharedLogEventSubmitter];
  [v4 submitLogEvent:eventCopy];
}

- (double)operationTimeout
{
  mEMORY[0x277D0F8D0] = [MEMORY[0x277D0F8D0] sharedPreferences];
  v3 = [mEMORY[0x277D0F8D0] preferenceForKey:@"clipModelOperationTimeout"];

  numberValue = [v3 numberValue];
  [numberValue doubleValue];
  v6 = v5;

  return v6;
}

@end