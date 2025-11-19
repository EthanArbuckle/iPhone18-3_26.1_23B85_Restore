@interface UARPSupportedAccessoryA3351
- (UARPSupportedAccessoryA3351)init;
@end

@implementation UARPSupportedAccessoryA3351

- (UARPSupportedAccessoryA3351)init
{
  v19 = *MEMORY[0x277D85DE8];
  v17.receiver = self;
  v17.super_class = UARPSupportedAccessoryA3351;
  v2 = [(UARPSupportedAccessoryUSBPDPowerAdapter *)&v17 init];
  if (v2)
  {
    v3 = +[UARPSupportedAccessoryA3351 appleModelNumber];
    [(UARPSupportedAccessory *)v2 setAppleModelNumber:v3];

    [(UARPSupportedAccessory *)v2 setModelName:@"Power Adapter"];
    [(UARPSupportedAccessory *)v2 setSupportsAnalytics:1];
    v15 = 0u;
    v16 = 0u;
    v13 = 0u;
    v14 = 0u;
    v4 = +[UARPSupportedAccessoryA3351 alternativeAppleModelNumbers];
    v5 = [v4 countByEnumeratingWithState:&v13 objects:v18 count:16];
    if (v5)
    {
      v6 = v5;
      v7 = *v14;
      do
      {
        v8 = 0;
        do
        {
          if (*v14 != v7)
          {
            objc_enumerationMutation(v4);
          }

          [(UARPSupportedAccessory *)v2 addAlternativeAppleModelNumber:*(*(&v13 + 1) + 8 * v8++)];
        }

        while (v6 != v8);
        v6 = [v4 countByEnumeratingWithState:&v13 objects:v18 count:16];
      }

      while (v6);
    }

    v9 = [[UARPAccessoryHardwareUSBPD alloc] initWithVendorID:+[UARPSupportedAccessoryUSBPD vendorID](UARPSupportedAccessoryUSBPD productID:"vendorID") usbpdClass:+[UARPSupportedAccessoryA3351 productID](UARPSupportedAccessoryA3351 locationType:"productID") supportsAccMode7:+[UARPSupportedAccessoryUSBPDPowerAdapter deviceClass](UARPSupportedAccessoryUSBPDPowerAdapter, "deviceClass"), +[UARPSupportedAccessoryUSBPD locationType], [(UARPSupportedAccessory *)v2 supportsAccMode7]];
    hwID = v2->hwID;
    v2->hwID = v9;

    [(UARPSupportedAccessory *)v2 setHardwareID:v2->hwID];
  }

  v11 = *MEMORY[0x277D85DE8];
  return v2;
}

@end