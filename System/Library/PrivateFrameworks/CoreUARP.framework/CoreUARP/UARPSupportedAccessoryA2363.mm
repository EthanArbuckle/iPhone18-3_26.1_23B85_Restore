@interface UARPSupportedAccessoryA2363
- (UARPSupportedAccessoryA2363)init;
@end

@implementation UARPSupportedAccessoryA2363

- (UARPSupportedAccessoryA2363)init
{
  v19 = *MEMORY[0x277D85DE8];
  v17.receiver = self;
  v17.super_class = UARPSupportedAccessoryA2363;
  v2 = [(UARPSupportedAccessoryUSBPDMagSafe *)&v17 init];
  if (v2)
  {
    v3 = +[UARPSupportedAccessoryA2363 appleModelNumber];
    [(UARPSupportedAccessory *)v2 setAppleModelNumber:v3];

    [(UARPSupportedAccessory *)v2 setModelName:@"MagSafe Charge Cable"];
    [(UARPSupportedAccessory *)v2 setSupportsLogs:1];
    [(UARPSupportedAccessory *)v2 setSupportsAnalytics:1];
    v15 = 0u;
    v16 = 0u;
    v13 = 0u;
    v14 = 0u;
    v4 = +[UARPSupportedAccessoryA2363 alternativeAppleModelNumbers];
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

    v9 = [[UARPAccessoryHardwareUSBPD alloc] initWithVendorID:+[UARPSupportedAccessoryUSBPD vendorID](UARPSupportedAccessoryUSBPD productID:"vendorID") usbpdClass:+[UARPSupportedAccessoryA2363 productID](UARPSupportedAccessoryA2363 locationType:"productID") supportsAccMode7:+[UARPSupportedAccessoryUSBPDMagSafe deviceClass](UARPSupportedAccessoryUSBPDMagSafe, "deviceClass"), +[UARPSupportedAccessoryUSBPDMagSafe locationType], [(UARPSupportedAccessory *)v2 supportsAccMode7]];
    hwID = v2->hwID;
    v2->hwID = v9;

    [(UARPSupportedAccessory *)v2 setHardwareID:v2->hwID];
  }

  v11 = *MEMORY[0x277D85DE8];
  return v2;
}

@end