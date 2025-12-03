@interface HMDHouseholdHomeDataChangedLogEvent
- (BOOL)isEqual:(id)equal;
- (HMDHouseholdHomeDataChangedLogEvent)initWithChangeType:(int64_t)type count:(unint64_t)count modelName:(id)name propertyName:(id)propertyName homeUUID:(id)d;
- (HMDHouseholdHomeDataChangedLogEvent)initWithDictionary:(id)dictionary;
- (NSDictionary)coreAnalyticsEventDictionary;
- (NSString)description;
- (id)serializedLogEvent;
- (void)incrementCountWithValue:(unint64_t)value;
@end

@implementation HMDHouseholdHomeDataChangedLogEvent

- (NSString)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = [MEMORY[0x277CCABB0] numberWithInteger:{-[HMDHouseholdHomeDataChangedLogEvent changeType](self, "changeType")}];
  v5 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{-[HMDHouseholdHomeDataChangedLogEvent count](self, "count")}];
  modelName = [(HMDHouseholdHomeDataChangedLogEvent *)self modelName];
  propertyName = [(HMDHouseholdHomeDataChangedLogEvent *)self propertyName];
  homeUUID = [(HMMHomeLogEvent *)self homeUUID];
  v9 = [v3 stringWithFormat:@"<HMDHouseholdHomeDataChangedLogEvent: changeType: %@ count: %@ modelName: %@ propertyName: %@ homeUUID: %@>", v4, v5, modelName, propertyName, homeUUID];

  return v9;
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
  if (!v6)
  {
    goto LABEL_10;
  }

  changeType = [(HMDHouseholdHomeDataChangedLogEvent *)self changeType];
  if (changeType != [v6 changeType])
  {
    goto LABEL_10;
  }

  v8 = [(HMDHouseholdHomeDataChangedLogEvent *)self count];
  if (v8 != [v6 count])
  {
    goto LABEL_10;
  }

  modelName = [(HMDHouseholdHomeDataChangedLogEvent *)self modelName];
  modelName2 = [v6 modelName];
  v11 = HMFEqualObjects();

  if (!v11)
  {
    goto LABEL_10;
  }

  propertyName = [(HMDHouseholdHomeDataChangedLogEvent *)self propertyName];
  propertyName2 = [v6 propertyName];
  v14 = HMFEqualObjects();

  if (v14)
  {
    homeUUID = [(HMMHomeLogEvent *)self homeUUID];
    homeUUID2 = [v6 homeUUID];
    v17 = [homeUUID isEqual:homeUUID2];
  }

  else
  {
LABEL_10:
    v17 = 0;
  }

  return v17;
}

- (NSDictionary)coreAnalyticsEventDictionary
{
  v16[2] = *MEMORY[0x277D85DE8];
  v3 = MEMORY[0x277CBEB38];
  v15[0] = @"changeType";
  v4 = [MEMORY[0x277CCABB0] numberWithInteger:{-[HMDHouseholdHomeDataChangedLogEvent changeType](self, "changeType")}];
  v15[1] = @"homeDataChangedCount";
  v16[0] = v4;
  v5 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{-[HMDHouseholdHomeDataChangedLogEvent count](self, "count")}];
  v16[1] = v5;
  v6 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v16 forKeys:v15 count:2];
  v7 = [v3 dictionaryWithDictionary:v6];

  modelName = [(HMDHouseholdHomeDataChangedLogEvent *)self modelName];

  if (modelName)
  {
    modelName2 = [(HMDHouseholdHomeDataChangedLogEvent *)self modelName];
    [v7 setObject:modelName2 forKeyedSubscript:@"modelName"];
  }

  propertyName = [(HMDHouseholdHomeDataChangedLogEvent *)self propertyName];

  if (propertyName)
  {
    propertyName2 = [(HMDHouseholdHomeDataChangedLogEvent *)self propertyName];
    [v7 setObject:propertyName2 forKeyedSubscript:@"propertyName"];
  }

  v12 = [v7 copy];

  v13 = *MEMORY[0x277D85DE8];

  return v12;
}

- (void)incrementCountWithValue:(unint64_t)value
{
  v4 = [(HMDHouseholdHomeDataChangedLogEvent *)self count]+ value;

  [(HMDHouseholdHomeDataChangedLogEvent *)self setCount:v4];
}

