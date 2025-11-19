@interface GTMTLReplayServiceXPCProxy
- (BOOL)cancel:(unint64_t)a3;
- (BOOL)load:(id)a3 error:(id *)a4;
- (BOOL)pause:(unint64_t)a3;
- (BOOL)respondsToSelector:(SEL)a3;
- (BOOL)resume:(unint64_t)a3;
- (GTMTLReplayServiceXPCProxy)initWithConnection:(id)a3 serviceInfo:(id)a4;
- (id)decode:(id)a3;
- (id)fetch:(id)a3;
- (id)fetchInto:(id)a3;
- (id)flushRpackets;
- (id)profile:(id)a3;
- (id)query:(id)a3;
- (id)raytrace:(id)a3;
- (id)shaderdebug:(id)a3;
- (id)update:(id)a3;
- (unint64_t)registerObserver:(id)a3;
- (void)deregisterObserver:(unint64_t)a3;
- (void)display:(id)a3;
- (void)terminateProcess;
@end

@implementation GTMTLReplayServiceXPCProxy

- (GTMTLReplayServiceXPCProxy)initWithConnection:(id)a3 serviceInfo:(id)a4
{
  v7 = a3;
  v8 = a4;
  v60.receiver = self;
  v60.super_class = GTMTLReplayServiceXPCProxy;
  v9 = [(GTMTLReplayServiceXPCProxy *)&v60 init];
  if (v9)
  {
    v10 = &unk_2860EE930;
    v11 = [v8 serviceProperties];
    v12 = [v11 protocolName];
    v13 = NSStringFromProtocol(v10);
    v14 = [v12 isEqualToString:v13];

    if (v14)
    {
      v15 = [v8 serviceProperties];
      v16 = [v15 deviceUDID];
      deviceUDID = v9->_deviceUDID;
      v9->_deviceUDID = v16;

      v18 = [v8 serviceProperties];
      v9->_servicePort = [v18 servicePort];

      v19 = [v8 processInfo];
      processInfo = v9->_processInfo;
      v9->_processInfo = v19;

      v21 = [v8 serviceProperties];
      serviceProperties = v9->_serviceProperties;
      v9->_serviceProperties = v21;

      v23 = [v8 serviceProperties];
      v9->_version = [v23 version];

      objc_storeStrong(&v9->_gtXPCConnection, a3);
      v24 = [GTServiceConnection alloc];
      v25 = [v8 serviceProperties];
      v26 = [v25 deviceUDID];
      v27 = [v8 serviceProperties];
      v28 = -[GTServiceConnection initWithConnection:device:port:](v24, "initWithConnection:device:port:", v7, v26, [v27 servicePort]);
      connection = v9->_connection;
      v9->_connection = v28;

      v30 = [GTServiceProperties protocolMethods:v10];
      v31 = [v8 serviceProperties];
      v32 = [v31 protocolMethods];
      v33 = newSetWithArrayMinusArray(v30, v32);
      ignoreMethods = v9->_ignoreMethods;
      v9->_ignoreMethods = v33;

      empty = xpc_dictionary_create_empty();
      xpc_dictionary_set_string(empty, "_cmd", "bulkDataService");
      v36 = v9->_connection;
      v59 = 0;
      v37 = [(GTServiceConnection *)v36 sendMessageWithReplySync:empty error:&v59];
      v38 = v59;
      if (v37)
      {
        v39 = objc_opt_class();
        nsobject = xpc_dictionary_get_nsobject(v37, "returnValue", v39);
        v41 = [[GTBulkDataServiceXPCProxy alloc] initWithConnection:v7 remoteProperties:nsobject];
        bulkDataProxy = v9->_bulkDataProxy;
        v9->_bulkDataProxy = v41;

        v9->_fetchCompressionAlgorithm = 3;
        v43 = MEMORY[0x277CBEC10];
        v44 = [MEMORY[0x277CBEC10] mutableCopy];
        acceleratorStructureSessionToDispatcherId = v9->_acceleratorStructureSessionToDispatcherId;
        v9->_acceleratorStructureSessionToDispatcherId = v44;

        v46 = [v43 mutableCopy];
        observerIdToPort = v9->_observerIdToPort;
        v9->_observerIdToPort = v46;

        if (qword_27F19EC68)
        {
          v9->_tstream = GTTpacket_stream(GT_TRANSPORT_ENV);
        }
      }

      else if (GTCoreLogUseOsLog())
      {
        nsobject = gt_tagged_log(0x10u);
        if (os_log_type_enabled(nsobject, OS_LOG_TYPE_ERROR))
        {
          [GTMTLReplayServiceXPCProxy initWithConnection:v38 serviceInfo:nsobject];
        }
      }

      else
      {
        v58 = *MEMORY[0x277D85DF8];
        v54 = MEMORY[0x277CCACA8];
        nsobject = [v38 localizedDescription];
        v55 = [v54 stringWithFormat:@"Unable to retrieve bulk data service, %@", nsobject];
        fprintf(v58, "%s\n", [v55 UTF8String]);
      }

      if (v37)
      {
        goto LABEL_16;
      }
    }

    else
    {
      if (GTCoreLogUseOsLog())
      {
        v48 = gt_tagged_log(0x10u);
        if (os_log_type_enabled(v48, OS_LOG_TYPE_DEBUG))
        {
          [(GTMTLReplayServiceXPCProxy *)v8 initWithConnection:v10 serviceInfo:v48];
        }
      }

      else
      {
        v49 = *MEMORY[0x277D85E08];
        v50 = MEMORY[0x277CCACA8];
        v48 = [v8 serviceProperties];
        v51 = [v48 protocolName];
        v52 = NSStringFromProtocol(v10);
        v53 = [v50 stringWithFormat:@"Remote protocol name %@ does not match %@", v51, v52];
        fprintf(v49, "%s\n", [v53 UTF8String]);
      }
    }

    v56 = 0;
    goto LABEL_18;
  }

LABEL_16:
  v56 = v9;
LABEL_18:

  return v56;
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
    v9.super_class = GTMTLReplayServiceXPCProxy;
    v7 = [(GTMTLReplayServiceXPCProxy *)&v9 respondsToSelector:a3];
  }

  return v7;
}

