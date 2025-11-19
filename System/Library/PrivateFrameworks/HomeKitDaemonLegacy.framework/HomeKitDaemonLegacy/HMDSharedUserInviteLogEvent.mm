@interface HMDSharedUserInviteLogEvent
- (HMDSharedUserInviteLogEvent)initWithHomeUUID:(id)a3;
- (NSDictionary)coreAnalyticsEventDictionary;
- (NSString)description;
@end

@implementation HMDSharedUserInviteLogEvent

- (NSDictionary)coreAnalyticsEventDictionary
{
  v3 = objc_alloc_init(MEMORY[0x277CBEB38]);
  v4 = [(HMDSharedUserInviteLogEvent *)self sessionIdentifier];
  v5 = [v4 UUIDString];
  [v3 setObject:v5 forKeyedSubscript:@"sessionIdentifier"];

  v6 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{-[HMDSharedUserInviteLogEvent invitationType](self, "invitationType")}];
  [v3 setObject:v6 forKeyedSubscript:@"invitationType"];

  v7 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:{-[HMDSharedUserInviteLogEvent invitationAge](self, "invitationAge")}];
  [v3 setObject:v7 forKeyedSubscript:@"invitationAge"];

  v8 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:{-[HMDSharedUserInviteLogEvent invitationAgeSeconds](self, "invitationAgeSeconds")}];
  [v3 setObject:v8 forKeyedSubscript:@"invitationAgeSeconds"];

  v9 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{-[HMDSharedUserInviteLogEvent invitationSource](self, "invitationSource")}];
  [v3 setObject:v9 forKeyedSubscript:@"invitationSource"];

  v10 = [MEMORY[0x277CCABB0] numberWithBool:{-[HMDSharedUserInviteLogEvent iCloudSignedIn](self, "iCloudSignedIn")}];
  [v3 setObject:v10 forKeyedSubscript:@"iCloudSignedIn_BOOL"];

  v11 = [MEMORY[0x277CCABB0] numberWithBool:{-[HMDSharedUserInviteLogEvent manateeAvailable](self, "manateeAvailable")}];
  [v3 setObject:v11 forKeyedSubscript:@"manateeAvailable_BOOL"];

  v12 = [MEMORY[0x277CCABB0] numberWithBool:{-[HMDSharedUserInviteLogEvent networkAvailable](self, "networkAvailable")}];
  [v3 setObject:v12 forKeyedSubscript:@"networkAvailable_BOOL"];

  v13 = [MEMORY[0x277CCABB0] numberWithBool:{-[HMDSharedUserInviteLogEvent IDSAvailable](self, "IDSAvailable")}];
  [v3 setObject:v13 forKeyedSubscript:@"IDSAvailable_BOOL"];

  v14 = [MEMORY[0x277CCABB0] numberWithInteger:{-[HMDSharedUserInviteLogEvent IDSRegistrationStatus](self, "IDSRegistrationStatus")}];
  [v3 setObject:v14 forKeyedSubscript:@"IDSRegistrationStatus"];

  v15 = [MEMORY[0x277CCABB0] numberWithInteger:{-[HMDSharedUserInviteLogEvent IDSRegistrationError](self, "IDSRegistrationError")}];
  [v3 setObject:v15 forKeyedSubscript:@"IDSRegistrationError"];

  v16 = [(HMDSharedUserInviteLogEvent *)self lastTransientError];
  v17 = [v16 domain];
  [v3 setObject:v17 forKeyedSubscript:@"lastTransientErrorDomain"];

  v18 = MEMORY[0x277CCABB0];
  v19 = [(HMDSharedUserInviteLogEvent *)self lastTransientError];
  v20 = [v18 numberWithInteger:{objc_msgSend(v19, "code")}];
  [v3 setObject:v20 forKeyedSubscript:@"lastTransientErrorCode"];

  v21 = [(HMDSharedUserInviteLogEvent *)self lastTransientError];
  v22 = [v21 underlyingErrors];
  v23 = [v22 firstObject];
  v24 = [v23 domain];
  [v3 setObject:v24 forKeyedSubscript:@"lastTransientUnderlyingErrorDomain"];

  v25 = MEMORY[0x277CCABB0];
  v26 = [(HMDSharedUserInviteLogEvent *)self lastTransientError];
  v27 = [v26 underlyingErrors];
  v28 = [v27 firstObject];
  v29 = [v25 numberWithInteger:{objc_msgSend(v28, "code")}];
  [v3 setObject:v29 forKeyedSubscript:@"lastTransientUnderlyingErrorCode"];

  v30 = [v3 copy];

  return v30;
}

- (NSString)description
{
  v2 = MEMORY[0x277CCACA8];
  v3 = [(HMDSharedUserInviteLogEvent *)self coreAnalyticsEventDictionary];
  v4 = [v2 stringWithFormat:@"%@", v3];

  return v4;
}

- (HMDSharedUserInviteLogEvent)initWithHomeUUID:(id)a3
{
  v4.receiver = self;
  v4.super_class = HMDSharedUserInviteLogEvent;
  return [(HMMHomeLogEvent *)&v4 initWithHomeUUID:a3];
}

@end