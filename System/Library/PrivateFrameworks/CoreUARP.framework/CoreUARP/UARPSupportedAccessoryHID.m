@interface UARPSupportedAccessoryHID
- (UARPSupportedAccessoryHID)init;
@end

@implementation UARPSupportedAccessoryHID

- (UARPSupportedAccessoryHID)init
{
  v5.receiver = self;
  v5.super_class = UARPSupportedAccessoryHID;
  v2 = [(UARPSupportedAccessory *)&v5 init];
  v3 = v2;
  if (v2)
  {
    [(UARPSupportedAccessory *)v2 setVendorName:@"Apple Inc."];
    [(UARPSupportedAccessory *)v3 setUpdaterName:@"com.apple.UARPUpdaterServiceHID"];
    [(UARPSupportedAccessory *)v3 setSupportsInternalSettings:1];
    [(UARPSupportedAccessory *)v3 setUploaderResponseTimeout:10000];
    [(UARPSupportedAccessory *)v3 setPersonalizationNotification:@"com.apple.uarp.UARPUpdaterServiceHID.personalizationNeeded"];
  }

  return v3;
}

@end