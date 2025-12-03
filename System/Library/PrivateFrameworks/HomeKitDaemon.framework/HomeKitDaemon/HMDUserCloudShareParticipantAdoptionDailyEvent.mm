@interface HMDUserCloudShareParticipantAdoptionDailyEvent
- (NSDictionary)coreAnalyticsEventDictionary;
@end

@implementation HMDUserCloudShareParticipantAdoptionDailyEvent

- (NSDictionary)coreAnalyticsEventDictionary
{
  v9[2] = *MEMORY[0x277D85DE8];
  v8[0] = @"configureState";
  configureState = [(HMDUserCloudShareParticipantAdoptionDailyEvent *)self configureState];
  v8[1] = @"hasOwnerCloudShareID";
  v9[0] = configureState;
  hasOwnerCloudShareID = [(HMDUserCloudShareParticipantAdoptionDailyEvent *)self hasOwnerCloudShareID];
  v9[1] = hasOwnerCloudShareID;
  v5 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v9 forKeys:v8 count:2];

  v6 = *MEMORY[0x277D85DE8];

  return v5;
}

@end