@interface GTMTLCaptureServiceXPCProxy
- (BOOL)respondsToSelector:(SEL)a3;
- (GTMTLCaptureServiceXPCProxy)initWithConnection:(id)a3 remoteProperties:(id)a4;
- (id)createCaptureDescriptor;
- (id)query:(id)a3;
- (id)startWithDescriptor:(id)a3 completionHandler:(id)a4;
- (id)update:(id)a3;
- (unint64_t)nextRequestID;
- (unint64_t)registerObserver:(id)a3;
- (void)abort;
- (void)deregisterObserver:(unint64_t)a3;
- (void)resume;
- (void)stop;
@end

@implementation GTMTLCaptureServiceXPCProxy

- (GTMTLCaptureServiceXPCProxy)initWithConnection:(id)a3 remoteProperties:(id)a4
{
  v6 = a3;
  v7 = a4;
  v21.receiver = self;
  v21.super_class = GTMTLCaptureServiceXPCProxy;
  v8 = [(GTMTLCaptureServiceXPCProxy *)&v21 init];
  if (v8)
  {
    v9 = &unk_2860F0CF8;
    v10 = [GTServiceConnection alloc];
    v11 = [v7 deviceUDID];
    v12 = -[GTServiceConnection initWithConnection:device:port:](v10, "initWithConnection:device:port:", v6, v11, [v7 servicePort]);
    connection = v8->_connection;
    v8->_connection = v12;

    v14 = [GTServiceProperties protocolMethods:v9];
    v15 = [v7 protocolMethods];
    v16 = newSetWithArrayMinusArray(v14, v15);
    ignoreMethods = v8->_ignoreMethods;
    v8->_ignoreMethods = v16;

    v18 = [MEMORY[0x277CBEC10] mutableCopy];
    observerIdToPort = v8->_observerIdToPort;
    v8->_observerIdToPort = v18;

    objc_storeStrong(&v8->_serviceProperties, a4);
  }

  return v8;
}

- (BOOL)respondsToSelector:(SEL)a3
{
  ignoreMethods = self->_ignoreMethods;
  v6 = NSStringFromSelector(a3);
  if ([(NSSet *)ignoreMethods containsObject:v6])
  {
    v7 = 0;
  }

  else
  {
    v9.receiver = self;
    v9.super_class = GTMTLCaptureServiceXPCProxy;
    v7 = [(GTMTLCaptureServiceXPCProxy *)&v9 respondsToSelector:a3];
  }

  return v7;
}

- (unint64_t)registerObserver:(id)a3
{
  v5 = a3;
  empty = xpc_dictionary_create_empty();
  Name = sel_getName(a2);
  xpc_dictionary_set_string(empty, "_cmd", Name);
  v8 = [[GTMTLCaptureServiceReplyStream alloc] initWithObserver:v5];

  v9 = [(GTServiceConnection *)self->_connection registerDispatcher:v8];
  connection = self->_connection;
  v18 = 0;
  v11 = [(GTServiceConnection *)connection sendMessageWithReplySync:empty replyStreamId:v9 error:&v18];
  v12 = v18;
  if (v11)
  {
    uint64 = xpc_dictionary_get_uint64(v11, "observerId");
    v14 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:v9];
    observerIdToPort = self->_observerIdToPort;
    v16 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:uint64];
    [(NSMutableDictionary *)observerIdToPort setObject:v14 forKeyedSubscript:v16];
  }

  else
  {
    uint64 = 0;
  }

  return uint64;
}

- (void)deregisterObserver:(unint64_t)a3
{
  observerIdToPort = self->_observerIdToPort;
  v7 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:?];
  v8 = [(NSMutableDictionary *)observerIdToPort objectForKeyedSubscript:v7];
  v9 = [v8 unsignedLongValue];

  v10 = self->_observerIdToPort;
  v11 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:a3];
  [(NSMutableDictionary *)v10 removeObjectForKey:v11];

  xdict = xpc_dictionary_create_empty();
  Name = sel_getName(a2);
  xpc_dictionary_set_string(xdict, "_cmd", Name);
  xpc_dictionary_set_uint64(xdict, "observerId", a3);
  v13 = [(GTServiceConnection *)self->_connection sendMessageWithReplySync:xdict error:0];
  [(GTServiceConnection *)self->_connection deregisterDispatcher:v9];
}

