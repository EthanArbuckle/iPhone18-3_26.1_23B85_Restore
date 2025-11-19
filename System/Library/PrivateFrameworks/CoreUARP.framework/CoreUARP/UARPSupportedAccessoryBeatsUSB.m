@interface UARPSupportedAccessoryBeatsUSB
- (UARPSupportedAccessoryBeatsUSB)init;
@end

@implementation UARPSupportedAccessoryBeatsUSB

- (UARPSupportedAccessoryBeatsUSB)init
{
  v5.receiver = self;
  v5.super_class = UARPSupportedAccessoryBeatsUSB;
  v2 = [(UARPSupportedAccessory *)&v5 init];
  v3 = v2;
  if (v2)
  {
    [(UARPSupportedAccessory *)v2 setVendorName:@"Beats by Dre"];
  }

  return v3;
}

@end