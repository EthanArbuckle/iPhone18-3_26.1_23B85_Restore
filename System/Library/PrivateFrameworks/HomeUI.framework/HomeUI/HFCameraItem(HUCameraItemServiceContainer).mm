@interface HFCameraItem(HUCameraItemServiceContainer)
- (id)hu_containedServices;
@end

@implementation HFCameraItem(HUCameraItemServiceContainer)

- (id)hu_containedServices
{
  accessory = [self accessory];
  hf_visibleServices = [accessory hf_visibleServices];

  return hf_visibleServices;
}

@end