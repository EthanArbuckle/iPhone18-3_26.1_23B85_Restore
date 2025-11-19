@interface DKPlatform
@end

@implementation DKPlatform

void __25___DKPlatform_deviceUUID__block_invoke()
{
  v0 = *MEMORY[0x1E696CD68];
  v1 = IOServiceMatching("IOPlatformExpertDevice");
  MatchingService = IOServiceGetMatchingService(v0, v1);
  if (MatchingService)
  {
    v3 = MatchingService;
    CFProperty = IORegistryEntryCreateCFProperty(MatchingService, @"IOPlatformUUID", *MEMORY[0x1E695E480], 0);
    IOObjectRelease(v3);
    if (CFProperty)
    {
      v4 = [objc_alloc(MEMORY[0x1E696AFB0]) initWithUUIDString:CFProperty];
      v5 = deviceUUID_deviceUUID_0;
      deviceUUID_deviceUUID_0 = v4;
    }
  }
}

@end