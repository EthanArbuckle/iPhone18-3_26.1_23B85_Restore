@interface HMDCharacteristicUpdateTuple
- (BOOL)isEqual:(id)a3;
- (HMDCharacteristicUpdateTuple)initWithCharacteristic:(id)a3 updatedValue:(id)a4 isBroadcast:(BOOL)a5 reasons:(unint64_t)a6;
- (id)attributeDescriptions;
- (id)updatedValue;
- (unint64_t)hash;
@end

@implementation HMDCharacteristicUpdateTuple

- (id)attributeDescriptions
{
  v18[4] = *MEMORY[0x277D85DE8];
  v3 = objc_alloc(MEMORY[0x277D0F778]);
  v4 = [(HMDCharacteristicUpdateTuple *)self characteristic];
  v5 = [v3 initWithName:@"characteristic" value:v4];
  v18[0] = v5;
  v6 = objc_alloc(MEMORY[0x277D0F778]);
  v7 = [(HMDCharacteristicUpdateTuple *)self value];
  v8 = [v6 initWithName:@"value" value:v7];
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
  if (v6 && (v7 = -[HMDCharacteristicUpdateTuple reasons](self, "reasons"), v7 == [v6 reasons]))
  {
    v8 = [(HMDCharacteristicUpdateTuple *)self characteristic];
    v9 = [v6 characteristic];
    if ([v8 isEqual:v9])
    {
      v10 = [(HMDCharacteristicUpdateTuple *)self value];
      v11 = [v6 value];
      if ([v10 isEqual:v11])
      {
        v12 = [(HMDCharacteristicUpdateTuple *)self isBroadcast];
        v13 = v12 ^ [v6 isBroadcast] ^ 1;
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
          _os_log_impl(&dword_229538000, v16, OS_LOG_TYPE_INFO, "%{public}@Updating tuple to last known characteristic value %@ -> %@", &v21, 0x20u);
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

- (HMDCharacteristicUpdateTuple)initWithCharacteristic:(id)a3 updatedValue:(id)a4 isBroadcast:(BOOL)a5 reasons:(unint64_t)a6
{
  v11 = a3;
  v12 = a4;
  v16.receiver = self;
  v16.super_class = HMDCharacteristicUpdateTuple;
  v13 = [(HMDCharacteristicUpdateTuple *)&v16 init];
  v14 = v13;
  if (v13)
  {
    objc_storeStrong(&v13->_characteristic, a3);
    objc_storeStrong(&v14->_value, a4);
    v14->_broadcast = a5;
    v14->_reasons = a6;
  }

  return v14;
}

@end