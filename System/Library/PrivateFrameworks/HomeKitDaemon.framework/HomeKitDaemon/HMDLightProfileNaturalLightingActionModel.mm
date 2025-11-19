@interface HMDLightProfileNaturalLightingActionModel
+ (id)properties;
- (BOOL)isNaturalLightingEnabled;
- (id)cd_generateValueForModelObjectFromManagedObject:(id)a3 modelObjectField:(id)a4 modelFieldInfo:(id)a5;
- (id)cd_generateValueForProperty:(id)a3 managedObjectField:(id)a4 context:(id)a5;
- (id)dependentUUIDs;
@end

@implementation HMDLightProfileNaturalLightingActionModel

+ (id)properties
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __55__HMDLightProfileNaturalLightingActionModel_properties__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = a1;
  if (properties_onceToken_112595 != -1)
  {
    dispatch_once(&properties_onceToken_112595, block);
  }

  v2 = properties_properties;

  return v2;
}

void __55__HMDLightProfileNaturalLightingActionModel_properties__block_invoke(uint64_t a1)
{
  v16[4] = *MEMORY[0x277D85DE8];
  v13.receiver = *(a1 + 32);
  v13.super_class = &OBJC_METACLASS___HMDLightProfileNaturalLightingActionModel;
  v1 = objc_msgSendSuper2(&v13, sel_properties);
  v2 = [v1 mutableCopy];

  v15[0] = @"naturalLightingEnabledField";
  v3 = [HMDBackingStoreModelObjectStorageInfo infoWithClass:objc_opt_class()];
  v16[0] = v3;
  v15[1] = @"lightProfileUUID";
  v4 = [HMDBackingStoreModelObjectStorageInfo infoWithClass:objc_opt_class()];
  v16[1] = v4;
  v15[2] = @"accessoryUUID";
  v5 = [HMDBackingStoreModelObjectStorageInfo infoWithClass:objc_opt_class()];
  v16[2] = v5;
  v15[3] = @"serviceUUIDs";
  v6 = objc_opt_class();
  v14 = objc_opt_class();
  v7 = [MEMORY[0x277CBEA60] arrayWithObjects:&v14 count:1];
  v8 = [HMDBackingStoreModelObjectStorageInfo infoWithClass:v6 additionalDecodeClasses:v7];
  v16[3] = v8;
  v9 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v16 forKeys:v15 count:4];
  [v2 addEntriesFromDictionary:v9];

  v10 = [v2 copy];
  v11 = properties_properties;
  properties_properties = v10;

  v12 = *MEMORY[0x277D85DE8];
}

- (id)dependentUUIDs
{
  v14.receiver = self;
  v14.super_class = HMDLightProfileNaturalLightingActionModel;
  v3 = [(HMDBackingStoreModelObject *)&v14 dependentUUIDs];
  v4 = [v3 mutableCopy];

  v5 = [(HMDBackingStoreModelObject *)self parentUUID];

  if (v5)
  {
    v6 = [(HMDBackingStoreModelObject *)self parentUUID];
    [v4 addObject:v6];
  }

  v7 = [(HMDLightProfileNaturalLightingActionModel *)self accessoryUUID];

  if (v7)
  {
    v8 = [(HMDLightProfileNaturalLightingActionModel *)self accessoryUUID];
    [v4 addObject:v8];
  }

  v9 = [(HMDLightProfileNaturalLightingActionModel *)self serviceUUIDs];

  if (v9)
  {
    v10 = [(HMDLightProfileNaturalLightingActionModel *)self serviceUUIDs];
    v11 = [v10 allObjects];
    [v4 addObjectsFromArray:v11];
  }

  v12 = [v4 copy];

  return v12;
}

- (BOOL)isNaturalLightingEnabled
{
  v2 = [(HMDLightProfileNaturalLightingActionModel *)self naturalLightingEnabledField];
  v3 = [v2 BOOLValue];

  return v3;
}

- (id)cd_generateValueForProperty:(id)a3 managedObjectField:(id)a4 context:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  if ([v9 isEqualToString:@"accessory"])
  {
    if ([(HMDBackingStoreModelObject *)self propertyWasSet:@"accessoryUUID"])
    {
      v11 = [(HMDLightProfileNaturalLightingActionModel *)self accessoryUUID];
      if (v11)
      {
        [HMDHAPAccessoryTransaction cd_getMKFHAPAccessoryFromAccessoryUUID:v11];
      }

      else
      {
        [MEMORY[0x277CBEB68] null];
      }
      v12 = ;
    }

    else
    {
      v12 = 0;
    }
  }

  else
  {
    v14.receiver = self;
    v14.super_class = HMDLightProfileNaturalLightingActionModel;
    v12 = [(HMDBackingStoreModelObject *)&v14 cd_generateValueForProperty:v8 managedObjectField:v9 context:v10];
  }

  return v12;
}

- (id)cd_generateValueForModelObjectFromManagedObject:(id)a3 modelObjectField:(id)a4 modelFieldInfo:(id)a5
{
  v8 = a4;
  v9 = a5;
  v10 = a3;
  if ([v8 isEqualToString:@"accessoryUUID"])
  {
    v11 = [v10 accessory];

    v12 = [v11 modelID];
    v13 = v12;
    v14 = *MEMORY[0x277CBEEE8];
    if (v12)
    {
      v14 = v12;
    }

    v15 = v14;
  }

  else
  {
    v17.receiver = self;
    v17.super_class = HMDLightProfileNaturalLightingActionModel;
    v15 = [(HMDBackingStoreModelObject *)&v17 cd_generateValueForModelObjectFromManagedObject:v10 modelObjectField:v8 modelFieldInfo:v9];
  }

  return v15;
}

@end