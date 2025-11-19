@interface HMDPresenceNotificationCondition
- (BOOL)isEqual:(id)a3;
- (HMDPresenceNotificationCondition)initWithCoder:(id)a3;
- (HMDPresenceNotificationCondition)initWithDictionary:(id)a3;
- (HMDPresenceNotificationCondition)initWithPresenceEventType:(unint64_t)a3 presenceEventUserType:(unint64_t)a4 userUUIDs:(id)a5;
- (id)attributeDescriptions;
- (id)serializedRegistrationForRemoteMessage;
- (void)encodeWithCoder:(id)a3;
@end

@implementation HMDPresenceNotificationCondition

- (id)attributeDescriptions
{
  v15[3] = *MEMORY[0x277D85DE8];
  v3 = objc_alloc(MEMORY[0x277D0F778]);
  [(HMDPresenceNotificationCondition *)self presenceEventType];
  v4 = HMPresenceEventTypeAsString();
  v5 = [v3 initWithName:@"Presence Event Type" value:v4];
  v6 = objc_alloc(MEMORY[0x277D0F778]);
  [(HMDPresenceNotificationCondition *)self presenceEventUserType];
  v7 = HMPresenceEventUserTypeAsString();
  v8 = [v6 initWithName:@"Presence Event User Types" value:v7];
  v15[1] = v8;
  v9 = objc_alloc(MEMORY[0x277D0F778]);
  v10 = [(HMDPresenceNotificationCondition *)self userUUIDs];
  v11 = [v9 initWithName:@"User UUIDs" value:v10];
  v15[2] = v11;
  v12 = [MEMORY[0x277CBEA60] arrayWithObjects:v15 count:3];

  v13 = *MEMORY[0x277D85DE8];

  return v12;
}

- (HMDPresenceNotificationCondition)initWithCoder:(id)a3
{
  v14[2] = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [v4 decodeIntegerForKey:@"HMDPSC.ck.pet"];
  v6 = [v4 decodeIntegerForKey:@"HMDPSC.ck.peut"];
  v7 = MEMORY[0x277CBEB98];
  v14[0] = objc_opt_class();
  v14[1] = objc_opt_class();
  v8 = [MEMORY[0x277CBEA60] arrayWithObjects:v14 count:2];
  v9 = [v7 setWithArray:v8];
  v10 = [v4 decodeObjectOfClasses:v9 forKey:@"HMDPSC.ck.uu"];

  v11 = [(HMDPresenceNotificationCondition *)self initWithPresenceEventType:v5 presenceEventUserType:v6 userUUIDs:v10];
  v12 = *MEMORY[0x277D85DE8];
  return v11;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  [v4 encodeInteger:-[HMDPresenceNotificationCondition presenceEventType](self forKey:{"presenceEventType"), @"HMDPSC.ck.pet"}];
  [v4 encodeInteger:-[HMDPresenceNotificationCondition presenceEventUserType](self forKey:{"presenceEventUserType"), @"HMDPSC.ck.peut"}];
  v5 = [(HMDPresenceNotificationCondition *)self userUUIDs];
  [v4 encodeObject:v5 forKey:@"HMDPSC.ck.uu"];

  v6 = [MEMORY[0x277CCAD78] hmf_zeroUUID];
  [v4 encodeObject:v6 forKey:@"HMDPSC.ck.eu"];
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  v6 = v5;
  if (v6 && (v7 = -[HMDPresenceNotificationCondition presenceEventType](self, "presenceEventType"), v7 == [v6 presenceEventType]) && (v8 = -[HMDPresenceNotificationCondition presenceEventUserType](self, "presenceEventUserType"), v8 == objc_msgSend(v6, "presenceEventUserType")))
  {
    v9 = [(HMDPresenceNotificationCondition *)self userUUIDs];
    v10 = [v6 userUUIDs];
    v11 = [v9 isEqualToSet:v10];
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

- (id)serializedRegistrationForRemoteMessage
{
  v13.receiver = self;
  v13.super_class = HMDPresenceNotificationCondition;
  v3 = [(HMDNotificationCondition *)&v13 serializedRegistrationForRemoteMessage];
  v4 = [v3 mutableCopy];

  v5 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{-[HMDPresenceNotificationCondition presenceEventType](self, "presenceEventType")}];
  [v4 setObject:v5 forKeyedSubscript:@"HMDPSC.ck.pet"];

  v6 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{-[HMDPresenceNotificationCondition presenceEventUserType](self, "presenceEventUserType")}];
  [v4 setObject:v6 forKeyedSubscript:@"HMDPSC.ck.peut"];

  v7 = [(HMDPresenceNotificationCondition *)self userUUIDs];
  v8 = [v7 na_map:&__block_literal_global_17];

  v9 = [v8 allObjects];
  [v4 setObject:v9 forKeyedSubscript:@"HMDPSC.ck.uu"];

  v10 = [MEMORY[0x277CCAD78] hmf_zeroUUID];
  v11 = [v10 UUIDString];
  [v4 setObject:v11 forKeyedSubscript:@"HMDPSC.ck.eu"];

  return v4;
}

- (HMDPresenceNotificationCondition)initWithDictionary:(id)a3
{
  v4 = a3;
  v5 = objc_opt_class();
  v6 = [objc_opt_class() type];
  LODWORD(v5) = [v5 doesTypeMatch:v4 against:v6];

  if (v5)
  {
    v7 = [v4 objectForKeyedSubscript:@"HMDPSC.ck.pet"];
    v8 = [v7 integerValue];

    v9 = [v4 objectForKeyedSubscript:@"HMDPSC.ck.peut"];
    v10 = [v9 integerValue];

    v11 = MEMORY[0x277CBEB98];
    v12 = [v4 objectForKeyedSubscript:@"HMDPSC.ck.uu"];
    v13 = [v11 setWithArray:v12];

    v14 = [v13 na_map:&__block_literal_global_183784];
    self = [(HMDPresenceNotificationCondition *)self initWithPresenceEventType:v8 presenceEventUserType:v10 userUUIDs:v14];

    v15 = self;
  }

  else
  {
    v15 = 0;
  }

  return v15;
}

id __55__HMDPresenceNotificationCondition_initWithDictionary___block_invoke(uint64_t a1, void *a2)
{
  v2 = MEMORY[0x277CCAD78];
  v3 = a2;
  v4 = [[v2 alloc] initWithUUIDString:v3];

  return v4;
}

- (HMDPresenceNotificationCondition)initWithPresenceEventType:(unint64_t)a3 presenceEventUserType:(unint64_t)a4 userUUIDs:(id)a5
{
  v9 = a5;
  v13.receiver = self;
  v13.super_class = HMDPresenceNotificationCondition;
  v10 = [(HMDPresenceNotificationCondition *)&v13 init];
  v11 = v10;
  if (v10)
  {
    v10->_presenceEventType = a3;
    v10->_presenceEventUserType = a4;
    objc_storeStrong(&v10->_userUUIDs, a5);
  }

  return v11;
}

@end