@interface HMDCameraClipOperationDataSource
- (double)operationTimeout;
- (void)submitOperationEvent:(id)a3;
@end

@implementation HMDCameraClipOperationDataSource

- (void)submitOperationEvent:(id)a3
{
  v3 = a3;
  v4 = +[HMDMetricsManager sharedLogEventSubmitter];
  [v4 submitLogEvent:v3];
}

- (double)operationTimeout
{
  v2 = [MEMORY[0x277D0F8D0] sharedPreferences];
  v3 = [v2 preferenceForKey:@"clipModelOperationTimeout"];

  v4 = [v3 numberValue];
  [v4 doubleValue];
  v6 = v5;

  return v6;
}

@end