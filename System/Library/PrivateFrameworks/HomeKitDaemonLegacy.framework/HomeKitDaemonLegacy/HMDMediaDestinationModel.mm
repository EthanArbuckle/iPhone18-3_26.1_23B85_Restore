@interface HMDMediaDestinationModel
+ (id)logCategory;
+ (id)properties;
- (HMDMediaDestinationModel)initWithDestination:(id)destination changeType:(unint64_t)type;
- (id)attributeDescriptions;
- (id)logIdentifier;
@end

@implementation HMDMediaDestinationModel

+ (id)logCategory
{
  if (logCategory__hmf_once_t0_81798 != -1)
  {
    dispatch_once(&logCategory__hmf_once_t0_81798, &__block_literal_global_12);
  }

  v3 = logCategory__hmf_once_v1_81799;

  return v3;
}

uint64_t __39__HMDMediaDestinationModel_logCategory__block_invoke()
{
  v0 = *MEMORY[0x277D0F1A8];
  v1 = HMFCreateOSLogHandle();
  v2 = logCategory__hmf_once_v1_81799;
  logCategory__hmf_once_v1_81799 = v1;

  return MEMORY[0x2821F96F8](v1, v2);
}

+ (id)properties
{
  if (properties_onceToken_81803 != -1)
  {
    dispatch_once(&properties_onceToken_81803, &__block_literal_global_81804);
  }

  v3 = properties__properties_81805;

  return v3;
}

void __38__HMDMediaDestinationModel_properties__block_invoke()
{
  v7[3] = *MEMORY[0x277D85DE8];
  v6[0] = @"type";
  v0 = [HMDBackingStoreModelObjectStorageInfo infoWithClass:objc_opt_class()];
  v7[0] = v0;
  v6[1] = @"supportedOptions";
  v1 = [HMDBackingStoreModelObjectStorageInfo infoWithClass:objc_opt_class()];
  v7[1] = v1;
  v6[2] = @"audioGroupIdentifier";
  v2 = [HMDBackingStoreModelObjectStorageInfo infoWithClass:objc_opt_class()];
  v7[2] = v2;
  v3 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v7 forKeys:v6 count:3];
  v4 = properties__properties_81805;
  properties__properties_81805 = v3;

  v5 = *MEMORY[0x277D85DE8];
}

- (id)attributeDescriptions
{
  v22[4] = *MEMORY[0x277D85DE8];
  setProperties = [(HMDBackingStoreModelObject *)self setProperties];
  v4 = [setProperties containsObject:@"supportedOptions"];
  v5 = [setProperties containsObject:@"audioGroupIdentifier"];
  v6 = objc_alloc(MEMORY[0x277D0F778]);
  uuid = [(HMDBackingStoreModelObject *)self uuid];
  v7 = [v6 initWithName:@"uuid" value:?];
  v22[0] = v7;
  v8 = objc_alloc(MEMORY[0x277D0F778]);
  parentUUID = [(HMDBackingStoreModelObject *)self parentUUID];
  v10 = [v8 initWithName:@"parentUUID" value:parentUUID];
  v22[1] = v10;
  v11 = objc_alloc(MEMORY[0x277D0F778]);
  v20 = v4;
  if (v4)
  {
    supportedOptions = [(HMDMediaDestinationModel *)self supportedOptions];
  }

  else
  {
    supportedOptions = @"not set";
  }

  v13 = [v11 initWithName:@"supportedOptions" value:supportedOptions];
  v22[2] = v13;
  v14 = objc_alloc(MEMORY[0x277D0F778]);
  if (v5)
  {
    audioGroupIdentifier = [(HMDMediaDestinationModel *)self audioGroupIdentifier];
  }

  else
  {
    audioGroupIdentifier = @"not set";
  }

  v16 = [v14 initWithName:@"audioGroupIdentifier" value:audioGroupIdentifier];
  v22[3] = v16;
  v17 = [MEMORY[0x277CBEA60] arrayWithObjects:v22 count:4];

  if (v5)
  {
  }

  if (v20)
  {
  }

  v18 = *MEMORY[0x277D85DE8];

  return v17;
}

- (id)logIdentifier
{
  uuid = [(HMDBackingStoreModelObject *)self uuid];
  uUIDString = [uuid UUIDString];

  return uUIDString;
}

- (HMDMediaDestinationModel)initWithDestination:(id)destination changeType:(unint64_t)type
{
  destinationCopy = destination;
  uniqueIdentifier = [destinationCopy uniqueIdentifier];
  parentIdentifier = [destinationCopy parentIdentifier];

  v9 = [(HMDBackingStoreModelObject *)self initWithVersion:0 changeType:type uuid:uniqueIdentifier parentUUID:parentIdentifier];
  return v9;
}

@end