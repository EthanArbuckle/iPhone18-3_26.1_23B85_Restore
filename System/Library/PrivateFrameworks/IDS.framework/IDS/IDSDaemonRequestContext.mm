@interface IDSDaemonRequestContext
- (IDSDaemonRequestContext)initWithResponseHandler:(id)a3 timeoutBlock:(id)a4 systemTimer:(id)a5;
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

- (IDSDaemonRequestContext)initWithResponseHandler:(id)a3 timeoutBlock:(id)a4 systemTimer:(id)a5
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v17.receiver = self;
  v17.super_class = IDSDaemonRequestContext;
  v12 = [(IDSDaemonRequestContext *)&v17 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_responseHandler, a3);
    v14 = [v10 copy];
    timeoutBlock = v13->_timeoutBlock;
    v13->_timeoutBlock = v14;

    objc_storeStrong(&v13->_systemTimer, a5);
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