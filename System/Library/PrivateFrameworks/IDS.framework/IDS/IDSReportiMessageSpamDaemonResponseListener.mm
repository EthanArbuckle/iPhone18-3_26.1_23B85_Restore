@interface IDSReportiMessageSpamDaemonResponseListener
- (IDSReportiMessageSpamDaemonResponseListener)initWithRequestTimer:(id)timer;
- (void)iMessageReportSpamCheckUnknownResponseForRequestID:(id)d status:(int64_t)status abusive:(BOOL)abusive delay:(double)delay withError:(id)error;
@end

@implementation IDSReportiMessageSpamDaemonResponseListener

- (IDSReportiMessageSpamDaemonResponseListener)initWithRequestTimer:(id)timer
{
  timerCopy = timer;
  if (_IDSRunningInDaemon())
  {
    v6 = +[IDSTransportLog IDSReportSpam];
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      sub_195B268D8(self, v6);
    }

    selfCopy = 0;
  }

  else
  {
    v11.receiver = self;
    v11.super_class = IDSReportiMessageSpamDaemonResponseListener;
    v8 = [(IDSReportiMessageSpamDaemonResponseListener *)&v11 init];
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

- (void)iMessageReportSpamCheckUnknownResponseForRequestID:(id)d status:(int64_t)status abusive:(BOOL)abusive delay:(double)delay withError:(id)error
{
  errorCopy = error;
  v12 = [(IDSDaemonRequestTimer *)self->_requestTimer invalidateTimeoutAndReturnHandlerForRequestID:d];
  block = [v12 block];
  queue = [v12 queue];
  v15 = queue;
  if (block)
  {
    v16 = queue == 0;
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
    v18 = errorCopy;
    v19 = block;
    abusiveCopy = abusive;
    delayCopy = delay;
    dispatch_async(v15, v17);
  }
}

@end