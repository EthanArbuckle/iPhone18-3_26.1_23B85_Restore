@interface UARPAccessory(HomeKit)
- (id)availableSoftwareVersion;
@end

@implementation UARPAccessory(HomeKit)

- (id)availableSoftwareVersion
{
  v2 = [a1 availableFirmwareVersion];

  if (v2)
  {
    v3 = objc_alloc(MEMORY[0x277D0F8F8]);
    v4 = [a1 availableFirmwareVersion];
    v5 = [v3 initWithString:v4];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

@end