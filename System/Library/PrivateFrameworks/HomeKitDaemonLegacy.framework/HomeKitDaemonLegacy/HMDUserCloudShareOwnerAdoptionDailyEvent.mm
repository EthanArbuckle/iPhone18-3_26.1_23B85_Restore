@interface HMDUserCloudShareOwnerAdoptionDailyEvent
- (NSDictionary)coreAnalyticsEventDictionary;
@end

@implementation HMDUserCloudShareOwnerAdoptionDailyEvent

- (NSDictionary)coreAnalyticsEventDictionary
{
  v17[10] = *MEMORY[0x277D85DE8];
  v16[0] = @"configureState";
  v15 = [(HMDUserCloudShareOwnerAdoptionDailyEvent *)self configureState];
  v17[0] = v15;
  v16[1] = @"isPrimaryResident";
  v3 = [(HMDUserCloudShareOwnerAdoptionDailyEvent *)self isPrimaryResident];
  v17[1] = v3;
  v16[2] = @"hasSharedUser";
  v4 = [(HMDUserCloudShareOwnerAdoptionDailyEvent *)self hasSharedUser];
  v17[2] = v4;
  v16[3] = @"percentageOfParticipantsHaveAccepted";
  v5 = [(HMDUserCloudShareOwnerAdoptionDailyEvent *)self percentageOfParticipantsHaveAccepted];
  v17[3] = v5;
  v16[4] = @"percentageOfParticipantsHaveCloudShareIDAndHaveAccepted";
  v6 = [(HMDUserCloudShareOwnerAdoptionDailyEvent *)self percentageOfParticipantsHaveCloudShareIDAndHaveAccepted];
  v17[4] = v6;
  v16[5] = @"percentageOfParticipantsHaveCloudShareIDButNotAccepted";
  v7 = [(HMDUserCloudShareOwnerAdoptionDailyEvent *)self percentageOfParticipantsHaveCloudShareIDButNotAccepted];
  v17[5] = v7;
  v16[6] = @"percentageOfNonAcceptedParticipantsWithKnownCapability";
  v8 = [(HMDUserCloudShareOwnerAdoptionDailyEvent *)self percentageOfNonAcceptedParticipantsWithKnownCapability];
  v17[6] = v8;
  v16[7] = @"percentageOfUsersThatAreNotParticipant";
  v9 = [(HMDUserCloudShareOwnerAdoptionDailyEvent *)self percentageOfUsersThatAreNotParticipant];
  v17[7] = v9;
  v16[8] = @"percentageOfParticipatingUsersThatNotAccepted";
  v10 = [(HMDUserCloudShareOwnerAdoptionDailyEvent *)self percentageOfParticipatingUsersThatNotAccepted];
  v17[8] = v10;
  v16[9] = @"percentageOfAcceptedParticipantsWithoutCloudShareID";
  v11 = [(HMDUserCloudShareOwnerAdoptionDailyEvent *)self percentageOfAcceptedParticipantsWithoutCloudShareID];
  v17[9] = v11;
  v12 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v17 forKeys:v16 count:10];

  v13 = *MEMORY[0x277D85DE8];

  return v12;
}

@end