@interface HMDTimePeriodNotificationCondition
- (BOOL)isEqual:(id)equal;
- (HMDTimePeriodNotificationCondition)initWithCoder:(id)coder;
- (HMDTimePeriodNotificationCondition)initWithDictionary:(id)dictionary;
- (HMDTimePeriodNotificationCondition)initWithStartElement:(id)element endElement:(id)endElement;
- (id)attributeDescriptions;
- (id)serializedRegistrationForRemoteMessage;
- (id)timePeriodElementFromDictionary:(id)dictionary;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation HMDTimePeriodNotificationCondition

- (id)attributeDescriptions
{
  v12[2] = *MEMORY[0x277D85DE8];
  v3 = objc_alloc(MEMORY[0x277D0F778]);
  startElement = [(HMDTimePeriodNotificationCondition *)self startElement];
  v5 = [v3 initWithName:@"Start" value:startElement];
  v12[0] = v5;
  v6 = objc_alloc(MEMORY[0x277D0F778]);
  endElement = [(HMDTimePeriodNotificationCondition *)self endElement];
  v8 = [v6 initWithName:@"End" value:endElement];
  v12[1] = v8;
  v9 = [MEMORY[0x277CBEA60] arrayWithObjects:v12 count:2];

  v10 = *MEMORY[0x277D85DE8];

  return v9;
}

- (HMDTimePeriodNotificationCondition)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"HMDTPSC.ck.se"];
  v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"HMDTPSC.ck.ee"];

  v7 = [(HMDTimePeriodNotificationCondition *)self initWithStartElement:v5 endElement:v6];
  return v7;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  startElement = [(HMDTimePeriodNotificationCondition *)self startElement];
  [coderCopy encodeObject:startElement forKey:@"HMDTPSC.ck.se"];

  endElement = [(HMDTimePeriodNotificationCondition *)self endElement];
  [coderCopy encodeObject:endElement forKey:@"HMDTPSC.ck.ee"];
}

- (unint64_t)hash
{
  startElement = [(HMDTimePeriodNotificationCondition *)self startElement];
  v4 = [startElement hash];
  endElement = [(HMDTimePeriodNotificationCondition *)self endElement];
  v6 = [endElement hash];

  return v6 ^ v4;
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
    startElement = [(HMDTimePeriodNotificationCondition *)self startElement];
    startElement2 = [v6 startElement];
    if ([startElement isEqual:startElement2])
    {
      endElement = [(HMDTimePeriodNotificationCondition *)self endElement];
      endElement2 = [v6 endElement];
      v11 = [endElement isEqual:endElement2];
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
  serializedRegistrationForRemoteMessage = [(HMDNotificationCondition *)&v10 serializedRegistrationForRemoteMessage];
  v4 = [serializedRegistrationForRemoteMessage mutableCopy];

  startElement = [(HMDTimePeriodNotificationCondition *)self startElement];
  serializedRegistrationForRemoteMessage2 = [startElement serializedRegistrationForRemoteMessage];
  [v4 setObject:serializedRegistrationForRemoteMessage2 forKeyedSubscript:@"HMDTPSC.ck.se"];

  endElement = [(HMDTimePeriodNotificationCondition *)self endElement];
  serializedRegistrationForRemoteMessage3 = [endElement serializedRegistrationForRemoteMessage];
  [v4 setObject:serializedRegistrationForRemoteMessage3 forKeyedSubscript:@"HMDTPSC.ck.ee"];

  return v4;
}

- (id)timePeriodElementFromDictionary:(id)dictionary
{
  v21 = *MEMORY[0x277D85DE8];
  dictionaryCopy = dictionary;
  v5 = objc_opt_class();
  type = [objc_opt_class() type];
  LODWORD(v5) = [v5 doesTypeMatch:dictionaryCopy against:type];

  if (v5)
  {
    v7 = HMDTimeOfDayTimePeriodElement;
LABEL_5:
    v10 = [[v7 alloc] initWithDictionary:dictionaryCopy];
    goto LABEL_9;
  }

  v8 = objc_opt_class();
  type2 = [objc_opt_class() type];
  LODWORD(v8) = [v8 doesTypeMatch:dictionaryCopy against:type2];

  if (v8)
  {
    v7 = HMDSunriseSunsetTimePeriodElement;
    goto LABEL_5;
  }

  v11 = objc_autoreleasePoolPush();
  selfCopy = self;
  v13 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
  {
    v14 = HMFGetLogIdentifier();
    v17 = 138543618;
    v18 = v14;
    v19 = 2112;
    v20 = dictionaryCopy;
    _os_log_impl(&dword_229538000, v13, OS_LOG_TYPE_INFO, "%{public}@Unknown time period element found : %@", &v17, 0x16u);
  }

  objc_autoreleasePoolPop(v11);
  v10 = 0;
LABEL_9:

  v15 = *MEMORY[0x277D85DE8];

  return v10;
}

- (HMDTimePeriodNotificationCondition)initWithDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v5 = objc_opt_class();
  type = [objc_opt_class() type];
  LODWORD(v5) = [v5 doesTypeMatch:dictionaryCopy against:type];

  if (!v5)
  {
    selfCopy = 0;
    goto LABEL_6;
  }

  v7 = [dictionaryCopy objectForKeyedSubscript:@"HMDTPSC.ck.se"];
  v8 = [(HMDTimePeriodNotificationCondition *)self timePeriodElementFromDictionary:v7];

  v9 = [dictionaryCopy objectForKeyedSubscript:@"HMDTPSC.ck.ee"];
  v10 = [(HMDTimePeriodNotificationCondition *)self timePeriodElementFromDictionary:v9];

  if (v8)
  {
    if (v10)
    {
      self = [(HMDTimePeriodNotificationCondition *)self initWithStartElement:v8 endElement:v10];

      selfCopy = self;
LABEL_6:

      return selfCopy;
    }
  }

  else
  {
    _HMFPreconditionFailure();
  }

  v13 = _HMFPreconditionFailure();
  return [(HMDTimePeriodNotificationCondition *)v13 initWithStartElement:v14 endElement:v15, v16];
}

- (HMDTimePeriodNotificationCondition)initWithStartElement:(id)element endElement:(id)endElement
{
  elementCopy = element;
  endElementCopy = endElement;
  objc_opt_class();
  if (objc_opt_isKindOfClass() & 1) != 0 && (objc_opt_class(), (objc_opt_isKindOfClass()) || (objc_opt_class(), (objc_opt_isKindOfClass()) && (objc_opt_class(), (objc_opt_isKindOfClass()))
  {
    v14.receiver = self;
    v14.super_class = HMDTimePeriodNotificationCondition;
    v9 = [(HMDTimePeriodNotificationCondition *)&v14 init];
    v10 = v9;
    if (v9)
    {
      objc_storeStrong(&v9->_startElement, element);
      objc_storeStrong(&v10->_endElement, endElement);
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