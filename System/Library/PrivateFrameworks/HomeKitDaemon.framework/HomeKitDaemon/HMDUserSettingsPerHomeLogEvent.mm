@interface HMDUserSettingsPerHomeLogEvent
- (HMDUserSettingsPerHomeLogEvent)initWithUser:(id)user;
- (HMDUserSettingsPerHomeLogEvent)initWithUser:(id)user userDataController:(id)controller homeUUID:(id)d;
- (NSDictionary)coreAnalyticsEventDictionary;
@end

@implementation HMDUserSettingsPerHomeLogEvent

- (NSDictionary)coreAnalyticsEventDictionary
{
  dictionary = [MEMORY[0x277CBEB38] dictionary];
  v4 = [MEMORY[0x277CCABB0] numberWithBool:{-[HMDUserSettingsPerHomeLogEvent isOwner](self, "isOwner")}];
  [dictionary setObject:v4 forKeyedSubscript:@"isOwner"];

  v5 = [MEMORY[0x277CCABB0] numberWithBool:{-[HMDUserSettingsPerHomeLogEvent isAdmin](self, "isAdmin")}];
  [dictionary setObject:v5 forKeyedSubscript:@"isAdmin"];

  v6 = [MEMORY[0x277CCABB0] numberWithBool:{-[HMDUserSettingsPerHomeLogEvent isRemoteAccessAllowed](self, "isRemoteAccessAllowed")}];
  [dictionary setObject:v6 forKeyedSubscript:@"isRemoteAccessAllowed"];

  v7 = [MEMORY[0x277CCABB0] numberWithBool:{-[HMDUserSettingsPerHomeLogEvent isRecognizeMyVoiceEnabled](self, "isRecognizeMyVoiceEnabled")}];
  [dictionary setObject:v7 forKeyedSubscript:@"isRecognizeMyVoiceEnabled"];

  v8 = [MEMORY[0x277CCABB0] numberWithBool:{-[HMDUserSettingsPerHomeLogEvent isPersonalRequestsEnabled](self, "isPersonalRequestsEnabled")}];
  [dictionary setObject:v8 forKeyedSubscript:@"isPersonalRequestsEnabled"];

  v9 = [MEMORY[0x277CCABB0] numberWithBool:{-[HMDUserSettingsPerHomeLogEvent isAnnounceAccessAllowed](self, "isAnnounceAccessAllowed")}];
  [dictionary setObject:v9 forKeyedSubscript:@"isAnnounceAccessAllowed"];

  v10 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{-[HMDUserSettingsPerHomeLogEvent camerasAccessLevel](self, "camerasAccessLevel")}];
  [dictionary setObject:v10 forKeyedSubscript:@"camerasAccessLevel"];

  v11 = [dictionary copy];

  return v11;
}

- (HMDUserSettingsPerHomeLogEvent)initWithUser:(id)user userDataController:(id)controller homeUUID:(id)d
{
  userCopy = user;
  controllerCopy = controller;
  v12.receiver = self;
  v12.super_class = HMDUserSettingsPerHomeLogEvent;
  v10 = [(HMMHomeLogEvent *)&v12 initWithHomeUUID:d];
  if (v10)
  {
    v10->_isOwner = [userCopy isOwner];
    v10->_isAdmin = [userCopy isAdministrator];
    v10->_isRemoteAccessAllowed = [userCopy isRemoteAccessAllowed];
    v10->_isRecognizeMyVoiceEnabled = [userCopy siriIdentifyVoiceEnabled];
    v10->_isPersonalRequestsEnabled = [controllerCopy assistantAccessControlActivityNotificationsEnabledForPersonalRequests];
    v10->_isAnnounceAccessAllowed = [userCopy isAnnounceAccessAllowed];
    v10->_camerasAccessLevel = [userCopy camerasAccessLevel];
  }

  return v10;
}

- (HMDUserSettingsPerHomeLogEvent)initWithUser:(id)user
{
  userCopy = user;
  userDataController = [userCopy userDataController];
  home = [userCopy home];
  uuid = [home uuid];
  v8 = [(HMDUserSettingsPerHomeLogEvent *)self initWithUser:userCopy userDataController:userDataController homeUUID:uuid];

  return v8;
}

@end