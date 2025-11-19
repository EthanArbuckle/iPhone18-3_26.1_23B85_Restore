@interface HFServiceItem(HUServiceItemServiceContainer)
- (id)hu_containedServices;
@end

@implementation HFServiceItem(HUServiceItemServiceContainer)

- (id)hu_containedServices
{
  v2 = [MEMORY[0x277CBEB58] set];
  v3 = [a1 service];
  v4 = [v3 accessory];
  v5 = [v4 hf_isBridge];

  if (v5)
  {
    v6 = [a1 service];
    v7 = [v6 accessory];
    v8 = [v7 hf_servicesBehindBridge];
    [v2 unionSet:v8];
  }

  return v2;
}

@end