- (unint64_t)registerObserver:(id)a3
{
  v5 = a3;
  empty = xpc_dictionary_create_empty();
  Name = sel_getName(a2);
  xpc_dictionary_set_string(empty, "_cmd", Name);
  v8 = [[GTMTLReplayErrorReplyStream alloc] initWithObserver:v5];

  v9 = [(GTServiceConnection *)self->_connection registerDispatcher:v8];
  v10 = [(GTServiceConnection *)self->_connection sendMessageWithReplySync:empty replyStreamId:v9 error:0];
  v11 = v10;
  if (v10)
  {
    uint64 = xpc_dictionary_get_uint64(v10, "observerId");
    v13 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:v9];
    observerIdToPort = self->_observerIdToPort;
    v15 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:uint64];
    [(NSMutableDictionary *)observerIdToPort setObject:v13 forKeyedSubscript:v15];
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

- (BOOL)load:(id)a3 error:(id *)a4
{
  v7 = a3;
  v8 = [v7 scheme];
  v9 = [v8 isEqualToString:*MEMORY[0x277CCA778]];

  v10 = v7;
  if (v9)
  {
    v11 = allServices(self->_gtXPCConnection);
    v12 = filteredArrayByService(v11, &unk_2860EEDF0);
    v13 = [v12 firstObject];

    v14 = [GTURLAccessProviderXPCProxy alloc];
    gtXPCConnection = self->_gtXPCConnection;
    v16 = [v13 serviceProperties];
    v17 = [(GTURLAccessProviderXPCProxy *)v14 initWithConnection:gtXPCConnection remoteProperties:v16];

    [v7 startAccessingSecurityScopedResource];
    v10 = [(GTURLAccessProviderXPCProxy *)v17 makeURL:v7];

    [v7 stopAccessingSecurityScopedResource];
  }

  empty = xpc_dictionary_create_empty();
  Name = sel_getName(a2);
  xpc_dictionary_set_string(empty, "_cmd", Name);
  xpc_dictionary_set_nsobject(empty, "url", v10);
  v20 = [(GTServiceConnection *)self->_connection sendMessageWithReplySync:empty error:a4];
  v21 = v20;
  if (v20)
  {
    nserror = xpc_dictionary_get_nserror(v20, "error");
    v23 = nserror;
    v24 = nserror == 0;
    if (nserror)
    {
      if (a4)
      {
        v25 = nserror;
        *a4 = v23;
      }
    }

    else
    {
      v26 = objc_alloc_init(GTReplayLoadRequest);
      [(GTReplayLoadRequest *)v26 setGputraceURL:v10];
      tstream = self->_tstream;
      v28 = sel_getName(a2);
      GTTpacket_record(tstream, v28, v26);
    }
  }

  else
  {
    v24 = 0;
  }

  return v24;
}

