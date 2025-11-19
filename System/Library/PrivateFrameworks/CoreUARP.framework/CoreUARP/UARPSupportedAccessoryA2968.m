@interface UARPSupportedAccessoryA2968
- (UARPSupportedAccessoryA2968)init;
@end

@implementation UARPSupportedAccessoryA2968

- (UARPSupportedAccessoryA2968)init
{
  v7.receiver = self;
  v7.super_class = UARPSupportedAccessoryA2968;
  v2 = [(UARPSupportedAccessoryAirPodsCase *)&v7 init];
  if (v2)
  {
    v3 = +[UARPSupportedAccessoryA2968 appleModelNumber];
    [(UARPSupportedAccessory *)v2 setAppleModelNumber:v3];

    [(UARPSupportedAccessory *)v2 setModelName:@"AirPods Pro 2 Case (USB-C)"];
    v4 = [[UARPAccessoryHardwareBluetooth alloc] initWithVendorIDSource:1 vendorID:+[UARPSupportedAccessoryAirPodsCase vendorID](UARPSupportedAccessoryAirPodsCase productID:"vendorID") productVersion:+[UARPSupportedAccessoryA2968 productID], 1];
    hwID = v2->hwID;
    v2->hwID = v4;

    [(UARPSupportedAccessory *)v2 setHardwareID:v2->hwID];
  }

  return v2;
}

@end