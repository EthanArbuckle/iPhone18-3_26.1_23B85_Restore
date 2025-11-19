@interface UARPSupportedAccessoryA2562
- (UARPSupportedAccessoryA2562)init;
@end

@implementation UARPSupportedAccessoryA2562

- (UARPSupportedAccessoryA2562)init
{
  v11.receiver = self;
  v11.super_class = UARPSupportedAccessoryA2562;
  v2 = [(UARPSupportedAccessory *)&v11 init];
  if (v2)
  {
    v3 = +[UARPSupportedAccessoryA2562 appleModelNumber];
    [(UARPSupportedAccessory *)v2 setAppleModelNumber:v3];

    [(UARPSupportedAccessory *)v2 setModelName:@"Sidekick"];
    v4 = [UARPAccessoryHardwareHDS alloc];
    v5 = objc_alloc(MEMORY[0x277CCAD78]);
    v6 = +[UARPSupportedAccessoryA2562 modelUUID];
    v7 = [v5 initWithUUIDString:v6];
    v8 = [(UARPAccessoryHardwareHDS *)v4 initWithUUID:v7];
    hwID = v2->hwID;
    v2->hwID = v8;

    [(UARPSupportedAccessory *)v2 setHardwareID:v2->hwID];
  }

  return v2;
}

@end