@interface IDSVMDaemonResponseListener
- (IDSVMDaemonResponseListener)initWithRequestTimer:(id)a3;
- (void)vmDataResponse:(id)a3 forRequestID:(id)a4 withError:(id)a5;
@end

@implementation IDSVMDaemonResponseListener

- (IDSVMDaemonResponseListener)initWithRequestTimer:(id)a3
{
  v5 = a3;
  if (_IDSRunningInDaemon())
  {
    v6 = [MEMORY[0x1E69A6138] vm];
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      sub_195B268D8(self, v6);
    }

    v7 = 0;
  }

  else
  {
    v11.receiver = self;
    v11.super_class = IDSVMDaemonResponseListener;
    v8 = [(IDSVMDaemonResponseListener *)&v11 init];
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

- (void)vmDataResponse:(id)a3 forRequestID:(id)a4 withError:(id)a5
{
  v22 = *MEMORY[0x1E69E9840];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = [(IDSDaemonRequestTimer *)self->_requestTimer invalidateTimeoutAndReturnHandlerForRequestID:v9];
  v12 = [v11 block];
  v13 = [MEMORY[0x1E69A6138] vm];
  v14 = v13;
  if (v12)
  {
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      v16 = 138412802;
      v17 = v9;
      v18 = 2112;
      v19 = v8;
      v20 = 2112;
      v21 = v10;
      _os_log_impl(&dword_1959FF000, v14, OS_LOG_TYPE_DEFAULT, "Calling out to completion block for vm request %@ data %@ error %@", &v16, 0x20u);
    }

    (v12)[2](v12, v8, v10);
  }

  else
  {
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      sub_195B2AAA0(v9, v14);
    }
  }

  v15 = *MEMORY[0x1E69E9840];
}

@end