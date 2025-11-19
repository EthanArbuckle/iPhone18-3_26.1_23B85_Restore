@interface UARPAccessoryHardwareIIC
- (UARPAccessoryHardwareIIC)init;
@end

@implementation UARPAccessoryHardwareIIC

- (UARPAccessoryHardwareIIC)init
{
  v3.receiver = self;
  v3.super_class = UARPAccessoryHardwareIIC;
  return [(UARPAccessoryHardwareID *)&v3 initWithTransport:10];
}

@end