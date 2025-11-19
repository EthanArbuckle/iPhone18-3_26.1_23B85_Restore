@interface HMDMediaDestinationControllerModel
+ (id)logCategory;
+ (id)properties;
- (HMDMediaDestinationControllerModel)initWithData:(id)a3 changeType:(unint64_t)a4;
- (NSArray)availableDestinationModelIdentifiers;
- (id)attributeDescriptions;
- (id)logIdentifier;
- (void)setAvailableDestinationModelIdentifiers:(id)a3;
@end

@implementation HMDMediaDestinationControllerModel

+ (id)logCategory
{
  if (logCategory__hmf_once_t0_150970 != -1)
  {
    dispatch_once(&logCategory__hmf_once_t0_150970, &__block_literal_global_22_150971);
  }

  v3 = logCategory__hmf_once_v1_150972;

  return v3;
}

uint64_t __49__HMDMediaDestinationControllerModel_logCategory__block_invoke()
{
  v0 = *MEMORY[0x277D0F1A8];
  v1 = HMFCreateOSLogHandle();
  v2 = logCategory__hmf_once_v1_150972;
  logCategory__hmf_once_v1_150972 = v1;

  return MEMORY[0x2821F96F8](v1, v2);
}

+ (id)properties
{
  if (properties_onceToken_150977 != -1)
  {
    dispatch_once(&properties_onceToken_150977, &__block_literal_global_16_150978);
  }

  v3 = properties__properties_150979;

  return v3;
}

void __48__HMDMediaDestinationControllerModel_properties__block_invoke()
{
  v8[4] = *MEMORY[0x277D85DE8];
  v7[0] = @"type";
  v0 = [HMDBackingStoreModelObjectStorageInfo infoWithClass:objc_opt_class()];
  v8[0] = v0;
  v7[1] = @"availableDestinationModelIdentifierStrings";
  v1 = [HMDBackingStoreModelObjectStorageInfo infoWithClass:objc_opt_class()];
  v8[1] = v1;
  v7[2] = @"destinationModelIdentifier";
  v2 = [HMDBackingStoreModelObjectStorageInfo infoWithClass:objc_opt_class()];
  v8[2] = v2;
  v7[3] = @"supportedOptions";
  v3 = [HMDBackingStoreModelObjectStorageInfo infoWithClass:objc_opt_class()];
  v8[3] = v3;
  v4 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v8 forKeys:v7 count:4];
  v5 = properties__properties_150979;
  properties__properties_150979 = v4;

  v6 = *MEMORY[0x277D85DE8];
}

- (id)attributeDescriptions
{
  v27[5] = *MEMORY[0x277D85DE8];
  v3 = [(HMDBackingStoreModelObject *)self setProperties];
  v4 = [v3 containsObject:@"destinationModelIdentifier"];
  v5 = [v3 containsObject:@"availableDestinationModelIdentifierStrings"];
  v6 = [v3 containsObject:@"supportedOptions"];
  v7 = objc_alloc(MEMORY[0x277D0F778]);
  v25 = [(HMDBackingStoreModelObject *)self uuid];
  v24 = [v7 initWithName:@"uuid" value:?];
  v27[0] = v24;
  v8 = objc_alloc(MEMORY[0x277D0F778]);
  v23 = [(HMDBackingStoreModelObject *)self parentUUID];
  v9 = [v8 initWithName:@"parentUUID" value:?];
  v27[1] = v9;
  v10 = objc_alloc(MEMORY[0x277D0F778]);
  v26 = v4;
  if (v4)
  {
    v11 = [(HMDMediaDestinationControllerModel *)self destinationModelIdentifier];
  }

  else
  {
    v11 = @"not set";
  }

  v22 = v11;
  v12 = [v10 initWithName:@"destinationModelIdentifier" value:v11];
  v27[2] = v12;
  v13 = objc_alloc(MEMORY[0x277D0F778]);
  if (v6)
  {
    v14 = [(HMDMediaDestinationControllerModel *)self supportedOptions];
  }

  else
  {
    v14 = @"not set";
  }

  v15 = [v13 initWithName:@"supportedOptions" value:v14];
  v27[3] = v15;
  v16 = objc_alloc(MEMORY[0x277D0F778]);
  if (v5)
  {
    v17 = [(HMDMediaDestinationControllerModel *)self availableDestinationModelIdentifiers];
  }

  else
  {
    v17 = @"not set";
  }

  v18 = [v16 initWithName:@"availableDestinationModelIdentifierStrings" value:v17];
  v27[4] = v18;
  v19 = [MEMORY[0x277CBEA60] arrayWithObjects:v27 count:5];

  if (v5)
  {
  }

  if (v6)
  {
  }

  if (v26)
  {
  }

  v20 = *MEMORY[0x277D85DE8];

  return v19;
}

- (id)logIdentifier
{
  v2 = [(HMDBackingStoreModelObject *)self uuid];
  v3 = [v2 UUIDString];

  return v3;
}

- (void)setAvailableDestinationModelIdentifiers:(id)a3
{
  v4 = [a3 na_map:&__block_literal_global_13_151028];
  [(HMDMediaDestinationControllerModel *)self setAvailableDestinationModelIdentifierStrings:v4];
}

- (NSArray)availableDestinationModelIdentifiers
{
  v2 = [(HMDMediaDestinationControllerModel *)self availableDestinationModelIdentifierStrings];
  v3 = [v2 na_map:&__block_literal_global_151031];

  return v3;
}

id __74__HMDMediaDestinationControllerModel_availableDestinationModelIdentifiers__block_invoke(uint64_t a1, void *a2)
{
  v2 = MEMORY[0x277CCAD78];
  v3 = a2;
  v4 = [[v2 alloc] initWithUUIDString:v3];

  return v4;
}

- (HMDMediaDestinationControllerModel)initWithData:(id)a3 changeType:(unint64_t)a4
{
  v6 = a3;
  v7 = [v6 identifier];
  v8 = [v6 parentIdentifier];

  v9 = [(HMDBackingStoreModelObject *)self initWithVersion:0 changeType:a4 uuid:v7 parentUUID:v8];
  return v9;
}

@end