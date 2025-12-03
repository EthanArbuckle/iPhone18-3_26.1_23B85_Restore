@interface HDHRElectrocardiogramV1DeviceSupportedStateProvider
- (BOOL)isDeviceSupported:(id)supported;
@end

@implementation HDHRElectrocardiogramV1DeviceSupportedStateProvider

- (BOOL)isDeviceSupported:(id)supported
{
  supportedCopy = supported;
  if (!supportedCopy)
  {
LABEL_5:
    v8 = 0;
    goto LABEL_7;
  }

  mEMORY[0x277CCDD30] = [MEMORY[0x277CCDD30] sharedBehavior];
  isAppleWatch = [mEMORY[0x277CCDD30] isAppleWatch];

  if (!isAppleWatch)
  {
    v9 = [supportedCopy valueForProperty:*MEMORY[0x277D2BB28]];
    bOOLValue = [v9 BOOLValue];

    v11 = [objc_alloc(MEMORY[0x277CCAD78]) initWithUUIDString:@"68AB2987-CE75-463C-9EAF-9861B292F01E"];
    v12 = [supportedCopy supportsCapability:v11];

    v13 = [objc_alloc(MEMORY[0x277CCAD78]) initWithUUIDString:@"16625FBA-E847-4494-8191-433915DC9F15"];
    v14 = [supportedCopy supportsCapability:v13];

    if ((bOOLValue & 1) == 0)
    {
      v8 = v12 & (v14 ^ 1);
      goto LABEL_7;
    }

    goto LABEL_5;
  }

  v6 = [objc_alloc(MEMORY[0x277CCAD78]) initWithUUIDString:@"16625FBA-E847-4494-8191-433915DC9F15"];
  v7 = [supportedCopy supportsCapability:v6];

  v8 = v7 ^ 1;
LABEL_7:

  return v8;
}

@end