@interface UARPSupportedAccessoryUSBPDPowerAdapterLegacy
- (UARPSupportedAccessoryUSBPDPowerAdapterLegacy)init;
@end

@implementation UARPSupportedAccessoryUSBPDPowerAdapterLegacy

- (UARPSupportedAccessoryUSBPDPowerAdapterLegacy)init
{
  v5.receiver = self;
  v5.super_class = UARPSupportedAccessoryUSBPDPowerAdapterLegacy;
  v2 = [(UARPSupportedAccessoryUSBPDPowerAdapter *)&v5 init];
  v3 = v2;
  if (v2)
  {
    [(UARPSupportedAccessory *)v2 setAutoAppliesStagedFirmware:1];
    [(UARPSupportedAccessory *)v3 setSupportsAccMode7:0];
  }

  return v3;
}

@end