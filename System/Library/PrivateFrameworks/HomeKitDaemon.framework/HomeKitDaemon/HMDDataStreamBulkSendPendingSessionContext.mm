@interface HMDDataStreamBulkSendPendingSessionContext
- (BOOL)shouldCloseSessionWithTimeoutReason;
- (HMDDataStreamBulkSendPendingSessionContext)initWithSessionStartCallback:(id)a3 handleOpenRequestResponseTimer:(id)a4 sendCloseEventTimer:(id)a5;
@end

@implementation HMDDataStreamBulkSendPendingSessionContext

- (BOOL)shouldCloseSessionWithTimeoutReason
{
  v3 = [(HMDDataStreamBulkSendPendingSessionContext *)self handleOpenRequestResponseTimer];
  if (v3)
  {
    v4 = 0;
  }

  else
  {
    v5 = [(HMDDataStreamBulkSendPendingSessionContext *)self sendCloseEventTimer];
    v4 = v5 != 0;
  }

  return v4;
}

- (HMDDataStreamBulkSendPendingSessionContext)initWithSessionStartCallback:(id)a3 handleOpenRequestResponseTimer:(id)a4 sendCloseEventTimer:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v15.receiver = self;
  v15.super_class = HMDDataStreamBulkSendPendingSessionContext;
  v11 = [(HMDDataStreamBulkSendPendingSessionContext *)&v15 init];
  if (v11)
  {
    v12 = _Block_copy(v8);
    sessionStartCallback = v11->_sessionStartCallback;
    v11->_sessionStartCallback = v12;

    objc_storeStrong(&v11->_handleOpenRequestResponseTimer, a4);
    objc_storeStrong(&v11->_sendCloseEventTimer, a5);
  }

  return v11;
}

@end