@interface HDHRElectrocardiogramV2DeviceSupportedStateProvider
- (BOOL)isDeviceSupported:(id)a3;
@end

@implementation HDHRElectrocardiogramV2DeviceSupportedStateProvider

- (BOOL)isDeviceSupported:(id)a3
{
  v3 = a3;
  if (v3)
  {
    v4 = [MEMORY[0x277CCDD30] sharedBehavior];
    v5 = [v4 isAppleWatch];

    if (v5)
    {
      v6 = 1;
    }

    else
    {
      v7 = [v3 valueForProperty:*MEMORY[0x277D2BB28]];
      v8 = [v7 BOOLValue];

      v9 = [objc_alloc(MEMORY[0x277CCAD78]) initWithUUIDString:@"68AB2987-CE75-463C-9EAF-9861B292F01E"];
      v10 = [v3 supportsCapability:v9];

      v6 = (v8 ^ 1) & v10;
    }
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

@end