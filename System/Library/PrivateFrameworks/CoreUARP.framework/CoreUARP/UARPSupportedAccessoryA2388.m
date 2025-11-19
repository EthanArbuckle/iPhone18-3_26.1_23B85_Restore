@interface UARPSupportedAccessoryA2388
- (UARPSupportedAccessoryA2388)init;
@end

@implementation UARPSupportedAccessoryA2388

- (UARPSupportedAccessoryA2388)init
{
  v7.receiver = self;
  v7.super_class = UARPSupportedAccessoryA2388;
  v2 = [(UARPSupportedAccessoryUSBPDPowerAdapterLegacy *)&v7 init];
  if (v2)
  {
    v3 = +[UARPSupportedAccessoryA2388 appleModelNumber];
    [(UARPSupportedAccessory *)v2 setAppleModelNumber:v3];

    [(UARPSupportedAccessory *)v2 setModelName:@"Power Adapter (Legacy)"];
    v4 = [[UARPAccessoryHardwareUSBPD alloc] initWithVendorID:+[UARPSupportedAccessoryUSBPD vendorID](UARPSupportedAccessoryUSBPD productID:"vendorID") usbpdClass:+[UARPSupportedAccessoryA2388 productID](UARPSupportedAccessoryA2388 locationType:"productID") supportsAccMode7:+[UARPSupportedAccessoryUSBPDPowerAdapter deviceClass](UARPSupportedAccessoryUSBPDPowerAdapterLegacy, "deviceClass"), +[UARPSupportedAccessoryUSBPD locationType], [(UARPSupportedAccessory *)v2 supportsAccMode7]];
    hwID = v2->hwID;
    v2->hwID = v4;

    [(UARPSupportedAccessory *)v2 setHardwareID:v2->hwID];
  }

  return v2;
}

@end