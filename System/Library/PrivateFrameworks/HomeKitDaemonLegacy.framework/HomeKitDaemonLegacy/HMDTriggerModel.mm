@interface HMDTriggerModel
+ (id)properties;
- (id)createPayload;
- (id)dependentUUIDs;
@end

@implementation HMDTriggerModel

- (id)dependentUUIDs
{
  v21 = *MEMORY[0x277D85DE8];
  v3 = MEMORY[0x277CBEB58];
  currentActionSets = [(HMDTriggerModel *)self currentActionSets];
  v5 = [v3 setWithCapacity:{objc_msgSend(currentActionSets, "count") + 1}];

  parentUUID = [(HMDBackingStoreModelObject *)self parentUUID];

  if (parentUUID)
  {
    parentUUID2 = [(HMDBackingStoreModelObject *)self parentUUID];
    [v5 addObject:parentUUID2];
  }

  v18 = 0u;
  v19 = 0u;
  v16 = 0u;
  v17 = 0u;
  currentActionSets2 = [(HMDTriggerModel *)self currentActionSets];
  v9 = [currentActionSets2 countByEnumeratingWithState:&v16 objects:v20 count:16];
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
          objc_enumerationMutation(currentActionSets2);
        }

        v13 = [objc_alloc(MEMORY[0x277CCAD78]) initWithUUIDString:*(*(&v16 + 1) + 8 * i)];
        [v5 addObject:v13];
      }

      v10 = [currentActionSets2 countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v10);
  }

  v14 = *MEMORY[0x277D85DE8];

  return v5;
}

- (id)createPayload
{
  dictionary = [MEMORY[0x277CBEB38] dictionary];
  uuid = [(HMDBackingStoreModelObject *)self uuid];
  uUIDString = [uuid UUIDString];
  [dictionary setObject:uUIDString forKeyedSubscript:*MEMORY[0x277CD2768]];

  name = [(HMDTriggerModel *)self name];
  [dictionary setObject:name forKeyedSubscript:*MEMORY[0x277CD2758]];

  configuredName = [(HMDTriggerModel *)self configuredName];
  [dictionary setObject:configuredName forKeyedSubscript:*MEMORY[0x277CD1250]];

  active = [(HMDTriggerModel *)self active];
  [dictionary setObject:active forKeyedSubscript:*MEMORY[0x277CD2730]];

  autoDelete = [(HMDTriggerModel *)self autoDelete];
  [dictionary setObject:autoDelete forKeyedSubscript:*MEMORY[0x277CD1260]];

  currentActionSets = [(HMDTriggerModel *)self currentActionSets];
  [dictionary setObject:currentActionSets forKeyedSubscript:*MEMORY[0x277CD2728]];

  v11 = [dictionary copy];

  return v11;
}

+ (id)properties
{
  if (properties_onceToken_551 != -1)
  {
    dispatch_once(&properties_onceToken_551, &__block_literal_global_379);
  }

  v3 = properties__properties_552;

  return v3;
}

void __29__HMDTriggerModel_properties__block_invoke()
{
  v12[8] = *MEMORY[0x277D85DE8];
  v11[0] = @"name";
  v0 = [HMDBackingStoreModelObjectStorageInfo infoWithClass:objc_opt_class()];
  v12[0] = v0;
  v11[1] = @"configuredName";
  v1 = [HMDBackingStoreModelObjectStorageInfo infoWithClass:objc_opt_class()];
  v12[1] = v1;
  v11[2] = @"currentActionSets";
  v2 = [HMDBackingStoreModelObjectStorageInfo infoWithClass:objc_opt_class()];
  v12[2] = v2;
  v11[3] = @"active";
  v3 = [HMDBackingStoreModelObjectStorageInfo infoWithClass:objc_opt_class()];
  v12[3] = v3;
  v11[4] = @"mostRecentFireDate";
  v4 = [HMDBackingStoreModelObjectStorageInfo infoWithClass:objc_opt_class()];
  v12[4] = v4;
  v11[5] = @"owner";
  v5 = [HMDBackingStoreModelObjectStorageInfo infoWithClass:objc_opt_class()];
  v12[5] = v5;
  v11[6] = @"owningDevice";
  v6 = [HMDBackingStoreModelObjectStorageInfo infoWithClass:objc_opt_class()];
  v12[6] = v6;
  v11[7] = @"autoDelete";
  v7 = [HMDBackingStoreModelObjectStorageInfo infoWithClass:objc_opt_class()];
  v12[7] = v7;
  v8 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v12 forKeys:v11 count:8];
  v9 = properties__properties_552;
  properties__properties_552 = v8;

  v10 = *MEMORY[0x277D85DE8];
}

@end