@interface IDSRegistrationControlDaemonResponseListener
- (IDSRegistrationControlDaemonResponseListener)initWithRequestTimer:(id)a3;
- (void)registrationControlResponseForRequestID:(id)a3 withError:(id)a4;
- (void)registrationControlStatusResponseForRequestID:(int64_t)a3 requestID:(id)a4 withError:(id)a5;
@end

@implementation IDSRegistrationControlDaemonResponseListener

- (IDSRegistrationControlDaemonResponseListener)initWithRequestTimer:(id)a3
{
  v5 = a3;
  if (_IDSRunningInDaemon())
  {
    v6 = +[IDSLogging general];
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      sub_195B268D8(self, v6);
    }

    v7 = 0;
  }

  else
  {
    v11.receiver = self;
    v11.super_class = IDSRegistrationControlDaemonResponseListener;
    v8 = [(IDSRegistrationControlDaemonResponseListener *)&v11 init];
    v9 = v8;
    if (v8)
    {
      objc_storeStrong(&v8->_requestTimer, a3);
    }

    self = v9;
    v7 = self;
  }

  return v7;
}

- (void)registrationControlResponseForRequestID:(id)a3 withError:(id)a4
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
    v12[2] = sub_195A5FE18;
    v12[3] = &unk_1E743EAA8;
    v13 = v6;
    v14 = v8;
    dispatch_async(v10, v12);
  }
}

- (void)registrationControlStatusResponseForRequestID:(int64_t)a3 requestID:(id)a4 withError:(id)a5
{
  v8 = a5;
  v9 = [(IDSDaemonRequestTimer *)self->_requestTimer invalidateTimeoutAndReturnHandlerForRequestID:a4];
  v10 = [v9 block];
  v11 = [v9 queue];
  v12 = [v9 isSync];
  if (v10)
  {
    v13 = v12;
    v16[0] = MEMORY[0x1E69E9820];
    v16[1] = 3221225472;
    v16[2] = sub_195A5FF6C;
    v16[3] = &unk_1E743FA98;
    v17 = v8;
    v18 = v10;
    v19 = a3;
    v14 = MEMORY[0x19A8BBEF0](v16);
    v15 = v14;
    if (v13)
    {
      v14[2](v14);
    }

    else if (v11)
    {
      dispatch_async(v11, v14);
    }
  }
}

@end