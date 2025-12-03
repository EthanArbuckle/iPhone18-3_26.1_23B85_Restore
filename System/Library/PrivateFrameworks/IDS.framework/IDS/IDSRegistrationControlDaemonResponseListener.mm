@interface IDSRegistrationControlDaemonResponseListener
- (IDSRegistrationControlDaemonResponseListener)initWithRequestTimer:(id)timer;
- (void)registrationControlResponseForRequestID:(id)d withError:(id)error;
- (void)registrationControlStatusResponseForRequestID:(int64_t)d requestID:(id)iD withError:(id)error;
@end

@implementation IDSRegistrationControlDaemonResponseListener

- (IDSRegistrationControlDaemonResponseListener)initWithRequestTimer:(id)timer
{
  timerCopy = timer;
  if (_IDSRunningInDaemon())
  {
    v6 = +[IDSLogging general];
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      sub_195B268D8(self, v6);
    }

    selfCopy = 0;
  }

  else
  {
    v11.receiver = self;
    v11.super_class = IDSRegistrationControlDaemonResponseListener;
    v8 = [(IDSRegistrationControlDaemonResponseListener *)&v11 init];
    v9 = v8;
    if (v8)
    {
      objc_storeStrong(&v8->_requestTimer, timer);
    }

    self = v9;
    selfCopy = self;
  }

  return selfCopy;
}

- (void)registrationControlResponseForRequestID:(id)d withError:(id)error
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
    v12[2] = sub_195A5FE18;
    v12[3] = &unk_1E743EAA8;
    v13 = errorCopy;
    v14 = block;
    dispatch_async(v10, v12);
  }
}

- (void)registrationControlStatusResponseForRequestID:(int64_t)d requestID:(id)iD withError:(id)error
{
  errorCopy = error;
  v9 = [(IDSDaemonRequestTimer *)self->_requestTimer invalidateTimeoutAndReturnHandlerForRequestID:iD];
  block = [v9 block];
  queue = [v9 queue];
  isSync = [v9 isSync];
  if (block)
  {
    v13 = isSync;
    v16[0] = MEMORY[0x1E69E9820];
    v16[1] = 3221225472;
    v16[2] = sub_195A5FF6C;
    v16[3] = &unk_1E743FA98;
    v17 = errorCopy;
    v18 = block;
    dCopy = d;
    v14 = MEMORY[0x19A8BBEF0](v16);
    v15 = v14;
    if (v13)
    {
      v14[2](v14);
    }

    else if (queue)
    {
      dispatch_async(queue, v14);
    }
  }
}

@end