- (id)flushRpackets
{
  tstream = self->_tstream;
  if (tstream)
  {
    v4 = GTTpacket_finish(tstream);
    self->_tstream = 0;
    v5 = [MEMORY[0x277CBEB28] dataWithLength:dispatch_data_get_size(v4)];
    applier[0] = MEMORY[0x277D85DD0];
    applier[1] = 3221225472;
    applier[2] = __43__GTMTLReplayServiceXPCProxy_flushRpackets__block_invoke;
    applier[3] = &unk_279661620;
    v6 = v5;
    v9 = v6;
    dispatch_data_apply(v4, applier);
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (void)terminateProcess
{
  xdict = xpc_dictionary_create_empty();
  Name = sel_getName(a2);
  xpc_dictionary_set_string(xdict, "_cmd", Name);
  [(GTServiceConnection *)self->_connection sendMessageAndWaitForDelivery:xdict];
}

- (id)fetch:(id)a3
{
  tstream = self->_tstream;
  v6 = a3;
  Name = sel_getName(a2);
  GTTpacket_recordBatch(tstream, Name, v6);
  connection = self->_connection;
  v9 = sel_getName(a2);
  v10 = ProxyReplayerBatchRequest(connection, self, v6, v9, self->_bulkDataProxy, self->_fetchCompressionAlgorithm);

  return v10;
}

- (id)fetchInto:(id)a3
{
  tstream = self->_tstream;
  v6 = a3;
  Name = sel_getName(a2);
  GTTpacket_recordBatch(tstream, Name, v6);
  connection = self->_connection;
  v9 = sel_getName(a2);
  v10 = ProxyReplayerBatchRequest(connection, self, v6, v9, self->_bulkDataProxy, self->_fetchCompressionAlgorithm);

  return v10;
}

- (id)query:(id)a3
{
  tstream = self->_tstream;
  v6 = a3;
  Name = sel_getName(a2);
  GTTpacket_recordBatch(tstream, Name, v6);
  connection = self->_connection;
  v9 = sel_getName(a2);
  v10 = ProxyReplayerBatchRequest(connection, self, v6, v9, self->_bulkDataProxy, 0);

  return v10;
}

- (id)update:(id)a3
{
  tstream = self->_tstream;
  v6 = a3;
  Name = sel_getName(a2);
  GTTpacket_recordBatch(tstream, Name, v6);
  connection = self->_connection;
  v9 = sel_getName(a2);
  v10 = ProxyReplayerBatchRequest(connection, self, v6, v9, self->_bulkDataProxy, 0);

  return v10;
}

- (id)decode:(id)a3
{
  tstream = self->_tstream;
  v6 = a3;
  Name = sel_getName(a2);
  GTTpacket_recordBatch(tstream, Name, v6);
  connection = self->_connection;
  v9 = sel_getName(a2);
  v10 = ProxyReplayerBatchRequest(connection, self, v6, v9, self->_bulkDataProxy, 0);

  return v10;
}

- (void)display:(id)a3
{
  v5 = a3;
  xdict = xpc_dictionary_create_empty();
  Name = sel_getName(a2);
  xpc_dictionary_set_string(xdict, "_cmd", Name);
  xpc_dictionary_set_nsobject(xdict, "request", v5);
  tstream = self->_tstream;
  v8 = sel_getName(a2);
  GTTpacket_record(tstream, v8, v5);

  [(GTServiceConnection *)self->_connection sendMessage:xdict];
}

- (id)profile:(id)a3
{
  v5 = a3;
  v6 = -[GTReplayRequestToken initWithService:andTokenId:]([GTReplayRequestToken alloc], "initWithService:andTokenId:", self, [v5 requestID]);
  empty = xpc_dictionary_create_empty();
  Name = sel_getName(a2);
  xpc_dictionary_set_string(empty, "_cmd", Name);
  xpc_dictionary_set_nsobject(empty, "request", v5);
  xpc_dictionary_set_uint64(empty, "token", [(GTReplayRequestToken *)v6 tokenId]);
  v9 = [GTReplayProfileReplyStream alloc];
  v10 = [v5 streamHandler];
  v11 = [(GTReplayProfileReplyStream *)v9 initWithCallback:v10 bulkDataProxy:self->_bulkDataProxy andToken:v6];

  [(GTReplayProfileReplyStream *)v11 setDispatcherId:[(GTServiceConnection *)self->_connection registerDispatcher:v11]];
  tstream = self->_tstream;
  v13 = sel_getName(a2);
  GTTpacket_record(tstream, v13, v5);

  [(GTServiceConnection *)self->_connection sendMessage:empty withReplyStreamId:[(GTReplayProfileReplyStream *)v11 dispatcherId] replyHandler:&__block_literal_global_0];

  return v6;
}

- (id)shaderdebug:(id)a3
{
  v5 = a3;
  v6 = -[GTReplayRequestToken initWithService:andTokenId:]([GTReplayRequestToken alloc], "initWithService:andTokenId:", self, [v5 requestID]);
  empty = xpc_dictionary_create_empty();
  Name = sel_getName(a2);
  xpc_dictionary_set_string(empty, "_cmd", Name);
  if (self->_version)
  {
    bulkDataProxy = self->_bulkDataProxy;
    v10 = [v5 programData];
    v22[0] = MEMORY[0x277D85DD0];
    v22[1] = 3221225472;
    v22[2] = __42__GTMTLReplayServiceXPCProxy_shaderdebug___block_invoke;
    v22[3] = &unk_279661690;
    v11 = &v23;
    v23 = v5;
    v12 = &v24;
    v24 = empty;
    v25 = v6;
    v26 = self;
    v27 = a2;
    v13 = v5;
    [(GTBulkDataServiceXPCProxy *)bulkDataProxy uploadData:v10 completionHandler:v22];
  }

  else
  {
    xpc_dictionary_set_nsobject(empty, "request", v5);
    xpc_dictionary_set_uint64(empty, "token", [(GTReplayRequestToken *)v6 tokenId]);
    tstream = self->_tstream;
    v15 = sel_getName(a2);
    GTTpacket_record(tstream, v15, v5);
    connection = self->_connection;
    v19[0] = MEMORY[0x277D85DD0];
    v19[1] = 3221225472;
    v19[2] = __42__GTMTLReplayServiceXPCProxy_shaderdebug___block_invoke_3;
    v19[3] = &unk_279661668;
    v11 = &v20;
    v20 = v5;
    v12 = &v21;
    v21 = v6;
    v17 = v5;
    [(GTServiceConnection *)connection sendMessage:empty replyHandler:v19];
  }

  return v6;
}

void __42__GTMTLReplayServiceXPCProxy_shaderdebug___block_invoke(uint64_t a1, uint64_t a2)
{
  [*(a1 + 32) setProgramData:0];
  xpc_dictionary_set_nsobject(*(a1 + 40), "request", *(a1 + 32));
  xpc_dictionary_set_uint64(*(a1 + 40), "programDataHandle", a2);
  xpc_dictionary_set_uint64(*(a1 + 40), "token", [*(a1 + 48) tokenId]);
  v4 = *(*(a1 + 56) + 72);
  Name = sel_getName(*(a1 + 64));
  GTTpacket_record(v4, Name, *(a1 + 32));
  v6 = *(*(a1 + 56) + 16);
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __42__GTMTLReplayServiceXPCProxy_shaderdebug___block_invoke_2;
  v8[3] = &unk_279661668;
  v7 = *(a1 + 40);
  v9 = *(a1 + 32);
  v10 = *(a1 + 48);
  [v6 sendMessage:v7 replyHandler:v8];
}

void __42__GTMTLReplayServiceXPCProxy_shaderdebug___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v12 = a2;
  v5 = a3;
  if (v12)
  {
    v6 = objc_alloc(MEMORY[0x277CBEB98]);
    v7 = objc_opt_class();
    v8 = objc_opt_class();
    v9 = [v6 initWithObjects:{v7, v8, objc_opt_class(), 0}];
    nsobject_classes = xpc_dictionary_get_nsobject_classes(v12, "response", v9);
  }

  else
  {
    nsobject_classes = objc_opt_new();
    [nsobject_classes setError:v5];
  }

  v11 = [*(a1 + 32) completionHandler];
  (v11)[2](v11, nsobject_classes);

  [*(a1 + 40) completed];
}

void __42__GTMTLReplayServiceXPCProxy_shaderdebug___block_invoke_3(uint64_t a1, void *a2, void *a3)
{
  v12 = a2;
  v5 = a3;
  if (v12)
  {
    v6 = objc_alloc(MEMORY[0x277CBEB98]);
    v7 = objc_opt_class();
    v8 = objc_opt_class();
    v9 = [v6 initWithObjects:{v7, v8, objc_opt_class(), 0}];
    nsobject_classes = xpc_dictionary_get_nsobject_classes(v12, "response", v9);
  }

  else
  {
    nsobject_classes = objc_opt_new();
    [nsobject_classes setError:v5];
  }

  v11 = [*(a1 + 32) completionHandler];
  (v11)[2](v11, nsobject_classes);

  [*(a1 + 40) completed];
}

- (id)raytrace:(id)a3
{
  v5 = a3;
  v6 = -[GTReplayRequestToken initWithService:andTokenId:]([GTReplayRequestToken alloc], "initWithService:andTokenId:", self, [v5 requestID]);
  empty = xpc_dictionary_create_empty();
  Name = sel_getName(a2);
  xpc_dictionary_set_string(empty, "_cmd", Name);
  xpc_dictionary_set_nsobject(empty, "request", v5);
  xpc_dictionary_set_uint64(empty, "token", [(GTReplayRequestToken *)v6 tokenId]);
  v9 = [GTReplayADSReplyStream alloc];
  v10 = [v5 streamHandler];
  v11 = [(GTReplayADSReplyStream *)v9 initWithCallback:v10 bulkDataProxy:self->_bulkDataProxy andToken:v6];

  [(GTReplayADSReplyStream *)v11 setDispatcherId:[(GTServiceConnection *)self->_connection registerDispatcher:v11]];
  tstream = self->_tstream;
  v13 = sel_getName(a2);
  GTTpacket_record(tstream, v13, v5);

  [(GTServiceConnection *)self->_connection sendMessage:empty withReplyStreamId:[(GTReplayADSReplyStream *)v11 dispatcherId]];

  return v6;
}

- (BOOL)cancel:(unint64_t)a3
{
  empty = xpc_dictionary_create_empty();
  Name = sel_getName(a2);
  xpc_dictionary_set_string(empty, "_cmd", Name);
  xpc_dictionary_set_uint64(empty, "token", a3);
  v8 = [(GTServiceConnection *)self->_connection sendMessageWithReplySync:empty error:0];
  v9 = v8;
  if (v8)
  {
    v10 = xpc_dictionary_get_BOOL(v8, "success");
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (BOOL)pause:(unint64_t)a3
{
  empty = xpc_dictionary_create_empty();
  Name = sel_getName(a2);
  xpc_dictionary_set_string(empty, "_cmd", Name);
  xpc_dictionary_set_uint64(empty, "token", a3);
  v8 = [(GTServiceConnection *)self->_connection sendMessageWithReplySync:empty error:0];
  v9 = v8;
  if (v8)
  {
    v10 = xpc_dictionary_get_BOOL(v8, "success");
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (BOOL)resume:(unint64_t)a3
{
  empty = xpc_dictionary_create_empty();
  Name = sel_getName(a2);
  xpc_dictionary_set_string(empty, "_cmd", Name);
  xpc_dictionary_set_uint64(empty, "token", a3);
  v8 = [(GTServiceConnection *)self->_connection sendMessageWithReplySync:empty error:0];
  v9 = v8;
  if (v8)
  {
    v10 = xpc_dictionary_get_BOOL(v8, "success");
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (void)initWithConnection:(NSObject *)a3 serviceInfo:.cold.1(void *a1, Protocol *a2, NSObject *a3)
{
  v13 = *MEMORY[0x277D85DE8];
  v5 = [a1 serviceProperties];
  v6 = [v5 protocolName];
  v7 = NSStringFromProtocol(a2);
  v9 = 138412546;
  v10 = v6;
  v11 = 2112;
  v12 = v7;
  _os_log_debug_impl(&dword_24DBC9000, a3, OS_LOG_TYPE_DEBUG, "Remote protocol name %@ does not match %@", &v9, 0x16u);

  v8 = *MEMORY[0x277D85DE8];
}

- (void)initWithConnection:(void *)a1 serviceInfo:(NSObject *)a2 .cold.2(void *a1, NSObject *a2)
{
  v7 = *MEMORY[0x277D85DE8];
  v3 = [a1 localizedDescription];
  v5 = 138412290;
  v6 = v3;
  _os_log_error_impl(&dword_24DBC9000, a2, OS_LOG_TYPE_ERROR, "Unable to retrieve bulk data service, %@", &v5, 0xCu);

  v4 = *MEMORY[0x277D85DE8];
}

@end