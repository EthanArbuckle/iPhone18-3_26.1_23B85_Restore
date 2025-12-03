@interface HMDUserCloudShareOwnerAdoptionDailyEvent
- (NSDictionary)coreAnalyticsEventDictionary;
@end

@implementation HMDUserCloudShareOwnerAdoptionDailyEvent

- (NSDictionary)coreAnalyticsEventDictionary
{
  v17[10] = *MEMORY[0x277D85DE8];
  v16[0] = @"configureState";
  configureState = [(HMDUserCloudShareOwnerAdoptionDailyEvent *)self configureState];
  v17[0] = configureState;
  v16[1] = @"isPrimaryResident";
  isPrimaryResident = [(HMDUserCloudShareOwnerAdoptionDailyEvent *)self isPrimaryResident];
  v17[1] = isPrimaryResident;
  v16[2] = @"hasSharedUser";
  hasSharedUser = [(HMDUserCloudShareOwnerAdoptionDailyEvent *)self hasSharedUser];
  v17[2] = hasSharedUser;
  v16[3] = @"percentageOfParticipantsHaveAccepted";
  percentageOfParticipantsHaveAccepted = [(HMDUserCloudShareOwnerAdoptionDailyEvent *)self percentageOfParticipantsHaveAccepted];
  v17[3] = percentageOfParticipantsHaveAccepted;
  v16[4] = @"percentageOfParticipantsHaveCloudShareIDAndHaveAccepted";
  percentageOfParticipantsHaveCloudShareIDAndHaveAccepted = [(HMDUserCloudShareOwnerAdoptionDailyEvent *)self percentageOfParticipantsHaveCloudShareIDAndHaveAccepted];
  v17[4] = percentageOfParticipantsHaveCloudShareIDAndHaveAccepted;
  v16[5] = @"percentageOfParticipantsHaveCloudShareIDButNotAccepted";
  percentageOfParticipantsHaveCloudShareIDButNotAccepted = [(HMDUserCloudShareOwnerAdoptionDailyEvent *)self percentageOfParticipantsHaveCloudShareIDButNotAccepted];
  v17[5] = percentageOfParticipantsHaveCloudShareIDButNotAccepted;
  v16[6] = @"percentageOfNonAcceptedParticipantsWithKnownCapability";
  percentageOfNonAcceptedParticipantsWithKnownCapability = [(HMDUserCloudShareOwnerAdoptionDailyEvent *)self percentageOfNonAcceptedParticipantsWithKnownCapability];
  v17[6] = percentageOfNonAcceptedParticipantsWithKnownCapability;
  v16[7] = @"percentageOfUsersThatAreNotParticipant";
  percentageOfUsersThatAreNotParticipant = [(HMDUserCloudShareOwnerAdoptionDailyEvent *)self percentageOfUsersThatAreNotParticipant];
  v17[7] = percentageOfUsersThatAreNotParticipant;
  v16[8] = @"percentageOfParticipatingUsersThatNotAccepted";
  percentageOfParticipatingUsersThatNotAccepted = [(HMDUserCloudShareOwnerAdoptionDailyEvent *)self percentageOfParticipatingUsersThatNotAccepted];
  v17[8] = percentageOfParticipatingUsersThatNotAccepted;
  v16[9] = @"percentageOfAcceptedParticipantsWithoutCloudShareID";
  percentageOfAcceptedParticipantsWithoutCloudShareID = [(HMDUserCloudShareOwnerAdoptionDailyEvent *)self percentageOfAcceptedParticipantsWithoutCloudShareID];
  v17[9] = percentageOfAcceptedParticipantsWithoutCloudShareID;
  v12 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v17 forKeys:v16 count:10];

  v13 = *MEMORY[0x277D85DE8];

  return v12;
}

@end