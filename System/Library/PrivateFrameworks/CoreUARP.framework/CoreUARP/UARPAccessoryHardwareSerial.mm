@interface UARPAccessoryHardwareSerial
- (UARPAccessoryHardwareSerial)init;
@end

@implementation UARPAccessoryHardwareSerial

- (UARPAccessoryHardwareSerial)init
{
  v3.receiver = self;
  v3.super_class = UARPAccessoryHardwareSerial;
  return [(UARPAccessoryHardwareID *)&v3 initWithTransport:5];
}

@end