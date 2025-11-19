@interface UARPSupportedAccessoryA2869
- (UARPSupportedAccessoryA2869)init;
@end

@implementation UARPSupportedAccessoryA2869

- (UARPSupportedAccessoryA2869)init
{
  v7.receiver = self;
  v7.super_class = UARPSupportedAccessoryA2869;
  v2 = [(UARPSupportedAccessoryUSBPDDongle *)&v7 init];
  if (v2)
  {
    v3 = +[UARPSupportedAccessoryA2869 appleModelNumber];
    [(UARPSupportedAccessory *)v2 setAppleModelNumber:v3];

    [(UARPSupportedAccessory *)v2 setModelName:@"Lightning to USB-C Adapter"];
    [(UARPSupportedAccessory *)v2 setUpdateRequiresPowerAssertion:1];
    v4 = [[UARPAccessoryHardwareUSBPD alloc] initWithVendorID:+[UARPSupportedAccessoryUSBPD vendorID](UARPSupportedAccessoryUSBPD productID:"vendorID") usbpdClass:+[UARPSupportedAccessoryA2869 productID](UARPSupportedAccessoryA2869 locationType:"productID") supportsAccMode7:+[UARPSupportedAccessoryUSBPDDongle deviceClass](UARPSupportedAccessoryUSBPDDongle, "deviceClass"), +[UARPSupportedAccessoryUSBPD locationType], [(UARPSupportedAccessory *)v2 supportsAccMode7]];
    hwID = v2->hwID;
    v2->hwID = v4;

    [(UARPSupportedAccessory *)v2 setHardwareID:v2->hwID];
  }

  return v2;
}

@end