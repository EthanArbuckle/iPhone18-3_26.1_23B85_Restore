@interface HMServiceGroup(HFAdditions)
- (id)hf_serviceDescriptor;
- (uint64_t)hf_areAllServicesInSameRoom;
- (uint64_t)hf_isSupported;
@end

@implementation HMServiceGroup(HFAdditions)

- (uint64_t)hf_isSupported
{
  services = [self services];
  v2 = [services na_all:&__block_literal_global_47];

  return v2;
}

- (uint64_t)hf_areAllServicesInSameRoom
{
  services = [self services];
  firstObject = [services firstObject];
  hf_parentRoom = [firstObject hf_parentRoom];

  services2 = [self services];
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __58__HMServiceGroup_HFAdditions__hf_areAllServicesInSameRoom__block_invoke;
  v9[3] = &unk_277DF4020;
  v10 = hf_parentRoom;
  v6 = hf_parentRoom;
  v7 = [services2 na_all:v9];

  return v7;
}

- (id)hf_serviceDescriptor
{
  v1 = MEMORY[0x277CCA940];
  services = [self services];
  v3 = [services na_map:&__block_literal_global_3_6];
  v4 = [v1 setWithArray:v3];

  na_mostCommonObject = [v4 na_mostCommonObject];

  return na_mostCommonObject;
}

@end