- (void)abort
{
  xdict = xpc_dictionary_create_empty();
  Name = sel_getName(a2);
  xpc_dictionary_set_string(xdict, "_cmd", Name);
  [(GTServiceConnection *)self->_connection sendMessage:xdict];
}

- (void)resume
{
  xdict = xpc_dictionary_create_empty();
  Name = sel_getName(a2);
  xpc_dictionary_set_string(xdict, "_cmd", Name);
  [(GTServiceConnection *)self->_connection sendMessage:xdict];
}

- (void)stop
{
  xdict = xpc_dictionary_create_empty();
  Name = sel_getName(a2);
  xpc_dictionary_set_string(xdict, "_cmd", Name);
  [(GTServiceConnection *)self->_connection sendMessage:xdict];
}

- (id)startWithDescriptor:(id)a3 completionHandler:(id)a4
{
  v7 = a3;
  v8 = a4;
  if (v8)
  {
    v9 = -[GTCaptureRequestToken initWithCaptureService:andTokenId:]([GTCaptureRequestToken alloc], "initWithCaptureService:andTokenId:", self, [v7 requestID]);
    if (GTCoreLogUseOsLog())
    {
      v10 = gt_tagged_log(0x10u);
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
      {
        [GTMTLCaptureServiceXPCProxy startWithDescriptor:v7 completionHandler:v10];
      }
    }

    else
    {
      v12 = *MEMORY[0x277D85E08];
      v13 = [MEMORY[0x277CCACA8] stringWithFormat:@"StartWithDescriptor: %@", v7];
      fprintf(v12, "%s\n", [v13 UTF8String]);
    }

    empty = xpc_dictionary_create_empty();
    Name = sel_getName(a2);
    xpc_dictionary_set_string(empty, "_cmd", Name);
    xpc_dictionary_set_nsobject(empty, "descriptor", v7);
    connection = self->_connection;
    v20[0] = MEMORY[0x277D85DD0];
    v20[1] = 3221225472;
    v20[2] = __69__GTMTLCaptureServiceXPCProxy_startWithDescriptor_completionHandler___block_invoke;
    v20[3] = &unk_279661A48;
    v22 = v8;
    v17 = v9;
    v21 = v17;
    [(GTServiceConnection *)connection sendMessage:empty replyHandler:v20];
    v18 = v21;
    v11 = v17;
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

void __69__GTMTLCaptureServiceXPCProxy_startWithDescriptor_completionHandler___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v39[2] = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  v7 = objc_opt_new();
  v8 = v7;
  if (v5)
  {
    v9 = objc_opt_class();
    nsobject = xpc_dictionary_get_nsobject(v5, "response", v9);
    v11 = [nsobject error];

    if (v11)
    {
      if (GTCoreLogUseOsLog())
      {
        v12 = gt_tagged_log(0x10u);
        if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
        {
          __69__GTMTLCaptureServiceXPCProxy_startWithDescriptor_completionHandler___block_invoke_cold_1(v12);
        }
      }

      else
      {
        v25 = *MEMORY[0x277D85DF8];
        v26 = [MEMORY[0x277CCACA8] stringWithFormat:@"serialization error"];
        fprintf(v25, "%s\n", [v26 UTF8String]);
      }

      v27 = *MEMORY[0x277CCA498];
      v38[0] = *MEMORY[0x277CCA450];
      v38[1] = v27;
      v39[0] = @"Capture Service serialization issue";
      v39[1] = @"Failure to encode data from requested";
      v18 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v39 forKeys:v38 count:2];
      v28 = [MEMORY[0x277CCA9B8] errorWithDomain:@"GTCaptureService" code:54 userInfo:v18];
      [v8 setError:v28];

      (*(*(a1 + 40) + 16))();
      [*(a1 + 32) completed];
    }

    else
    {
      v13 = objc_alloc(MEMORY[0x277CBEB98]);
      v14 = objc_opt_class();
      v15 = objc_opt_class();
      v16 = objc_opt_class();
      v17 = objc_opt_class();
      v18 = [v13 initWithObjects:{v14, v15, v16, v17, objc_opt_class(), 0}];
      v19 = MEMORY[0x277CCAAC8];
      v20 = [nsobject data];
      v35 = v6;
      v21 = [v19 unarchivedObjectOfClasses:v18 fromData:v20 error:&v35];
      v22 = v35;

      if (v21)
      {
        v23 = [v21 objectForKeyedSubscript:@"archiveURL"];
        [v8 setArchiveURL:v23];

        v24 = [v21 objectForKeyedSubscript:@"error"];
        [v8 setError:v24];

        (*(*(a1 + 40) + 16))();
        [*(a1 + 32) completed];
      }

      else
      {
        if (GTCoreLogUseOsLog())
        {
          v29 = gt_tagged_log(0x10u);
          if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
          {
            __69__GTMTLCaptureServiceXPCProxy_startWithDescriptor_completionHandler___block_invoke_cold_2(v29);
          }
        }

        else
        {
          v30 = *MEMORY[0x277D85DF8];
          v29 = [MEMORY[0x277CCACA8] stringWithFormat:@"deserialization error"];
          fprintf(v30, "%s\n", [v29 UTF8String]);
        }

        v31 = *MEMORY[0x277CCA498];
        v36[0] = *MEMORY[0x277CCA450];
        v36[1] = v31;
        v37[0] = @"Capture Service deserialization issue";
        v37[1] = @"Failure to decode data from requested";
        v32 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v37 forKeys:v36 count:2];
        v33 = [MEMORY[0x277CCA9B8] errorWithDomain:@"GTCaptureService" code:54 userInfo:v32];
        [v8 setError:v33];

        (*(*(a1 + 40) + 16))();
        [*(a1 + 32) completed];
      }

      v6 = v22;
    }
  }

  else
  {
    [v7 setError:v6];
    (*(*(a1 + 40) + 16))();
    [*(a1 + 32) completed];
  }

  v34 = *MEMORY[0x277D85DE8];
}

