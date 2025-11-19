@interface HMDXPCMessageReportingSession
- (HMDXPCClientConnection)xpcClientConnection;
- (HMDXPCMessageReportingSession)initWithUUID:(id)a3 reportContext:(id)a4 xpcClientConnection:(id)a5;
@end

@implementation HMDXPCMessageReportingSession

- (HMDXPCClientConnection)xpcClientConnection
{
  WeakRetained = objc_loadWeakRetained(&self->_xpcClientConnection);

  return WeakRetained;
}

- (HMDXPCMessageReportingSession)initWithUUID:(id)a3 reportContext:(id)a4 xpcClientConnection:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  if (!v8)
  {
    _HMFPreconditionFailure();
    goto LABEL_8;
  }

  if (!v9)
  {
LABEL_8:
    _HMFPreconditionFailure();
    goto LABEL_9;
  }

  v11 = v10;
  if (!v10)
  {
LABEL_9:
    v20 = _HMFPreconditionFailure();
    [(HMDXPCMessageReportingSessionManager *)v20 .cxx_destruct];
    return result;
  }

  v22.receiver = self;
  v22.super_class = HMDXPCMessageReportingSession;
  v12 = [(HMDXPCMessageReportingSession *)&v22 init];
  if (v12)
  {
    v13 = [v8 copy];
    UUID = v12->_UUID;
    v12->_UUID = v13;

    v15 = [v9 copy];
    reportContext = v12->_reportContext;
    v12->_reportContext = v15;

    objc_storeWeak(&v12->_xpcClientConnection, v11);
    v17 = [MEMORY[0x277CBEB18] array];
    responseMessagePayloads = v12->_responseMessagePayloads;
    v12->_responseMessagePayloads = v17;
  }

  return v12;
}

@end