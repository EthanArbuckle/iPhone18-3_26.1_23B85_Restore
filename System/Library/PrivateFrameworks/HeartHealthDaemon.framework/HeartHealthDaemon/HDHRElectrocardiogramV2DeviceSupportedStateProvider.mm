@interface HDHRElectrocardiogramV2DeviceSupportedStateProvider
- (BOOL)isDeviceSupported:(id)supported;
@end

@implementation HDHRElectrocardiogramV2DeviceSupportedStateProvider

- (BOOL)isDeviceSupported:(id)supported
{
  supportedCopy = supported;
  if (supportedCopy)
  {
    mEMORY[0x277CCDD30] = [MEMORY[0x277CCDD30] sharedBehavior];
    isAppleWatch = [mEMORY[0x277CCDD30] isAppleWatch];

    if (isAppleWatch)
    {
      v6 = 1;
    }

    else
    {
      v7 = [supportedCopy valueForProperty:*MEMORY[0x277D2BB28]];
      bOOLValue = [v7 BOOLValue];

      v9 = [objc_alloc(MEMORY[0x277CCAD78]) initWithUUIDString:@"68AB2987-CE75-463C-9EAF-9861B292F01E"];
      v10 = [supportedCopy supportsCapability:v9];

      v6 = (bOOLValue ^ 1) & v10;
    }
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

@end