@interface HFAccessoryItem(HUBridgeItemServiceContainer)
- (id)hu_containedAccessories;
- (id)hu_containedServices;
@end

@implementation HFAccessoryItem(HUBridgeItemServiceContainer)

- (id)hu_containedServices
{
  v2 = [MEMORY[0x277CBEB58] set];
  accessory = [self accessory];
  hf_visibleServices = [accessory hf_visibleServices];
  [v2 unionSet:hf_visibleServices];

  accessory2 = [self accessory];
  hf_servicesBehindBridge = [accessory2 hf_servicesBehindBridge];
  v7 = [hf_servicesBehindBridge na_filter:&__block_literal_global_17];
  [v2 unionSet:v7];

  return v2;
}

- (id)hu_containedAccessories
{
  v1 = MEMORY[0x277CBEB98];
  accessory = [self accessory];
  hf_bridgedAccessories = [accessory hf_bridgedAccessories];
  v4 = [hf_bridgedAccessories na_filter:&__block_literal_global_124];
  v5 = [v1 setWithArray:v4];

  return v5;
}

@end