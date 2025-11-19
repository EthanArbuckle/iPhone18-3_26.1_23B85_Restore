@interface HMDZoneModel
+ (id)properties;
- (id)cd_generateValueForModelObjectFromManagedObject:(id)a3 modelObjectField:(id)a4 modelFieldInfo:(id)a5;
- (id)cd_generateValueForProperty:(id)a3 managedObjectField:(id)a4 context:(id)a5;
- (id)dependentUUIDs;
@end

@implementation HMDZoneModel

- (id)dependentUUIDs
{
  v21 = *MEMORY[0x277D85DE8];
  v3 = MEMORY[0x277CBEB58];
  v4 = [(HMDZoneModel *)self roomUUIDs];
  v5 = [v3 setWithCapacity:{objc_msgSend(v4, "count") + 1}];

  v6 = [(HMDBackingStoreModelObject *)self parentUUID];

  if (v6)
  {
    v7 = [(HMDBackingStoreModelObject *)self parentUUID];
    [v5 addObject:v7];
  }

  v18 = 0u;
  v19 = 0u;
  v16 = 0u;
  v17 = 0u;
  v8 = [(HMDZoneModel *)self roomUUIDs];
  v9 = [v8 countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v17;
    do
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v17 != v11)
        {
          objc_enumerationMutation(v8);
        }

        v13 = [objc_alloc(MEMORY[0x277CCAD78]) initWithUUIDString:*(*(&v16 + 1) + 8 * i)];
        [v5 addObject:v13];
      }

      v10 = [v8 countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v10);
  }

  v14 = *MEMORY[0x277D85DE8];

  return v5;
}

+ (id)properties
{
  if (properties_onceToken_105853 != -1)
  {
    dispatch_once(&properties_onceToken_105853, &__block_literal_global_105854);
  }

  v3 = properties__properties_105855;

  return v3;
}

void __26__HMDZoneModel_properties__block_invoke()
{
  v6[2] = *MEMORY[0x277D85DE8];
  v5[0] = @"name";
  v0 = [HMDBackingStoreModelObjectStorageInfo infoWithClass:objc_opt_class()];
  v5[1] = @"roomUUIDs";
  v6[0] = v0;
  v1 = [HMDBackingStoreModelObjectStorageInfo infoWithClass:objc_opt_class()];
  v6[1] = v1;
  v2 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v6 forKeys:v5 count:2];
  v3 = properties__properties_105855;
  properties__properties_105855 = v2;

  v4 = *MEMORY[0x277D85DE8];
}

- (id)cd_generateValueForProperty:(id)a3 managedObjectField:(id)a4 context:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  if ([v9 isEqualToString:@"rooms_"])
  {
    if ([(HMDBackingStoreModelObject *)self propertyWasSet:@"roomUUIDs"])
    {
      v11 = [(HMDZoneModel *)self roomUUIDs];
      v12 = [HMDBackingStore cdlsFetchManagedObjectsWithUUIDStrings:v11 ofManagedObjectType:objc_opt_class()];
    }

    else
    {
      v12 = 0;
    }
  }

  else
  {
    v14.receiver = self;
    v14.super_class = HMDZoneModel;
    v12 = [(HMDBackingStoreModelObject *)&v14 cd_generateValueForProperty:v8 managedObjectField:v9 context:v10];
  }

  return v12;
}

- (id)cd_generateValueForModelObjectFromManagedObject:(id)a3 modelObjectField:(id)a4 modelFieldInfo:(id)a5
{
  v8 = a4;
  v9 = a5;
  v10 = a3;
  if ([v8 isEqualToString:@"roomUUIDs"])
  {
    v11 = [v10 rooms];

    v12 = [HMDBackingStore cdlsModelIDStringsForManagedObjects:v11];
  }

  else
  {
    v14.receiver = self;
    v14.super_class = HMDZoneModel;
    v12 = [(HMDBackingStoreModelObject *)&v14 cd_generateValueForModelObjectFromManagedObject:v10 modelObjectField:v8 modelFieldInfo:v9];
  }

  return v12;
}

@end