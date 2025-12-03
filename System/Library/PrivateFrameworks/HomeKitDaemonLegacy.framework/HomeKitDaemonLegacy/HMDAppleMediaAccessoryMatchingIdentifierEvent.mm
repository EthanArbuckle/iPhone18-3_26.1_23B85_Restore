@interface HMDAppleMediaAccessoryMatchingIdentifierEvent
- (HMDAppleMediaAccessoryMatchingIdentifierEvent)initWithMatchingIdentifiersCount:(int64_t)count;
- (NSDictionary)coreAnalyticsEventDictionary;
- (id)attributeDescriptions;
@end

@implementation HMDAppleMediaAccessoryMatchingIdentifierEvent

- (id)attributeDescriptions
{
  v12[2] = *MEMORY[0x277D85DE8];
  v3 = objc_alloc(MEMORY[0x277D0F778]);
  matchingIdentifiersCount = [(HMDAppleMediaAccessoryMatchingIdentifierEvent *)self matchingIdentifiersCount];
  v5 = [v3 initWithName:@"matchingIdentifiersCount" value:matchingIdentifiersCount];
  v12[0] = v5;
  v6 = objc_alloc(MEMORY[0x277D0F778]);
  expectedRemovalCount = [(HMDAppleMediaAccessoryMatchingIdentifierEvent *)self expectedRemovalCount];
  v8 = [v6 initWithName:@"expectedRemovalCount" value:expectedRemovalCount];
  v12[1] = v8;
  v9 = [MEMORY[0x277CBEA60] arrayWithObjects:v12 count:2];

  v10 = *MEMORY[0x277D85DE8];

  return v9;
}

- (NSDictionary)coreAnalyticsEventDictionary
{
  v9[2] = *MEMORY[0x277D85DE8];
  v8[0] = @"matchingIdentifiersCount";
  matchingIdentifiersCount = [(HMDAppleMediaAccessoryMatchingIdentifierEvent *)self matchingIdentifiersCount];
  v8[1] = @"expectedRemovalCount";
  v9[0] = matchingIdentifiersCount;
  expectedRemovalCount = [(HMDAppleMediaAccessoryMatchingIdentifierEvent *)self expectedRemovalCount];
  v9[1] = expectedRemovalCount;
  v5 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v9 forKeys:v8 count:2];

  v6 = *MEMORY[0x277D85DE8];

  return v5;
}

- (HMDAppleMediaAccessoryMatchingIdentifierEvent)initWithMatchingIdentifiersCount:(int64_t)count
{
  v10.receiver = self;
  v10.super_class = HMDAppleMediaAccessoryMatchingIdentifierEvent;
  v4 = [(HMMLogEvent *)&v10 init];
  if (v4)
  {
    v5 = [MEMORY[0x277CCABB0] numberWithInteger:count];
    matchingIdentifiersCount = v4->_matchingIdentifiersCount;
    v4->_matchingIdentifiersCount = v5;

    v7 = [MEMORY[0x277CCABB0] numberWithInteger:count - 1];
    expectedRemovalCount = v4->_expectedRemovalCount;
    v4->_expectedRemovalCount = v7;
  }

  return v4;
}

@end