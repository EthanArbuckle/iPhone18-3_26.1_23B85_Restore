@interface HMDHomeManagerHomeModel
+ (id)modelForHomeUUID:(id)a3;
+ (id)properties;
@end

@implementation HMDHomeManagerHomeModel

+ (id)modelForHomeUUID:(id)a3
{
  v3 = a3;
  v4 = [HMDHomeManagerHomeModel alloc];
  v5 = [HMDHomeManagerHomeModel deriveUUIDFromHomeUUID:v3];
  v6 = objc_alloc(MEMORY[0x277CCAD78]);
  v7 = [v6 initWithUUIDString:*MEMORY[0x277CD23C8]];
  v8 = [(HMDBackingStoreModelObject *)v4 initWithUUID:v5 parentUUID:v7];

  v9 = [HMDHomeManagerHomeHandle alloc];
  v10 = [MEMORY[0x277CCAD78] UUID];
  v11 = [(HMDHomeManagerHomeHandle *)v9 initWithBackingStoreUUID:v10 homeUUID:v3];

  [(HMDHomeManagerHomeModel *)v8 setHandle:v11];

  return v8;
}

+ (id)properties
{
  if (properties_onceToken_84204 != -1)
  {
    dispatch_once(&properties_onceToken_84204, &__block_literal_global_84205);
  }

  v3 = properties__properties_84206;

  return v3;
}

void __37__HMDHomeManagerHomeModel_properties__block_invoke()
{
  v5[1] = *MEMORY[0x277D85DE8];
  v4 = @"handle";
  v0 = [HMDBackingStoreModelObjectStorageInfo infoWithClass:objc_opt_class()];
  v5[0] = v0;
  v1 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v5 forKeys:&v4 count:1];
  v2 = properties__properties_84206;
  properties__properties_84206 = v1;

  v3 = *MEMORY[0x277D85DE8];
}

@end