@interface UARPSupportedAccessoryA2871
- (UARPSupportedAccessoryA2871)init;
- (id)description;
@end

@implementation UARPSupportedAccessoryA2871

- (UARPSupportedAccessoryA2871)init
{
  v19 = *MEMORY[0x277D85DE8];
  v17.receiver = self;
  v17.super_class = UARPSupportedAccessoryA2871;
  v2 = [(UARPSupportedAccessoryBeatsBluetooth *)&v17 init];
  if (v2)
  {
    v3 = +[UARPSupportedAccessoryA2871 appleModelNumber];
    [(UARPSupportedAccessory *)v2 setAppleModelNumber:v3];

    [(UARPSupportedAccessory *)v2 setModelName:@"Studio Buds"];
    v15 = 0u;
    v16 = 0u;
    v13 = 0u;
    v14 = 0u;
    v4 = +[UARPSupportedAccessoryA2871 alternativeAppleModelNumbers];
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

    v9 = [[UARPAccessoryHardwareBluetooth alloc] initWithVendorIDSource:1 vendorID:+[UARPSupportedAccessoryBeatsBluetooth vendorID](UARPSupportedAccessoryBeatsBluetooth productID:"vendorID") productVersion:+[UARPSupportedAccessoryA2871 productID], 1];
    hwID = v2->hwID;
    v2->hwID = v9;

    [(UARPSupportedAccessory *)v2 setHardwareID:v2->hwID];
  }

  v11 = *MEMORY[0x277D85DE8];
  return v2;
}

- (id)description
{
  v3 = objc_opt_new();
  v4 = +[UARPSupportedAccessoryA2871 appleModelNumber];
  [v3 appendFormat:@"Apple Model Number: %@\n", v4];

  [v3 appendFormat:@"HardwareID: %@\n", self->hwID];
  downstreamAppleModelNumbers = [(UARPSupportedAccessory *)self downstreamAppleModelNumbers];
  v6 = [downstreamAppleModelNumbers count];

  if (v6)
  {
    downstreamAppleModelNumbers2 = [(UARPSupportedAccessory *)self downstreamAppleModelNumbers];
    [v3 appendFormat:@", Downstream Apple Model Numbers = %@", downstreamAppleModelNumbers2];
  }

  alternativeAppleModelNumbers = [(UARPSupportedAccessory *)self alternativeAppleModelNumbers];
  v9 = [alternativeAppleModelNumbers count];

  if (v9)
  {
    alternativeAppleModelNumbers2 = [(UARPSupportedAccessory *)self alternativeAppleModelNumbers];
    [v3 appendFormat:@", Alternative Apple Model Numbers = %@", alternativeAppleModelNumbers2];
  }

  mobileAssetAppleModelNumber = [(UARPSupportedAccessory *)self mobileAssetAppleModelNumber];

  if (mobileAssetAppleModelNumber)
  {
    mobileAssetAppleModelNumber2 = [(UARPSupportedAccessory *)self mobileAssetAppleModelNumber];
    [v3 appendFormat:@", Mobile Asset Apple Model Numbers = %@", mobileAssetAppleModelNumber2];
  }

  [v3 appendFormat:@"\n"];
  v13 = [MEMORY[0x277CCACA8] stringWithString:v3];

  return v13;
}

@end