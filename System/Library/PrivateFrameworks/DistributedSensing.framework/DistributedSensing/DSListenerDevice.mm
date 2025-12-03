@interface DSListenerDevice
- (DSListenerDevice)initWithRapportDevice:(id)device queue:(id)queue;
@end

@implementation DSListenerDevice

- (DSListenerDevice)initWithRapportDevice:(id)device queue:(id)queue
{
  v8.receiver = self;
  v8.super_class = DSListenerDevice;
  v4 = [(DSRapportDevice *)&v8 initWithRapportDevice:device queue:queue];
  v5 = v4;
  if (v4)
  {
    responseHandler = v4->_responseHandler;
    v4->_responseHandler = 0;
  }

  return v5;
}

@end