@interface GTServiceProviderXPCDispatcher
- (GTServiceProviderXPCDispatcher)initWithService:(id)a3 properties:(id)a4;
- (void)allServices:(id)a3 replyConnection:(id)a4;
- (void)broadcastDisconnect:(id)a3 replyConnection:(id)a4;
- (void)deregisterObserver_:(id)a3 replyConnection:(id)a4;
- (void)deregisterService_:(id)a3 replyConnection:(id)a4;
- (void)registerObserver_:(id)a3 replyConnection:(id)a4;
- (void)registerService_forProcess_:(id)a3 replyConnection:(id)a4;
- (void)waitForService_completionHandler_:(id)a3 replyConnection:(id)a4;
- (void)waitForService_error_:(id)a3 replyConnection:(id)a4;
@end

@implementation GTServiceProviderXPCDispatcher

- (GTServiceProviderXPCDispatcher)initWithService:(id)a3 properties:(id)a4
{
  v7 = a3;
  v8 = [a4 protocolMethods];
  v9 = [v8 mutableCopy];

  [v9 addObject:@"broadcastDisconnect"];
  v13.receiver = self;
  v13.super_class = GTServiceProviderXPCDispatcher;
  v10 = [(GTXPCDispatcher *)&v13 initWithProtocolMethods:v9];
  v11 = v10;
  if (v10)
  {
    objc_storeStrong(&v10->_serviceProvider, a3);
  }

  return v11;
}

- (void)allServices:(id)a3 replyConnection:(id)a4
{
  v22 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = [(GTServiceProvider *)self->_serviceProvider allServices];
  v9 = gt_xpc_dictionary_create_reply(v6);
  if (([v7 isTrusted] & 1) == 0)
  {
    v10 = [objc_alloc(MEMORY[0x277CBEA60]) initWithArray:v8 copyItems:1];

    v19 = 0u;
    v20 = 0u;
    v17 = 0u;
    v18 = 0u;
    v8 = v10;
    v11 = [v8 countByEnumeratingWithState:&v17 objects:v21 count:16];
    if (v11)
    {
      v12 = v11;
      v13 = *v18;
      do
      {
        v14 = 0;
        do
        {
          if (*v18 != v13)
          {
            objc_enumerationMutation(v8);
          }

          v15 = [*(*(&v17 + 1) + 8 * v14) serviceProperties];
          [v15 setDeviceUDID:0];

          ++v14;
        }

        while (v12 != v14);
        v12 = [v8 countByEnumeratingWithState:&v17 objects:v21 count:16];
      }

      while (v12);
    }
  }

  xpc_dictionary_set_nsobject(v9, "returnValue", v8);
  [v7 sendMessage:v9];

  v16 = *MEMORY[0x277D85DE8];
}

- (void)registerService_forProcess_:(id)a3 replyConnection:(id)a4
{
  v27[1] = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = gt_xpc_dictionary_create_reply(v6);
  v9 = objc_opt_class();
  nsobject = xpc_dictionary_get_nsobject(v6, "serviceProperties", v9);
  if (nsobject)
  {
    v11 = objc_opt_class();
    v12 = xpc_dictionary_get_nsobject(v6, "processInfo", v11);
    if (!v12)
    {
      v19 = MEMORY[0x277CCA9B8];
      v24 = *MEMORY[0x277CCA450];
      v20 = [MEMORY[0x277CCACA8] stringWithFormat:@"Invalid argument sent to service %@: %@", @"GTServiceProvider", @"Invalid processInfo argument passed to registerService"];
      v25 = v20;
      v21 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v25 forKeys:&v24 count:1];
      v22 = [v19 errorWithDomain:@"com.apple.gputools.transport" code:4 userInfo:v21];

      xpc_dictionary_set_nserror(v8, "error", v22);
      [v7 sendMessage:v8];

      goto LABEL_7;
    }

    [(GTServiceProvider *)self->_serviceProvider registerService:nsobject forProcess:v12];
    registeredConnections = self->_registeredConnections;
    v14 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:{objc_msgSend(nsobject, "servicePort")}];
    [(NSMutableDictionary *)registeredConnections setObject:v7 forKeyedSubscript:v14];

    v15 = [nsobject deviceUDID];
    xpc_dictionary_set_string(v8, "deviceUDID", [v15 UTF8String]);

    xpc_dictionary_set_uint64(v8, "servicePort", [nsobject servicePort]);
  }

  else
  {
    v16 = MEMORY[0x277CCA9B8];
    v26 = *MEMORY[0x277CCA450];
    v17 = [MEMORY[0x277CCACA8] stringWithFormat:@"Invalid argument sent to service %@: %@", @"GTServiceProvider", @"Invalid serviceProperties argument passed to registerService"];
    v27[0] = v17;
    v18 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v27 forKeys:&v26 count:1];
    v12 = [v16 errorWithDomain:@"com.apple.gputools.transport" code:4 userInfo:v18];

    xpc_dictionary_set_nserror(v8, "error", v12);
  }

  [v7 sendMessage:v8];
