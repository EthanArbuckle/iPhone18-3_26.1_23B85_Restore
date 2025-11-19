@interface UARPSupportedAccessoryA2924
- (UARPSupportedAccessoryA2924)init;
@end

@implementation UARPSupportedAccessoryA2924

- (UARPSupportedAccessoryA2924)init
{
  v7.receiver = self;
  v7.super_class = UARPSupportedAccessoryA2924;
  v2 = [(UARPSupportedAccessoryBeatsBluetooth *)&v7 init];
  if (v2)
  {
    v3 = +[UARPSupportedAccessoryA2924 appleModelNumber];
    [(UARPSupportedAccessory *)v2 setAppleModelNumber:v3];

    [(UARPSupportedAccessory *)v2 setModelName:@"Headset"];
    v4 = [[UARPAccessoryHardwareBluetooth alloc] initWithVendorIDSource:1 vendorID:+[UARPSupportedAccessoryBeatsBluetooth vendorID](UARPSupportedAccessoryBeatsBluetooth productID:"vendorID") productVersion:+[UARPSupportedAccessoryA2924 productID], 1];
    hwID = v2->hwID;
    v2->hwID = v4;

    [(UARPSupportedAccessory *)v2 setHardwareID:v2->hwID];
  }

  return v2;
}

@end