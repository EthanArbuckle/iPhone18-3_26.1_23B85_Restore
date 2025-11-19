@interface UARPSupportedAccessoryA2463
- (UARPSupportedAccessoryA2463)init;
@end

@implementation UARPSupportedAccessoryA2463

- (UARPSupportedAccessoryA2463)init
{
  v12.receiver = self;
  v12.super_class = UARPSupportedAccessoryA2463;
  v2 = [(UARPSupportedAccessoryMagSafe *)&v12 init];
  if (v2)
  {
    v3 = +[UARPSupportedAccessoryA2463 appleModelNumber];
    [(UARPSupportedAccessory *)v2 setAppleModelNumber:v3];

    [(UARPSupportedAccessory *)v2 setModelName:@"MagSafe Charger (MFi Module)"];
    v4 = [[UARPAccessoryHardwareHID alloc] initWithVendorID:+[UARPSupportedAccessoryHID vendorID](UARPSupportedAccessoryHID productID:"vendorID"), +[UARPSupportedAccessoryA2463 productID]];
    hwID = v2->hwID;
    v2->hwID = v4;

    v6 = [[UARPAccessoryHIDPersonality alloc] initWithVendorID:11145 productID:50652];
    [(UARPAccessoryHardwareHID *)v2->hwID addPersonality:v6];
    v7 = [[UARPAccessoryHIDPersonality alloc] initWithVendorID:11145 productID:24790];
    [(UARPAccessoryHardwareHID *)v2->hwID addPersonality:v7];
    v8 = [[UARPAccessoryHIDPersonality alloc] initWithVendorID:11145 productID:40119];
    [(UARPAccessoryHardwareHID *)v2->hwID addPersonality:v8];
    v9 = [[UARPAccessoryHIDPersonality alloc] initWithVendorID:11145 productID:15125];
    [(UARPAccessoryHardwareHID *)v2->hwID addPersonality:v9];
    v10 = [[UARPAccessoryHIDPersonality alloc] initWithVendorID:11145 productID:15126];
    [(UARPAccessoryHardwareHID *)v2->hwID addPersonality:v10];
    [(UARPSupportedAccessory *)v2 setHardwareID:v2->hwID];
  }

  return v2;
}

@end