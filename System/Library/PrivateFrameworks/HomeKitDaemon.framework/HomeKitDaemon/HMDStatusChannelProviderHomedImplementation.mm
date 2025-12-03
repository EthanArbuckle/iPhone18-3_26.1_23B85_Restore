@interface HMDStatusChannelProviderHomedImplementation
- (id)createStatusChannelWithPrefix:(id)prefix identifier:(id)identifier queue:(id)queue;
@end

@implementation HMDStatusChannelProviderHomedImplementation

- (id)createStatusChannelWithPrefix:(id)prefix identifier:(id)identifier queue:(id)queue
{
  v7 = MEMORY[0x277D17470];
  queueCopy = queue;
  identifierCopy = identifier;
  prefixCopy = prefix;
  v11 = [v7 alloc];
  v12 = +[HMDMetricsManager sharedLogEventSubmitter];
  v13 = objc_alloc_init(HMDIdsIdentifierProviderHomedImplementation);
  v14 = [v11 initWithChannelPrefix:prefixCopy identifier:identifierCopy queue:queueCopy logEventSubmitter:v12 idsIdentifierProvider:v13];

  return v14;
}

@end