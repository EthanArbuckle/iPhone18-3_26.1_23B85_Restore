@interface IDSReportiMessageSpamDaemonResponseListener
- (IDSReportiMessageSpamDaemonResponseListener)initWithRequestTimer:(id)a3;
- (void)iMessageReportSpamCheckUnknownResponseForRequestID:(id)a3 status:(int64_t)a4 abusive:(BOOL)a5 delay:(double)a6 withError:(id)a7;
@end

@implementation IDSReportiMessageSpamDaemonResponseListener

- (IDSReportiMessageSpamDaemonResponseListener)initWithRequestTimer:(id)a3
{
  v5 = a3;
  if (_IDSRunningInDaemon())
  {
    v6 = +[IDSTransportLog IDSReportSpam];
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      sub_195B268D8(self, v6);
    }

    v7 = 0;
  }

  else
  {
    v11.receiver = self;
    v11.super_class = IDSReportiMessageSpamDaemonResponseListener;
    v8 = [(IDSReportiMessageSpamDaemonResponseListener *)&v11 init];
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

- (void)iMessageReportSpamCheckUnknownResponseForRequestID:(id)a3 status:(int64_t)a4 abusive:(BOOL)a5 delay:(double)a6 withError:(id)a7
{
  v11 = a7;
  v12 = [(IDSDaemonRequestTimer *)self->_requestTimer invalidateTimeoutAndReturnHandlerForRequestID:a3];
  v13 = [v12 block];
  v14 = [v12 queue];
  v15 = v14;
  if (v13)
  {
    v16 = v14 == 0;
  }

  else
  {
    v16 = 1;
  }

  if (!v16)
  {
    v17[0] = MEMORY[0x1E69E9820];
    v17[1] = 3221225472;
    v17[2] = sub_195A9C460;
    v17[3] = &unk_1E7441598;
    v18 = v11;
    v19 = v13;
    v21 = a5;
    v20 = a6;
    dispatch_async(v15, v17);
  }
}

@end