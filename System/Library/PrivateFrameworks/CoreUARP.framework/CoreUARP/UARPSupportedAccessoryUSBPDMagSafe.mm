@interface UARPSupportedAccessoryUSBPDMagSafe
- (UARPSupportedAccessoryUSBPDMagSafe)init;
@end

@implementation UARPSupportedAccessoryUSBPDMagSafe

- (UARPSupportedAccessoryUSBPDMagSafe)init
{
  v3.receiver = self;
  v3.super_class = UARPSupportedAccessoryUSBPDMagSafe;
  return [(UARPSupportedAccessoryUSBPD *)&v3 init];
}

@end