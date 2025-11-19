@interface DSListenerDevice
- (DSListenerDevice)initWithRapportDevice:(id)a3 queue:(id)a4;
@end

@implementation DSListenerDevice

- (DSListenerDevice)initWithRapportDevice:(id)a3 queue:(id)a4
{
  v8.receiver = self;
  v8.super_class = DSListenerDevice;
  v4 = [(DSRapportDevice *)&v8 initWithRapportDevice:a3 queue:a4];
  v5 = v4;
  if (v4)
  {
    responseHandler = v4->_responseHandler;
    v4->_responseHandler = 0;
  }

  return v5;
}

@end