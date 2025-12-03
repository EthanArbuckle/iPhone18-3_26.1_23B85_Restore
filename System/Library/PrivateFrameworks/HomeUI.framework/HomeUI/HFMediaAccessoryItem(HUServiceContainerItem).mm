@interface HFMediaAccessoryItem(HUServiceContainerItem)
- (id)hu_containedServices;
@end

@implementation HFMediaAccessoryItem(HUServiceContainerItem)

- (id)hu_containedServices
{
  accessories = [self accessories];
  anyObject = [accessories anyObject];
  hf_visibleServices = [anyObject hf_visibleServices];

  return hf_visibleServices;
}

@end