- (id)update:(id)a3
{
  connection = self->_connection;
  v6 = a3;
  Name = sel_getName(a2);
  v8 = ProxyCaptureBatchRequest(connection, self, v6, Name);

  return v8;
}

- (id)query:(id)a3
{
  connection = self->_connection;
  v6 = a3;
  Name = sel_getName(a2);
  v8 = ProxyCaptureBatchRequest(connection, self, v6, Name);

  return v8;
}

- (unint64_t)nextRequestID
{
  empty = xpc_dictionary_create_empty();
  Name = sel_getName(a2);
  xpc_dictionary_set_string(empty, "_cmd", Name);
  v6 = [(GTServiceConnection *)self->_connection sendMessageWithReplySync:empty error:0];
  v7 = v6;
  if (v6)
  {
    uint64 = xpc_dictionary_get_uint64(v6, "requestID");
  }

  else
  {
    uint64 = 0;
  }

  return uint64;
}

- (id)createCaptureDescriptor
{
  v3 = [[GTCaptureDescriptor alloc] initWithRequestID:[(GTMTLCaptureServiceXPCProxy *)self nextRequestID]];
  v4 = [(GTMTLCaptureServiceXPCProxy *)self serviceProperties];
  v5 = [v4 version];

  if (v5 <= 2)
  {
    [(GTCaptureDescriptor *)v3 setSessionID:0];
  }

  return v3;
}

- (void)startWithDescriptor:(uint64_t)a1 completionHandler:(NSObject *)a2 .cold.1(uint64_t a1, NSObject *a2)
{
  v5 = *MEMORY[0x277D85DE8];
  v3 = 138412290;
  v4 = a1;
  _os_log_debug_impl(&dword_24DBC9000, a2, OS_LOG_TYPE_DEBUG, "StartWithDescriptor: %@", &v3, 0xCu);
  v2 = *MEMORY[0x277D85DE8];
}

@end