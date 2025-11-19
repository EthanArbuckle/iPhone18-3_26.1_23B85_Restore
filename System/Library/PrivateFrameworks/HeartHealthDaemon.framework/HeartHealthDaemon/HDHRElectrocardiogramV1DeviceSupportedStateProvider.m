@interface HDHRElectrocardiogramV1DeviceSupportedStateProvider
- (BOOL)isDeviceSupported:(id)a3;
@end

@implementation HDHRElectrocardiogramV1DeviceSupportedStateProvider

- (BOOL)isDeviceSupported:(id)a3
{
  v3 = a3;
  if (!v3)
  {
LABEL_5:
    v8 = 0;
    goto LABEL_7;
  }

  v4 = [MEMORY[0x277CCDD30] sharedBehavior];
  v5 = [v4 isAppleWatch];

  if (!v5)
  {
    v9 = [v3 valueForProperty:*MEMORY[0x277D2BB28]];
    v10 = [v9 BOOLValue];

    v11 = [objc_alloc(MEMORY[0x277CCAD78]) initWithUUIDString:@"68AB2987-CE75-463C-9EAF-9861B292F01E"];
    v12 = [v3 supportsCapability:v11];

    v13 = [objc_alloc(MEMORY[0x277CCAD78]) initWithUUIDString:@"16625FBA-E847-4494-8191-433915DC9F15"];
    v14 = [v3 supportsCapability:v13];

    if ((v10 & 1) == 0)
    {
      v8 = v12 & (v14 ^ 1);
      goto LABEL_7;
    }

    goto LABEL_5;
  }

  v6 = [objc_alloc(MEMORY[0x277CCAD78]) initWithUUIDString:@"16625FBA-E847-4494-8191-433915DC9F15"];
  v7 = [v3 supportsCapability:v6];

  v8 = v7 ^ 1;
LABEL_7:

  return v8;
}

@end