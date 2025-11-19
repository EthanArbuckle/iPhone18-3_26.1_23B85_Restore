@interface UARPSupportedAccessoryIP
- (UARPSupportedAccessoryIP)init;
@end

@implementation UARPSupportedAccessoryIP

- (UARPSupportedAccessoryIP)init
{
  v5.receiver = self;
  v5.super_class = UARPSupportedAccessoryIP;
  v2 = [(UARPSupportedAccessory *)&v5 init];
  v3 = v2;
  if (v2)
  {
    [(UARPSupportedAccessory *)v2 setVendorName:@"Apple Inc."];
  }

  return v3;
}

@end