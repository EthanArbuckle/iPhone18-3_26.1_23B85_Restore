@interface HMDAccessoryNetworkProtectionGroupModel
+ (id)modelIDForHome:(id)a3 manufacturer:(id)a4 category:(id)a5;
+ (id)modelNamespace;
+ (id)properties;
+ (id)shortDescription;
- (id)attributeDescriptions;
- (id)shortDescription;
@end

@implementation HMDAccessoryNetworkProtectionGroupModel

+ (id)shortDescription
{
  v2 = objc_opt_class();

  return NSStringFromClass(v2);
}

+ (id)properties
{
  if (properties_onceToken_134365 != -1)
  {
    dispatch_once(&properties_onceToken_134365, &__block_literal_global_134366);
  }

  v3 = properties__properties_134367;

  return v3;
}

void __53__HMDAccessoryNetworkProtectionGroupModel_properties__block_invoke()
{
  v8[4] = *MEMORY[0x277D85DE8];
  v7[0] = @"manufacturer";
  v0 = [HMDBackingStoreModelObjectStorageInfo infoWithClass:objc_opt_class()];
  v8[0] = v0;
  v7[1] = @"categoryIdentifier";
  v1 = +[HMDBackingStoreModelObjectStorageInfo deprecatedField];
  v8[1] = v1;
  v7[2] = @"category";
  v2 = [HMDBackingStoreModelObjectStorageInfo infoWithClass:objc_opt_class()];
  v8[2] = v2;
  v7[3] = @"targetProtectionMode";
  v3 = [HMDBackingStoreModelObjectStorageInfo infoWithClass:objc_opt_class()];
  v8[3] = v3;
  v4 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v8 forKeys:v7 count:4];
  v5 = properties__properties_134367;
  properties__properties_134367 = v4;

  v6 = *MEMORY[0x277D85DE8];
}

+ (id)modelIDForHome:(id)a3 manufacturer:(id)a4 category:(id)a5
{
  v7 = MEMORY[0x277CBEB28];
  v8 = a5;
  v9 = a4;
  v10 = a3;
  v11 = objc_alloc_init(v7);
  v12 = [MEMORY[0x277CBEB28] dataWithLength:16];
  v13 = [v10 uuid];

  [v13 getUUIDBytes:{objc_msgSend(v12, "mutableBytes")}];
  [v11 appendData:v12];
  v14 = [v8 unsignedIntegerValue];

  v21 = v14;
  v15 = [MEMORY[0x277CBEA90] dataWithBytes:&v21 length:8];
  [v11 appendData:v15];
  v16 = [v9 dataUsingEncoding:4];

  [v11 appendData:v16];
  v17 = MEMORY[0x277CCAD78];
  v18 = [objc_opt_class() modelNamespace];
  v19 = [v17 hmf_UUIDWithNamespace:v18 data:v11];

  return v19;
}

+ (id)modelNamespace
{
  v2 = [objc_alloc(MEMORY[0x277CCAD78]) initWithUUIDString:@"3FFD3711-E751-4F46-A74F-4F0B4E877E8F"];

  return v2;
}

- (id)attributeDescriptions
{
  v21[5] = *MEMORY[0x277D85DE8];
  v3 = objc_alloc(MEMORY[0x277D0F778]);
  v20 = [(HMDBackingStoreModelObject *)self uuid];
  v4 = [v3 initWithName:@"uuid" value:v20];
  v21[0] = v4;
  v5 = objc_alloc(MEMORY[0x277D0F778]);
  v6 = [(HMDBackingStoreModelObject *)self bsoDataVersion];
  v7 = [v5 initWithName:@"version" value:v6];
  v21[1] = v7;
  v8 = objc_alloc(MEMORY[0x277D0F778]);
  v9 = [(HMDAccessoryNetworkProtectionGroupModel *)self manufacturer];
  v10 = [v8 initWithName:@"manufacturer" value:v9];
  v21[2] = v10;
  v11 = objc_alloc(MEMORY[0x277D0F778]);
  v12 = [(HMDAccessoryNetworkProtectionGroupModel *)self category];
  v13 = [v11 initWithName:@"category" value:v12];
  v21[3] = v13;
  v14 = objc_alloc(MEMORY[0x277D0F778]);
  v15 = [(HMDAccessoryNetworkProtectionGroupModel *)self targetProtectionMode];
  v16 = [v14 initWithName:@"targetProtectionMode" value:v15];
  v21[4] = v16;
  v17 = [MEMORY[0x277CBEA60] arrayWithObjects:v21 count:5];

  v18 = *MEMORY[0x277D85DE8];

  return v17;
}

- (id)shortDescription
{
  v2 = objc_opt_class();

  return [v2 shortDescription];
}

@end