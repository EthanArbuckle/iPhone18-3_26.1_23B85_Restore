@interface UARPSupportedAccessoryWatchPuck
- (UARPSupportedAccessoryWatchPuck)init;
@end

@implementation UARPSupportedAccessoryWatchPuck

- (UARPSupportedAccessoryWatchPuck)init
{
  v5.receiver = self;
  v5.super_class = UARPSupportedAccessoryWatchPuck;
  v2 = [(UARPSupportedAccessoryHID *)&v5 init];
  v3 = v2;
  if (v2)
  {
    [(UARPSupportedAccessory *)v2 setSupportsPowerLogging:1];
    [(UARPSupportedAccessory *)v3 setSupportsInternalSettings:1];
    [(UARPSupportedAccessory *)v3 setCapabilities:1];
  }

  return v3;
}

@end