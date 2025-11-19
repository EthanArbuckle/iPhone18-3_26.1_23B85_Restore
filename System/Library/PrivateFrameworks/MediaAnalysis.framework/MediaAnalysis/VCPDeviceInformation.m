@interface VCPDeviceInformation
+ (BOOL)canRenderVariation;
+ (id)marketingName;
+ (int64_t)batteryLevel;
@end

@implementation VCPDeviceInformation

+ (BOOL)canRenderVariation
{
  if (+[VCPDeviceInformation canRenderVariation]::onceToken != -1)
  {
    +[VCPDeviceInformation canRenderVariation];
  }

  return +[VCPDeviceInformation canRenderVariation]::canRenderVariations;
}

void __42__VCPDeviceInformation_canRenderVariation__block_invoke()
{
  v0 = MGGetStringAnswer();
  if (v0)
  {
    v1 = v0;
    v2 = CFStringCompare(v0, @"iPad", 0);
    CFRelease(v1);
    if (v2)
    {
      +[VCPDeviceInformation canRenderVariation]::canRenderVariations = MGGetBoolAnswer();
    }

    else
    {
      v3 = MTLCreateSystemDefaultDevice();
      +[VCPDeviceInformation canRenderVariation]::canRenderVariations = [v3 supportsFeatureSet:6];
    }
  }
}

+ (id)marketingName
{
  if (+[VCPDeviceInformation marketingName]::onceToken[0] != -1)
  {
    +[VCPDeviceInformation marketingName];
  }

  v3 = +[VCPDeviceInformation marketingName]::marketingName;

  return v3;
}

void __37__VCPDeviceInformation_marketingName__block_invoke()
{
  v0 = MGGetStringAnswer();
  v1 = +[VCPDeviceInformation marketingName]::marketingName;
  +[VCPDeviceInformation marketingName]::marketingName = v0;
}

+ (int64_t)batteryLevel
{
  v2 = *MEMORY[0x1E696CD60];
  v3 = IOServiceMatching("IOPMPowerSource");
  MatchingService = IOServiceGetMatchingService(v2, v3);
  CFProperty = IORegistryEntryCreateCFProperty(MatchingService, @"CurrentCapacity", *MEMORY[0x1E695E480], 0);
  if (!CFProperty)
  {
    return -1;
  }

  v6 = CFProperty;
  LODWORD(v7) = [v6 intValue];
  CFRelease(v6);
  v7 = v7;

  return v7;
}

@end