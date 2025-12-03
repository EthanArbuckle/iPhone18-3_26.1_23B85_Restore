@interface HMDBulletinNotificationRegistration
+ (BOOL)doesTypeMatch:(id)match against:(id)against;
+ (id)type;
- (BOOL)isEqual:(id)equal;
- (HMDBulletinNotificationRegistration)initWithCoder:(id)coder;
- (HMDBulletinNotificationRegistration)initWithConditions:(id)conditions;
- (HMDBulletinNotificationRegistration)initWithDictionary:(id)dictionary;
- (NSPredicate)predicate;
- (id)attributeDescriptions;
- (id)serializedRegistrationForRemoteMessage;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation HMDBulletinNotificationRegistration

- (id)attributeDescriptions
{
  v9[1] = *MEMORY[0x277D85DE8];
  v3 = objc_alloc(MEMORY[0x277D0F778]);
  conditions = [(HMDBulletinNotificationRegistration *)self conditions];
  v5 = [v3 initWithName:@"conditions" value:conditions];
  v9[0] = v5;
  v6 = [MEMORY[0x277CBEA60] arrayWithObjects:v9 count:1];

  v7 = *MEMORY[0x277D85DE8];

  return v6;
}

- (HMDBulletinNotificationRegistration)initWithCoder:(id)coder
{
  v20[2] = *MEMORY[0x277D85DE8];
  coderCopy = coder;
  v5 = MEMORY[0x277CBEB98];
  v20[0] = objc_opt_class();
  v20[1] = objc_opt_class();
  v6 = [MEMORY[0x277CBEA60] arrayWithObjects:v20 count:2];
  v7 = [v5 setWithArray:v6];
  v8 = [coderCopy decodeObjectOfClasses:v7 forKey:@"HMDBNR.ck.c"];

  if (v8)
  {
    selfCopy = [(HMDBulletinNotificationRegistration *)self initWithConditions:v8];
    v10 = selfCopy;
  }

  else
  {
    v11 = objc_autoreleasePoolPush();
    selfCopy = self;
    v12 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      v13 = HMFGetLogIdentifier();
      v16 = 138543618;
      v17 = v13;
      v18 = 2112;
      v19 = 0;
      _os_log_impl(&dword_229538000, v12, OS_LOG_TYPE_ERROR, "%{public}@Could not initialize from decoded conditions: %@", &v16, 0x16u);
    }

    objc_autoreleasePoolPop(v11);
    v10 = 0;
  }

  v14 = *MEMORY[0x277D85DE8];
  return v10;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  conditions = [(HMDBulletinNotificationRegistration *)self conditions];
  [coderCopy encodeObject:conditions forKey:@"HMDBNR.ck.c"];
}

- (unint64_t)hash
{
  conditions = [(HMDBulletinNotificationRegistration *)self conditions];
  v3 = [conditions hash];

  return v3;
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
  if (v6)
  {
    conditions = [(HMDBulletinNotificationRegistration *)self conditions];
    conditions2 = [v6 conditions];
    v9 = [conditions isEqualToSet:conditions2];
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (id)serializedRegistrationForRemoteMessage
{
  v16[2] = *MEMORY[0x277D85DE8];
  v3 = MEMORY[0x277CBEB18];
  conditions = [(HMDBulletinNotificationRegistration *)self conditions];
  v5 = [v3 arrayWithCapacity:{objc_msgSend(conditions, "count")}];

  conditions2 = [(HMDBulletinNotificationRegistration *)self conditions];
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __77__HMDBulletinNotificationRegistration_serializedRegistrationForRemoteMessage__block_invoke;
  v13[3] = &unk_278672688;
  v13[4] = self;
  v14 = v5;
  v7 = v5;
  [conditions2 hmf_enumerateWithAutoreleasePoolUsingBlock:v13];

  v15[0] = @"HMDBNR.reg.type";
  type = [objc_opt_class() type];
  v16[0] = type;
  v15[1] = @"HMDBNR.ck.c";
  v9 = [v7 copy];
  v16[1] = v9;
  v10 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v16 forKeys:v15 count:2];

  v11 = *MEMORY[0x277D85DE8];

  return v10;
}

void __77__HMDBulletinNotificationRegistration_serializedRegistrationForRemoteMessage__block_invoke(uint64_t a1, void *a2)
{
  v14 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = [v3 serializedRegistrationForRemoteMessage];
  if (v4)
  {
    [*(a1 + 40) addObject:v4];
  }

  else
  {
    v5 = objc_autoreleasePoolPush();
    v6 = *(a1 + 32);
    v7 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      v8 = HMFGetLogIdentifier();
      v10 = 138543618;
      v11 = v8;
      v12 = 2112;
      v13 = v3;
      _os_log_impl(&dword_229538000, v7, OS_LOG_TYPE_ERROR, "%{public}@Unable to serialize condition %@ for remote message", &v10, 0x16u);
    }

    objc_autoreleasePoolPop(v5);
  }

  v9 = *MEMORY[0x277D85DE8];
}

