@interface HMDCharacteristicWriteActionModel
+ (id)properties;
- (id)dependentUUIDs;
- (void)loadModelWithActionInformation:(id)a3;
@end

@implementation HMDCharacteristicWriteActionModel

- (id)dependentUUIDs
{
  v15.receiver = self;
  v15.super_class = HMDCharacteristicWriteActionModel;
  v3 = [(HMDBackingStoreModelObject *)&v15 dependentUUIDs];
  v4 = [v3 mutableCopy];

  v5 = [(HMDBackingStoreModelObject *)self parentUUID];

  if (v5)
  {
    v6 = [(HMDBackingStoreModelObject *)self parentUUID];
    [v4 addObject:v6];
  }

  v7 = [(HMDCharacteristicWriteActionModel *)self accessory];

  if (v7)
  {
    v8 = objc_alloc(MEMORY[0x277CCAD78]);
    v9 = [(HMDCharacteristicWriteActionModel *)self accessory];
    v10 = [v8 initWithUUIDString:v9];

    [v4 addObject:v10];
    v11 = [(HMDCharacteristicWriteActionModel *)self serviceID];

    if (v11)
    {
      v12 = [(HMDCharacteristicWriteActionModel *)self serviceID];
      v13 = [HMDService generateUUIDWithAccessoryUUID:v10 serviceID:v12];

      [v4 addObject:v13];
    }
  }

  return v4;
}

- (void)loadModelWithActionInformation:(id)a3
{
  v11.receiver = self;
  v11.super_class = HMDCharacteristicWriteActionModel;
  v4 = a3;
  [(HMDActionModel *)&v11 loadModelWithActionInformation:v4];
  v5 = [v4 hmf_stringForKey:{*MEMORY[0x277CCF0B0], v11.receiver, v11.super_class}];
  [(HMDCharacteristicWriteActionModel *)self setAccessory:v5];

  v6 = [v4 hmf_numberForKey:*MEMORY[0x277CD25F8]];
  v7 = HAPInstanceIDFromValue();
  [(HMDCharacteristicWriteActionModel *)self setServiceID:v7];

  v8 = [v4 hmf_numberForKey:*MEMORY[0x277CD2140]];
  v9 = HAPInstanceIDFromValue();
  [(HMDCharacteristicWriteActionModel *)self setCharacteristicID:v9];

  v10 = [v4 objectForKeyedSubscript:*MEMORY[0x277CD21B8]];

  [(HMDCharacteristicWriteActionModel *)self setTargetValue:v10];
}

+ (id)properties
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __47__HMDCharacteristicWriteActionModel_properties__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = a1;
  if (properties_onceToken_122091 != -1)
  {
    dispatch_once(&properties_onceToken_122091, block);
  }

  v2 = properties__properties_122092;

  return v2;
}

void __47__HMDCharacteristicWriteActionModel_properties__block_invoke(uint64_t a1)
{
  v13[4] = *MEMORY[0x277D85DE8];
  v11.receiver = *(a1 + 32);
  v11.super_class = &OBJC_METACLASS___HMDCharacteristicWriteActionModel;
  v1 = objc_msgSendSuper2(&v11, sel_properties);
  v2 = [v1 mutableCopy];
  v3 = properties__properties_122092;
  properties__properties_122092 = v2;

  v4 = properties__properties_122092;
  v12[0] = @"accessory";
  v5 = [HMDBackingStoreModelObjectStorageInfo infoWithClass:objc_opt_class()];
  v13[0] = v5;
  v12[1] = @"serviceID";
  v6 = [HMDBackingStoreModelObjectStorageInfo infoWithClass:objc_opt_class()];
  v13[1] = v6;
  v12[2] = @"characteristicID";
  v7 = [HMDBackingStoreModelObjectStorageInfo infoWithClass:objc_opt_class()];
  v13[2] = v7;
  v12[3] = @"targetValue";
  v8 = [HMDBackingStoreModelObjectStorageInfo infoWithClass:objc_opt_class()];
  v13[3] = v8;
  v9 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v13 forKeys:v12 count:4];
  [v4 addEntriesFromDictionary:v9];

  v10 = *MEMORY[0x277D85DE8];
}

@end