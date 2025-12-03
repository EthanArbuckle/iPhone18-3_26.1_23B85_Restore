@interface HMDSunriseSunsetTimePeriodElement
- (BOOL)isEqual:(id)equal;
- (HMDSunriseSunsetTimePeriodElement)initWithCoder:(id)coder;
- (HMDSunriseSunsetTimePeriodElement)initWithDictionary:(id)dictionary;
- (HMDSunriseSunsetTimePeriodElement)initWithSignificantEvent:(id)event offset:(id)offset;
- (id)attributeDescriptions;
- (id)serializedRegistrationForRemoteMessage;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation HMDSunriseSunsetTimePeriodElement

- (id)attributeDescriptions
{
  v12[2] = *MEMORY[0x277D85DE8];
  v3 = objc_alloc(MEMORY[0x277D0F778]);
  significantEvent = [(HMDSunriseSunsetTimePeriodElement *)self significantEvent];
  v5 = [v3 initWithName:@"Significant Event" value:significantEvent];
  v12[0] = v5;
  v6 = objc_alloc(MEMORY[0x277D0F778]);
  offset = [(HMDSunriseSunsetTimePeriodElement *)self offset];
  v8 = [v6 initWithName:@"Offset" value:offset];
  v12[1] = v8;
  v9 = [MEMORY[0x277CBEA60] arrayWithObjects:v12 count:2];

  v10 = *MEMORY[0x277D85DE8];

  return v9;
}

- (HMDSunriseSunsetTimePeriodElement)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"HMDSSTPE.ck.se"];
  v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"HMDSSTPE.ck.o"];

  v7 = [(HMDSunriseSunsetTimePeriodElement *)self initWithSignificantEvent:v5 offset:v6];
  return v7;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  significantEvent = [(HMDSunriseSunsetTimePeriodElement *)self significantEvent];
  [coderCopy encodeObject:significantEvent forKey:@"HMDSSTPE.ck.se"];

  offset = [(HMDSunriseSunsetTimePeriodElement *)self offset];
  [coderCopy encodeObject:offset forKey:@"HMDSSTPE.ck.o"];
}

- (unint64_t)hash
{
  significantEvent = [(HMDSunriseSunsetTimePeriodElement *)self significantEvent];
  v3 = [significantEvent hash];

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
    significantEvent = [(HMDSunriseSunsetTimePeriodElement *)self significantEvent];
    significantEvent2 = [v6 significantEvent];
    if ([significantEvent isEqualToString:significantEvent2])
    {
      offset = [(HMDSunriseSunsetTimePeriodElement *)self offset];
      offset2 = [v6 offset];
      v11 = [offset isEqual:offset2];
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
  v9.receiver = self;
  v9.super_class = HMDSunriseSunsetTimePeriodElement;
  serializedRegistrationForRemoteMessage = [(HMDTimePeriodElement *)&v9 serializedRegistrationForRemoteMessage];
  v4 = [serializedRegistrationForRemoteMessage mutableCopy];

  significantEvent = [(HMDSunriseSunsetTimePeriodElement *)self significantEvent];
  [v4 setObject:significantEvent forKeyedSubscript:@"HMDSSTPE.ck.se"];

  offset = [(HMDSunriseSunsetTimePeriodElement *)self offset];
  v7 = encodeRootObject();
  [v4 setObject:v7 forKeyedSubscript:@"HMDSSTPE.ck.o"];

  return v4;
}

- (HMDSunriseSunsetTimePeriodElement)initWithDictionary:(id)dictionary
{
  v13[1] = *MEMORY[0x277D85DE8];
  dictionaryCopy = dictionary;
  v5 = objc_opt_class();
  type = [objc_opt_class() type];
  LODWORD(v5) = [v5 doesTypeMatch:dictionaryCopy against:type];

  if (v5)
  {
    v7 = [dictionaryCopy objectForKeyedSubscript:@"HMDSSTPE.ck.se"];
    v13[0] = objc_opt_class();
    v8 = [MEMORY[0x277CBEA60] arrayWithObjects:v13 count:1];
    v9 = [dictionaryCopy hmf_unarchivedObjectForKey:@"HMDSSTPE.ck.o" ofClasses:v8];

    self = [(HMDSunriseSunsetTimePeriodElement *)self initWithSignificantEvent:v7 offset:v9];
    selfCopy = self;
  }

  else
  {
    selfCopy = 0;
  }

  v11 = *MEMORY[0x277D85DE8];
  return selfCopy;
}

- (HMDSunriseSunsetTimePeriodElement)initWithSignificantEvent:(id)event offset:(id)offset
{
  eventCopy = event;
  offsetCopy = offset;
  v12.receiver = self;
  v12.super_class = HMDSunriseSunsetTimePeriodElement;
  v9 = [(HMDSunriseSunsetTimePeriodElement *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_significantEvent, event);
    objc_storeStrong(&v10->_offset, offset);
  }

  return v10;
}

@end