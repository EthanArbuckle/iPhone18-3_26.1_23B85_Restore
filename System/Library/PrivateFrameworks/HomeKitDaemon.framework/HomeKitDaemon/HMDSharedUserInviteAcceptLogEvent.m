@interface HMDSharedUserInviteAcceptLogEvent
- (HMDSharedUserInviteAcceptLogEvent)initWithHomeUUID:(id)a3;
- (id)coreAnalyticsEventDictionary;
@end

@implementation HMDSharedUserInviteAcceptLogEvent

- (id)coreAnalyticsEventDictionary
{
  v3 = objc_alloc_init(MEMORY[0x277CBEB38]);
  v17.receiver = self;
  v17.super_class = HMDSharedUserInviteAcceptLogEvent;
  v4 = [(HMDSharedUserInviteLogEvent *)&v17 coreAnalyticsEventDictionary];
  [v3 addEntriesFromDictionary:v4];

  v5 = [MEMORY[0x277CCABB0] numberWithLongLong:{-[HMDSharedUserInviteAcceptLogEvent joinOwnerShareMS](self, "joinOwnerShareMS")}];
  [v3 setObject:v5 forKeyedSubscript:@"joinOwnerShareMS"];

  v6 = [MEMORY[0x277CCABB0] numberWithLongLong:{-[HMDSharedUserInviteAcceptLogEvent createMKFCKSharedUserDataRootMS](self, "createMKFCKSharedUserDataRootMS")}];
  [v3 setObject:v6 forKeyedSubscript:@"createMKFCKSharedUserDataRootMS"];

  v7 = [MEMORY[0x277CCABB0] numberWithLongLong:{-[HMDSharedUserInviteAcceptLogEvent createReverseShareMS](self, "createReverseShareMS")}];
  [v3 setObject:v7 forKeyedSubscript:@"createReverseShareMS"];

  v8 = [MEMORY[0x277CCABB0] numberWithLongLong:{-[HMDSharedUserInviteAcceptLogEvent addUserToShareMS](self, "addUserToShareMS")}];
  [v3 setObject:v8 forKeyedSubscript:@"addUserToShareMS"];

  v9 = [MEMORY[0x277CCABB0] numberWithLongLong:{-[HMDSharedUserInviteAcceptLogEvent sendAcceptanceToOwnerMS](self, "sendAcceptanceToOwnerMS")}];
  [v3 setObject:v9 forKeyedSubscript:@"sendAcceptanceToOwnerMS"];

  v10 = [MEMORY[0x277CCABB0] numberWithLongLong:{-[HMDSharedUserInviteAcceptLogEvent totalInvitationAcceptanceMS](self, "totalInvitationAcceptanceMS")}];
  [v3 setObject:v10 forKeyedSubscript:@"totalInvitationAcceptanceMS"];

  v11 = [MEMORY[0x277CCABB0] numberWithLongLong:{-[HMDSharedUserInviteAcceptLogEvent createHomeMS](self, "createHomeMS")}];
  [v3 setObject:v11 forKeyedSubscript:@"createHomeMS"];

  v12 = [MEMORY[0x277CCABB0] numberWithLongLong:{-[HMDSharedUserInviteAcceptLogEvent discoverPrimaryResidentMS](self, "discoverPrimaryResidentMS")}];
  [v3 setObject:v12 forKeyedSubscript:@"discoverPrimaryResidentMS"];

  v13 = [MEMORY[0x277CCABB0] numberWithLongLong:{-[HMDSharedUserInviteAcceptLogEvent residentSyncDataReceivedMS](self, "residentSyncDataReceivedMS")}];
  [v3 setObject:v13 forKeyedSubscript:@"residentSyncDataReceivedMS"];

  v14 = [MEMORY[0x277CCABB0] numberWithLongLong:{-[HMDSharedUserInviteAcceptLogEvent sharedUserTotalMS](self, "sharedUserTotalMS")}];
  [v3 setObject:v14 forKeyedSubscript:@"sharedUserTotalMS"];

  v15 = [v3 copy];

  return v15;
}

- (HMDSharedUserInviteAcceptLogEvent)initWithHomeUUID:(id)a3
{
  v4.receiver = self;
  v4.super_class = HMDSharedUserInviteAcceptLogEvent;
  return [(HMDSharedUserInviteLogEvent *)&v4 initWithHomeUUID:a3];
}

@end