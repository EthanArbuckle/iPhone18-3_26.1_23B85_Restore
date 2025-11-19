@interface DSProviderDevice
- (DSProviderDevice)initWithRapportDevice:(id)a3 queue:(id)a4;
@end

@implementation DSProviderDevice

- (DSProviderDevice)initWithRapportDevice:(id)a3 queue:(id)a4
{
  v5.receiver = self;
  v5.super_class = DSProviderDevice;
  result = [(DSRapportDevice *)&v5 initWithRapportDevice:a3 queue:a4];
  if (result)
  {
    result->_isResponsePending = 0;
  }

  return result;
}

@end