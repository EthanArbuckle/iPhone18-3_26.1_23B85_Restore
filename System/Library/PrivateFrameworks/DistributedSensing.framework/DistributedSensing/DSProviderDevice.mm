@interface DSProviderDevice
- (DSProviderDevice)initWithRapportDevice:(id)device queue:(id)queue;
@end

@implementation DSProviderDevice

- (DSProviderDevice)initWithRapportDevice:(id)device queue:(id)queue
{
  v5.receiver = self;
  v5.super_class = DSProviderDevice;
  result = [(DSRapportDevice *)&v5 initWithRapportDevice:device queue:queue];
  if (result)
  {
    result->_isResponsePending = 0;
  }

  return result;
}

@end