- (id)serializedLogEvent
{
  v26 = *MEMORY[0x277D85DE8];
  v3 = objc_autoreleasePoolPush();
  selfCopy = self;
  v5 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    v6 = HMFGetLogIdentifier();
    v22 = 138543618;
    v23 = v6;
    v24 = 2112;
    v25 = selfCopy;
    _os_log_impl(&dword_229538000, v5, OS_LOG_TYPE_DEBUG, "%{public}@serializing: %@", &v22, 0x16u);
  }

  objc_autoreleasePoolPop(v3);
  dictionary = [MEMORY[0x277CBEB38] dictionary];
  v8 = [MEMORY[0x277CCABB0] numberWithInteger:{-[HMDHouseholdHomeDataChangedLogEvent changeType](selfCopy, "changeType")}];
  [(HMDHouseholdHomeDataChangedLogEvent *)dictionary setObject:v8 forKeyedSubscript:@"changeType"];

  v9 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{-[HMDHouseholdHomeDataChangedLogEvent count](selfCopy, "count")}];
  [(HMDHouseholdHomeDataChangedLogEvent *)dictionary setObject:v9 forKeyedSubscript:@"homeDataChangedCount"];

  homeUUIDString = [(HMMHomeLogEvent *)selfCopy homeUUIDString];
  [(HMDHouseholdHomeDataChangedLogEvent *)dictionary setObject:homeUUIDString forKeyedSubscript:@"homeUUID"];

  modelName = [(HMDHouseholdHomeDataChangedLogEvent *)selfCopy modelName];

  if (modelName)
  {
    modelName2 = [(HMDHouseholdHomeDataChangedLogEvent *)selfCopy modelName];
    [(HMDHouseholdHomeDataChangedLogEvent *)dictionary setObject:modelName2 forKeyedSubscript:@"modelName"];
  }

  propertyName = [(HMDHouseholdHomeDataChangedLogEvent *)selfCopy propertyName];

  if (propertyName)
  {
    propertyName2 = [(HMDHouseholdHomeDataChangedLogEvent *)selfCopy propertyName];
    [(HMDHouseholdHomeDataChangedLogEvent *)dictionary setObject:propertyName2 forKeyedSubscript:@"propertyName"];
  }

  v15 = objc_autoreleasePoolPush();
  v16 = selfCopy;
  v17 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v17, OS_LOG_TYPE_DEBUG))
  {
    v18 = HMFGetLogIdentifier();
    v22 = 138543618;
    v23 = v18;
    v24 = 2112;
    v25 = dictionary;
    _os_log_impl(&dword_229538000, v17, OS_LOG_TYPE_DEBUG, "%{public}@serialized as: %@", &v22, 0x16u);
  }

  objc_autoreleasePoolPop(v15);
  v19 = [(HMDHouseholdHomeDataChangedLogEvent *)dictionary copy];

  v20 = *MEMORY[0x277D85DE8];

  return v19;
}

- (HMDHouseholdHomeDataChangedLogEvent)initWithDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v5 = [dictionaryCopy objectForKeyedSubscript:@"changeType"];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v6 = v5;
  }

  else
  {
    v6 = 0;
  }

  v7 = v6;

  v8 = [dictionaryCopy objectForKeyedSubscript:@"homeDataChangedCount"];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v9 = v8;
  }

  else
  {
    v9 = 0;
  }

  v10 = v9;

  v11 = [dictionaryCopy objectForKeyedSubscript:@"homeUUID"];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v12 = v11;
  }

  else
  {
    v12 = 0;
  }

  v13 = v12;

  v14 = [objc_alloc(MEMORY[0x277CCAD78]) initWithUUIDString:v13];
  v15 = [dictionaryCopy objectForKeyedSubscript:@"modelName"];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v16 = v15;
  }

  else
  {
    v16 = 0;
  }

  v17 = v16;

  v18 = [dictionaryCopy objectForKeyedSubscript:@"propertyName"];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v19 = v18;
  }

  else
  {
    v19 = 0;
  }

  v20 = v19;

  selfCopy = 0;
  if (v7 && v10 && v14)
  {
    if ([v7 unsignedIntegerValue])
    {
      if (v17)
      {
        if ([v7 unsignedIntegerValue] == 1)
        {
          v22 = -[HMDHouseholdHomeDataChangedLogEvent initAsInsertEventForModelName:count:homeUUID:](self, "initAsInsertEventForModelName:count:homeUUID:", v17, [v10 unsignedIntegerValue], v14);
LABEL_24:
          self = v22;
          selfCopy = self;
          goto LABEL_29;
        }

        if (v20 && [v7 unsignedIntegerValue] == 2)
        {
          v22 = -[HMDHouseholdHomeDataChangedLogEvent initAsUpdateEventForModelName:propertyName:count:homeUUID:](self, "initAsUpdateEventForModelName:propertyName:count:homeUUID:", v17, v20, [v10 unsignedIntegerValue], v14);
          goto LABEL_24;
        }
      }

      selfCopy = 0;
      goto LABEL_29;
    }

    v22 = -[HMDHouseholdHomeDataChangedLogEvent initAsBecamePrimaryEventWithCount:homeUUID:](self, "initAsBecamePrimaryEventWithCount:homeUUID:", [v10 unsignedIntegerValue], v14);
    goto LABEL_24;
  }

LABEL_29:

  return selfCopy;
}

- (HMDHouseholdHomeDataChangedLogEvent)initWithChangeType:(int64_t)type count:(unint64_t)count modelName:(id)name propertyName:(id)propertyName homeUUID:(id)d
{
  nameCopy = name;
  propertyNameCopy = propertyName;
  v18.receiver = self;
  v18.super_class = HMDHouseholdHomeDataChangedLogEvent;
  v15 = [(HMMHomeLogEvent *)&v18 initWithHomeUUID:d];
  v16 = v15;
  if (v15)
  {
    v15->_changeType = type;
    v15->_count = count;
    objc_storeStrong(&v15->_modelName, name);
    objc_storeStrong(&v16->_propertyName, propertyName);
  }

  return v16;
}

@end