@interface HMDAppleMediaAccessoryMatchingIdentifierRemovalEvent
- (HMDAppleMediaAccessoryMatchingIdentifierRemovalEvent)initWithRemovalCount:(int64_t)a3;
- (NSDictionary)coreAnalyticsEventDictionary;
- (id)attributeDescriptions;
@end

@implementation HMDAppleMediaAccessoryMatchingIdentifierRemovalEvent

- (id)attributeDescriptions
{
  v9[1] = *MEMORY[0x277D85DE8];
  v3 = objc_alloc(MEMORY[0x277D0F778]);
  v4 = [(HMDAppleMediaAccessoryMatchingIdentifierRemovalEvent *)self removalCount];
  v5 = [v3 initWithName:@"removalCount" value:v4];
  v9[0] = v5;
  v6 = [MEMORY[0x277CBEA60] arrayWithObjects:v9 count:1];

  v7 = *MEMORY[0x277D85DE8];

  return v6;
}

- (NSDictionary)coreAnalyticsEventDictionary
{
  v7[1] = *MEMORY[0x277D85DE8];
  v6 = @"removalCount";
  v2 = [(HMDAppleMediaAccessoryMatchingIdentifierRemovalEvent *)self removalCount];
  v7[0] = v2;
  v3 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v7 forKeys:&v6 count:1];

  v4 = *MEMORY[0x277D85DE8];

  return v3;
}

- (HMDAppleMediaAccessoryMatchingIdentifierRemovalEvent)initWithRemovalCount:(int64_t)a3
{
  v8.receiver = self;
  v8.super_class = HMDAppleMediaAccessoryMatchingIdentifierRemovalEvent;
  v4 = [(HMMLogEvent *)&v8 init];
  if (v4)
  {
    v5 = [MEMORY[0x277CCABB0] numberWithInteger:a3];
    removalCount = v4->_removalCount;
    v4->_removalCount = v5;
  }

  return v4;
}

@end