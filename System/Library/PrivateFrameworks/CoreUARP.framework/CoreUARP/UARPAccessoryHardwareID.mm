@interface UARPAccessoryHardwareID
- (UARPAccessoryHardwareID)init;
- (UARPAccessoryHardwareID)initWithTransport:(int64_t)transport;
@end

@implementation UARPAccessoryHardwareID

- (UARPAccessoryHardwareID)init
{
  [(UARPAccessoryHardwareID *)self doesNotRecognizeSelector:a2];

  return 0;
}

- (UARPAccessoryHardwareID)initWithTransport:(int64_t)transport
{
  v5.receiver = self;
  v5.super_class = UARPAccessoryHardwareID;
  result = [(UARPAccessoryHardwareID *)&v5 init];
  if (result)
  {
    result->_transport = transport;
  }

  return result;
}

@end