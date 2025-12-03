@interface HMDRVCUsageLogEvent
- (NSDictionary)coreAnalyticsEventDictionary;
@end

@implementation HMDRVCUsageLogEvent

- (NSDictionary)coreAnalyticsEventDictionary
{
  dictionary = [MEMORY[0x277CBEB38] dictionary];
  v4 = MEMORY[0x277CCABB0];
  error = [(HMMLogEvent *)self error];
  v6 = [v4 numberWithInteger:{objc_msgSend(error, "code")}];
  [dictionary setObject:v6 forKeyedSubscript:@"errorCode"];

  v7 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{-[HMDRVCUsageLogEvent source](self, "source")}];
  [dictionary setObject:v7 forKeyedSubscript:@"source"];

  v8 = [MEMORY[0x277CCABB0] numberWithBool:{-[HMDRVCUsageLogEvent wholeHouse](self, "wholeHouse")}];
  [dictionary setObject:v8 forKeyedSubscript:@"wholeHouse"];

  roomCount = [(HMDRVCUsageLogEvent *)self roomCount];
  [dictionary setObject:roomCount forKeyedSubscript:@"roomCount"];

  roomsInHome = [(HMDRVCUsageLogEvent *)self roomsInHome];
  [dictionary setObject:roomsInHome forKeyedSubscript:@"roomsInHome"];

  cleanModes = [(HMDRVCUsageLogEvent *)self cleanModes];
  [dictionary setObject:cleanModes forKeyedSubscript:@"cleanModes"];

  v12 = [dictionary copy];

  return v12;
}

@end