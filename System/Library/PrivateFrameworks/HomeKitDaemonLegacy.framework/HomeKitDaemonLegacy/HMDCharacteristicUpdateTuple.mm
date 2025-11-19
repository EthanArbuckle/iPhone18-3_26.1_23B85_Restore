@interface HMDCharacteristicUpdateTuple
- (BOOL)isEqual:(id)a3;
- (HMDCharacteristicUpdateTuple)initWithCharacteristic:(id)a3 updatedValue:(id)a4 isBroadcast:(BOOL)a5;
- (id)attributeDescriptions;
- (id)updatedValue;
- (unint64_t)hash;
@end

@implementation HMDCharacteristicUpdateTuple

- (id)attributeDescriptions
{
  v15[3] = *MEMORY[0x277D85DE8];
  v3 = objc_alloc(MEMORY[0x277D0F778]);
  v4 = [(HMDCharacteristicUpdateTuple *)self characteristic];
  v5 = [v3 initWithName:@"characteristic" value:v4];
  v6 = objc_alloc(MEMORY[0x277D0F778]);
  v7 = [(HMDCharacteristicUpdateTuple *)self value];
  v8 = [v6 initWithName:@"value" value:v7];
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
  v2 = [(HMDCharacteristicUpdateTuple *)self characteristic];
  v3 = [v2 hash];

  return v3;
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
    v7 = [(HMDCharacteristicUpdateTuple *)self characteristic];
    v8 = [v6 characteristic];
    if ([v7 isEqual:v8])
    {
      v9 = [(HMDCharacteristicUpdateTuple *)self value];
      v10 = [v6 value];
      if ([v9 isEqual:v10])
      {
        v11 = [(HMDCharacteristicUpdateTuple *)self isBroadcast];
        v12 = v11 ^ [v6 isBroadcast] ^ 1;
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
  v3 = [(HMDCharacteristicUpdateTuple *)self characteristicResponse];
  v4 = [v3 request];
  v5 = [v4 isMemberOfClass:objc_opt_class()];

  if (v5)
  {
    v6 = [(HMDCharacteristicUpdateTuple *)self characteristic];
    v7 = [v6 lastKnownValue];

    v8 = [(HMDCharacteristicUpdateTuple *)self characteristic];
    v9 = [v8 lastKnownValueUpdateTime];
    v10 = [(HMDCharacteristicUpdateTuple *)self characteristicResponse];
    v11 = [v10 valueUpdatedTime];
    if ([v9 compare:v11] == 1)
    {
      v12 = [(HMDCharacteristicUpdateTuple *)self value];
      v13 = [v7 isEqual:v12];

      if ((v13 & 1) == 0)
      {
        v14 = objc_autoreleasePoolPush();
        v15 = self;
        v16 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
        {
          v17 = HMFGetLogIdentifier();
          v21 = 138543874;
          v22 = v17;
          v23 = 2112;
          v24 = v15;
          v25 = 2112;
          v26 = v7;
          _os_log_impl(&dword_2531F8000, v16, OS_LOG_TYPE_INFO, "%{public}@Updating tuple to last known characteristic value %@ -> %@", &v21, 0x20u);
        }

        objc_autoreleasePoolPop(v14);
        [(HMDCharacteristicUpdateTuple *)v15 setValue:v7];
      }
    }

    else
    {
    }
  }

  v18 = [(HMDCharacteristicUpdateTuple *)self value];
  v19 = *MEMORY[0x277D85DE8];

  return v18;
}

- (HMDCharacteristicUpdateTuple)initWithCharacteristic:(id)a3 updatedValue:(id)a4 isBroadcast:(BOOL)a5
{
  v9 = a3;
  v10 = a4;
  v14.receiver = self;
  v14.super_class = HMDCharacteristicUpdateTuple;
  v11 = [(HMDCharacteristicUpdateTuple *)&v14 init];
  v12 = v11;
  if (v11)
  {
    objc_storeStrong(&v11->_characteristic, a3);
    objc_storeStrong(&v12->_value, a4);
    v12->_broadcast = a5;
  }

  return v12;
}

@end