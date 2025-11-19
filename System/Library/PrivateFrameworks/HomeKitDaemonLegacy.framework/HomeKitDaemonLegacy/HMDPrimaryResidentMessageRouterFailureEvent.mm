@interface HMDPrimaryResidentMessageRouterFailureEvent
- (HMDPrimaryResidentMessageRouterFailureEvent)initWithMessageName:(id)a3 failureType:(int64_t)a4;
- (NSDictionary)coreAnalyticsEventDictionary;
- (id)attributeDescriptions;
@end

@implementation HMDPrimaryResidentMessageRouterFailureEvent

- (id)attributeDescriptions
{
  v15[2] = *MEMORY[0x277D85DE8];
  v3 = objc_alloc(MEMORY[0x277D0F778]);
  v4 = [(HMDPrimaryResidentMessageRouterFailureEvent *)self messageName];
  v5 = [v3 initWithName:@"messageName" value:v4];
  v15[0] = v5;
  v6 = objc_alloc(MEMORY[0x277D0F778]);
  v7 = [(HMDPrimaryResidentMessageRouterFailureEvent *)self failureType];
  v8 = [v7 integerValue];
  if ((v8 - 1) > 4)
  {
    v9 = @"UnknownValue";
  }

  else
  {
    v9 = off_279720C78[v8 - 1];
  }

  v10 = v9;
  v11 = [v6 initWithName:@"failureType" value:v10];
  v15[1] = v11;
  v12 = [MEMORY[0x277CBEA60] arrayWithObjects:v15 count:2];

  v13 = *MEMORY[0x277D85DE8];

  return v12;
}

- (NSDictionary)coreAnalyticsEventDictionary
{
  v9[2] = *MEMORY[0x277D85DE8];
  v8[0] = @"messageName";
  v3 = [(HMDPrimaryResidentMessageRouterFailureEvent *)self messageName];
  v8[1] = @"failureType";
  v9[0] = v3;
  v4 = [(HMDPrimaryResidentMessageRouterFailureEvent *)self failureType];
  v9[1] = v4;
  v5 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v9 forKeys:v8 count:2];

  v6 = *MEMORY[0x277D85DE8];

  return v5;
}

- (HMDPrimaryResidentMessageRouterFailureEvent)initWithMessageName:(id)a3 failureType:(int64_t)a4
{
  v7 = a3;
  v13.receiver = self;
  v13.super_class = HMDPrimaryResidentMessageRouterFailureEvent;
  v8 = [(HMMLogEvent *)&v13 init];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_messageName, a3);
    v10 = [MEMORY[0x277CCABB0] numberWithInteger:a4];
    failureType = v9->_failureType;
    v9->_failureType = v10;
  }

  return v9;
}

@end