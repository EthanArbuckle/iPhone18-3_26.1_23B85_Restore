@interface HMDMediaDestinationControllerModel
+ (id)logCategory;
+ (id)properties;
- (HMDMediaDestinationControllerModel)initWithData:(id)data changeType:(unint64_t)type;
- (NSArray)availableDestinationModelIdentifiers;
- (id)attributeDescriptions;
- (id)logIdentifier;
- (void)setAvailableDestinationModelIdentifiers:(id)identifiers;
@end

@implementation HMDMediaDestinationControllerModel

+ (id)logCategory
{
  if (logCategory__hmf_once_t0_226165 != -1)
  {
    dispatch_once(&logCategory__hmf_once_t0_226165, &__block_literal_global_22_226166);
  }

  v3 = logCategory__hmf_once_v1_226167;

  return v3;
}

void __49__HMDMediaDestinationControllerModel_logCategory__block_invoke()
{
  v0 = *MEMORY[0x277D0F1A8];
  v1 = HMFCreateOSLogHandle();
  v2 = logCategory__hmf_once_v1_226167;
  logCategory__hmf_once_v1_226167 = v1;
}

+ (id)properties
{
  if (properties_onceToken_226172 != -1)
  {
    dispatch_once(&properties_onceToken_226172, &__block_literal_global_16_226173);
  }

  v3 = properties__properties_226174;

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
  v5 = properties__properties_226174;
  properties__properties_226174 = v4;

  v6 = *MEMORY[0x277D85DE8];
}

- (id)attributeDescriptions
{
  v27[5] = *MEMORY[0x277D85DE8];
  setProperties = [(HMDBackingStoreModelObject *)self setProperties];
  v4 = [setProperties containsObject:@"destinationModelIdentifier"];
  v5 = [setProperties containsObject:@"availableDestinationModelIdentifierStrings"];
  v6 = [setProperties containsObject:@"supportedOptions"];
  v7 = objc_alloc(MEMORY[0x277D0F778]);
  uuid = [(HMDBackingStoreModelObject *)self uuid];
  v24 = [v7 initWithName:@"uuid" value:?];
  v27[0] = v24;
  v8 = objc_alloc(MEMORY[0x277D0F778]);
  parentUUID = [(HMDBackingStoreModelObject *)self parentUUID];
  v9 = [v8 initWithName:@"parentUUID" value:?];
  v27[1] = v9;
  v10 = objc_alloc(MEMORY[0x277D0F778]);
  v26 = v4;
  if (v4)
  {
    destinationModelIdentifier = [(HMDMediaDestinationControllerModel *)self destinationModelIdentifier];
  }

  else
  {
    destinationModelIdentifier = @"not set";
  }

  v22 = destinationModelIdentifier;
  v12 = [v10 initWithName:@"destinationModelIdentifier" value:destinationModelIdentifier];
  v27[2] = v12;
  v13 = objc_alloc(MEMORY[0x277D0F778]);
  if (v6)
  {
    supportedOptions = [(HMDMediaDestinationControllerModel *)self supportedOptions];
  }

  else
  {
    supportedOptions = @"not set";
  }

  v15 = [v13 initWithName:@"supportedOptions" value:supportedOptions];
  v27[3] = v15;
  v16 = objc_alloc(MEMORY[0x277D0F778]);
  if (v5)
  {
    availableDestinationModelIdentifiers = [(HMDMediaDestinationControllerModel *)self availableDestinationModelIdentifiers];
  }

  else
  {
    availableDestinationModelIdentifiers = @"not set";
  }

  v18 = [v16 initWithName:@"availableDestinationModelIdentifierStrings" value:availableDestinationModelIdentifiers];
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
  uuid = [(HMDBackingStoreModelObject *)self uuid];
  uUIDString = [uuid UUIDString];

  return uUIDString;
}

- (void)setAvailableDestinationModelIdentifiers:(id)identifiers
{
  v4 = [identifiers na_map:&__block_literal_global_13_226223];
  [(HMDMediaDestinationControllerModel *)self setAvailableDestinationModelIdentifierStrings:v4];
}

- (NSArray)availableDestinationModelIdentifiers
{
  availableDestinationModelIdentifierStrings = [(HMDMediaDestinationControllerModel *)self availableDestinationModelIdentifierStrings];
  v3 = [availableDestinationModelIdentifierStrings na_map:&__block_literal_global_226225];

  return v3;
}

id __74__HMDMediaDestinationControllerModel_availableDestinationModelIdentifiers__block_invoke(uint64_t a1, void *a2)
{
  v2 = MEMORY[0x277CCAD78];
  v3 = a2;
  v4 = [[v2 alloc] initWithUUIDString:v3];

  return v4;
}

- (HMDMediaDestinationControllerModel)initWithData:(id)data changeType:(unint64_t)type
{
  dataCopy = data;
  identifier = [dataCopy identifier];
  parentIdentifier = [dataCopy parentIdentifier];

  v9 = [(HMDBackingStoreModelObject *)self initWithVersion:0 changeType:type uuid:identifier parentUUID:parentIdentifier];
  return v9;
}

@end