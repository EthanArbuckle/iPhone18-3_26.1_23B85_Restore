@interface HMDCharacteristicEventBaseModel
+ (id)properties;
- (id)dependentUUIDs;
@end

@implementation HMDCharacteristicEventBaseModel

+ (id)properties
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __45__HMDCharacteristicEventBaseModel_properties__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = self;
  if (properties_onceToken_129932 != -1)
  {
    dispatch_once(&properties_onceToken_129932, block);
  }

  v2 = properties__properties_129933;

  return v2;
}

void __45__HMDCharacteristicEventBaseModel_properties__block_invoke(uint64_t a1)
{
  v13[3] = *MEMORY[0x277D85DE8];
  v1 = MEMORY[0x277CBEB38];
  v11.receiver = *(a1 + 32);
  v11.super_class = &OBJC_METACLASS___HMDCharacteristicEventBaseModel;
  v2 = objc_msgSendSuper2(&v11, sel_properties);
  v3 = [v1 dictionaryWithDictionary:v2];
  v4 = properties__properties_129933;
  properties__properties_129933 = v3;

  v5 = properties__properties_129933;
  v12[0] = @"accessory";
  v6 = [HMDBackingStoreModelObjectStorageInfo infoWithClass:objc_opt_class()];
  v13[0] = v6;
  v12[1] = @"serviceID";
  v7 = [HMDBackingStoreModelObjectStorageInfo infoWithClass:objc_opt_class()];
  v13[1] = v7;
  v12[2] = @"characteristicID";
  v8 = [HMDBackingStoreModelObjectStorageInfo infoWithClass:objc_opt_class()];
  v13[2] = v8;
  v9 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v13 forKeys:v12 count:3];
  [v5 addEntriesFromDictionary:v9];

  v10 = *MEMORY[0x277D85DE8];
}

- (id)dependentUUIDs
{
  v3 = [MEMORY[0x277CBEB58] setWithCapacity:2];
  parentUUID = [(HMDBackingStoreModelObject *)self parentUUID];

  if (parentUUID)
  {
    parentUUID2 = [(HMDBackingStoreModelObject *)self parentUUID];
    [v3 addObject:parentUUID2];
  }

  serviceID = [(HMDCharacteristicEventBaseModel *)self serviceID];

  if (serviceID)
  {
    v7 = objc_alloc(MEMORY[0x277CCAD78]);
    accessory = [(HMDCharacteristicEventBaseModel *)self accessory];
    v9 = [v7 initWithUUIDString:accessory];
    serviceID2 = [(HMDCharacteristicEventBaseModel *)self serviceID];
    v11 = [HMDService generateUUIDWithAccessoryUUID:v9 serviceID:serviceID2];

    [v3 addObject:v11];
  }

  return v3;
}

@end