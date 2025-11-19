@interface HMServiceGroup(HFAdditions)
- (id)hf_serviceDescriptor;
- (uint64_t)hf_areAllServicesInSameRoom;
- (uint64_t)hf_isSupported;
@end

@implementation HMServiceGroup(HFAdditions)

- (uint64_t)hf_isSupported
{
  v1 = [a1 services];
  v2 = [v1 na_all:&__block_literal_global_47];

  return v2;
}

- (uint64_t)hf_areAllServicesInSameRoom
{
  v2 = [a1 services];
  v3 = [v2 firstObject];
  v4 = [v3 hf_parentRoom];

  v5 = [a1 services];
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __58__HMServiceGroup_HFAdditions__hf_areAllServicesInSameRoom__block_invoke;
  v9[3] = &unk_277DF4020;
  v10 = v4;
  v6 = v4;
  v7 = [v5 na_all:v9];

  return v7;
}

- (id)hf_serviceDescriptor
{
  v1 = MEMORY[0x277CCA940];
  v2 = [a1 services];
  v3 = [v2 na_map:&__block_literal_global_3_6];
  v4 = [v1 setWithArray:v3];

  v5 = [v4 na_mostCommonObject];

  return v5;
}

@end