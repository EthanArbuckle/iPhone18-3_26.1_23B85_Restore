@interface UARPSupportedAccessoryA2675
- (UARPSupportedAccessoryA2675)init;
@end

@implementation UARPSupportedAccessoryA2675

- (UARPSupportedAccessoryA2675)init
{
  v8.receiver = self;
  v8.super_class = UARPSupportedAccessoryA2675;
  v2 = [(UARPSupportedAccessoryWatchPuck *)&v8 init];
  if (v2)
  {
    v3 = +[UARPSupportedAccessoryA2675 appleModelNumber];
    [(UARPSupportedAccessory *)v2 setAppleModelNumber:v3];

    [(UARPSupportedAccessory *)v2 setModelName:@"Watch Puck Charger (MFi Module)"];
    v4 = +[UARPSupportedAccessoryA2755 appleModelNumber];
    [(UARPSupportedAccessory *)v2 setMobileAssetAppleModelNumber:v4];

    v5 = [[UARPAccessoryHardwareHID alloc] initWithVendorID:+[UARPSupportedAccessoryHID vendorID](UARPSupportedAccessoryHID productID:"vendorID"), +[UARPSupportedAccessoryA2675 productID]];
    hwID = v2->hwID;
    v2->hwID = v5;

    [(UARPSupportedAccessory *)v2 setHardwareID:v2->hwID];
  }

  return v2;
}

@end