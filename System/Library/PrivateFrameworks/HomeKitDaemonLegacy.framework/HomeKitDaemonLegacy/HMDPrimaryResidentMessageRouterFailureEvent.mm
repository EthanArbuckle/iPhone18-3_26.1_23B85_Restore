@interface HMDPrimaryResidentMessageRouterFailureEvent
- (HMDPrimaryResidentMessageRouterFailureEvent)initWithMessageName:(id)name failureType:(int64_t)type;
- (NSDictionary)coreAnalyticsEventDictionary;
- (id)attributeDescriptions;
@end

@implementation HMDPrimaryResidentMessageRouterFailureEvent

- (id)attributeDescriptions
{
  v15[2] = *MEMORY[0x277D85DE8];
  v3 = objc_alloc(MEMORY[0x277D0F778]);
  messageName = [(HMDPrimaryResidentMessageRouterFailureEvent *)self messageName];
  v5 = [v3 initWithName:@"messageName" value:messageName];
  v15[0] = v5;
  v6 = objc_alloc(MEMORY[0x277D0F778]);
  failureType = [(HMDPrimaryResidentMessageRouterFailureEvent *)self failureType];
  integerValue = [failureType integerValue];
  if ((integerValue - 1) > 4)
  {
    v9 = @"UnknownValue";
  }

  else
  {
    v9 = off_279720C78[integerValue - 1];
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
  messageName = [(HMDPrimaryResidentMessageRouterFailureEvent *)self messageName];
  v8[1] = @"failureType";
  v9[0] = messageName;
  failureType = [(HMDPrimaryResidentMessageRouterFailureEvent *)self failureType];
  v9[1] = failureType;
  v5 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v9 forKeys:v8 count:2];

  v6 = *MEMORY[0x277D85DE8];

  return v5;
}

- (HMDPrimaryResidentMessageRouterFailureEvent)initWithMessageName:(id)name failureType:(int64_t)type
{
  nameCopy = name;
  v13.receiver = self;
  v13.super_class = HMDPrimaryResidentMessageRouterFailureEvent;
  v8 = [(HMMLogEvent *)&v13 init];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_messageName, name);
    v10 = [MEMORY[0x277CCABB0] numberWithInteger:type];
    failureType = v9->_failureType;
    v9->_failureType = v10;
  }

  return v9;
}

@end