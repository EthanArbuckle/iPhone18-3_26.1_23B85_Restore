@interface UARPSupportedAccessoryA2755
- (UARPSupportedAccessoryA2755)init;
@end

@implementation UARPSupportedAccessoryA2755

- (UARPSupportedAccessoryA2755)init
{
  v9.receiver = self;
  v9.super_class = UARPSupportedAccessoryA2755;
  v2 = [(UARPSupportedAccessoryWatchPuck *)&v9 init];
  if (v2)
  {
    v3 = +[UARPSupportedAccessoryA2755 appleModelNumber];
    [(UARPSupportedAccessory *)v2 setAppleModelNumber:v3];

    [(UARPSupportedAccessory *)v2 setModelName:@"Watch Puck Charger (MFi Module)"];
    v4 = [[UARPAccessoryHardwareHID alloc] initWithVendorID:+[UARPSupportedAccessoryHID vendorID](UARPSupportedAccessoryHID productID:"vendorID"), +[UARPSupportedAccessoryA2755 productID]];
    hwID = v2->hwID;
    v2->hwID = v4;

    [(UARPSupportedAccessory *)v2 setHardwareID:v2->hwID];
    v6 = [[UARPAccessoryHIDPersonality alloc] initWithVendorID:1293 productID:346];
    [(UARPAccessoryHardwareHID *)v2->hwID addPersonality:v6];
    v7 = [[UARPAccessoryHIDPersonality alloc] initWithVendorID:12907 productID:289];
    [(UARPAccessoryHardwareHID *)v2->hwID addPersonality:v7];
  }

  return v2;
}

@end