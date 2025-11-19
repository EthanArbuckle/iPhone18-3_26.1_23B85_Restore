@interface HMDMultiUserSettingsLogEvent
- (HMDMultiUserSettingsLogEvent)initWithMultiUserSettings:(id)a3;
- (NSDictionary)coreAnalyticsEventDictionary;
@end

@implementation HMDMultiUserSettingsLogEvent

- (NSDictionary)coreAnalyticsEventDictionary
{
  v17[10] = *MEMORY[0x277D85DE8];
  v2 = [(HMDMultiUserSettingsLogEvent *)self multiUserSettings];
  v16[0] = @"numSharedUsers";
  v15 = [v2 numSharedUsers];
  v17[0] = v15;
  v16[1] = @"numUsersWithSettings";
  v14 = [v2 numUsersWithSettings];
  v17[1] = v14;
  v16[2] = @"numUsersWithIdentifyVoiceOff";
  v3 = [v2 numUsersWithIdentifyVoiceOff];
  v17[2] = v3;
  v16[3] = @"numUsersWithPlayBackInfluencesForYouOff";
  v4 = [v2 numUsersWithPlayBackInfluencesForYouOff];
  v17[3] = v4;
  v16[4] = @"numUsersCloudShareTrustNotConfigured";
  v5 = [v2 numUsersCloudShareTrustNotConfigured];
  v17[4] = v5;
  v16[5] = @"numUsersSharedBackingStoreNotStarted";
  v6 = [v2 numUsersSharedBackingStoreNotStarted];
  v17[5] = v6;
  v16[6] = @"numUsersSharedBackingStoreRunning";
  v7 = [v2 numUsersSharedBackingStoreRunning];
  v17[6] = v7;
  v16[7] = @"numUsersSharedBackingStoreNotRunningDueToError";
  v8 = [v2 numUsersSharedBackingStoreNotRunningDueToError];
  v17[7] = v8;
  v16[8] = @"numUsersSharedBackingStoreNotRunningDueToStopped";
  v9 = [v2 numUsersSharedBackingStoreNotRunningDueToStopped];
  v17[8] = v9;
  v16[9] = @"numUsersSharedBackingStoreSharedZoneWaitingForShareInvitation";
  v10 = [v2 numUsersSharedBackingStoreSharedZoneWaitingForShareInvitation];
  v17[9] = v10;
  v11 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v17 forKeys:v16 count:10];

  v12 = *MEMORY[0x277D85DE8];

  return v11;
}

- (HMDMultiUserSettingsLogEvent)initWithMultiUserSettings:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = HMDMultiUserSettingsLogEvent;
  v6 = [(HMMLogEvent *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_multiUserSettings, a3);
  }

  return v7;
}

@end