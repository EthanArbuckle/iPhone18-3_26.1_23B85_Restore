@interface HMDMultiUserSettingsLogEvent
- (HMDMultiUserSettingsLogEvent)initWithMultiUserSettings:(id)settings;
- (NSDictionary)coreAnalyticsEventDictionary;
@end

@implementation HMDMultiUserSettingsLogEvent

- (NSDictionary)coreAnalyticsEventDictionary
{
  v17[10] = *MEMORY[0x277D85DE8];
  multiUserSettings = [(HMDMultiUserSettingsLogEvent *)self multiUserSettings];
  v16[0] = @"numSharedUsers";
  numSharedUsers = [multiUserSettings numSharedUsers];
  v17[0] = numSharedUsers;
  v16[1] = @"numUsersWithSettings";
  numUsersWithSettings = [multiUserSettings numUsersWithSettings];
  v17[1] = numUsersWithSettings;
  v16[2] = @"numUsersWithIdentifyVoiceOff";
  numUsersWithIdentifyVoiceOff = [multiUserSettings numUsersWithIdentifyVoiceOff];
  v17[2] = numUsersWithIdentifyVoiceOff;
  v16[3] = @"numUsersWithPlayBackInfluencesForYouOff";
  numUsersWithPlayBackInfluencesForYouOff = [multiUserSettings numUsersWithPlayBackInfluencesForYouOff];
  v17[3] = numUsersWithPlayBackInfluencesForYouOff;
  v16[4] = @"numUsersCloudShareTrustNotConfigured";
  numUsersCloudShareTrustNotConfigured = [multiUserSettings numUsersCloudShareTrustNotConfigured];
  v17[4] = numUsersCloudShareTrustNotConfigured;
  v16[5] = @"numUsersSharedBackingStoreNotStarted";
  numUsersSharedBackingStoreNotStarted = [multiUserSettings numUsersSharedBackingStoreNotStarted];
  v17[5] = numUsersSharedBackingStoreNotStarted;
  v16[6] = @"numUsersSharedBackingStoreRunning";
  numUsersSharedBackingStoreRunning = [multiUserSettings numUsersSharedBackingStoreRunning];
  v17[6] = numUsersSharedBackingStoreRunning;
  v16[7] = @"numUsersSharedBackingStoreNotRunningDueToError";
  numUsersSharedBackingStoreNotRunningDueToError = [multiUserSettings numUsersSharedBackingStoreNotRunningDueToError];
  v17[7] = numUsersSharedBackingStoreNotRunningDueToError;
  v16[8] = @"numUsersSharedBackingStoreNotRunningDueToStopped";
  numUsersSharedBackingStoreNotRunningDueToStopped = [multiUserSettings numUsersSharedBackingStoreNotRunningDueToStopped];
  v17[8] = numUsersSharedBackingStoreNotRunningDueToStopped;
  v16[9] = @"numUsersSharedBackingStoreSharedZoneWaitingForShareInvitation";
  numUsersSharedBackingStoreSharedZoneWaitingForShareInvitation = [multiUserSettings numUsersSharedBackingStoreSharedZoneWaitingForShareInvitation];
  v17[9] = numUsersSharedBackingStoreSharedZoneWaitingForShareInvitation;
  v11 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v17 forKeys:v16 count:10];

  v12 = *MEMORY[0x277D85DE8];

  return v11;
}

- (HMDMultiUserSettingsLogEvent)initWithMultiUserSettings:(id)settings
{
  settingsCopy = settings;
  v9.receiver = self;
  v9.super_class = HMDMultiUserSettingsLogEvent;
  v6 = [(HMMLogEvent *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_multiUserSettings, settings);
  }

  return v7;
}

@end