@interface HFCameraItem(HUCameraItemServiceContainer)
- (id)hu_containedServices;
@end

@implementation HFCameraItem(HUCameraItemServiceContainer)

- (id)hu_containedServices
{
  v1 = [a1 accessory];
  v2 = [v1 hf_visibleServices];

  return v2;
}

@end