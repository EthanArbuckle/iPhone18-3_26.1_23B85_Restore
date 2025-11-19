@interface UARPSupportedAccessoryA2868
- (UARPSupportedAccessoryA2868)init;
@end

@implementation UARPSupportedAccessoryA2868

- (UARPSupportedAccessoryA2868)init
{
  v7.receiver = self;
  v7.super_class = UARPSupportedAccessoryA2868;
  v2 = [(UARPSupportedAccessoryUSBPDDongle *)&v7 init];
  if (v2)
  {
    v3 = +[UARPSupportedAccessoryA2868 appleModelNumber];
    [(UARPSupportedAccessory *)v2 setAppleModelNumber:v3];

    [(UARPSupportedAccessory *)v2 setModelName:@"Lightning to USB-C Adapter"];
    [(UARPSupportedAccessory *)v2 setUpdateRequiresPowerAssertion:1];
    v4 = [[UARPAccessoryHardwareUSBPD alloc] initWithVendorID:+[UARPSupportedAccessoryUSBPD vendorID](UARPSupportedAccessoryUSBPD productID:"vendorID") usbpdClass:+[UARPSupportedAccessoryA2868 productID](UARPSupportedAccessoryA2868 locationType:"productID") supportsAccMode7:+[UARPSupportedAccessoryUSBPDDongle deviceClass](UARPSupportedAccessoryUSBPDDongle, "deviceClass"), +[UARPSupportedAccessoryUSBPD locationType], [(UARPSupportedAccessory *)v2 supportsAccMode7]];
    hwID = v2->hwID;
    v2->hwID = v4;

    [(UARPSupportedAccessory *)v2 setHardwareID:v2->hwID];
  }

  return v2;
}

@end