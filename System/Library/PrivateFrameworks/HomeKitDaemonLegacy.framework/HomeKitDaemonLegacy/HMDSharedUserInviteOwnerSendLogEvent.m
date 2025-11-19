@interface HMDSharedUserInviteOwnerSendLogEvent
- (HMDSharedUserInviteOwnerSendLogEvent)initWithHome:(id)a3;
- (id)coreAnalyticsEventDictionary;
@end

@implementation HMDSharedUserInviteOwnerSendLogEvent

- (id)coreAnalyticsEventDictionary
{
  v3 = objc_alloc_init(MEMORY[0x277CBEB38]);
  v13.receiver = self;
  v13.super_class = HMDSharedUserInviteOwnerSendLogEvent;
  v4 = [(HMDSharedUserInviteLogEvent *)&v13 coreAnalyticsEventDictionary];
  [v3 addEntriesFromDictionary:v4];

  v5 = [MEMORY[0x277CCABB0] numberWithLongLong:{-[HMDSharedUserInviteOwnerSendLogEvent createShareMS](self, "createShareMS")}];
  [v3 setObject:v5 forKeyedSubscript:@"createShareMS"];

  v6 = [MEMORY[0x277CCABB0] numberWithLongLong:{-[HMDSharedUserInviteOwnerSendLogEvent addUserToShareMS](self, "addUserToShareMS")}];
  [v3 setObject:v6 forKeyedSubscript:@"addUserToShareMS"];

  v7 = [MEMORY[0x277CCABB0] numberWithLongLong:{-[HMDSharedUserInviteOwnerSendLogEvent sendInvitationMS](self, "sendInvitationMS")}];
  [v3 setObject:v7 forKeyedSubscript:@"sendInvitationMS"];

  v8 = [MEMORY[0x277CCABB0] numberWithBool:{-[HMDSharedUserInviteOwnerSendLogEvent userAlreadyAddedToShare](self, "userAlreadyAddedToShare")}];
  [v3 setObject:v8 forKeyedSubscript:@"userAlreadyAddedToShare"];

  v9 = [MEMORY[0x277CCABB0] numberWithLongLong:{-[HMDSharedUserInviteOwnerSendLogEvent totalInvitationCreateAndSendMS](self, "totalInvitationCreateAndSendMS")}];
  [v3 setObject:v9 forKeyedSubscript:@"totalInvitationCreateAndSendMS"];

  v10 = [MEMORY[0x277CCABB0] numberWithLongLong:{-[HMDSharedUserInviteOwnerSendLogEvent totalInvitationCreateAndSendMS](self, "totalInvitationCreateAndSendMS") - -[HMDSharedUserInviteOwnerSendLogEvent createShareMS](self, "createShareMS") - (-[HMDSharedUserInviteOwnerSendLogEvent sendInvitationMS](self, "sendInvitationMS") + -[HMDSharedUserInviteOwnerSendLogEvent addUserToShareMS](self, "addUserToShareMS"))}];
  [v3 setObject:v10 forKeyedSubscript:@"totalUnassociatedDurationMS"];

  v11 = [v3 copy];

  return v11;
}

- (HMDSharedUserInviteOwnerSendLogEvent)initWithHome:(id)a3
{
  v4 = [a3 uuid];
  v7.receiver = self;
  v7.super_class = HMDSharedUserInviteOwnerSendLogEvent;
  v5 = [(HMDSharedUserInviteLogEvent *)&v7 initWithHomeUUID:v4];

  return v5;
}

@end