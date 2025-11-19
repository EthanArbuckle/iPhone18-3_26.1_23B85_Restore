@interface UARPSupportedAccessoryA3122
- (UARPSupportedAccessoryA3122)init;
@end

@implementation UARPSupportedAccessoryA3122

- (UARPSupportedAccessoryA3122)init
{
  v7.receiver = self;
  v7.super_class = UARPSupportedAccessoryA3122;
  v2 = [(UARPSupportedAccessoryAirPodsCase *)&v7 init];
  if (v2)
  {
    v3 = +[UARPSupportedAccessoryA3122 appleModelNumber];
    [(UARPSupportedAccessory *)v2 setAppleModelNumber:v3];

    [(UARPSupportedAccessory *)v2 setModelName:@"AirPods Pro Case"];
    v4 = [[UARPAccessoryHardwareBluetooth alloc] initWithVendorIDSource:1 vendorID:+[UARPSupportedAccessoryAirPodsCase vendorID](UARPSupportedAccessoryAirPodsCase productID:"vendorID") productVersion:+[UARPSupportedAccessoryA3122 productID], 1];
    hwID = v2->hwID;
    v2->hwID = v4;

    [(UARPSupportedAccessory *)v2 setHardwareID:v2->hwID];
  }

  return v2;
}

@end