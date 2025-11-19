@interface _GPURawCounterSourceGroup
- (_GPURawCounterSourceGroup)initWithAcceleratorPort:(unsigned int)a3;
- (void)dealloc;
@end

@implementation _GPURawCounterSourceGroup

- (_GPURawCounterSourceGroup)initWithAcceleratorPort:(unsigned int)a3
{
  v5.receiver = self;
  v5.super_class = _GPURawCounterSourceGroup;
  result = [(_GPURawCounterSourceGroup *)&v5 init];
  if (result)
  {
    result->_acceleratorPort = a3;
    if (!a3)
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