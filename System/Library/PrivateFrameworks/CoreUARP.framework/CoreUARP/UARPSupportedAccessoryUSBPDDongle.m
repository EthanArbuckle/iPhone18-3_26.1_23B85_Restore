@interface UARPSupportedAccessoryUSBPDDongle
- (UARPSupportedAccessoryUSBPDDongle)init;
@end

@implementation UARPSupportedAccessoryUSBPDDongle

- (UARPSupportedAccessoryUSBPDDongle)init
{
  v3.receiver = self;
  v3.super_class = UARPSupportedAccessoryUSBPDDongle;
  return [(UARPSupportedAccessoryUSBPD *)&v3 init];
}

@end