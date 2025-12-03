@interface HMDDataStreamBulkSendPendingSessionContext
- (BOOL)shouldCloseSessionWithTimeoutReason;
- (HMDDataStreamBulkSendPendingSessionContext)initWithSessionStartCallback:(id)callback handleOpenRequestResponseTimer:(id)timer sendCloseEventTimer:(id)eventTimer;
@end

@implementation HMDDataStreamBulkSendPendingSessionContext

- (BOOL)shouldCloseSessionWithTimeoutReason
{
  handleOpenRequestResponseTimer = [(HMDDataStreamBulkSendPendingSessionContext *)self handleOpenRequestResponseTimer];
  if (handleOpenRequestResponseTimer)
  {
    v4 = 0;
  }

  else
  {
    sendCloseEventTimer = [(HMDDataStreamBulkSendPendingSessionContext *)self sendCloseEventTimer];
    v4 = sendCloseEventTimer != 0;
  }

  return v4;
}

- (HMDDataStreamBulkSendPendingSessionContext)initWithSessionStartCallback:(id)callback handleOpenRequestResponseTimer:(id)timer sendCloseEventTimer:(id)eventTimer
{
  callbackCopy = callback;
  timerCopy = timer;
  eventTimerCopy = eventTimer;
  v15.receiver = self;
  v15.super_class = HMDDataStreamBulkSendPendingSessionContext;
  v11 = [(HMDDataStreamBulkSendPendingSessionContext *)&v15 init];
  if (v11)
  {
    v12 = _Block_copy(callbackCopy);
    sessionStartCallback = v11->_sessionStartCallback;
    v11->_sessionStartCallback = v12;

    objc_storeStrong(&v11->_handleOpenRequestResponseTimer, timer);
    objc_storeStrong(&v11->_sendCloseEventTimer, eventTimer);
  }

  return v11;
}

@end