@interface HMDAccountHandleModel
+ (id)properties;
+ (id)schemaHashRoot;
@end

@implementation HMDAccountHandleModel

+ (id)properties
{
  v8[2] = *MEMORY[0x277D85DE8];
  v7[0] = @"idsURI";
  v2 = [HMDBackingStoreModelObjectStorageInfo infoWithClass:objc_opt_class()];
  v7[1] = @"local";
  v8[0] = v2;
  v3 = [HMDBackingStoreModelObjectStorageInfo infoWithClass:objc_opt_class()];
  v8[1] = v3;
  v4 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v8 forKeys:v7 count:2];

  v5 = *MEMORY[0x277D85DE8];

  return v4;
}

+ (id)schemaHashRoot
{
  v2 = [@"538177E8-3459-4DE2-BE82-B72A8633498C" copy];

  return v2;
}

@end