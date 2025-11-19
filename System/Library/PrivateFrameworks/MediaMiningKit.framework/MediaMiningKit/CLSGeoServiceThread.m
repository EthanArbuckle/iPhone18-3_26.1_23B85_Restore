@interface CLSGeoServiceThread
- (void)cancel;
- (void)main;
@end

@implementation CLSGeoServiceThread

- (void)cancel
{
  runLoop = self->_runLoop;
  if (runLoop)
  {
    CFRunLoopStop(runLoop);
  }

  v4.receiver = self;
  v4.super_class = CLSGeoServiceThread;
  [(CLSGeoServiceThread *)&v4 cancel];
}

- (void)main
{
  v3 = objc_autoreleasePoolPush();
  self->_runLoop = CFRunLoopGetCurrent();
  memset(&v6, 0, sizeof(v6));
  v4 = CFRunLoopSourceCreate(0, 0, &v6);
  v5 = *MEMORY[0x277CBF058];
  CFRunLoopAddSource(self->_runLoop, v4, *MEMORY[0x277CBF058]);
  CFRelease(v4);
  CFRunLoopRun();
  CFRunLoopRemoveSource(self->_runLoop, v4, v5);
  objc_autoreleasePoolPop(v3);
}

@end