@interface IDSDaemonRequestContext
- (IDSDaemonRequestContext)initWithResponseHandler:(id)handler timeoutBlock:(id)block systemTimer:(id)timer;
- (id)timeoutBlock;
- (void)dealloc;
- (void)killSystemTimer;
@end

@implementation IDSDaemonRequestContext

- (void)dealloc
{
  [(IMTimer *)self->_systemTimer invalidate];
  v3.receiver = self;
  v3.super_class = IDSDaemonRequestContext;
  [(IDSDaemonRequestContext *)&v3 dealloc];
}

- (IDSDaemonRequestContext)initWithResponseHandler:(id)handler timeoutBlock:(id)block systemTimer:(id)timer
{
  handlerCopy = handler;
  blockCopy = block;
  timerCopy = timer;
  v17.receiver = self;
  v17.super_class = IDSDaemonRequestContext;
  v12 = [(IDSDaemonRequestContext *)&v17 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_responseHandler, handler);
    v14 = [blockCopy copy];
    timeoutBlock = v13->_timeoutBlock;
    v13->_timeoutBlock = v14;

    objc_storeStrong(&v13->_systemTimer, timer);
  }

  return v13;
}

- (id)timeoutBlock
{
  v2 = MEMORY[0x19A8BBEF0](self->_timeoutBlock, a2);

  return v2;
}

- (void)killSystemTimer
{
  [(IMTimer *)self->_systemTimer invalidate];
  systemTimer = self->_systemTimer;
  self->_systemTimer = 0;
}

@end