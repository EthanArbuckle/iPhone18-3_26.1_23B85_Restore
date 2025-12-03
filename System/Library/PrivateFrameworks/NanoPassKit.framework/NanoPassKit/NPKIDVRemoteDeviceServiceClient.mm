@interface NPKIDVRemoteDeviceServiceClient
- (NPKIDVRemoteDeviceServiceClient)initWithRemoteServiceName:(id)name;
- (id)_errorHandlerWithCompletion:(id)completion;
- (id)_remoteObjectProxyWithFailureHandler:(id)handler;
- (void)didReceiveEvent:(unint64_t)event fromRemoteDeviceWithID:(id)d eventContext:(id)context;
- (void)remoteService:(id)service didEstablishConnection:(id)connection;
- (void)remoteService:(id)service didInterruptConnection:(id)connection;
@end

@implementation NPKIDVRemoteDeviceServiceClient

- (NPKIDVRemoteDeviceServiceClient)initWithRemoteServiceName:(id)name
{
  nameCopy = name;
  v13.receiver = self;
  v13.super_class = NPKIDVRemoteDeviceServiceClient;
  v5 = [(NPKIDVRemoteDeviceServiceClient *)&v13 init];
  if (v5)
  {
    v6 = [nameCopy copy];
    serviceName = v5->_serviceName;
    v5->_serviceName = v6;

    v8 = objc_alloc(MEMORY[0x277D38348]);
    v9 = NPKIDVRemoteDeviceServiceServerProtocolInterface();
    v10 = [v8 initWithMachServiceName:nameCopy remoteObjectInterface:v9 exportedObjectInterface:0 exportedObject:v5];
    remoteService = v5->_remoteService;
    v5->_remoteService = v10;

    [(PKXPCService *)v5->_remoteService setDelegate:v5];
  }

  return v5;
}

- (void)didReceiveEvent:(unint64_t)event fromRemoteDeviceWithID:(id)d eventContext:(id)context
{
  v31 = *MEMORY[0x277D85DE8];
  v9 = self->_serviceName;
  contextCopy = context;
  dCopy = d;
  v12 = pk_Payment_log();
  v13 = os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT);

  if (v13)
  {
    v14 = pk_Payment_log();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      v15 = stringsArrayFromNPKIDVRemoteDeviceServiceEvents(event);
      *buf = 138412546;
      v28 = v9;
      v29 = 2112;
      v30 = v15;
      _os_log_impl(&dword_25B300000, v14, OS_LOG_TYPE_DEFAULT, "Notice: NPKIDVRemoteDeviceService: Will Notify notify remote process with service Names:%@ event:%@", buf, 0x16u);
    }
  }

  v24[0] = MEMORY[0x277D85DD0];
  v24[1] = 3221225472;
  v24[2] = __87__NPKIDVRemoteDeviceServiceClient_didReceiveEvent_fromRemoteDeviceWithID_eventContext___block_invoke;
  v24[3] = &unk_279949400;
  v16 = v9;
  v25 = v16;
  eventCopy = event;
  v17 = [(NPKIDVRemoteDeviceServiceClient *)self _remoteObjectProxyWithFailureHandler:v24];
  v20[0] = MEMORY[0x277D85DD0];
  v20[1] = 3221225472;
  v20[2] = __87__NPKIDVRemoteDeviceServiceClient_didReceiveEvent_fromRemoteDeviceWithID_eventContext___block_invoke_56;
  v20[3] = &unk_279945F18;
  selfCopy = self;
  eventCopy2 = event;
  v21 = v16;
  v18 = v16;
  [v17 didReceiveEvent:event fromRemoteDeviceWithID:dCopy eventContext:contextCopy ackHandler:v20];

  v19 = *MEMORY[0x277D85DE8];
}

void __87__NPKIDVRemoteDeviceServiceClient_didReceiveEvent_fromRemoteDeviceWithID_eventContext___block_invoke(uint64_t a1)
{
  v12 = *MEMORY[0x277D85DE8];
  v2 = pk_Payment_log();
  v3 = os_log_type_enabled(v2, OS_LOG_TYPE_ERROR);

  if (v3)
  {
    v4 = pk_Payment_log();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      v5 = *(a1 + 32);
      v6 = stringsArrayFromNPKIDVRemoteDeviceServiceEvents(*(a1 + 40));
      v8 = 138412546;
      v9 = v5;
      v10 = 2112;
      v11 = v6;
      _os_log_impl(&dword_25B300000, v4, OS_LOG_TYPE_ERROR, "Error: NPKIDVRemoteDeviceService: Fail to notify remote process with service Names:%@ event:%@", &v8, 0x16u);
    }
  }

  v7 = *MEMORY[0x277D85DE8];
}

