@interface CARSessionRequestAgent
- (BOOL)listener:(id)listener shouldAcceptNewConnection:(id)connection;
- (BOOL)wantsCarPlayControlAdvertisingForUSB;
- (BOOL)wantsCarPlayControlAdvertisingForWiFiUUID:(id)d;
- (CARSessionRequestAgent)initWithRequestHandler:(id)handler;
- (CARSessionRequestHandling)requestHandler;
- (void)dealloc;
@end

@implementation CARSessionRequestAgent

- (BOOL)wantsCarPlayControlAdvertisingForUSB
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x2020000000;
  v8 = 0;
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __62__CARSessionRequestAgent_wantsCarPlayControlAdvertisingForUSB__block_invoke;
  v4[3] = &unk_1E82FC008;
  v4[4] = &v5;
  CRServiceConnectionSynchronousPerform(v4, &__block_literal_global_12);
  v2 = *(v6 + 24);
  _Block_object_dispose(&v5, 8);
  return v2;
}

uint64_t __62__CARSessionRequestAgent_wantsCarPlayControlAdvertisingForUSB__block_invoke(uint64_t a1, void *a2)
{
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __62__CARSessionRequestAgent_wantsCarPlayControlAdvertisingForUSB__block_invoke_2;
  v3[3] = &unk_1E82FBFE0;
  v3[4] = *(a1 + 32);
  return [a2 wantsCarPlayControlAdvertisingForUSBWithReply:v3];
}

void __62__CARSessionRequestAgent_wantsCarPlayControlAdvertisingForUSB__block_invoke_2(uint64_t a1, char a2, void *a3)
{
  v5 = a3;
  if (v5)
  {
    v6 = CarGeneralLogging();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      __62__CARSessionRequestAgent_wantsCarPlayControlAdvertisingForUSB__block_invoke_2_cold_1();
    }
  }

  else
  {
    *(*(*(a1 + 32) + 8) + 24) = a2;
  }
}

- (CARSessionRequestAgent)initWithRequestHandler:(id)handler
{
  handlerCopy = handler;
  v11.receiver = self;
  v11.super_class = CARSessionRequestAgent;
  v5 = [(CARSessionRequestAgent *)&v11 init];
  if (v5)
  {
    v6 = objc_alloc_init(CARSessionRequestHandlerProxy);
    handlerProxy = v5->_handlerProxy;
    v5->_handlerProxy = v6;

    handlerProxy = [(CARSessionRequestAgent *)v5 handlerProxy];
    [handlerProxy setRequestHandler:handlerCopy];

    v9 = [objc_alloc(MEMORY[0x1E696B0D8]) initWithMachServiceName:@"com.apple.carkit.sessionRequestHandler"];
    [v9 setDelegate:v5];
    [v9 resume];
    [(CARSessionRequestAgent *)v5 setListener:v9];
  }

  return v5;
}

- (void)dealloc
{
  listener = [(CARSessionRequestAgent *)self listener];
  [listener invalidate];

  v4.receiver = self;
  v4.super_class = CARSessionRequestAgent;
  [(CARSessionRequestAgent *)&v4 dealloc];
}

