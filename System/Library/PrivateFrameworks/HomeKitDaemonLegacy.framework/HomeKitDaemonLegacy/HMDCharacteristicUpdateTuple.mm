@interface HMDCharacteristicUpdateTuple
- (BOOL)isEqual:(id)equal;
- (HMDCharacteristicUpdateTuple)initWithCharacteristic:(id)characteristic updatedValue:(id)value isBroadcast:(BOOL)broadcast;
- (id)attributeDescriptions;
- (id)updatedValue;
- (unint64_t)hash;
@end

@implementation HMDCharacteristicUpdateTuple

- (id)attributeDescriptions
{
  v15[3] = *MEMORY[0x277D85DE8];
  v3 = objc_alloc(MEMORY[0x277D0F778]);
  characteristic = [(HMDCharacteristicUpdateTuple *)self characteristic];
  v5 = [v3 initWithName:@"characteristic" value:characteristic];
  v6 = objc_alloc(MEMORY[0x277D0F778]);
  value = [(HMDCharacteristicUpdateTuple *)self value];
  v8 = [v6 initWithName:@"value" value:value];
  v15[1] = v8;
  v9 = objc_alloc(MEMORY[0x277D0F778]);
  [(HMDCharacteristicUpdateTuple *)self isBroadcast];
  v10 = HMFBooleanToString();
  v11 = [v9 initWithName:@"isBroadcast" value:v10];
  v15[2] = v11;
  v12 = [MEMORY[0x277CBEA60] arrayWithObjects:v15 count:3];

  v13 = *MEMORY[0x277D85DE8];

  return v12;
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
  if (v6)
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
        v12 = isBroadcast ^ [v6 isBroadcast] ^ 1;
      }

      else
      {
        LOBYTE(v12) = 0;
      }
    }

    else
    {
      LOBYTE(v12) = 0;
    }
  }

  else
  {
    LOBYTE(v12) = 0;
  }

  return v12;
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
          _os_log_impl(&dword_2531F8000, v16, OS_LOG_TYPE_INFO, "%{public}@Updating tuple to last known characteristic value %@ -> %@", &v21, 0x20u);
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

- (HMDCharacteristicUpdateTuple)initWithCharacteristic:(id)characteristic updatedValue:(id)value isBroadcast:(BOOL)broadcast
{
  characteristicCopy = characteristic;
  valueCopy = value;
  v14.receiver = self;
  v14.super_class = HMDCharacteristicUpdateTuple;
  v11 = [(HMDCharacteristicUpdateTuple *)&v14 init];
  v12 = v11;
  if (v11)
  {
    objc_storeStrong(&v11->_characteristic, characteristic);
    objc_storeStrong(&v12->_value, value);
    v12->_broadcast = broadcast;
  }

  return v12;
}

@end