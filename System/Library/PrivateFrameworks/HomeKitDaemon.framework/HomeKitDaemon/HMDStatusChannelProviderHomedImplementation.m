@interface HMDStatusChannelProviderHomedImplementation
- (id)createStatusChannelWithPrefix:(id)a3 identifier:(id)a4 queue:(id)a5;
@end

@implementation HMDStatusChannelProviderHomedImplementation

- (id)createStatusChannelWithPrefix:(id)a3 identifier:(id)a4 queue:(id)a5
{
  v7 = MEMORY[0x277D17470];
  v8 = a5;
  v9 = a4;
  v10 = a3;
  v11 = [v7 alloc];
  v12 = +[HMDMetricsManager sharedLogEventSubmitter];
  v13 = objc_alloc_init(HMDIdsIdentifierProviderHomedImplementation);
  v14 = [v11 initWithChannelPrefix:v10 identifier:v9 queue:v8 logEventSubmitter:v12 idsIdentifierProvider:v13];

  return v14;
}

@end