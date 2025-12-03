@interface HMDDoorbellChimeNotificationLogEvent
- (NSDictionary)coreAnalyticsEventDictionary;
@end

@implementation HMDDoorbellChimeNotificationLogEvent

- (NSDictionary)coreAnalyticsEventDictionary
{
  dictionary = [MEMORY[0x277CBEB38] dictionary];
  v4 = [MEMORY[0x277CCABB0] numberWithInteger:{-[HMDDoorbellChimeNotificationLogEvent coordinationLatency](self, "coordinationLatency")}];
  [dictionary setObject:v4 forKeyedSubscript:@"coordinationLatency"];

  v5 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{-[HMDDoorbellChimeNotificationLogEvent coreUtilsLatency](self, "coreUtilsLatency")}];
  [dictionary setObject:v5 forKeyedSubscript:@"coreUtilsLatency"];

  v6 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{-[HMDDoorbellChimeNotificationLogEvent coordinationMode](self, "coordinationMode")}];
  [dictionary setObject:v6 forKeyedSubscript:@"coordinationMode"];

  v7 = MEMORY[0x277CCABB0];
  coordinationError = [(HMDDoorbellChimeNotificationLogEvent *)self coordinationError];
  v9 = [v7 numberWithInteger:{objc_msgSend(coordinationError, "code")}];
  [dictionary setObject:v9 forKeyedSubscript:@"coordinationErrorCode"];

  coordinationError2 = [(HMDDoorbellChimeNotificationLogEvent *)self coordinationError];
  domain = [coordinationError2 domain];
  [dictionary setObject:domain forKeyedSubscript:@"coordinationErrorDomain"];

  v12 = [MEMORY[0x277CCABB0] numberWithBool:{-[HMDDoorbellChimeNotificationLogEvent coordinationPathTriggered](self, "coordinationPathTriggered")}];
  [dictionary setObject:v12 forKeyedSubscript:@"coordinationPathTriggered"];

  v13 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{-[HMDDoorbellChimeNotificationLogEvent coreUtilsDestinationCount](self, "coreUtilsDestinationCount")}];
  [dictionary setObject:v13 forKeyedSubscript:@"coreUtilsDestinationCount"];

  v14 = MEMORY[0x277CCABB0];
  error = [(HMMLogEvent *)self error];
  v16 = [v14 numberWithInteger:{objc_msgSend(error, "code")}];
  [dictionary setObject:v16 forKeyedSubscript:@"coreUtilErrorCode"];

  error2 = [(HMMLogEvent *)self error];
  domain2 = [error2 domain];
  [dictionary setObject:domain2 forKeyedSubscript:@"coreUtilErrorDomain"];

  v19 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{-[HMDDoorbellChimeNotificationLogEvent numHomePodsWithDoorbellChimeEnabled](self, "numHomePodsWithDoorbellChimeEnabled")}];
  [dictionary setObject:v19 forKeyedSubscript:@"numHomePodsWithDoorbellChimeEnabled"];

  [dictionary setObject:&unk_283E71BE8 forKeyedSubscript:@"numEventsFromThisDevice"];
  v20 = [dictionary copy];

  return v20;
}

@end