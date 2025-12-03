@interface NPKIDVRemoteDeviceServiceServer
- (NPKIDVRemoteDeviceServiceServer)initWithConnection:(id)connection delegate:(id)delegate;
- (NPKIDVRemoteDeviceServiceServerDelegate)delegate;
- (void)didReceiveEvent:(unint64_t)event fromRemoteDeviceWithID:(id)d eventContext:(id)context ackHandler:(id)handler;
@end

@implementation NPKIDVRemoteDeviceServiceServer

- (NPKIDVRemoteDeviceServiceServer)initWithConnection:(id)connection delegate:(id)delegate
{
  delegateCopy = delegate;
  v10.receiver = self;
  v10.super_class = NPKIDVRemoteDeviceServiceServer;
  v7 = [(PDXPCService *)&v10 initWithConnection:connection];
  v8 = v7;
  if (v7)
  {
    objc_storeWeak(&v7->_delegate, delegateCopy);
  }

  return v8;
}

- (void)didReceiveEvent:(unint64_t)event fromRemoteDeviceWithID:(id)d eventContext:(id)context ackHandler:(id)handler
{
  v25 = *MEMORY[0x277D85DE8];
  dCopy = d;
  contextCopy = context;
  handlerCopy = handler;
  v13 = pk_Payment_log();
  v14 = os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT);

  if (v14)
  {
    v15 = pk_Payment_log();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      v16 = stringsArrayFromNPKIDVRemoteDeviceServiceEvents(event);
      v19 = 138412802;
      v20 = v16;
      v21 = 2112;
      v22 = dCopy;
      v23 = 2112;
      v24 = contextCopy;
      _os_log_impl(&dword_25B300000, v15, OS_LOG_TYPE_DEFAULT, "Notice: NPKIDVRemoteDeviceService: Did Receive event: %@ from remote device with ID:%@; context: %@", &v19, 0x20u);
    }
  }

  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [WeakRetained identityRemoteDeviceServiceServer:self didReceiveEvent:event & 0x3F fromRemoteDeviceWithID:dCopy eventContext:contextCopy];

  handlerCopy[2](handlerCopy);
  v18 = *MEMORY[0x277D85DE8];
}

- (NPKIDVRemoteDeviceServiceServerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end