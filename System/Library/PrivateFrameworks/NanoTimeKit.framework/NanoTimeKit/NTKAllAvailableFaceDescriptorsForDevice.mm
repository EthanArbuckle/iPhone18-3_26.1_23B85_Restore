@interface NTKAllAvailableFaceDescriptorsForDevice
@end

@implementation NTKAllAvailableFaceDescriptorsForDevice

void ___NTKAllAvailableFaceDescriptorsForDevice_block_invoke_2(uint64_t a1, void *a2)
{
  v7 = a2;
  v3 = [v7 isHardwareSpecific];
  v4 = v7;
  if ((v3 & 1) == 0)
  {
    v5 = [objc_opt_class() identifier];
    v6 = [[NTKFaceDescriptor alloc] initWithBundleIdentifier:v5];
    if (v6)
    {
      [*(a1 + 32) addObject:v6];
    }

    v4 = v7;
  }
}

@end