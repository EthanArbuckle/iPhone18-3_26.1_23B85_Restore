@interface HMDPrimaryResidentDiscoveryLogEvent
- (HMDPrimaryResidentDiscoveryLogEvent)initWithHomeUUID:(id)a3;
- (NSDictionary)coreAnalyticsEventDictionary;
@end

@implementation HMDPrimaryResidentDiscoveryLogEvent

- (NSDictionary)coreAnalyticsEventDictionary
{
  v15[9] = *MEMORY[0x277D85DE8];
  v15[0] = &unk_283E74D20;
  v14[0] = @"primaryResidentDiscoveryCount";
  v14[1] = @"residentChannelActiveCount";
  if ([(HMDPrimaryResidentDiscoveryLogEvent *)self residentChannelActive])
  {
    v3 = &unk_283E74D20;
  }

  else
  {
    v3 = &unk_283E74D38;
  }

  v15[1] = v3;
  v14[2] = @"residentChannelActiveBool";
  v4 = [MEMORY[0x277CCABB0] numberWithBool:{-[HMDPrimaryResidentDiscoveryLogEvent residentChannelActive](self, "residentChannelActive")}];
  v15[2] = v4;
  v14[3] = @"residentChannelActiveNoPrimaryResolvedCount";
  if ([(HMDPrimaryResidentDiscoveryLogEvent *)self residentChannelActiveNoPrimaryResolved])
  {
    v5 = &unk_283E74D20;
  }

  else
  {
    v5 = &unk_283E74D38;
  }

  v15[3] = v5;
  v14[4] = @"residentChannelActiveNoPrimaryResolvedBool";
  v6 = [MEMORY[0x277CCABB0] numberWithBool:{-[HMDPrimaryResidentDiscoveryLogEvent residentChannelActiveNoPrimaryResolved](self, "residentChannelActiveNoPrimaryResolved")}];
  v15[4] = v6;
  v14[5] = @"accountMessageCount";
  if ([(HMDPrimaryResidentDiscoveryLogEvent *)self accountMessageSent])
  {
    v7 = &unk_283E74D20;
  }

  else
  {
    v7 = &unk_283E74D38;
  }

  v15[5] = v7;
  v14[6] = @"accountMessageBool";
  v8 = [MEMORY[0x277CCABB0] numberWithBool:{-[HMDPrimaryResidentDiscoveryLogEvent accountMessageSent](self, "accountMessageSent")}];
  v15[6] = v8;
  v14[7] = @"accountMessageNoPrimaryResolvedCount";
  if ([(HMDPrimaryResidentDiscoveryLogEvent *)self accountMessageNoPrimaryResolved])
  {
    v9 = &unk_283E74D20;
  }

  else
  {
    v9 = &unk_283E74D38;
  }

  v15[7] = v9;
  v14[8] = @"accountMessageNoPrimaryResolvedBool";
  v10 = [MEMORY[0x277CCABB0] numberWithBool:{-[HMDPrimaryResidentDiscoveryLogEvent accountMessageNoPrimaryResolved](self, "accountMessageNoPrimaryResolved")}];
  v15[8] = v10;
  v11 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v15 forKeys:v14 count:9];

  v12 = *MEMORY[0x277D85DE8];

  return v11;
}

- (HMDPrimaryResidentDiscoveryLogEvent)initWithHomeUUID:(id)a3
{
  v8.receiver = self;
  v8.super_class = HMDPrimaryResidentDiscoveryLogEvent;
  v3 = [(HMMHomeLogEvent *)&v8 initWithHomeUUID:a3];
  v4 = v3;
  if (v3)
  {
    v3->_residentChannelActive = 0;
    v3->_residentChannelActiveNoPrimaryResolved = 0;
    residentChannelActiveResolvePrimaryError = v3->_residentChannelActiveResolvePrimaryError;
    v3->_residentChannelActiveResolvePrimaryError = 0;

    v4->_accountMessageSent = 0;
    v4->_accountMessageNoPrimaryResolved = 0;
    accountMessageError = v4->_accountMessageError;
    v4->_accountMessageError = 0;
  }

  return v4;
}

@end