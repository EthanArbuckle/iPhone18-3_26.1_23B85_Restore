@interface HFServiceItem(HUServiceItemServiceContainer)
- (id)hu_containedServices;
@end

@implementation HFServiceItem(HUServiceItemServiceContainer)

- (id)hu_containedServices
{
  v2 = [MEMORY[0x277CBEB58] set];
  service = [self service];
  accessory = [service accessory];
  hf_isBridge = [accessory hf_isBridge];

  if (hf_isBridge)
  {
    service2 = [self service];
    accessory2 = [service2 accessory];
    hf_servicesBehindBridge = [accessory2 hf_servicesBehindBridge];
    [v2 unionSet:hf_servicesBehindBridge];
  }

  return v2;
}

@end