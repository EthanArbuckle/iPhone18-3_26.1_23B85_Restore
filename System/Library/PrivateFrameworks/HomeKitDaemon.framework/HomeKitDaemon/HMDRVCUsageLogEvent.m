@interface HMDRVCUsageLogEvent
- (NSDictionary)coreAnalyticsEventDictionary;
@end

@implementation HMDRVCUsageLogEvent

- (NSDictionary)coreAnalyticsEventDictionary
{
  v3 = [MEMORY[0x277CBEB38] dictionary];
  v4 = MEMORY[0x277CCABB0];
  v5 = [(HMMLogEvent *)self error];
  v6 = [v4 numberWithInteger:{objc_msgSend(v5, "code")}];
  [v3 setObject:v6 forKeyedSubscript:@"errorCode"];

  v7 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{-[HMDRVCUsageLogEvent source](self, "source")}];
  [v3 setObject:v7 forKeyedSubscript:@"source"];

  v8 = [MEMORY[0x277CCABB0] numberWithBool:{-[HMDRVCUsageLogEvent wholeHouse](self, "wholeHouse")}];
  [v3 setObject:v8 forKeyedSubscript:@"wholeHouse"];

  v9 = [(HMDRVCUsageLogEvent *)self roomCount];
  [v3 setObject:v9 forKeyedSubscript:@"roomCount"];

  v10 = [(HMDRVCUsageLogEvent *)self roomsInHome];
  [v3 setObject:v10 forKeyedSubscript:@"roomsInHome"];

  v11 = [(HMDRVCUsageLogEvent *)self cleanModes];
  [v3 setObject:v11 forKeyedSubscript:@"cleanModes"];

  v12 = [v3 copy];

  return v12;
}

@end