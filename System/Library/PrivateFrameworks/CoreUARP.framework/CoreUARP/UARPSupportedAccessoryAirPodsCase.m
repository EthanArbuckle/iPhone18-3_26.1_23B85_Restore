@interface UARPSupportedAccessoryAirPodsCase
- (UARPSupportedAccessoryAirPodsCase)init;
@end

@implementation UARPSupportedAccessoryAirPodsCase

- (UARPSupportedAccessoryAirPodsCase)init
{
  v5.receiver = self;
  v5.super_class = UARPSupportedAccessoryAirPodsCase;
  v2 = [(UARPSupportedAccessory *)&v5 init];
  v3 = v2;
  if (v2)
  {
    [(UARPSupportedAccessory *)v2 setVendorName:@"Apple Inc."];
    [(UARPSupportedAccessory *)v3 setSupportsInternalSettings:1];
    [(UARPSupportedAccessory *)v3 setSupportsDeveloperSettings:1];
    [(UARPSupportedAccessory *)v3 setAllowDownloadOnCellular:1];
    [(UARPSupportedAccessory *)v3 setUpdaterName:@"BTLEServer"];
    [(UARPSupportedAccessory *)v3 setTtrSolicitLogs:1];
    [(UARPSupportedAccessory *)v3 setPersonalizationNotification:@"com.apple.uarp.BTLEServer.personalizationNeeded"];
  }

  return v3;
}

@end