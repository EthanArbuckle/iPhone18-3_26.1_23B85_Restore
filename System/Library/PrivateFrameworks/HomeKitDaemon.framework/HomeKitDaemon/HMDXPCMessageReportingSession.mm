@interface HMDXPCMessageReportingSession
- (HMDXPCClientConnection)xpcClientConnection;
- (HMDXPCMessageReportingSession)initWithUUID:(id)d reportContext:(id)context xpcClientConnection:(id)connection;
@end

@implementation HMDXPCMessageReportingSession

- (HMDXPCClientConnection)xpcClientConnection
{
  WeakRetained = objc_loadWeakRetained(&self->_xpcClientConnection);

  return WeakRetained;
}

- (HMDXPCMessageReportingSession)initWithUUID:(id)d reportContext:(id)context xpcClientConnection:(id)connection
{
  dCopy = d;
  contextCopy = context;
  connectionCopy = connection;
  if (!dCopy)
  {
    _HMFPreconditionFailure();
    goto LABEL_8;
  }

  if (!contextCopy)
  {
LABEL_8:
    _HMFPreconditionFailure();
    goto LABEL_9;
  }

  v11 = connectionCopy;
  if (!connectionCopy)
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
    v13 = [dCopy copy];
    UUID = v12->_UUID;
    v12->_UUID = v13;

    v15 = [contextCopy copy];
    reportContext = v12->_reportContext;
    v12->_reportContext = v15;

    objc_storeWeak(&v12->_xpcClientConnection, v11);
    array = [MEMORY[0x277CBEB18] array];
    responseMessagePayloads = v12->_responseMessagePayloads;
    v12->_responseMessagePayloads = array;
  }

  return v12;
}

@end