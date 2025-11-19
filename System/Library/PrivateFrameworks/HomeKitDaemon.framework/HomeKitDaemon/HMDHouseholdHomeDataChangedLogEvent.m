@interface HMDHouseholdHomeDataChangedLogEvent
- (BOOL)isEqual:(id)a3;
- (HMDHouseholdHomeDataChangedLogEvent)initWithChangeType:(int64_t)a3 count:(unint64_t)a4 modelName:(id)a5 propertyName:(id)a6 homeUUID:(id)a7;
- (HMDHouseholdHomeDataChangedLogEvent)initWithDictionary:(id)a3;
- (NSDictionary)coreAnalyticsEventDictionary;
- (NSString)description;
- (id)serializedLogEvent;
- (void)incrementCountWithValue:(unint64_t)a3;
@end

@implementation HMDHouseholdHomeDataChangedLogEvent

- (NSString)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = [MEMORY[0x277CCABB0] numberWithInteger:{-[HMDHouseholdHomeDataChangedLogEvent changeType](self, "changeType")}];
  v5 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{-[HMDHouseholdHomeDataChangedLogEvent count](self, "count")}];
  v6 = [(HMDHouseholdHomeDataChangedLogEvent *)self modelName];
  v7 = [(HMDHouseholdHomeDataChangedLogEvent *)self propertyName];
  v8 = [(HMMHomeLogEvent *)self homeUUID];
  v9 = [v3 stringWithFormat:@"<HMDHouseholdHomeDataChangedLogEvent: changeType: %@ count: %@ modelName: %@ propertyName: %@ homeUUID: %@>", v4, v5, v6, v7, v8];

  return v9;
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
  if (!v6)
  {
    goto LABEL_10;
  }

  v7 = [(HMDHouseholdHomeDataChangedLogEvent *)self changeType];
  if (v7 != [v6 changeType])
  {
    goto LABEL_10;
  }

  v8 = [(HMDHouseholdHomeDataChangedLogEvent *)self count];
  if (v8 != [v6 count])
  {
    goto LABEL_10;
  }

  v9 = [(HMDHouseholdHomeDataChangedLogEvent *)self modelName];
  v10 = [v6 modelName];
  v11 = HMFEqualObjects();

  if (!v11)
  {
    goto LABEL_10;
  }

  v12 = [(HMDHouseholdHomeDataChangedLogEvent *)self propertyName];
  v13 = [v6 propertyName];
  v14 = HMFEqualObjects();

  if (v14)
  {
    v15 = [(HMMHomeLogEvent *)self homeUUID];
    v16 = [v6 homeUUID];
    v17 = [v15 isEqual:v16];
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

  v8 = [(HMDHouseholdHomeDataChangedLogEvent *)self modelName];

  if (v8)
  {
    v9 = [(HMDHouseholdHomeDataChangedLogEvent *)self modelName];
    [v7 setObject:v9 forKeyedSubscript:@"modelName"];
  }

  v10 = [(HMDHouseholdHomeDataChangedLogEvent *)self propertyName];

  if (v10)
  {
    v11 = [(HMDHouseholdHomeDataChangedLogEvent *)self propertyName];
    [v7 setObject:v11 forKeyedSubscript:@"propertyName"];
  }

  v12 = [v7 copy];

  v13 = *MEMORY[0x277D85DE8];

  return v12;
}

- (void)incrementCountWithValue:(unint64_t)a3
{
  v4 = [(HMDHouseholdHomeDataChangedLogEvent *)self count]+ a3;

  [(HMDHouseholdHomeDataChangedLogEvent *)self setCount:v4];
}

