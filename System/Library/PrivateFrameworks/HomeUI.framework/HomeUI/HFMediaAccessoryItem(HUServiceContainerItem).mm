@interface HFMediaAccessoryItem(HUServiceContainerItem)
- (id)hu_containedServices;
@end

@implementation HFMediaAccessoryItem(HUServiceContainerItem)

- (id)hu_containedServices
{
  v1 = [a1 accessories];
  v2 = [v1 anyObject];
  v3 = [v2 hf_visibleServices];

  return v3;
}

@end