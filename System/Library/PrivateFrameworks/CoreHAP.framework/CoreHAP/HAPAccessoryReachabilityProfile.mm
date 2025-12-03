@interface HAPAccessoryReachabilityProfile
+ (id)shortDescription;
- (HAPAccessoryReachabilityProfile)init;
- (HAPAccessoryReachabilityProfile)initWithDiscoveredServices:(id)services;
- (HAPAccessoryReachabilityProfile)initWithProfile:(id)profile;
- (NSString)description;
- (id)attributeDescriptions;
- (id)copyWithZone:(_NSZone *)zone;
@end

@implementation HAPAccessoryReachabilityProfile

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [HAPAccessoryReachabilityProfile allocWithZone:zone];

  return [(HAPAccessoryReachabilityProfile *)v4 initWithProfile:self];
}

- (id)attributeDescriptions
{
  v16[3] = *MEMORY[0x277D85DE8];
  v3 = objc_alloc(MEMORY[0x277D0F778]);
  v4 = MEMORY[0x277CCABB0];
  [(HAPAccessoryReachabilityProfile *)self sleepInterval];
  v5 = [v4 numberWithDouble:?];
  v6 = [v3 initWithName:@"Sleep Interval" value:v5];
  v7 = objc_alloc(MEMORY[0x277D0F778]);
  sleepIntervalCharacteristic = [(HAPAccessoryReachabilityProfile *)self sleepIntervalCharacteristic];
  v9 = [v7 initWithName:@"Sleep Interval Characteristic" value:sleepIntervalCharacteristic];
  v16[1] = v9;
  v10 = objc_alloc(MEMORY[0x277D0F778]);
  pollCharacteristic = [(HAPAccessoryReachabilityProfile *)self pollCharacteristic];
  v12 = [v10 initWithName:@"Poll Characteristic" value:pollCharacteristic];
  v16[2] = v12;
  v13 = [MEMORY[0x277CBEA60] arrayWithObjects:v16 count:3];

  v14 = *MEMORY[0x277D85DE8];

  return v13;
}

- (NSString)description
{
  v10.receiver = self;
  v10.super_class = HAPAccessoryReachabilityProfile;
  v3 = [(HMFObject *)&v10 description];
  v4 = MEMORY[0x277CCACA8];
  sleepInterval = self->_sleepInterval;
  instanceID = [(HAPCharacteristic *)self->_sleepIntervalCharacteristic instanceID];
  instanceID2 = [(HAPCharacteristic *)self->_pollCharacteristic instanceID];
  v8 = [v4 stringWithFormat:@"%@ sleepInterval=%f sleepIntervalChar=%@ pollChar=%@", v3, *&sleepInterval, instanceID, instanceID2];

  return v8;
}

- (HAPAccessoryReachabilityProfile)initWithDiscoveredServices:(id)services
{
  v44 = *MEMORY[0x277D85DE8];
  servicesCopy = services;
  v5 = [(HAPAccessoryReachabilityProfile *)self init];
  if (v5)
  {
    v40 = 0u;
    v41 = 0u;
    v38 = 0u;
    v39 = 0u;
    v6 = servicesCopy;
    v7 = [v6 countByEnumeratingWithState:&v38 objects:v43 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = *v39;
LABEL_4:
      v10 = 0;
      while (1)
      {
        if (*v39 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v38 + 1) + 8 * v10);
        type = [v11 type];
        v13 = [type isEqualToString:@"00000239-0000-1000-8000-0026BB765291"];

        if (v13)
        {
          break;
        }

        if (v8 == ++v10)
        {
          v8 = [v6 countByEnumeratingWithState:&v38 objects:v43 count:16];
          if (v8)
          {
            goto LABEL_4;
          }

          goto LABEL_10;
        }
      }

      v14 = v11;

      if (!v14)
      {
        goto LABEL_29;
      }

      v32 = v14;
      v33 = servicesCopy;
      v36 = 0u;
      v37 = 0u;
      v34 = 0u;
      v35 = 0u;
      characteristics = [v14 characteristics];
      v16 = [characteristics countByEnumeratingWithState:&v34 objects:v42 count:16];
      if (v16)
      {
        v17 = v16;
        v18 = *v35;
        do
        {
          for (i = 0; i != v17; ++i)
          {
            if (*v35 != v18)
            {
              objc_enumerationMutation(characteristics);
            }

            v20 = *(*(&v34 + 1) + 8 * i);
            type2 = [v20 type];
            v22 = [type2 isEqualToString:@"0000023A-0000-1000-8000-0026BB765291"];

            if (v22)
            {
              value = [v20 value];

              if (value)
              {
                value2 = [v20 value];
                objc_opt_class();
                if (objc_opt_isKindOfClass())
                {
                  value3 = [v20 value];
                }

                else
                {
                  value3 = 0;
                }

                [objc_opt_class() timeIntervalFromMillisecondNumberValue:value3];
                [(HAPAccessoryReachabilityProfile *)v5 setSleepInterval:?];
              }

              [(HAPAccessoryReachabilityProfile *)v5 setSleepIntervalCharacteristic:v20];
            }

            else
            {
              type3 = [v20 type];
              v27 = [type3 isEqualToString:@"0000023C-0000-1000-8000-0026BB765291"];

              if (v27)
              {
                [(HAPAccessoryReachabilityProfile *)v5 setPollCharacteristic:v20];
              }
            }
          }

          v17 = [characteristics countByEnumeratingWithState:&v34 objects:v42 count:16];
        }

        while (v17);
      }

      v28 = v5;
      servicesCopy = v33;
    }

    else
    {
LABEL_10:

LABEL_29:
      v29 = v5;
    }
  }

  v30 = *MEMORY[0x277D85DE8];
  return v5;
}

- (HAPAccessoryReachabilityProfile)initWithProfile:(id)profile
{
  profileCopy = profile;
  v5 = [(HAPAccessoryReachabilityProfile *)self init];
  if (v5)
  {
    [profileCopy sleepInterval];
    v5->_sleepInterval = v6;
    pollCharacteristic = [profileCopy pollCharacteristic];
    pollCharacteristic = v5->_pollCharacteristic;
    v5->_pollCharacteristic = pollCharacteristic;

    sleepIntervalCharacteristic = [profileCopy sleepIntervalCharacteristic];
    sleepIntervalCharacteristic = v5->_sleepIntervalCharacteristic;
    v5->_sleepIntervalCharacteristic = sleepIntervalCharacteristic;

    v11 = v5;
  }

  return v5;
}

- (HAPAccessoryReachabilityProfile)init
{
  v6.receiver = self;
  v6.super_class = HAPAccessoryReachabilityProfile;
  v2 = [(HAPAccessoryReachabilityProfile *)&v6 init];
  v3 = v2;
  if (v2)
  {
    v4 = v2;
  }

  return v3;
}

+ (id)shortDescription
{
  v2 = objc_opt_class();

  return NSStringFromClass(v2);
}

@end