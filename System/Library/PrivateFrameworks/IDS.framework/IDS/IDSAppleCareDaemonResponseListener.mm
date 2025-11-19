@interface IDSAppleCareDaemonResponseListener
- (IDSAppleCareDaemonResponseListener)initWithDisconnectedBlockAndNoTimeout:(id)a3;
- (IDSAppleCareDaemonResponseListener)initWithRequestTimer:(id)a3;
- (void)applecareResponseForRequestID:(id)a3 withError:(id)a4;
- (void)daemonDisconnected;
@end

@implementation IDSAppleCareDaemonResponseListener

- (IDSAppleCareDaemonResponseListener)initWithRequestTimer:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = IDSAppleCareDaemonResponseListener;
  v6 = [(IDSAppleCareDaemonResponseListener *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_requestTimer, a3);
  }

  return v7;
}

- (IDSAppleCareDaemonResponseListener)initWithDisconnectedBlockAndNoTimeout:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = IDSAppleCareDaemonResponseListener;
  v5 = [(IDSAppleCareDaemonResponseListener *)&v9 init];
  if (v5)
  {
    v6 = [v4 copy];
    disconnectedBlock = v5->_disconnectedBlock;
    v5->_disconnectedBlock = v6;
  }

  return v5;
}

- (void)applecareResponseForRequestID:(id)a3 withError:(id)a4
{
  v6 = a4;
  v7 = [(IDSDaemonRequestTimer *)self->_requestTimer invalidateTimeoutAndReturnHandlerForRequestID:a3];
  v8 = [v7 block];
  v9 = [v7 queue];
  v10 = v9;
  if (v8)
  {
    v11 = v9 == 0;
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
    v13 = v6;
    v14 = v8;
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