- (BOOL)listener:(id)listener shouldAcceptNewConnection:(id)connection
{
  v13 = *MEMORY[0x1E69E9840];
  connectionCopy = connection;
  v6 = [connectionCopy valueForEntitlement:@"com.apple.private.carkit.sessionRequest"];
  bOOLValue = [v6 BOOLValue];

  v8 = CarGeneralLogging();
  v9 = v8;
  if (bOOLValue)
  {
    if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
    {
      v12[0] = 67109120;
      v12[1] = [connectionCopy processIdentifier];
      _os_log_impl(&dword_1C81FC000, v9, OS_LOG_TYPE_INFO, "Received CARSessionRequest connection from pid %d", v12, 8u);
    }

    v9 = [MEMORY[0x1E696B0D0] interfaceWithProtocol:&unk_1F47F64F8];
    [v9 setClass:objc_opt_class() forSelector:sel_service_startSessionWithHost_requestIdentifier_reply_ argumentIndex:0 ofReply:0];
    [v9 setClass:objc_opt_class() forSelector:sel_service_startSessionWithHost_requestIdentifier_reply_ argumentIndex:1 ofReply:0];
    [connectionCopy setExportedInterface:v9];
    handlerProxy = [(CARSessionRequestAgent *)self handlerProxy];
    [connectionCopy setExportedObject:handlerProxy];

    [connectionCopy resume];
  }

  else if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
  {
    [CARSessionRequestAgent listener:connectionCopy shouldAcceptNewConnection:v9];
  }

  return bOOLValue;
}

- (CARSessionRequestHandling)requestHandler
{
  handlerProxy = [(CARSessionRequestAgent *)self handlerProxy];
  requestHandler = [handlerProxy requestHandler];

  return requestHandler;
}

void __62__CARSessionRequestAgent_wantsCarPlayControlAdvertisingForUSB__block_invoke_45(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = CarGeneralLogging();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    __62__CARSessionRequestAgent_wantsCarPlayControlAdvertisingForUSB__block_invoke_45_cold_1();
  }
}

- (BOOL)wantsCarPlayControlAdvertisingForWiFiUUID:(id)d
{
  dCopy = d;
  v10 = 0;
  v11 = &v10;
  v12 = 0x2020000000;
  v13 = 0;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __68__CARSessionRequestAgent_wantsCarPlayControlAdvertisingForWiFiUUID___block_invoke;
  v7[3] = &unk_1E82FC0F8;
  v4 = dCopy;
  v8 = v4;
  v9 = &v10;
  CRServiceConnectionSynchronousPerform(v7, &__block_literal_global_49_0);
  v5 = *(v11 + 24);

  _Block_object_dispose(&v10, 8);
  return v5;
}

uint64_t __68__CARSessionRequestAgent_wantsCarPlayControlAdvertisingForWiFiUUID___block_invoke(uint64_t a1, void *a2)
{
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __68__CARSessionRequestAgent_wantsCarPlayControlAdvertisingForWiFiUUID___block_invoke_2;
  v4[3] = &unk_1E82FBFE0;
  v2 = *(a1 + 32);
  v4[4] = *(a1 + 40);
  return [a2 wantsCarPlayControlAdvertisingForWiFiUUID:v2 reply:v4];
}

void __68__CARSessionRequestAgent_wantsCarPlayControlAdvertisingForWiFiUUID___block_invoke_2(uint64_t a1, char a2, void *a3)
{
  v5 = a3;
  if (v5)
  {
    v6 = CarGeneralLogging();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      __68__CARSessionRequestAgent_wantsCarPlayControlAdvertisingForWiFiUUID___block_invoke_2_cold_1();
    }
  }

  else
  {
    *(*(*(a1 + 32) + 8) + 24) = a2;
  }
}

void __68__CARSessionRequestAgent_wantsCarPlayControlAdvertisingForWiFiUUID___block_invoke_47(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = CarGeneralLogging();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    __68__CARSessionRequestAgent_wantsCarPlayControlAdvertisingForWiFiUUID___block_invoke_47_cold_1();
  }
}

- (void)listener:(void *)a1 shouldAcceptNewConnection:(NSObject *)a2 .cold.1(void *a1, NSObject *a2)
{
  v6 = *MEMORY[0x1E69E9840];
  v3[0] = 67109378;
  v3[1] = [a1 processIdentifier];
  v4 = 2112;
  v5 = @"com.apple.private.carkit.sessionRequest";
  _os_log_error_impl(&dword_1C81FC000, a2, OS_LOG_TYPE_ERROR, "Process %i does not have the %@ entitlement", v3, 0x12u);
}

@end