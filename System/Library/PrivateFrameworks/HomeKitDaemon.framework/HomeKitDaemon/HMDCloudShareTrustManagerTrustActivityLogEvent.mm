@interface HMDCloudShareTrustManagerTrustActivityLogEvent
- (NSDictionary)coreAnalyticsEventDictionary;
@end

@implementation HMDCloudShareTrustManagerTrustActivityLogEvent

- (NSDictionary)coreAnalyticsEventDictionary
{
  v10[3] = *MEMORY[0x277D85DE8];
  v9[0] = @"trustActivityType";
  trustActivityType = [(HMDCloudShareTrustManagerTrustActivityLogEvent *)self trustActivityType];
  v10[0] = trustActivityType;
  v9[1] = @"userPrivilege";
  privilege = [(HMDCloudShareTrustManagerTrustActivityLogEvent *)self privilege];
  v10[1] = privilege;
  v9[2] = @"isPrimaryResident";
  isPrimaryResident = [(HMDCloudShareTrustManagerTrustActivityLogEvent *)self isPrimaryResident];
  v10[2] = isPrimaryResident;
  v6 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v10 forKeys:v9 count:3];

  v7 = *MEMORY[0x277D85DE8];

  return v6;
}

@end