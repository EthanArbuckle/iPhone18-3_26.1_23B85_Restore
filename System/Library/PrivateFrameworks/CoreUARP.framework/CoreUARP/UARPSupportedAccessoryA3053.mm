@interface UARPSupportedAccessoryA3053
- (UARPSupportedAccessoryA3053)init;
@end

@implementation UARPSupportedAccessoryA3053

- (UARPSupportedAccessoryA3053)init
{
  v19 = *MEMORY[0x277D85DE8];
  v17.receiver = self;
  v17.super_class = UARPSupportedAccessoryA3053;
  v2 = [(UARPSupportedAccessoryAirPodsBud *)&v17 init];
  if (v2)
  {
    v3 = +[UARPSupportedAccessoryA3053 appleModelNumber];
    [(UARPSupportedAccessory *)v2 setAppleModelNumber:v3];

    [(UARPSupportedAccessory *)v2 setModelName:@"AirPods Pro 2"];
    v15 = 0u;
    v16 = 0u;
    v13 = 0u;
    v14 = 0u;
    v4 = +[UARPSupportedAccessoryA3053 alternativeAppleModelNumbers];
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

    v9 = [[UARPAccessoryHardwareBluetooth alloc] initWithVendorIDSource:1 vendorID:+[UARPSupportedAccessoryAirPodsBud vendorID](UARPSupportedAccessoryAirPodsBud productID:"vendorID") productVersion:+[UARPSupportedAccessoryA3053 productID], 1];
    hwID = v2->hwID;
    v2->hwID = v9;

    [(UARPSupportedAccessory *)v2 setHardwareID:v2->hwID];
  }

  v11 = *MEMORY[0x277D85DE8];
  return v2;
}

@end