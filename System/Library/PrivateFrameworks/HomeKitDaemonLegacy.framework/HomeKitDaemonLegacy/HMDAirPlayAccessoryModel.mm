@interface HMDAirPlayAccessoryModel
+ (id)properties;
@end

@implementation HMDAirPlayAccessoryModel

+ (id)properties
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __38__HMDAirPlayAccessoryModel_properties__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = self;
  if (properties_onceToken_90274 != -1)
  {
    dispatch_once(&properties_onceToken_90274, block);
  }

  v2 = properties__properties_90275;

  return v2;
}

void __38__HMDAirPlayAccessoryModel_properties__block_invoke(uint64_t a1)
{
  v21[1] = *MEMORY[0x277D85DE8];
  v1 = MEMORY[0x277CBEB38];
  v15.receiver = *(a1 + 32);
  v15.super_class = &OBJC_METACLASS___HMDAirPlayAccessoryModel;
  v2 = objc_msgSendSuper2(&v15, sel_properties);
  v3 = [v1 dictionaryWithDictionary:v2];
  v4 = properties__properties_90275;
  properties__properties_90275 = v3;

  v5 = properties__properties_90275;
  v20 = @"pairingIdentity";
  v6 = [HMDBackingStoreModelObjectStorageInfo infoWithClass:objc_opt_class()];
  v21[0] = v6;
  v7 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v21 forKeys:&v20 count:1];
  [v5 addEntriesFromDictionary:v7];

  v8 = properties__properties_90275;
  v18 = @"password";
  v9 = [HMDBackingStoreModelObjectStorageInfo infoWithClass:objc_opt_class()];
  v19 = v9;
  v10 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v19 forKeys:&v18 count:1];
  [v8 addEntriesFromDictionary:v10];

  v11 = properties__properties_90275;
  v16 = @"minimumUserPriviledge";
  v12 = [HMDBackingStoreModelObjectStorageInfo infoWithClass:objc_opt_class()];
  v17 = v12;
  v13 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v17 forKeys:&v16 count:1];
  [v11 addEntriesFromDictionary:v13];

  v14 = *MEMORY[0x277D85DE8];
}

@end