- (id)serializedLogEvent
{
  v26 = *MEMORY[0x277D85DE8];
  v3 = objc_autoreleasePoolPush();
  v4 = self;
  v5 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    v6 = HMFGetLogIdentifier();
    v22 = 138543618;
    v23 = v6;
    v24 = 2112;
    v25 = v4;
    _os_log_impl(&dword_229538000, v5, OS_LOG_TYPE_DEBUG, "%{public}@serializing: %@", &v22, 0x16u);
  }

  objc_autoreleasePoolPop(v3);
  v7 = [MEMORY[0x277CBEB38] dictionary];
  v8 = [MEMORY[0x277CCABB0] numberWithInteger:{-[HMDHouseholdHomeDataChangedLogEvent changeType](v4, "changeType")}];
  [(HMDHouseholdHomeDataChangedLogEvent *)v7 setObject:v8 forKeyedSubscript:@"changeType"];

  v9 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{-[HMDHouseholdHomeDataChangedLogEvent count](v4, "count")}];
  [(HMDHouseholdHomeDataChangedLogEvent *)v7 setObject:v9 forKeyedSubscript:@"homeDataChangedCount"];

  v10 = [(HMMHomeLogEvent *)v4 homeUUIDString];
  [(HMDHouseholdHomeDataChangedLogEvent *)v7 setObject:v10 forKeyedSubscript:@"homeUUID"];

  v11 = [(HMDHouseholdHomeDataChangedLogEvent *)v4 modelName];

  if (v11)
  {
    v12 = [(HMDHouseholdHomeDataChangedLogEvent *)v4 modelName];
    [(HMDHouseholdHomeDataChangedLogEvent *)v7 setObject:v12 forKeyedSubscript:@"modelName"];
  }

  v13 = [(HMDHouseholdHomeDataChangedLogEvent *)v4 propertyName];

  if (v13)
  {
    v14 = [(HMDHouseholdHomeDataChangedLogEvent *)v4 propertyName];
    [(HMDHouseholdHomeDataChangedLogEvent *)v7 setObject:v14 forKeyedSubscript:@"propertyName"];
  }

  v15 = objc_autoreleasePoolPush();
  v16 = v4;
  v17 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v17, OS_LOG_TYPE_DEBUG))
  {
    v18 = HMFGetLogIdentifier();
    v22 = 138543618;
    v23 = v18;
    v24 = 2112;
    v25 = v7;
    _os_log_impl(&dword_229538000, v17, OS_LOG_TYPE_DEBUG, "%{public}@serialized as: %@", &v22, 0x16u);
  }

  objc_autoreleasePoolPop(v15);
  v19 = [(HMDHouseholdHomeDataChangedLogEvent *)v7 copy];

  v20 = *MEMORY[0x277D85DE8];

  return v19;
}

- (HMDHouseholdHomeDataChangedLogEvent)initWithDictionary:(id)a3
{
  v4 = a3;
  v5 = [v4 objectForKeyedSubscript:@"changeType"];
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

  v8 = [v4 objectForKeyedSubscript:@"homeDataChangedCount"];
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

  v11 = [v4 objectForKeyedSubscript:@"homeUUID"];
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
  v15 = [v4 objectForKeyedSubscript:@"modelName"];
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

  v18 = [v4 objectForKeyedSubscript:@"propertyName"];

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

  v21 = 0;
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
          v21 = self;
          goto LABEL_29;
        }

        if (v20 && [v7 unsignedIntegerValue] == 2)
        {
          v22 = -[HMDHouseholdHomeDataChangedLogEvent initAsUpdateEventForModelName:propertyName:count:homeUUID:](self, "initAsUpdateEventForModelName:propertyName:count:homeUUID:", v17, v20, [v10 unsignedIntegerValue], v14);
          goto LABEL_24;
        }
      }

      v21 = 0;
      goto LABEL_29;
    }

    v22 = -[HMDHouseholdHomeDataChangedLogEvent initAsBecamePrimaryEventWithCount:homeUUID:](self, "initAsBecamePrimaryEventWithCount:homeUUID:", [v10 unsignedIntegerValue], v14);
    goto LABEL_24;
  }

LABEL_29:

  return v21;
}

- (HMDHouseholdHomeDataChangedLogEvent)initWithChangeType:(int64_t)a3 count:(unint64_t)a4 modelName:(id)a5 propertyName:(id)a6 homeUUID:(id)a7
{
  v13 = a5;
  v14 = a6;
  v18.receiver = self;
  v18.super_class = HMDHouseholdHomeDataChangedLogEvent;
  v15 = [(HMMHomeLogEvent *)&v18 initWithHomeUUID:a7];
  v16 = v15;
  if (v15)
  {
    v15->_changeType = a3;
    v15->_count = a4;
    objc_storeStrong(&v15->_modelName, a5);
    objc_storeStrong(&v16->_propertyName, a6);
  }

  return v16;
}

@end