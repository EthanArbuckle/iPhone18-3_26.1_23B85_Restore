@interface HMDCharacteristicRequest
+ (id)logCategory;
+ (id)requestWithCharacteristic:(id)characteristic;
- (BOOL)isEqual:(id)equal;
- (HMDCharacteristicRequest)initWithCharacteristic:(id)characteristic;
- (HMDHAPAccessory)accessory;
- (HMDService)service;
- (id)attributeDescriptions;
- (unint64_t)hash;
@end

@implementation HMDCharacteristicRequest

- (unint64_t)hash
{
  characteristic = [(HMDCharacteristicRequest *)self characteristic];
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
    characteristic = [(HMDCharacteristicRequest *)self characteristic];
    characteristic2 = [v6 characteristic];
    v9 = [characteristic isEqual:characteristic2];
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (HMDHAPAccessory)accessory
{
  characteristic = [(HMDCharacteristicRequest *)self characteristic];
  accessory = [characteristic accessory];

  return accessory;
}

- (HMDService)service
{
  characteristic = [(HMDCharacteristicRequest *)self characteristic];
  service = [characteristic service];

  return service;
}

- (id)attributeDescriptions
{
  v40[5] = *MEMORY[0x277D85DE8];
  characteristic = [(HMDCharacteristicRequest *)self characteristic];
  accessory = [characteristic accessory];

  characteristic2 = [(HMDCharacteristicRequest *)self characteristic];
  service = [characteristic2 service];

  v7 = objc_alloc(MEMORY[0x277D0F778]);
  v8 = MEMORY[0x277CCACA8];
  v39 = accessory;
  name = [accessory name];
  uniqueIdentifier = [accessory uniqueIdentifier];
  v36 = [v8 stringWithFormat:@"(%@/%@)", name, uniqueIdentifier];
  v35 = [v7 initWithName:@"Accessory" value:v36];
  v40[0] = v35;
  v9 = objc_alloc(MEMORY[0x277D0F778]);
  v10 = MEMORY[0x277CCACA8];
  v34 = service;
  type = [service type];
  v32 = shortHAPTypeDescription(type);
  instanceID = [service instanceID];
  v30 = [v10 stringWithFormat:@"(%@/%@)", v32, instanceID];
  v29 = [v9 initWithName:@"Service" value:v30];
  v40[1] = v29;
  v11 = objc_alloc(MEMORY[0x277D0F778]);
  v12 = MEMORY[0x277CCACA8];
  characteristic3 = [(HMDCharacteristicRequest *)self characteristic];
  type2 = [characteristic3 type];
  v14 = shortHAPTypeDescription(type2);
  characteristic4 = [(HMDCharacteristicRequest *)self characteristic];
  instanceID2 = [characteristic4 instanceID];
  v17 = [v12 stringWithFormat:@"(%@/%@)", v14, instanceID2];
  v18 = [v11 initWithName:@"Characteristic" value:v17];
  v40[2] = v18;
  v19 = objc_alloc(MEMORY[0x277D0F778]);
  previousValue = [(HMDCharacteristicRequest *)self previousValue];
  v21 = [v19 initWithName:@"Previous Value" value:previousValue];
  v40[3] = v21;
  v22 = objc_alloc(MEMORY[0x277D0F778]);
  previousValue2 = [(HMDCharacteristicRequest *)self previousValue];
  v24 = [v22 initWithName:@"Type" value:objc_opt_class()];
  v40[4] = v24;
  v27 = [MEMORY[0x277CBEA60] arrayWithObjects:v40 count:5];

  v25 = *MEMORY[0x277D85DE8];

  return v27;
}

- (HMDCharacteristicRequest)initWithCharacteristic:(id)characteristic
{
  characteristicCopy = characteristic;
  v11.receiver = self;
  v11.super_class = HMDCharacteristicRequest;
  v6 = [(HMDCharacteristicRequest *)&v11 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_characteristic, characteristic);
    value = [characteristicCopy value];
    previousValue = v7->_previousValue;
    v7->_previousValue = value;
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

+ (id)requestWithCharacteristic:(id)characteristic
{
  characteristicCopy = characteristic;
  v5 = [[self alloc] initWithCharacteristic:characteristicCopy];

  return v5;
}

@end