LABEL_7:

  v23 = *MEMORY[0x277D85DE8];
}

- (void)waitForService_completionHandler_:(id)a3 replyConnection:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = gt_xpc_dictionary_create_reply(v7);
  string = xpc_dictionary_get_string(v7, "protocolName");

  if (string)
  {
    string = [MEMORY[0x277CCACA8] stringWithUTF8String:string];
  }

  serviceProvider = self->_serviceProvider;
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __84__GTServiceProviderXPCDispatcher_waitForService_completionHandler__replyConnection___block_invoke;
  v13[3] = &unk_279661440;
  v14 = v8;
  v15 = v6;
  v11 = v6;
  v12 = v8;
  [(GTServiceProvider *)serviceProvider waitForService:string completionHandler:v13];
}

uint64_t __84__GTServiceProviderXPCDispatcher_waitForService_completionHandler__replyConnection___block_invoke(uint64_t a1, uint64_t a2)
{
  xpc_dictionary_set_nserror(*(a1 + 32), "error", a2);
  v4 = *(a1 + 32);
  v3 = *(a1 + 40);

  return [v3 sendMessage:v4];
}

- (void)waitForService_error_:(id)a3 replyConnection:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = gt_xpc_dictionary_create_reply(v7);
  string = xpc_dictionary_get_string(v7, "protocolName");

  if (string)
  {
    string = [MEMORY[0x277CCACA8] stringWithUTF8String:string];
  }

  serviceProvider = self->_serviceProvider;
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __72__GTServiceProviderXPCDispatcher_waitForService_error__replyConnection___block_invoke;
  v13[3] = &unk_279661440;
  v14 = v8;
  v15 = v6;
  v11 = v6;
  v12 = v8;
  [(GTServiceProvider *)serviceProvider waitForService:string completionHandler:v13];
}

uint64_t __72__GTServiceProviderXPCDispatcher_waitForService_error__replyConnection___block_invoke(uint64_t a1, uint64_t a2)
{
  xpc_dictionary_set_nserror(*(a1 + 32), "error", a2);
  v4 = *(a1 + 32);
  v3 = *(a1 + 40);

  return [v3 sendMessage:v4];
}

- (void)deregisterService_:(id)a3 replyConnection:(id)a4
{
  uint64 = xpc_dictionary_get_uint64(a3, "servicePort");
  [(GTServiceProvider *)self->_serviceProvider deregisterService:uint64];
  registeredConnections = self->_registeredConnections;
  v7 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:uint64];
  [(NSMutableDictionary *)registeredConnections removeObjectForKey:v7];
}

- (void)registerObserver_:(id)a3 replyConnection:(id)a4
{
  v6 = a4;
  v7 = a3;
  v10 = [(GTServiceObserver *)[GTServiceProviderObserver alloc] initWithMessage:v7 notifyConnection:v6];
  v8 = [(GTServiceProvider *)self->_serviceProvider registerObserver:v10];
  v9 = gt_xpc_dictionary_create_reply(v7);

  xpc_dictionary_set_uint64(v9, "observerId", v8);
  [v6 sendMessage:v9];
}

- (void)deregisterObserver_:(id)a3 replyConnection:(id)a4
{
  v6 = a4;
  v7 = a3;
  [(GTServiceProvider *)self->_serviceProvider deregisterObserver:xpc_dictionary_get_uint64(v7, "observerId")];
  v8 = gt_xpc_dictionary_create_reply(v7);

  [v6 sendMessage:v8];
}

- (void)broadcastDisconnect:(id)a3 replyConnection:(id)a4
{
  v6 = a4;
  v7 = xpc_dictionary_get_array(a3, "_pathHistory");
  [(GTServiceProvider *)self->_serviceProvider deregisterObserversForConnection:v6 path:v7];
}

@end