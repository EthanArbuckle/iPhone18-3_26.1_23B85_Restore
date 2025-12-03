@interface _GPURawCounterSourceGroup
- (_GPURawCounterSourceGroup)initWithAcceleratorPort:(unsigned int)port;
- (void)dealloc;
@end

@implementation _GPURawCounterSourceGroup

- (_GPURawCounterSourceGroup)initWithAcceleratorPort:(unsigned int)port
{
  v5.receiver = self;
  v5.super_class = _GPURawCounterSourceGroup;
  result = [(_GPURawCounterSourceGroup *)&v5 init];
  if (result)
  {
    result->_acceleratorPort = port;
    if (!port)
    {

      return 0;
    }
  }

  return result;
}

- (void)dealloc
{
  acceleratorPort = self->_acceleratorPort;
  if (acceleratorPort)
  {
    IOObjectRelease(acceleratorPort);
    self->_acceleratorPort = 0;
  }

  v4.receiver = self;
  v4.super_class = _GPURawCounterSourceGroup;
  [(_GPURawCounterSourceGroup *)&v4 dealloc];
}

@end