- (HMDBulletinNotificationRegistration)initWithDictionary:(id)dictionary
{
  v4 = MEMORY[0x277CBEB58];
  dictionaryCopy = dictionary;
  v6 = [v4 set];
  v7 = [dictionaryCopy objectForKeyedSubscript:@"HMDBNR.ck.c"];

  v12 = MEMORY[0x277D85DD0];
  v13 = 3221225472;
  v14 = __58__HMDBulletinNotificationRegistration_initWithDictionary___block_invoke;
  v15 = &unk_278689E38;
  selfCopy = self;
  v16 = selfCopy;
  v17 = v6;
  v9 = v6;
  [v7 hmf_enumerateWithAutoreleasePoolUsingBlock:&v12];
  v10 = [(HMDBulletinNotificationRegistration *)selfCopy initWithConditions:v9, v12, v13, v14, v15];

  return v10;
}

void __58__HMDBulletinNotificationRegistration_initWithDictionary___block_invoke(uint64_t a1, void *a2)
{
  v20 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = objc_opt_class();
  v5 = off_2786662D8;
  v6 = [objc_opt_class() type];
  LOBYTE(v4) = [v4 doesTypeMatch:v3 against:v6];

  if (v4 & 1) != 0 || (v7 = objc_opt_class(), v5 = off_278666338, [objc_opt_class() type], v8 = objc_claimAutoreleasedReturnValue(), LOBYTE(v7) = objc_msgSend(v7, "doesTypeMatch:against:", v3, v8), v8, (v7))
  {
    v9 = [objc_alloc(*v5) initWithDictionary:v3];
    if (v9)
    {
      v10 = v9;
      [*(a1 + 40) addObject:v9];
    }
  }

  else
  {
    v11 = objc_autoreleasePoolPush();
    v12 = *(a1 + 32);
    v13 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
    {
      v14 = HMFGetLogIdentifier();
      v16 = 138543618;
      v17 = v14;
      v18 = 2112;
      v19 = v3;
      _os_log_impl(&dword_229538000, v13, OS_LOG_TYPE_INFO, "%{public}@Dropping unknown type : %@", &v16, 0x16u);
    }

    objc_autoreleasePoolPop(v11);
  }

  v15 = *MEMORY[0x277D85DE8];
}

- (NSPredicate)predicate
{
  conditions = [(HMDBulletinNotificationRegistration *)self conditions];
  v3 = [HMDNotificationConditionConverter predicatesFromConditions:conditions];
  allObjects = [v3 allObjects];

  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __48__HMDBulletinNotificationRegistration_predicate__block_invoke;
  v8[3] = &unk_2786842B0;
  v9 = allObjects;
  v5 = allObjects;
  v6 = __48__HMDBulletinNotificationRegistration_predicate__block_invoke(v8);

  return v6;
}

id __48__HMDBulletinNotificationRegistration_predicate__block_invoke(uint64_t a1)
{
  if ([*(a1 + 32) count] < 2)
  {
    if ([*(a1 + 32) count] == 1)
    {
      v2 = [*(a1 + 32) firstObject];
    }

    else
    {
      v2 = 0;
    }
  }

  else
  {
    v2 = [objc_alloc(MEMORY[0x277CCA920]) initWithType:1 subpredicates:*(a1 + 32)];
  }

  return v2;
}

- (HMDBulletinNotificationRegistration)initWithConditions:(id)conditions
{
  conditionsCopy = conditions;
  if (conditionsCopy)
  {
    v6 = conditionsCopy;
    v14.receiver = self;
    v14.super_class = HMDBulletinNotificationRegistration;
    v7 = [(HMDBulletinNotificationRegistration *)&v14 init];
    v8 = v7;
    if (v7)
    {
      objc_storeStrong(&v7->_conditions, conditions);
    }

    return v8;
  }

  else
  {
    v10 = _HMFPreconditionFailure();
    return [(HMDBulletinNotificationRegistration *)v10 doesTypeMatch:v11 against:v12, v13];
  }
}

+ (BOOL)doesTypeMatch:(id)match against:(id)against
{
  againstCopy = against;
  v6 = [match objectForKeyedSubscript:@"HMDBNR.reg.type"];
  v7 = [v6 isEqualToString:againstCopy];

  return v7;
}

+ (id)type
{
  v2 = MEMORY[0x277CBEAD8];
  v3 = *MEMORY[0x277CBE658];
  v4 = MEMORY[0x277CCACA8];
  v5 = NSStringFromSelector(a2);
  v6 = [v4 stringWithFormat:@"You must override %@ in a subclass", v5];
  v7 = [v2 exceptionWithName:v3 reason:v6 userInfo:0];
  v8 = v7;

  objc_exception_throw(v7);
}

@end