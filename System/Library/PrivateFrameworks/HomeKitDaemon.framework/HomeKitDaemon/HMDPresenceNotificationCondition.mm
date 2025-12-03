@interface HMDPresenceNotificationCondition
- (BOOL)isEqual:(id)equal;
- (HMDPresenceNotificationCondition)initWithCoder:(id)coder;
- (HMDPresenceNotificationCondition)initWithDictionary:(id)dictionary;
- (HMDPresenceNotificationCondition)initWithPresenceEventType:(unint64_t)type presenceEventUserType:(unint64_t)userType userUUIDs:(id)ds;
- (id)attributeDescriptions;
- (id)serializedRegistrationForRemoteMessage;
- (void)encodeWithCoder:(id)coder;
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
  userUUIDs = [(HMDPresenceNotificationCondition *)self userUUIDs];
  v11 = [v9 initWithName:@"User UUIDs" value:userUUIDs];
  v15[2] = v11;
  v12 = [MEMORY[0x277CBEA60] arrayWithObjects:v15 count:3];

  v13 = *MEMORY[0x277D85DE8];

  return v12;
}

- (HMDPresenceNotificationCondition)initWithCoder:(id)coder
{
  v14[2] = *MEMORY[0x277D85DE8];
  coderCopy = coder;
  v5 = [coderCopy decodeIntegerForKey:@"HMDPSC.ck.pet"];
  v6 = [coderCopy decodeIntegerForKey:@"HMDPSC.ck.peut"];
  v7 = MEMORY[0x277CBEB98];
  v14[0] = objc_opt_class();
  v14[1] = objc_opt_class();
  v8 = [MEMORY[0x277CBEA60] arrayWithObjects:v14 count:2];
  v9 = [v7 setWithArray:v8];
  v10 = [coderCopy decodeObjectOfClasses:v9 forKey:@"HMDPSC.ck.uu"];

  v11 = [(HMDPresenceNotificationCondition *)self initWithPresenceEventType:v5 presenceEventUserType:v6 userUUIDs:v10];
  v12 = *MEMORY[0x277D85DE8];
  return v11;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  [coderCopy encodeInteger:-[HMDPresenceNotificationCondition presenceEventType](self forKey:{"presenceEventType"), @"HMDPSC.ck.pet"}];
  [coderCopy encodeInteger:-[HMDPresenceNotificationCondition presenceEventUserType](self forKey:{"presenceEventUserType"), @"HMDPSC.ck.peut"}];
  userUUIDs = [(HMDPresenceNotificationCondition *)self userUUIDs];
  [coderCopy encodeObject:userUUIDs forKey:@"HMDPSC.ck.uu"];

  hmf_zeroUUID = [MEMORY[0x277CCAD78] hmf_zeroUUID];
  [coderCopy encodeObject:hmf_zeroUUID forKey:@"HMDPSC.ck.eu"];
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = equalCopy;
  }

  else
  {
    v5 = 0;
  }

  v6 = v5;
  if (v6 && (v7 = -[HMDPresenceNotificationCondition presenceEventType](self, "presenceEventType"), v7 == [v6 presenceEventType]) && (v8 = -[HMDPresenceNotificationCondition presenceEventUserType](self, "presenceEventUserType"), v8 == objc_msgSend(v6, "presenceEventUserType")))
  {
    userUUIDs = [(HMDPresenceNotificationCondition *)self userUUIDs];
    userUUIDs2 = [v6 userUUIDs];
    v11 = [userUUIDs isEqualToSet:userUUIDs2];
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
  serializedRegistrationForRemoteMessage = [(HMDNotificationCondition *)&v13 serializedRegistrationForRemoteMessage];
  v4 = [serializedRegistrationForRemoteMessage mutableCopy];

  v5 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{-[HMDPresenceNotificationCondition presenceEventType](self, "presenceEventType")}];
  [v4 setObject:v5 forKeyedSubscript:@"HMDPSC.ck.pet"];

  v6 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{-[HMDPresenceNotificationCondition presenceEventUserType](self, "presenceEventUserType")}];
  [v4 setObject:v6 forKeyedSubscript:@"HMDPSC.ck.peut"];

  userUUIDs = [(HMDPresenceNotificationCondition *)self userUUIDs];
  v8 = [userUUIDs na_map:&__block_literal_global_17];

  allObjects = [v8 allObjects];
  [v4 setObject:allObjects forKeyedSubscript:@"HMDPSC.ck.uu"];

  hmf_zeroUUID = [MEMORY[0x277CCAD78] hmf_zeroUUID];
  uUIDString = [hmf_zeroUUID UUIDString];
  [v4 setObject:uUIDString forKeyedSubscript:@"HMDPSC.ck.eu"];

  return v4;
}

- (HMDPresenceNotificationCondition)initWithDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v5 = objc_opt_class();
  type = [objc_opt_class() type];
  LODWORD(v5) = [v5 doesTypeMatch:dictionaryCopy against:type];

  if (v5)
  {
    v7 = [dictionaryCopy objectForKeyedSubscript:@"HMDPSC.ck.pet"];
    integerValue = [v7 integerValue];

    v9 = [dictionaryCopy objectForKeyedSubscript:@"HMDPSC.ck.peut"];
    integerValue2 = [v9 integerValue];

    v11 = MEMORY[0x277CBEB98];
    v12 = [dictionaryCopy objectForKeyedSubscript:@"HMDPSC.ck.uu"];
    v13 = [v11 setWithArray:v12];

    v14 = [v13 na_map:&__block_literal_global_183784];
    self = [(HMDPresenceNotificationCondition *)self initWithPresenceEventType:integerValue presenceEventUserType:integerValue2 userUUIDs:v14];

    selfCopy = self;
  }

  else
  {
    selfCopy = 0;
  }

  return selfCopy;
}

id __55__HMDPresenceNotificationCondition_initWithDictionary___block_invoke(uint64_t a1, void *a2)
{
  v2 = MEMORY[0x277CCAD78];
  v3 = a2;
  v4 = [[v2 alloc] initWithUUIDString:v3];

  return v4;
}

- (HMDPresenceNotificationCondition)initWithPresenceEventType:(unint64_t)type presenceEventUserType:(unint64_t)userType userUUIDs:(id)ds
{
  dsCopy = ds;
  v13.receiver = self;
  v13.super_class = HMDPresenceNotificationCondition;
  v10 = [(HMDPresenceNotificationCondition *)&v13 init];
  v11 = v10;
  if (v10)
  {
    v10->_presenceEventType = type;
    v10->_presenceEventUserType = userType;
    objc_storeStrong(&v10->_userUUIDs, ds);
  }

  return v11;
}

@end