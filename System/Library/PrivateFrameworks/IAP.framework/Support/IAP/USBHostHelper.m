@interface USBHostHelper
- (void)_run;
- (void)dealloc;
- (void)start;
@end

@implementation USBHostHelper

- (void)start
{
  v3 = [[NSThread alloc] initWithTarget:self selector:"_run" object:0];
  self->_runLoopThread = v3;

  [(NSThread *)v3 start];
}

- (void)_run
{
  Current = CFRunLoopGetCurrent();
  usbHostPort = self->_usbHostPort;
  v5 = *(usbHostPort + 27);
  if (v5)
  {
    *(usbHostPort + 28) = Current;
    CFRunLoopAddSource(Current, v5, kCFRunLoopDefaultMode);

    CFRunLoopRun();
  }
}

- (void)dealloc
{
  self->_runLoopThread = 0;
  v3.receiver = self;
  v3.super_class = USBHostHelper;
  [(USBHostHelper *)&v3 dealloc];
}

@end