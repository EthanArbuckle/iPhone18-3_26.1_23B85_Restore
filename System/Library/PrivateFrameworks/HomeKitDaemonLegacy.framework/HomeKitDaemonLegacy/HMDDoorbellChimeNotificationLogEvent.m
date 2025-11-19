@interface HMDDoorbellChimeNotificationLogEvent
- (NSDictionary)coreAnalyticsEventDictionary;
@end

@implementation HMDDoorbellChimeNotificationLogEvent

- (NSDictionary)coreAnalyticsEventDictionary
{
  v3 = [MEMORY[0x277CBEB38] dictionary];
  v4 = [MEMORY[0x277CCABB0] numberWithInteger:{-[HMDDoorbellChimeNotificationLogEvent coordinationLatency](self, "coordinationLatency")}];
  [v3 setObject:v4 forKeyedSubscript:@"coordinationLatency"];

  v5 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{-[HMDDoorbellChimeNotificationLogEvent coreUtilsLatency](self, "coreUtilsLatency")}];
  [v3 setObject:v5 forKeyedSubscript:@"coreUtilsLatency"];

  v6 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{-[HMDDoorbellChimeNotificationLogEvent coordinationMode](self, "coordinationMode")}];
  [v3 setObject:v6 forKeyedSubscript:@"coordinationMode"];

  v7 = MEMORY[0x277CCABB0];
  v8 = [(HMDDoorbellChimeNotificationLogEvent *)self coordinationError];
  v9 = [v7 numberWithInteger:{objc_msgSend(v8, "code")}];
  [v3 setObject:v9 forKeyedSubscript:@"coordinationErrorCode"];

  v10 = [(HMDDoorbellChimeNotificationLogEvent *)self coordinationError];
  v11 = [v10 domain];
  [v3 setObject:v11 forKeyedSubscript:@"coordinationErrorDomain"];

  v12 = [MEMORY[0x277CCABB0] numberWithBool:{-[HMDDoorbellChimeNotificationLogEvent coordinationPathTriggered](self, "coordinationPathTriggered")}];
  [v3 setObject:v12 forKeyedSubscript:@"coordinationPathTriggered"];

  v13 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{-[HMDDoorbellChimeNotificationLogEvent coreUtilsDestinationCount](self, "coreUtilsDestinationCount")}];
  [v3 setObject:v13 forKeyedSubscript:@"coreUtilsDestinationCount"];

  v14 = MEMORY[0x277CCABB0];
  v15 = [(HMMLogEvent *)self error];
  v16 = [v14 numberWithInteger:{objc_msgSend(v15, "code")}];
  [v3 setObject:v16 forKeyedSubscript:@"coreUtilErrorCode"];

  v17 = [(HMMLogEvent *)self error];
  v18 = [v17 domain];
  [v3 setObject:v18 forKeyedSubscript:@"coreUtilErrorDomain"];

  v19 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{-[HMDDoorbellChimeNotificationLogEvent numHomePodsWithDoorbellChimeEnabled](self, "numHomePodsWithDoorbellChimeEnabled")}];
  [v3 setObject:v19 forKeyedSubscript:@"numHomePodsWithDoorbellChimeEnabled"];

  [v3 setObject:&unk_286627970 forKeyedSubscript:@"numEventsFromThisDevice"];
  v20 = [v3 copy];

  return v20;
}

@end