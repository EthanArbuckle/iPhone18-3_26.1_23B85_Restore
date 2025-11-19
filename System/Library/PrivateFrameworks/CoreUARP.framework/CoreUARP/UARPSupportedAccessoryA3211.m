@interface UARPSupportedAccessoryA3211
- (UARPSupportedAccessoryA3211)init;
@end

@implementation UARPSupportedAccessoryA3211

- (UARPSupportedAccessoryA3211)init
{
  v7.receiver = self;
  v7.super_class = UARPSupportedAccessoryA3211;
  v2 = [(UARPSupportedAccessoryBeatsBluetooth *)&v7 init];
  if (v2)
  {
    v3 = +[UARPSupportedAccessoryA3211 appleModelNumber];
    [(UARPSupportedAccessory *)v2 setAppleModelNumber:v3];

    [(UARPSupportedAccessory *)v2 setModelName:@"Speaker"];
    [(UARPSupportedAccessory *)v2 setSupportsHeySiriCompact:0];
    v4 = [[UARPAccessoryHardwareBluetooth alloc] initWithVendorIDSource:1 vendorID:+[UARPSupportedAccessoryBeatsBluetooth vendorID](UARPSupportedAccessoryBeatsBluetooth productID:"vendorID") productVersion:+[UARPSupportedAccessoryA3211 productID], 1];
    hwID = v2->hwID;
    v2->hwID = v4;

    [(UARPSupportedAccessory *)v2 setHardwareID:v2->hwID];
  }

  return v2;
}

@end