void __87__NPKIDVRemoteDeviceServiceClient_didReceiveEvent_fromRemoteDeviceWithID_eventContext___block_invoke_56(uint64_t a1)
{
  v12 = *MEMORY[0x277D85DE8];
  v2 = pk_Payment_log();
  v3 = os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT);

  if (v3)
  {
    v4 = pk_Payment_log();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v5 = *(a1 + 32);
      v6 = stringsArrayFromNPKIDVRemoteDeviceServiceEvents(*(a1 + 48));
      v8 = 138412546;
      v9 = v5;
      v10 = 2112;
      v11 = v6;
      _os_log_impl(&dword_25B300000, v4, OS_LOG_TYPE_DEFAULT, "Notice: NPKIDVRemoteDeviceService: Did Notify notify remote process with service Names:%@ event:%@", &v8, 0x16u);
    }
  }

  v7 = *MEMORY[0x277D85DE8];
}

- (id)_remoteObjectProxyWithFailureHandler:(id)handler
{
  remoteService = self->_remoteService;
  v4 = [(NPKIDVRemoteDeviceServiceClient *)self _errorHandlerWithCompletion:handler];
  v5 = [(PKXPCService *)remoteService remoteObjectProxyWithErrorHandler:v4];

  return v5;
}

- (id)_errorHandlerWithCompletion:(id)completion
{
  completionCopy = completion;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 3221225472;
  aBlock[2] = __63__NPKIDVRemoteDeviceServiceClient__errorHandlerWithCompletion___block_invoke;
  aBlock[3] = &unk_279945218;
  v9 = completionCopy;
  v4 = completionCopy;
  v5 = _Block_copy(aBlock);
  v6 = _Block_copy(v5);

  return v6;
}

void __63__NPKIDVRemoteDeviceServiceClient__errorHandlerWithCompletion___block_invoke(uint64_t a1, void *a2)
{
  v11 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = pk_Payment_log();
  v5 = os_log_type_enabled(v4, OS_LOG_TYPE_ERROR);

  if (v5)
  {
    v6 = pk_Payment_log();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      v9 = 138412290;
      v10 = v3;
      _os_log_impl(&dword_25B300000, v6, OS_LOG_TYPE_ERROR, "Error: NPKIDVRemoteDeviceService: Error on connection: %@", &v9, 0xCu);
    }
  }

  v7 = *(a1 + 32);
  if (v7)
  {
    (*(v7 + 16))(v7, v3);
  }

  v8 = *MEMORY[0x277D85DE8];
}

- (void)remoteService:(id)service didEstablishConnection:(id)connection
{
  v18 = *MEMORY[0x277D85DE8];
  serviceCopy = service;
  connectionCopy = connection;
  v8 = pk_Payment_log();
  v9 = os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT);

  if (v9)
  {
    v10 = pk_Payment_log();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      v12 = 138412802;
      selfCopy = self;
      v14 = 2112;
      v15 = serviceCopy;
      v16 = 2112;
      v17 = connectionCopy;
      _os_log_impl(&dword_25B300000, v10, OS_LOG_TYPE_DEFAULT, "Notice: NPKIDVRemoteDeviceService: %@, remote service:%@ did establish connection:%@", &v12, 0x20u);
    }
  }

  v11 = *MEMORY[0x277D85DE8];
}

- (void)remoteService:(id)service didInterruptConnection:(id)connection
{
  v18 = *MEMORY[0x277D85DE8];
  serviceCopy = service;
  connectionCopy = connection;
  v8 = pk_Payment_log();
  v9 = os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT);

  if (v9)
  {
    v10 = pk_Payment_log();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      v12 = 138412802;
      selfCopy = self;
      v14 = 2112;
      v15 = serviceCopy;
      v16 = 2112;
      v17 = connectionCopy;
      _os_log_impl(&dword_25B300000, v10, OS_LOG_TYPE_DEFAULT, "Notice: NPKIDVRemoteDeviceService: %@, remote service:%@ did interrupt connection:%@", &v12, 0x20u);
    }
  }

  v11 = *MEMORY[0x277D85DE8];
}

@end