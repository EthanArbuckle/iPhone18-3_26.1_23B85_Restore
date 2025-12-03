@interface UARPAccessory(HomeKit)
- (id)availableSoftwareVersion;
@end

@implementation UARPAccessory(HomeKit)

- (id)availableSoftwareVersion
{
  availableFirmwareVersion = [self availableFirmwareVersion];

  if (availableFirmwareVersion)
  {
    v3 = objc_alloc(MEMORY[0x277D0F8F8]);
    availableFirmwareVersion2 = [self availableFirmwareVersion];
    v5 = [v3 initWithString:availableFirmwareVersion2];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

@end