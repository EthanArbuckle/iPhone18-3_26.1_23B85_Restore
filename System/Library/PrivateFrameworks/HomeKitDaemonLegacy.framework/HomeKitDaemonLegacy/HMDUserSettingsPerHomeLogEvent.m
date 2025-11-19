@interface HMDUserSettingsPerHomeLogEvent
- (HMDUserSettingsPerHomeLogEvent)initWithUser:(id)a3;
- (HMDUserSettingsPerHomeLogEvent)initWithUser:(id)a3 userDataController:(id)a4 homeUUID:(id)a5;
- (NSDictionary)coreAnalyticsEventDictionary;
@end

@implementation HMDUserSettingsPerHomeLogEvent

- (NSDictionary)coreAnalyticsEventDictionary
{
  v3 = [MEMORY[0x277CBEB38] dictionary];
  v4 = [MEMORY[0x277CCABB0] numberWithBool:{-[HMDUserSettingsPerHomeLogEvent isOwner](self, "isOwner")}];
  [v3 setObject:v4 forKeyedSubscript:@"isOwner"];

  v5 = [MEMORY[0x277CCABB0] numberWithBool:{-[HMDUserSettingsPerHomeLogEvent isAdmin](self, "isAdmin")}];
  [v3 setObject:v5 forKeyedSubscript:@"isAdmin"];

  v6 = [MEMORY[0x277CCABB0] numberWithBool:{-[HMDUserSettingsPerHomeLogEvent isRemoteAccessAllowed](self, "isRemoteAccessAllowed")}];
  [v3 setObject:v6 forKeyedSubscript:@"isRemoteAccessAllowed"];

  v7 = [MEMORY[0x277CCABB0] numberWithBool:{-[HMDUserSettingsPerHomeLogEvent isRecognizeMyVoiceEnabled](self, "isRecognizeMyVoiceEnabled")}];
  [v3 setObject:v7 forKeyedSubscript:@"isRecognizeMyVoiceEnabled"];

  v8 = [MEMORY[0x277CCABB0] numberWithBool:{-[HMDUserSettingsPerHomeLogEvent isPersonalRequestsEnabled](self, "isPersonalRequestsEnabled")}];
  [v3 setObject:v8 forKeyedSubscript:@"isPersonalRequestsEnabled"];

  v9 = [MEMORY[0x277CCABB0] numberWithBool:{-[HMDUserSettingsPerHomeLogEvent isAnnounceAccessAllowed](self, "isAnnounceAccessAllowed")}];
  [v3 setObject:v9 forKeyedSubscript:@"isAnnounceAccessAllowed"];

  v10 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{-[HMDUserSettingsPerHomeLogEvent camerasAccessLevel](self, "camerasAccessLevel")}];
  [v3 setObject:v10 forKeyedSubscript:@"camerasAccessLevel"];

  v11 = [v3 copy];

  return v11;
}

- (HMDUserSettingsPerHomeLogEvent)initWithUser:(id)a3 userDataController:(id)a4 homeUUID:(id)a5
{
  v8 = a3;
  v9 = a4;
  v12.receiver = self;
  v12.super_class = HMDUserSettingsPerHomeLogEvent;
  v10 = [(HMMHomeLogEvent *)&v12 initWithHomeUUID:a5];
  if (v10)
  {
    v10->_isOwner = [v8 isOwner];
    v10->_isAdmin = [v8 isAdministrator];
    v10->_isRemoteAccessAllowed = [v8 isRemoteAccessAllowed];
    v10->_isRecognizeMyVoiceEnabled = [v9 isRecognizeMyVoiceEnabled];
    v10->_isPersonalRequestsEnabled = [v9 assistantAccessControlActivityNotificationsEnabledForPersonalRequests];
    v10->_isAnnounceAccessAllowed = [v8 isAnnounceAccessAllowed];
    v10->_camerasAccessLevel = [v8 camerasAccessLevel];
  }

  return v10;
}

- (HMDUserSettingsPerHomeLogEvent)initWithUser:(id)a3
{
  v4 = a3;
  v5 = [v4 userDataController];
  v6 = [v4 home];
  v7 = [v6 uuid];
  v8 = [(HMDUserSettingsPerHomeLogEvent *)self initWithUser:v4 userDataController:v5 homeUUID:v7];

  return v8;
}

@end