@interface HMDLaunchEvent
- (HMDLaunchEvent)initWithFirstLaunchAfterBoot:(BOOL)a3;
- (NSDictionary)coreAnalyticsEventDictionary;
@end

@implementation HMDLaunchEvent

- (HMDLaunchEvent)initWithFirstLaunchAfterBoot:(BOOL)a3
{
  v5.receiver = self;
  v5.super_class = HMDLaunchEvent;
  result = [(HMMDatedLogEvent *)&v5 init];
  if (result)
  {
    result->_firstLaunchAfterBoot = a3;
  }

  return result;
}

- (NSDictionary)coreAnalyticsEventDictionary
{
  v7[1] = *MEMORY[0x277D85DE8];
  v6 = @"isFirstLaunchAfterBoot";
  v2 = [MEMORY[0x277CCABB0] numberWithBool:{-[HMDLaunchEvent isFirstLaunchAfterBoot](self, "isFirstLaunchAfterBoot")}];
  v7[0] = v2;
  v3 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v7 forKeys:&v6 count:1];

  v4 = *MEMORY[0x277D85DE8];

  return v3;
}

@end