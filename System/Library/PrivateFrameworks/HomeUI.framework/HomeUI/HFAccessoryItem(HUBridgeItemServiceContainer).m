@interface HFAccessoryItem(HUBridgeItemServiceContainer)
- (id)hu_containedAccessories;
- (id)hu_containedServices;
@end

@implementation HFAccessoryItem(HUBridgeItemServiceContainer)

- (id)hu_containedServices
{
  v2 = [MEMORY[0x277CBEB58] set];
  v3 = [a1 accessory];
  v4 = [v3 hf_visibleServices];
  [v2 unionSet:v4];

  v5 = [a1 accessory];
  v6 = [v5 hf_servicesBehindBridge];
  v7 = [v6 na_filter:&__block_literal_global_17];
  [v2 unionSet:v7];

  return v2;
}

- (id)hu_containedAccessories
{
  v1 = MEMORY[0x277CBEB98];
  v2 = [a1 accessory];
  v3 = [v2 hf_bridgedAccessories];
  v4 = [v3 na_filter:&__block_literal_global_124];
  v5 = [v1 setWithArray:v4];

  return v5;
}

@end