@interface HMDTimePeriodNotificationCondition
- (BOOL)isEqual:(id)a3;
- (HMDTimePeriodNotificationCondition)initWithCoder:(id)a3;
- (HMDTimePeriodNotificationCondition)initWithDictionary:(id)a3;
- (HMDTimePeriodNotificationCondition)initWithStartElement:(id)a3 endElement:(id)a4;
- (id)attributeDescriptions;
- (id)serializedRegistrationForRemoteMessage;
- (id)timePeriodElementFromDictionary:(id)a3;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
@end

@implementation HMDTimePeriodNotificationCondition

- (id)attributeDescriptions
{
  v12[2] = *MEMORY[0x277D85DE8];
  v3 = objc_alloc(MEMORY[0x277D0F778]);
  v4 = [(HMDTimePeriodNotificationCondition *)self startElement];
  v5 = [v3 initWithName:@"Start" value:v4];
  v12[0] = v5;
  v6 = objc_alloc(MEMORY[0x277D0F778]);
  v7 = [(HMDTimePeriodNotificationCondition *)self endElement];
  v8 = [v6 initWithName:@"End" value:v7];
  v12[1] = v8;
  v9 = [MEMORY[0x277CBEA60] arrayWithObjects:v12 count:2];

  v10 = *MEMORY[0x277D85DE8];

  return v9;
}

- (HMDTimePeriodNotificationCondition)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"HMDTPSC.ck.se"];
  v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"HMDTPSC.ck.ee"];

  v7 = [(HMDTimePeriodNotificationCondition *)self initWithStartElement:v5 endElement:v6];
  return v7;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(HMDTimePeriodNotificationCondition *)self startElement];
  [v4 encodeObject:v5 forKey:@"HMDTPSC.ck.se"];

  v6 = [(HMDTimePeriodNotificationCondition *)self endElement];
  [v4 encodeObject:v6 forKey:@"HMDTPSC.ck.ee"];
}

- (unint64_t)hash
{
  v3 = [(HMDTimePeriodNotificationCondition *)self startElement];
  v4 = [v3 hash];
  v5 = [(HMDTimePeriodNotificationCondition *)self endElement];
  v6 = [v5 hash];

  return v6 ^ v4;
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
  if (v6)
  {
    v7 = [(HMDTimePeriodNotificationCondition *)self startElement];
    v8 = [v6 startElement];
    if ([v7 isEqual:v8])
    {
      v9 = [(HMDTimePeriodNotificationCondition *)self endElement];
      v10 = [v6 endElement];
      v11 = [v9 isEqual:v10];
    }

    else
    {
      v11 = 0;
    }
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

- (id)serializedRegistrationForRemoteMessage
{
  v10.receiver = self;
  v10.super_class = HMDTimePeriodNotificationCondition;
  v3 = [(HMDNotificationCondition *)&v10 serializedRegistrationForRemoteMessage];
  v4 = [v3 mutableCopy];

  v5 = [(HMDTimePeriodNotificationCondition *)self startElement];
  v6 = [v5 serializedRegistrationForRemoteMessage];
  [v4 setObject:v6 forKeyedSubscript:@"HMDTPSC.ck.se"];

  v7 = [(HMDTimePeriodNotificationCondition *)self endElement];
  v8 = [v7 serializedRegistrationForRemoteMessage];
  [v4 setObject:v8 forKeyedSubscript:@"HMDTPSC.ck.ee"];

  return v4;
}

- (id)timePeriodElementFromDictionary:(id)a3
{
  v21 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = objc_opt_class();
  v6 = [objc_opt_class() type];
  LODWORD(v5) = [v5 doesTypeMatch:v4 against:v6];

  if (v5)
  {
    v7 = HMDTimeOfDayTimePeriodElement;
LABEL_5:
    v10 = [[v7 alloc] initWithDictionary:v4];
    goto LABEL_9;
  }

  v8 = objc_opt_class();
  v9 = [objc_opt_class() type];
  LODWORD(v8) = [v8 doesTypeMatch:v4 against:v9];

  if (v8)
  {
    v7 = HMDSunriseSunsetTimePeriodElement;
    goto LABEL_5;
  }

  v11 = objc_autoreleasePoolPush();
  v12 = self;
  v13 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
  {
    v14 = HMFGetLogIdentifier();
    v17 = 138543618;
    v18 = v14;
    v19 = 2112;
    v20 = v4;
    _os_log_impl(&dword_229538000, v13, OS_LOG_TYPE_INFO, "%{public}@Unknown time period element found : %@", &v17, 0x16u);
  }

  objc_autoreleasePoolPop(v11);
  v10 = 0;
LABEL_9:

  v15 = *MEMORY[0x277D85DE8];

  return v10;
}

- (HMDTimePeriodNotificationCondition)initWithDictionary:(id)a3
{
  v4 = a3;
  v5 = objc_opt_class();
  v6 = [objc_opt_class() type];
  LODWORD(v5) = [v5 doesTypeMatch:v4 against:v6];

  if (!v5)
  {
    v11 = 0;
    goto LABEL_6;
  }

  v7 = [v4 objectForKeyedSubscript:@"HMDTPSC.ck.se"];
  v8 = [(HMDTimePeriodNotificationCondition *)self timePeriodElementFromDictionary:v7];

  v9 = [v4 objectForKeyedSubscript:@"HMDTPSC.ck.ee"];
  v10 = [(HMDTimePeriodNotificationCondition *)self timePeriodElementFromDictionary:v9];

  if (v8)
  {
    if (v10)
    {
      self = [(HMDTimePeriodNotificationCondition *)self initWithStartElement:v8 endElement:v10];

      v11 = self;
LABEL_6:

      return v11;
    }
  }

  else
  {
    _HMFPreconditionFailure();
  }

  v13 = _HMFPreconditionFailure();
  return [(HMDTimePeriodNotificationCondition *)v13 initWithStartElement:v14 endElement:v15, v16];
}

- (HMDTimePeriodNotificationCondition)initWithStartElement:(id)a3 endElement:(id)a4
{
  v7 = a3;
  v8 = a4;
  objc_opt_class();
  if (objc_opt_isKindOfClass() & 1) != 0 && (objc_opt_class(), (objc_opt_isKindOfClass()) || (objc_opt_class(), (objc_opt_isKindOfClass()) && (objc_opt_class(), (objc_opt_isKindOfClass()))
  {
    v14.receiver = self;
    v14.super_class = HMDTimePeriodNotificationCondition;
    v9 = [(HMDTimePeriodNotificationCondition *)&v14 init];
    v10 = v9;
    if (v9)
    {
      objc_storeStrong(&v9->_startElement, a3);
      objc_storeStrong(&v10->_endElement, a4);
    }

    return v10;
  }

  else
  {
    v12 = _HMFPreconditionFailure();
    return +[(HMDTimePeriodNotificationCondition *)v12];
  }
}

@end