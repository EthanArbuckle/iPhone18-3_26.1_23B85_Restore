@interface UARPSupportedAccessoryA2580
- (UARPSupportedAccessoryA2580)init;
@end

@implementation UARPSupportedAccessoryA2580

- (UARPSupportedAccessoryA2580)init
{
  v19 = *MEMORY[0x277D85DE8];
  v17.receiver = self;
  v17.super_class = UARPSupportedAccessoryA2580;
  v2 = [(UARPSupportedAccessoryMagSafe *)&v17 init];
  if (v2)
  {
    v3 = +[UARPSupportedAccessoryA2580 appleModelNumber];
    [(UARPSupportedAccessory *)v2 setAppleModelNumber:v3];

    [(UARPSupportedAccessory *)v2 setModelName:@"MagSafe Charger"];
    [(UARPSupportedAccessory *)v2 setSupportsMappedAnalytics:1];
    v15 = 0u;
    v16 = 0u;
    v13 = 0u;
    v14 = 0u;
    v4 = +[UARPSupportedAccessoryA2580 alternativeAppleModelNumbers];
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

    v9 = [[UARPAccessoryHardwareHID alloc] initWithVendorID:+[UARPSupportedAccessoryHID vendorID](UARPSupportedAccessoryHID productID:"vendorID"), +[UARPSupportedAccessoryA2580 productID]];
    hwID = v2->hwID;
    v2->hwID = v9;

    [(UARPSupportedAccessory *)v2 setHardwareID:v2->hwID];
  }

  v11 = *MEMORY[0x277D85DE8];
  return v2;
}

@end