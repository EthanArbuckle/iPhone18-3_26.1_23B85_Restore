@interface HMDMatterPathModel
+ (id)properties;
- (void)cd_populateParentRelationshipInContext:(id)a3 error:(id *)a4;
@end

@implementation HMDMatterPathModel

+ (id)properties
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __32__HMDMatterPathModel_properties__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = a1;
  if (properties_onceToken_160326 != -1)
  {
    dispatch_once(&properties_onceToken_160326, block);
  }

  v2 = properties__properties_160327;

  return v2;
}

void __32__HMDMatterPathModel_properties__block_invoke(uint64_t a1)
{
  v15[5] = *MEMORY[0x277D85DE8];
  v1 = MEMORY[0x277CBEB38];
  v13.receiver = *(a1 + 32);
  v13.super_class = &OBJC_METACLASS___HMDMatterPathModel;
  v2 = objc_msgSendSuper2(&v13, sel_properties);
  v3 = [v1 dictionaryWithDictionary:v2];
  v4 = properties__properties_160327;
  properties__properties_160327 = v3;

  v5 = properties__properties_160327;
  v14[0] = @"endpointID";
  v6 = [HMDBackingStoreModelObjectStorageInfo infoWithClass:objc_opt_class()];
  v15[0] = v6;
  v14[1] = @"clusterID";
  v7 = [HMDBackingStoreModelObjectStorageInfo infoWithClass:objc_opt_class()];
  v15[1] = v7;
  v14[2] = @"attributeID";
  v8 = [HMDBackingStoreModelObjectStorageInfo infoWithClass:objc_opt_class()];
  v15[2] = v8;
  v14[3] = @"commandID";
  v9 = [HMDBackingStoreModelObjectStorageInfo infoWithClass:objc_opt_class()];
  v15[3] = v9;
  v14[4] = @"eventID";
  v10 = [HMDBackingStoreModelObjectStorageInfo infoWithClass:objc_opt_class()];
  v15[4] = v10;
  v11 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v15 forKeys:v14 count:5];
  [v5 addEntriesFromDictionary:v11];

  v12 = *MEMORY[0x277D85DE8];
}

- (void)cd_populateParentRelationshipInContext:(id)a3 error:(id *)a4
{
  v6 = a3;
  v7 = +[HMDCoreData featuresDataSource];
  v8 = [v7 isRVCEnabled];

  if (v8)
  {
    v13.receiver = self;
    v13.super_class = HMDMatterPathModel;
    v9 = [(HMDBackingStoreModelObject *)&v13 cd_fetchParentForManagedObjectUsingParentReferenceName:@"accessory" error:a4];
    if (v9 || (v12.receiver = self, v12.super_class = HMDMatterPathModel, [(HMDBackingStoreModelObject *)&v12 cd_fetchParentForManagedObjectUsingParentReferenceName:@"accessory" error:a4], (v9 = objc_claimAutoreleasedReturnValue()) != 0))
    {
      v10 = v9;
      v11 = [(HMDBackingStoreModelObject *)self managedObject];
      [v11 setValue:v10 forKey:@"accessory"];
    }
  }

  else
  {
    v14.receiver = self;
    v14.super_class = HMDMatterPathModel;
    [(HMDBackingStoreModelObject *)&v14 cd_populateParentRelationshipInContext:v6 error:a4];
  }
}

@end