@interface HMDSharedUserInviteOwnerResponseLogEvent
- (HMDSharedUserInviteOwnerResponseLogEvent)initWithHomeUUID:(id)d;
- (id)coreAnalyticsEventDictionary;
@end

@implementation HMDSharedUserInviteOwnerResponseLogEvent

- (id)coreAnalyticsEventDictionary
{
  v3 = objc_alloc_init(MEMORY[0x277CBEB38]);
  v11.receiver = self;
  v11.super_class = HMDSharedUserInviteOwnerResponseLogEvent;
  coreAnalyticsEventDictionary = [(HMDSharedUserInviteLogEvent *)&v11 coreAnalyticsEventDictionary];
  [v3 addEntriesFromDictionary:coreAnalyticsEventDictionary];

  v5 = [MEMORY[0x277CCABB0] numberWithLongLong:{-[HMDSharedUserInviteOwnerResponseLogEvent authenticateUserMS](self, "authenticateUserMS")}];
  [v3 setObject:v5 forKeyedSubscript:@"authenticateUserMS"];

  v6 = [MEMORY[0x277CCABB0] numberWithLongLong:{-[HMDSharedUserInviteOwnerResponseLogEvent joiningReverseShareMS](self, "joiningReverseShareMS")}];
  [v3 setObject:v6 forKeyedSubscript:@"joiningReverseShareMS"];

  v7 = [MEMORY[0x277CCABB0] numberWithLongLong:{-[HMDSharedUserInviteOwnerResponseLogEvent addUserToHomeMS](self, "addUserToHomeMS")}];
  [v3 setObject:v7 forKeyedSubscript:@"addUserToHomeMS"];

  v8 = [MEMORY[0x277CCABB0] numberWithLongLong:{-[HMDSharedUserInviteOwnerResponseLogEvent totalOwnerResidentResponseMS](self, "totalOwnerResidentResponseMS")}];
  [v3 setObject:v8 forKeyedSubscript:@"totalOwnerResidentResponseMS"];

  v9 = [v3 copy];

  return v9;
}

- (HMDSharedUserInviteOwnerResponseLogEvent)initWithHomeUUID:(id)d
{
  v4.receiver = self;
  v4.super_class = HMDSharedUserInviteOwnerResponseLogEvent;
  return [(HMDSharedUserInviteLogEvent *)&v4 initWithHomeUUID:d];
}

@end