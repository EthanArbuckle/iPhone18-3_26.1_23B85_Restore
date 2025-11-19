@interface UARPSupportedAccessoryA2699
- (UARPSupportedAccessoryA2699)init;
@end

@implementation UARPSupportedAccessoryA2699

- (UARPSupportedAccessoryA2699)init
{
  v20 = *MEMORY[0x277D85DE8];
  v18.receiver = self;
  v18.super_class = UARPSupportedAccessoryA2699;
  v2 = [(UARPSupportedAccessoryAirPodsBud *)&v18 init];
  if (v2)
  {
    v3 = +[UARPSupportedAccessoryA2699 appleModelNumber];
    [(UARPSupportedAccessory *)v2 setAppleModelNumber:v3];

    [(UARPSupportedAccessory *)v2 setModelName:@"AirPods Pro 2"];
    v4 = +[UARPSupportedAccessoryA2699 mobileAssetAppleModelNumber];
    [(UARPSupportedAccessory *)v2 setMobileAssetAppleModelNumber:v4];

    v16 = 0u;
    v17 = 0u;
    v14 = 0u;
    v15 = 0u;
    v5 = +[UARPSupportedAccessoryA2699 alternativeAppleModelNumbers];
    v6 = [v5 countByEnumeratingWithState:&v14 objects:v19 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = *v15;
      do
      {
        v9 = 0;
        do
        {
          if (*v15 != v8)
          {
            objc_enumerationMutation(v5);
          }

          [(UARPSupportedAccessory *)v2 addAlternativeAppleModelNumber:*(*(&v14 + 1) + 8 * v9++)];
        }

        while (v7 != v9);
        v7 = [v5 countByEnumeratingWithState:&v14 objects:v19 count:16];
      }

      while (v7);
    }

    v10 = [[UARPAccessoryHardwareBluetooth alloc] initWithVendorIDSource:1 vendorID:+[UARPSupportedAccessoryAirPodsBud vendorID](UARPSupportedAccessoryAirPodsBud productID:"vendorID") productVersion:+[UARPSupportedAccessoryA2699 productID], 1];
    hwID = v2->hwID;
    v2->hwID = v10;

    [(UARPSupportedAccessory *)v2 setHardwareID:v2->hwID];
  }

  v12 = *MEMORY[0x277D85DE8];
  return v2;
}

@end