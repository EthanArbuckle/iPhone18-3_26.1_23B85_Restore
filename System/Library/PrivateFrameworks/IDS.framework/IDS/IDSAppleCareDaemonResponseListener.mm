@interface IDSAppleCareDaemonResponseListener
- (IDSAppleCareDaemonResponseListener)initWithDisconnectedBlockAndNoTimeout:(id)timeout;
- (IDSAppleCareDaemonResponseListener)initWithRequestTimer:(id)timer;
- (void)applecareResponseForRequestID:(id)d withError:(id)error;
- (void)daemonDisconnected;
@end

@implementation IDSAppleCareDaemonResponseListener

- (IDSAppleCareDaemonResponseListener)initWithRequestTimer:(id)timer
{
  timerCopy = timer;
  v9.receiver = self;
  v9.super_class = IDSAppleCareDaemonResponseListener;
  v6 = [(IDSAppleCareDaemonResponseListener *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_requestTimer, timer);
  }

  return v7;
}

- (IDSAppleCareDaemonResponseListener)initWithDisconnectedBlockAndNoTimeout:(id)timeout
{
  timeoutCopy = timeout;
  v9.receiver = self;
  v9.super_class = IDSAppleCareDaemonResponseListener;
  v5 = [(IDSAppleCareDaemonResponseListener *)&v9 init];
  if (v5)
  {
    v6 = [timeoutCopy copy];
    disconnectedBlock = v5->_disconnectedBlock;
    v5->_disconnectedBlock = v6;
  }

  return v5;
}

- (void)applecareResponseForRequestID:(id)d withError:(id)error
{
  errorCopy = error;
  v7 = [(IDSDaemonRequestTimer *)self->_requestTimer invalidateTimeoutAndReturnHandlerForRequestID:d];
  block = [v7 block];
  queue = [v7 queue];
  v10 = queue;
  if (block)
  {
    v11 = queue == 0;
  }

  else
  {
    v11 = 1;
  }

  if (!v11)
  {
    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 3221225472;
    v12[2] = sub_195A4C100;
    v12[3] = &unk_1E743EAA8;
    v13 = errorCopy;
    v14 = block;
    dispatch_async(v10, v12);
  }
}

- (void)daemonDisconnected
{
  disconnectedBlock = self->_disconnectedBlock;
  if (disconnectedBlock)
  {
    disconnectedBlock[2]();
  }
}

@end