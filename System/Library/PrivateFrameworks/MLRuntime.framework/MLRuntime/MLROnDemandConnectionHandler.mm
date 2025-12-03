@interface MLROnDemandConnectionHandler
- (BOOL)shouldAcceptXPCConnection:(id)connection;
- (MLROnDemandConnectionHandler)initWithPrincipalObject:(id)object;
- (NSString)description;
- (NSXPCConnection)xpcConnection;
- (void)performTask:(id)task completionHandler:(id)handler;
- (void)performTaskInternal:(id)internal completionHandler:(id)handler;
@end

@implementation MLROnDemandConnectionHandler

- (MLROnDemandConnectionHandler)initWithPrincipalObject:(id)object
{
  objectCopy = object;
  if ([objectCopy conformsToProtocol:&unk_2868BF5B8])
  {
    v11.receiver = self;
    v11.super_class = MLROnDemandConnectionHandler;
    v6 = [(MLROnDemandConnectionHandler *)&v11 init];
    v7 = v6;
    if (v6)
    {
      objc_storeStrong(&v6->_pluginPrincipal, object);
    }

    self = v7;
    selfCopy = self;
  }

  else
  {
    coreChannel = [MEMORY[0x277D05600] coreChannel];
    if (os_log_type_enabled(coreChannel, OS_LOG_TYPE_FAULT))
    {
      [(MLROnDemandConnectionHandler *)objectCopy initWithPrincipalObject:coreChannel];
    }

    selfCopy = 0;
  }

  return selfCopy;
}

- (BOOL)shouldAcceptXPCConnection:(id)connection
{
  connectionCopy = connection;
  [connectionCopy setExportedObject:self];
  v5 = [MEMORY[0x277CCAE90] interfaceWithProtocol:&unk_2868BD320];
  [connectionCopy setExportedInterface:v5];

  [(MLROnDemandConnectionHandler *)self setXpcConnection:connectionCopy];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __58__MLROnDemandConnectionHandler_shouldAcceptXPCConnection___block_invoke;
  v8[3] = &unk_279840A90;
  v8[4] = self;
  v6 = MEMORY[0x259C65A40](v8);
  [connectionCopy setInterruptionHandler:v6];
  [connectionCopy setInvalidationHandler:v6];
  [connectionCopy resume];

  return 1;
}

void __58__MLROnDemandConnectionHandler_shouldAcceptXPCConnection___block_invoke(uint64_t a1)
{
  v8 = *MEMORY[0x277D85DE8];
  v2 = [MEMORY[0x277D05600] coreChannel];
  if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
  {
    v3 = *(a1 + 32);
    v6 = 138412290;
    v7 = v3;
    _os_log_impl(&dword_2577CB000, v2, OS_LOG_TYPE_INFO, "%@ cancelling", &v6, 0xCu);
  }

  v4 = [*(a1 + 32) xpcConnection];
  [v4 invalidate];

  v5 = *MEMORY[0x277D85DE8];
}

- (NSString)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  pluginPrincipal = [(MLROnDemandConnectionHandler *)self pluginPrincipal];
  v7 = [v3 stringWithFormat:@"%@\n{\nprincipal class: %@\n}", v5, objc_opt_class()];

  return v7;
}

- (void)performTask:(id)task completionHandler:(id)handler
{
  v21[1] = *MEMORY[0x277D85DE8];
  taskCopy = task;
  handlerCopy = handler;
  v8 = MEMORY[0x277D05638];
  xpcConnection = [(MLROnDemandConnectionHandler *)self xpcConnection];
  LOBYTE(v8) = [v8 hasOnDemandLaunchEntitlement:xpcConnection];

  if (v8)
  {
    [(MLROnDemandConnectionHandler *)self performTaskInternal:taskCopy completionHandler:handlerCopy];
  }

  else
  {
    v10 = MEMORY[0x277CCACA8];
    mainBundle = [MEMORY[0x277CCA8D8] mainBundle];
    bundleIdentifier = [mainBundle bundleIdentifier];
    v13 = [v10 stringWithFormat:@"Missing launch entitlement with expected plugID=%@", bundleIdentifier];

    v14 = MEMORY[0x277CCA9B8];
    v15 = *MEMORY[0x277D05640];
    v20 = *MEMORY[0x277CCA450];
    v21[0] = v13;
    v16 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v21 forKeys:&v20 count:1];
    v17 = [v14 errorWithDomain:v15 code:8014 userInfo:v16];

    coreChannel = [MEMORY[0x277D05600] coreChannel];
    if (os_log_type_enabled(coreChannel, OS_LOG_TYPE_ERROR))
    {
      [MLROnDemandConnectionHandler performTask:completionHandler:];
    }

    handlerCopy[2](handlerCopy, 0, v17);
  }

  v19 = *MEMORY[0x277D85DE8];
}

