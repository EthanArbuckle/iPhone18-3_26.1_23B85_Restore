@interface HMDCharacteristicUpdateTuple
- (BOOL)isEqual:(id)equal;
- (HMDCharacteristicUpdateTuple)initWithCharacteristic:(id)characteristic updatedValue:(id)value isBroadcast:(BOOL)broadcast reasons:(unint64_t)reasons;
- (id)attributeDescriptions;
- (id)updatedValue;
- (unint64_t)hash;
@end

@implementation HMDCharacteristicUpdateTuple

- (id)attributeDescriptions
{
  v18[4] = *MEMORY[0x277D85DE8];
  v3 = objc_alloc(MEMORY[0x277D0F778]);
  characteristic = [(HMDCharacteristicUpdateTuple *)self characteristic];
  v5 = [v3 initWithName:@"characteristic" value:characteristic];
  v18[0] = v5;
  v6 = objc_alloc(MEMORY[0x277D0F778]);
  value = [(HMDCharacteristicUpdateTuple *)self value];
  v8 = [v6 initWithName:@"value" value:value];
  v18[1] = v8;
  v9 = objc_alloc(MEMORY[0x277D0F778]);
  [(HMDCharacteristicUpdateTuple *)self isBroadcast];
  v10 = HMFBooleanToString();
  v11 = [v9 initWithName:@"isBroadcast" value:v10];
  v18[2] = v11;
  v12 = objc_alloc(MEMORY[0x277D0F778]);
  v13 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{-[HMDCharacteristicUpdateTuple reasons](self, "reasons")}];
  v14 = [v12 initWithName:@"reasons" value:v13];
  v18[3] = v14;
  v15 = [MEMORY[0x277CBEA60] arrayWithObjects:v18 count:4];

  v16 = *MEMORY[0x277D85DE8];

  return v15;
}

- (unint64_t)hash
{
  characteristic = [(HMDCharacteristicUpdateTuple *)self characteristic];
  v3 = [characteristic hash];

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
  if (v6 && (v7 = -[HMDCharacteristicUpdateTuple reasons](self, "reasons"), v7 == [v6 reasons]))
  {
    characteristic = [(HMDCharacteristicUpdateTuple *)self characteristic];
    characteristic2 = [v6 characteristic];
    if ([characteristic isEqual:characteristic2])
    {
      value = [(HMDCharacteristicUpdateTuple *)self value];
      value2 = [v6 value];
      if ([value isEqual:value2])
      {
        isBroadcast = [(HMDCharacteristicUpdateTuple *)self isBroadcast];
        v13 = isBroadcast ^ [v6 isBroadcast] ^ 1;
      }

      else
      {
        LOBYTE(v13) = 0;
      }
    }

    else
    {
      LOBYTE(v13) = 0;
    }
  }

  else
  {
    LOBYTE(v13) = 0;
  }

  return v13;
}

- (id)updatedValue
{
  v27 = *MEMORY[0x277D85DE8];
  characteristicResponse = [(HMDCharacteristicUpdateTuple *)self characteristicResponse];
  request = [characteristicResponse request];
  v5 = [request isMemberOfClass:objc_opt_class()];

  if (v5)
  {
    characteristic = [(HMDCharacteristicUpdateTuple *)self characteristic];
    lastKnownValue = [characteristic lastKnownValue];

    characteristic2 = [(HMDCharacteristicUpdateTuple *)self characteristic];
    lastKnownValueUpdateTime = [characteristic2 lastKnownValueUpdateTime];
    characteristicResponse2 = [(HMDCharacteristicUpdateTuple *)self characteristicResponse];
    valueUpdatedTime = [characteristicResponse2 valueUpdatedTime];
    if ([lastKnownValueUpdateTime compare:valueUpdatedTime] == 1)
    {
      value = [(HMDCharacteristicUpdateTuple *)self value];
      v13 = [lastKnownValue isEqual:value];

      if ((v13 & 1) == 0)
      {
        v14 = objc_autoreleasePoolPush();
        selfCopy = self;
        v16 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
        {
          v17 = HMFGetLogIdentifier();
          v21 = 138543874;
          v22 = v17;
          v23 = 2112;
          v24 = selfCopy;
          v25 = 2112;
          v26 = lastKnownValue;
          _os_log_impl(&dword_229538000, v16, OS_LOG_TYPE_INFO, "%{public}@Updating tuple to last known characteristic value %@ -> %@", &v21, 0x20u);
        }

        objc_autoreleasePoolPop(v14);
        [(HMDCharacteristicUpdateTuple *)selfCopy setValue:lastKnownValue];
      }
    }

    else
    {
    }
  }

  value2 = [(HMDCharacteristicUpdateTuple *)self value];
  v19 = *MEMORY[0x277D85DE8];

  return value2;
}

- (HMDCharacteristicUpdateTuple)initWithCharacteristic:(id)characteristic updatedValue:(id)value isBroadcast:(BOOL)broadcast reasons:(unint64_t)reasons
{
  characteristicCopy = characteristic;
  valueCopy = value;
  v16.receiver = self;
  v16.super_class = HMDCharacteristicUpdateTuple;
  v13 = [(HMDCharacteristicUpdateTuple *)&v16 init];
  v14 = v13;
  if (v13)
  {
    objc_storeStrong(&v13->_characteristic, characteristic);
    objc_storeStrong(&v14->_value, value);
    v14->_broadcast = broadcast;
    v14->_reasons = reasons;
  }

  return v14;
}

@end