@interface NPKIDVRemoteDeviceServiceServer
- (NPKIDVRemoteDeviceServiceServer)initWithConnection:(id)a3 delegate:(id)a4;
- (NPKIDVRemoteDeviceServiceServerDelegate)delegate;
- (void)didReceiveEvent:(unint64_t)a3 fromRemoteDeviceWithID:(id)a4 eventContext:(id)a5 ackHandler:(id)a6;
@end

@implementation NPKIDVRemoteDeviceServiceServer

- (NPKIDVRemoteDeviceServiceServer)initWithConnection:(id)a3 delegate:(id)a4
{
  v6 = a4;
  v10.receiver = self;
  v10.super_class = NPKIDVRemoteDeviceServiceServer;
  v7 = [(PDXPCService *)&v10 initWithConnection:a3];
  v8 = v7;
  if (v7)
  {
    objc_storeWeak(&v7->_delegate, v6);
  }

  return v8;
}

- (void)didReceiveEvent:(unint64_t)a3 fromRemoteDeviceWithID:(id)a4 eventContext:(id)a5 ackHandler:(id)a6
{
  v25 = *MEMORY[0x277D85DE8];
  v10 = a4;
  v11 = a5;
  v12 = a6;
  v13 = pk_Payment_log();
  v14 = os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT);

  if (v14)
  {
    v15 = pk_Payment_log();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      v16 = stringsArrayFromNPKIDVRemoteDeviceServiceEvents(a3);
      v19 = 138412802;
      v20 = v16;
      v21 = 2112;
      v22 = v10;
      v23 = 2112;
      v24 = v11;
      _os_log_impl(&dword_25B300000, v15, OS_LOG_TYPE_DEFAULT, "Notice: NPKIDVRemoteDeviceService: Did Receive event: %@ from remote device with ID:%@; context: %@", &v19, 0x20u);
    }
  }

  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [WeakRetained identityRemoteDeviceServiceServer:self didReceiveEvent:a3 & 0x3F fromRemoteDeviceWithID:v10 eventContext:v11];

  v12[2](v12);
  v18 = *MEMORY[0x277D85DE8];
}

- (NPKIDVRemoteDeviceServiceServerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end