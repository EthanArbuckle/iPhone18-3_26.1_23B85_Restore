@interface HMDCharacteristicRequest
+ (id)logCategory;
+ (id)requestWithCharacteristic:(id)a3;
- (BOOL)isEqual:(id)a3;
- (HMDCharacteristicRequest)initWithCharacteristic:(id)a3;
- (HMDHAPAccessory)accessory;
- (HMDService)service;
- (id)attributeDescriptions;
- (unint64_t)hash;
@end

@implementation HMDCharacteristicRequest

- (unint64_t)hash
{
  v2 = [(HMDCharacteristicRequest *)self characteristic];
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
    v7 = [(HMDCharacteristicRequest *)self characteristic];
    v8 = [v6 characteristic];
    v9 = [v7 isEqual:v8];
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (HMDHAPAccessory)accessory
{
  v2 = [(HMDCharacteristicRequest *)self characteristic];
  v3 = [v2 accessory];

  return v3;
}

- (HMDService)service
{
  v2 = [(HMDCharacteristicRequest *)self characteristic];
  v3 = [v2 service];

  return v3;
}

- (id)attributeDescriptions
{
  v40[5] = *MEMORY[0x277D85DE8];
  v3 = [(HMDCharacteristicRequest *)self characteristic];
  v4 = [v3 accessory];

  v5 = [(HMDCharacteristicRequest *)self characteristic];
  v6 = [v5 service];

  v7 = objc_alloc(MEMORY[0x277D0F778]);
  v8 = MEMORY[0x277CCACA8];
  v39 = v4;
  v38 = [v4 name];
  v37 = [v4 uniqueIdentifier];
  v36 = [v8 stringWithFormat:@"(%@/%@)", v38, v37];
  v35 = [v7 initWithName:@"Accessory" value:v36];
  v40[0] = v35;
  v9 = objc_alloc(MEMORY[0x277D0F778]);
  v10 = MEMORY[0x277CCACA8];
  v34 = v6;
  v33 = [v6 type];
  v32 = shortHAPTypeDescription(v33);
  v31 = [v6 instanceID];
  v30 = [v10 stringWithFormat:@"(%@/%@)", v32, v31];
  v29 = [v9 initWithName:@"Service" value:v30];
  v40[1] = v29;
  v11 = objc_alloc(MEMORY[0x277D0F778]);
  v12 = MEMORY[0x277CCACA8];
  v28 = [(HMDCharacteristicRequest *)self characteristic];
  v13 = [v28 type];
  v14 = shortHAPTypeDescription(v13);
  v15 = [(HMDCharacteristicRequest *)self characteristic];
  v16 = [v15 instanceID];
  v17 = [v12 stringWithFormat:@"(%@/%@)", v14, v16];
  v18 = [v11 initWithName:@"Characteristic" value:v17];
  v40[2] = v18;
  v19 = objc_alloc(MEMORY[0x277D0F778]);
  v20 = [(HMDCharacteristicRequest *)self previousValue];
  v21 = [v19 initWithName:@"Previous Value" value:v20];
  v40[3] = v21;
  v22 = objc_alloc(MEMORY[0x277D0F778]);
  v23 = [(HMDCharacteristicRequest *)self previousValue];
  v24 = [v22 initWithName:@"Type" value:objc_opt_class()];
  v40[4] = v24;
  v27 = [MEMORY[0x277CBEA60] arrayWithObjects:v40 count:5];

  v25 = *MEMORY[0x277D85DE8];

  return v27;
}

- (HMDCharacteristicRequest)initWithCharacteristic:(id)a3
{
  v5 = a3;
  v11.receiver = self;
  v11.super_class = HMDCharacteristicRequest;
  v6 = [(HMDCharacteristicRequest *)&v11 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_characteristic, a3);
    v8 = [v5 value];
    previousValue = v7->_previousValue;
    v7->_previousValue = v8;
  }

  return v7;
}

+ (id)logCategory
{
  if (logCategory__hmf_once_t1_281683 != -1)
  {
    dispatch_once(&logCategory__hmf_once_t1_281683, &__block_literal_global_281684);
  }

  v3 = logCategory__hmf_once_v2_281685;

  return v3;
}

void __39__HMDCharacteristicRequest_logCategory__block_invoke()
{
  v0 = *MEMORY[0x277D0F1A8];
  v1 = HMFCreateOSLogHandle();
  v2 = logCategory__hmf_once_v2_281685;
  logCategory__hmf_once_v2_281685 = v1;
}

+ (id)requestWithCharacteristic:(id)a3
{
  v4 = a3;
  v5 = [[a1 alloc] initWithCharacteristic:v4];

  return v5;
}

@end