- (void)performTaskInternal:(id)internal completionHandler:(id)handler
{
  v20[1] = *MEMORY[0x277D85DE8];
  internalCopy = internal;
  handlerCopy = handler;
  if (handlerCopy)
  {
    principalObject = [(MLROnDemandConnectionHandler *)self principalObject];

    if (principalObject)
    {
      pluginPrincipal = self->_pluginPrincipal;
      v18 = 0;
      v10 = [(MLROnDemandTaskPerforming *)pluginPrincipal performTask:internalCopy error:&v18];
      coreChannel2 = v18;
    }

    else
    {
      v12 = MEMORY[0x277CCA9B8];
      v13 = *MEMORY[0x277D05640];
      v19 = *MEMORY[0x277CCA450];
      v20[0] = @"Invalid principal class.";
      v14 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v20 forKeys:&v19 count:1];
      coreChannel2 = [v12 errorWithDomain:v13 code:1 userInfo:v14];

      v10 = 0;
    }

    coreChannel = [MEMORY[0x277D05600] coreChannel];
    v16 = coreChannel;
    if (coreChannel2)
    {
      if (os_log_type_enabled(coreChannel, OS_LOG_TYPE_ERROR))
      {
        [MLROnDemandConnectionHandler performTaskInternal:completionHandler:];
      }

      handlerCopy[2](handlerCopy, 0, coreChannel2);
    }

    else
    {
      if (os_log_type_enabled(coreChannel, OS_LOG_TYPE_DEBUG))
      {
        [MLROnDemandConnectionHandler performTaskInternal:completionHandler:];
      }

      (handlerCopy)[2](handlerCopy, v10, 0);
    }
  }

  else
  {
    coreChannel2 = [MEMORY[0x277D05600] coreChannel];
    if (os_log_type_enabled(coreChannel2, OS_LOG_TYPE_ERROR))
    {
      [MLROnDemandConnectionHandler performTaskInternal:coreChannel2 completionHandler:?];
    }
  }

  v17 = *MEMORY[0x277D85DE8];
}

- (NSXPCConnection)xpcConnection
{
  WeakRetained = objc_loadWeakRetained(&self->_xpcConnection);

  return WeakRetained;
}

- (void)initWithPrincipalObject:(uint64_t)a1 .cold.1(uint64_t a1, NSObject *a2)
{
  v7 = *MEMORY[0x277D85DE8];
  objc_opt_class();
  OUTLINED_FUNCTION_1();
  v4 = v3;
  _os_log_fault_impl(&dword_2577CB000, a2, OS_LOG_TYPE_FAULT, "Unsupported principal object type = %@.", v6, 0xCu);

  v5 = *MEMORY[0x277D85DE8];
}

- (void)performTask:completionHandler:.cold.1()
{
  v3 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1();
  _os_log_error_impl(&dword_2577CB000, v0, OS_LOG_TYPE_ERROR, "Fail to performTask: error=%@", v2, 0xCu);
  v1 = *MEMORY[0x277D85DE8];
}

- (void)performTaskInternal:completionHandler:.cold.1()
{
  v3 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1();
  _os_log_error_impl(&dword_2577CB000, v0, OS_LOG_TYPE_ERROR, "Fail to execute task with error=%@", v2, 0xCu);
  v1 = *MEMORY[0x277D85DE8];
}

- (void)performTaskInternal:completionHandler:.cold.2()
{
  v3 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1();
  _os_log_debug_impl(&dword_2577CB000, v0, OS_LOG_TYPE_DEBUG, "Return result=%@", v2, 0xCu);
  v1 = *MEMORY[0x277D85DE8];
}

@end