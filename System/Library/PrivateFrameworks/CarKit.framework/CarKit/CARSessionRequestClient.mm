@interface CARSessionRequestClient
- (NSXPCConnection)serviceConnection;
- (void)cancelRequests;
- (void)dealloc;
- (void)prepareForRemovingWiFiUUID:(id)d completion:(id)completion;
- (void)startAdvertisingCarPlayControlForUSB;
- (void)startAdvertisingCarPlayControlForWiFiUUID:(id)d;
- (void)startSessionWithHost:(id)host requestIdentifier:(id)identifier completion:(id)completion;
- (void)stoppedSessionForHostIdentifier:(id)identifier;
@end

@implementation CARSessionRequestClient

- (NSXPCConnection)serviceConnection
{
  serviceConnection = self->_serviceConnection;
  if (!serviceConnection)
  {
    v4 = [objc_alloc(MEMORY[0x1E696B0B8]) initWithMachServiceName:@"com.apple.carkit.sessionRequestHandler" options:4096];
    v5 = [MEMORY[0x1E696B0D0] interfaceWithProtocol:&unk_1F47F64F8];
    [(NSXPCConnection *)v4 setRemoteObjectInterface:v5];
    [(NSXPCConnection *)v4 setInvalidationHandler:&__block_literal_global_10];
    [(NSXPCConnection *)v4 resume];
    v6 = self->_serviceConnection;
    self->_serviceConnection = v4;

    serviceConnection = self->_serviceConnection;
  }

  return serviceConnection;
}

void __44__CARSessionRequestClient_serviceConnection__block_invoke()
{
  v0 = CarGeneralLogging();
  if (os_log_type_enabled(v0, OS_LOG_TYPE_ERROR))
  {
    __44__CARSessionRequestClient_serviceConnection__block_invoke_cold_1(v0);
  }
}

- (void)dealloc
{
  serviceConnection = [(CARSessionRequestClient *)self serviceConnection];
  [serviceConnection invalidate];

  v4.receiver = self;
  v4.super_class = CARSessionRequestClient;
  [(CARSessionRequestClient *)&v4 dealloc];
}

- (void)startSessionWithHost:(id)host requestIdentifier:(id)identifier completion:(id)completion
{
  v21 = *MEMORY[0x1E69E9840];
  hostCopy = host;
  identifierCopy = identifier;
  completionCopy = completion;
  v11 = CarGeneralLogging();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412546;
    v18 = hostCopy;
    v19 = 2112;
    v20 = identifierCopy;
    _os_log_impl(&dword_1C81FC000, v11, OS_LOG_TYPE_DEFAULT, "starting session with host %@, requestID: %@", buf, 0x16u);
  }

  serviceConnection = [(CARSessionRequestClient *)self serviceConnection];
  v13 = [serviceConnection remoteObjectProxyWithErrorHandler:&__block_literal_global_37_0];

  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __77__CARSessionRequestClient_startSessionWithHost_requestIdentifier_completion___block_invoke_38;
  v15[3] = &unk_1E82FC6C8;
  v16 = completionCopy;
  v14 = completionCopy;
  [v13 service_startSessionWithHost:hostCopy requestIdentifier:identifierCopy reply:v15];
}

void __77__CARSessionRequestClient_startSessionWithHost_requestIdentifier_completion___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = CarGeneralLogging();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    __77__CARSessionRequestClient_startSessionWithHost_requestIdentifier_completion___block_invoke_cold_1();
  }
}

uint64_t __77__CARSessionRequestClient_startSessionWithHost_requestIdentifier_completion___block_invoke_38(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

- (void)stoppedSessionForHostIdentifier:(id)identifier
{
  v10 = *MEMORY[0x1E69E9840];
  identifierCopy = identifier;
  v5 = CarGeneralLogging();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v8 = 138412290;
    v9 = identifierCopy;
    _os_log_impl(&dword_1C81FC000, v5, OS_LOG_TYPE_DEFAULT, "stopped session with host ID %@", &v8, 0xCu);
  }

  serviceConnection = [(CARSessionRequestClient *)self serviceConnection];
  v7 = [serviceConnection remoteObjectProxyWithErrorHandler:&__block_literal_global_41];

  [v7 service_stoppedSessionWithHostIdentifier:identifierCopy reply:&__block_literal_global_44];
}

