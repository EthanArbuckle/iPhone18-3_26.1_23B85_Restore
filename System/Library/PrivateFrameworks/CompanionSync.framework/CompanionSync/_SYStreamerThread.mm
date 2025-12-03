@interface _SYStreamerThread
+ (id)streamerThread;
- (NSRunLoop)runLoop;
- (_SYStreamerThread)init;
- (void)_waitForStartup;
- (void)main;
@end

@implementation _SYStreamerThread

+ (id)streamerThread
{
  os_unfair_lock_lock(&streamerThread_threadLock);
  if (!streamerThread_thread)
  {
    v2 = objc_opt_new();
    v3 = streamerThread_thread;
    streamerThread_thread = v2;

    [streamerThread_thread start];
    [streamerThread_thread _waitForStartup];
  }

  os_unfair_lock_unlock(&streamerThread_threadLock);
  v4 = streamerThread_thread;

  return v4;
}

- (_SYStreamerThread)init
{
  v7.receiver = self;
  v7.super_class = _SYStreamerThread;
  v2 = [(_SYStreamerThread *)&v7 init];
  if (v2)
  {
    v3 = [objc_alloc(MEMORY[0x1E696AB38]) initWithCondition:0];
    startupLock = v2->_startupLock;
    v2->_startupLock = v3;

    v5 = v2;
  }

  return v2;
}

- (void)_waitForStartup
{
  if ([(NSConditionLock *)self->_startupLock condition]!= 1)
  {
    [(NSConditionLock *)self->_startupLock lockWhenCondition:1];
    startupLock = self->_startupLock;

    [(NSConditionLock *)startupLock unlock];
  }
}

- (NSRunLoop)runLoop
{
  if ([(NSConditionLock *)self->_startupLock condition]!= 1)
  {
    [(NSConditionLock *)self->_startupLock lockWhenCondition:1];
    [(NSConditionLock *)self->_startupLock unlock];
  }

  threadRunLoop = self->_threadRunLoop;

  return threadRunLoop;
}

- (void)main
{
  [(NSConditionLock *)self->_startupLock lock];
  currentRunLoop = [MEMORY[0x1E695DFD0] currentRunLoop];
  threadRunLoop = self->_threadRunLoop;
  self->_threadRunLoop = currentRunLoop;

  v8 = 0;
  v7.version = 0;
  memset(&v7.retain, 0, 56);
  v7.info = &v8;
  v7.perform = _StopPerform;
  self->_stopRLS = CFRunLoopSourceCreate(*MEMORY[0x1E695E480], 0, &v7);
  CFRunLoopAddSource([(NSRunLoop *)self->_threadRunLoop getCFRunLoop], self->_stopRLS, @"_SYWaitingForStream");
  [(NSConditionLock *)self->_startupLock unlockWithCondition:1];
  if ((v8 & 1) == 0)
  {
    do
    {
      v5 = self->_threadRunLoop;
      distantFuture = [MEMORY[0x1E695DF00] distantFuture];
      [(NSRunLoop *)v5 runMode:@"_SYWaitingForStream" beforeDate:distantFuture];
    }

    while (!v8);
  }

  [(NSConditionLock *)self->_startupLock lock];
  [(NSConditionLock *)self->_startupLock unlockWithCondition:0];
}

@end