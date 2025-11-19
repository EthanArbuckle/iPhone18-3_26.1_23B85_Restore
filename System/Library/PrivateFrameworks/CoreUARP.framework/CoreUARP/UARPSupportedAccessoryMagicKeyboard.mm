@interface UARPSupportedAccessoryMagicKeyboard
- (UARPSupportedAccessoryMagicKeyboard)init;
@end

@implementation UARPSupportedAccessoryMagicKeyboard

- (UARPSupportedAccessoryMagicKeyboard)init
{
  v5.receiver = self;
  v5.super_class = UARPSupportedAccessoryMagicKeyboard;
  v2 = [(UARPSupportedAccessoryHID *)&v5 init];
  v3 = v2;
  if (v2)
  {
    [(UARPSupportedAccessory *)v2 setUploaderResponseTimeout:5000];
  }

  return v3;
}

@end