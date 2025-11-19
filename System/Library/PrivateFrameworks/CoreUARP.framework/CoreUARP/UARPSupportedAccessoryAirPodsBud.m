@interface UARPSupportedAccessoryAirPodsBud
- (UARPSupportedAccessoryAirPodsBud)init;
@end

@implementation UARPSupportedAccessoryAirPodsBud

- (UARPSupportedAccessoryAirPodsBud)init
{
  v5.receiver = self;
  v5.super_class = UARPSupportedAccessoryAirPodsBud;
  v2 = [(UARPSupportedAccessory *)&v5 init];
  v3 = v2;
  if (v2)
  {
    [(UARPSupportedAccessory *)v2 setVendorName:@"Apple Inc."];
    [(UARPSupportedAccessory *)v3 setSupportsHeySiriCompact:1];
    [(UARPSupportedAccessory *)v3 setReofferFirmwareOnSync:1];
    [(UARPSupportedAccessory *)v3 setSupportsFriendlyName:1];
    [(UARPSupportedAccessory *)v3 setSupportsInternalSettings:1];
    [(UARPSupportedAccessory *)v3 setSupportsDeveloperSettings:1];
    [(UARPSupportedAccessory *)v3 setSupportsVersions:1];
    [(UARPSupportedAccessory *)v3 setAllowDownloadOnCellular:1];
    [(UARPSupportedAccessory *)v3 setTtrSolicitLogs:1];
    [(UARPSupportedAccessory *)v3 setUpdaterName:@"BTLEServer"];
    [(UARPSupportedAccessory *)v3 addBSDNotificationName:@"com.apple.corespeech.voicetriggerassetchange"];
  }

  return v3;
}

@end