void __59__CARSessionRequestClient_stoppedSessionForHostIdentifier___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = CarGeneralLogging();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    __77__CARSessionRequestClient_startSessionWithHost_requestIdentifier_completion___block_invoke_cold_1();
  }
}

- (void)startAdvertisingCarPlayControlForUSB
{
  v3 = CarGeneralLogging();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v6 = 0;
    _os_log_impl(&dword_1C81FC000, v3, OS_LOG_TYPE_DEFAULT, "starting CarPlay Control advertising over USB", v6, 2u);
  }

  serviceConnection = [(CARSessionRequestClient *)self serviceConnection];
  v5 = [serviceConnection remoteObjectProxyWithErrorHandler:&__block_literal_global_46_0];

  [v5 service_startAdvertisingCarPlayControlForUSBWithReply:&__block_literal_global_49];
}

void __63__CARSessionRequestClient_startAdvertisingCarPlayControlForUSB__block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = CarGeneralLogging();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    __77__CARSessionRequestClient_startSessionWithHost_requestIdentifier_completion___block_invoke_cold_1();
  }
}

- (void)startAdvertisingCarPlayControlForWiFiUUID:(id)d
{
  v10 = *MEMORY[0x1E69E9840];
  dCopy = d;
  v5 = CarGeneralLogging();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v8 = 138412290;
    v9 = dCopy;
    _os_log_impl(&dword_1C81FC000, v5, OS_LOG_TYPE_DEFAULT, "starting CarPlay Control advertising for Wi-Fi UUID: %@", &v8, 0xCu);
  }

  serviceConnection = [(CARSessionRequestClient *)self serviceConnection];
  v7 = [serviceConnection remoteObjectProxyWithErrorHandler:&__block_literal_global_51];

  [v7 service_startAdvertisingCarPlayControlForWiFiUUID:dCopy reply:&__block_literal_global_54];
}

void __69__CARSessionRequestClient_startAdvertisingCarPlayControlForWiFiUUID___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = CarGeneralLogging();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    __77__CARSessionRequestClient_startSessionWithHost_requestIdentifier_completion___block_invoke_cold_1();
  }
}

- (void)prepareForRemovingWiFiUUID:(id)d completion:(id)completion
{
  v16 = *MEMORY[0x1E69E9840];
  dCopy = d;
  completionCopy = completion;
  v8 = CarGeneralLogging();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v15 = dCopy;
    _os_log_impl(&dword_1C81FC000, v8, OS_LOG_TYPE_DEFAULT, "preparing to remove Wi-Fi UUID: %@", buf, 0xCu);
  }

  serviceConnection = [(CARSessionRequestClient *)self serviceConnection];
  v10 = [serviceConnection remoteObjectProxyWithErrorHandler:&__block_literal_global_56];

  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __65__CARSessionRequestClient_prepareForRemovingWiFiUUID_completion___block_invoke_57;
  v12[3] = &unk_1E82FC6C8;
  v13 = completionCopy;
  v11 = completionCopy;
  [v10 service_prepareForRemovingWiFiUUID:dCopy reply:v12];
}

void __65__CARSessionRequestClient_prepareForRemovingWiFiUUID_completion___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = CarGeneralLogging();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    __77__CARSessionRequestClient_startSessionWithHost_requestIdentifier_completion___block_invoke_cold_1();
  }
}

uint64_t __65__CARSessionRequestClient_prepareForRemovingWiFiUUID_completion___block_invoke_57(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

- (void)cancelRequests
{
  v3 = CarGeneralLogging();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v6 = 0;
    _os_log_impl(&dword_1C81FC000, v3, OS_LOG_TYPE_DEFAULT, "cancelling CARSessionRequests", v6, 2u);
  }

  serviceConnection = [(CARSessionRequestClient *)self serviceConnection];
  v5 = [serviceConnection remoteObjectProxyWithErrorHandler:&__block_literal_global_59];

  [v5 service_cancelRequestsWithReply:&__block_literal_global_62];
}

void __41__CARSessionRequestClient_cancelRequests__block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = CarGeneralLogging();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    __77__CARSessionRequestClient_startSessionWithHost_requestIdentifier_completion___block_invoke_cold_1();
  }
}

@end