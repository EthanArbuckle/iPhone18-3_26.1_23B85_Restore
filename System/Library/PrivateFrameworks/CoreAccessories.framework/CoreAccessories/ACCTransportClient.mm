@interface ACCTransportClient
+ (id)sharedClient;
- (ACCTransportClient)init;
- (ACCTransportClientDelegate)delegate;
- (BOOL)addToDictionaryProperty:(id)property values:(id)values forConnectionWithUUID:(id)d;
- (BOOL)addToDictionaryProperty:(id)property values:(id)values forEndpointWithUUID:(id)d;
- (BOOL)appendToArrayProperty:(id)property values:(id)values forConnectionWithUUID:(id)d;
- (BOOL)appendToArrayProperty:(id)property values:(id)values forEndpointWithUUID:(id)d;
- (BOOL)destroyConnectionWithUUID:(id)d;
- (BOOL)destroyEndpointWithUUID:(id)d;
- (BOOL)isConnectionAuthenticated:(id)authenticated;
- (BOOL)processIncomingData:(id)data forEndpointWithUUID:(id)d;
- (BOOL)publishConnectionWithUUID:(id)d;
- (BOOL)removeProperty:(id)property forConnectionWithUUID:(id)d;
- (BOOL)removeProperty:(id)property forEndpointWithUUID:(id)d;
- (BOOL)setAccessoryInfo:(id)info forEndpointWithUUID:(id)d;
- (BOOL)setProperties:(id)properties forConnectionWithUUID:(id)d;
- (BOOL)setProperties:(id)properties forEndpointWithUUID:(id)d;
- (BOOL)setProperty:(id)property value:(id)value forConnectionWithUUID:(id)d;
- (BOOL)setProperty:(id)property value:(id)value forEndpointWithUUID:(id)d;
- (NSXPCConnection)serverConnection;
- (id)_init;
- (id)accessoryInfoForConnectionWithUUID:(id)d;
- (id)accessoryInfoForEndpointWithUUID:(id)d;
- (id)connectionUUIDForEndpointWithUUID:(id)d;
- (id)endpointUUIDsForConnectionWithUUID:(id)d;
- (id)identifierForConnectionWithUUID:(id)d;
- (id)identifierForEndpointWithUUID:(id)d;
- (id)propertiesForConnectionWithUUID:(id)d;
- (id)propertiesForEndpointWithUUID:(id)d;
- (void)_init;
- (void)dealloc;
- (void)launchServer;
- (void)propertiesDidChange:(id)change forConnectionWithUUID:(id)d previousProperties:(id)properties;
- (void)propertiesDidChange:(id)change forEndpointWithUUID:(id)d previousProperties:(id)properties connectionUUID:(id)iD;
- (void)receivedSecureTunnelData:(id)data forEndpoint:(id)endpoint;
- (void)sendOutgoingData:(id)data forEndpointWithUUID:(id)d connectionUUID:(id)iD withReply:(id)reply;
- (void)serverConnection;
- (void)setHandler:(id)handler forConnectionProperty:(id)property;
- (void)setHandler:(id)handler forEndpointProperty:(id)property;
- (void)setSecureTunnelDataReceiveHandler:(id)handler forEndpoint:(id)endpoint;
- (void)setServerConnection:(id)connection;
@end

@implementation ACCTransportClient

- (NSXPCConnection)serverConnection
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  v3 = selfCopy->_serverConnection;
  if (v3)
  {
    v4 = v3;
    objc_sync_exit(selfCopy);
  }

  else
  {
    if (gLogObjects)
    {
      v5 = gNumLogObjects < 1;
    }

    else
    {
      v5 = 1;
    }

    if (v5)
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        [ACCTransportClient serverConnection];
      }

      v7 = MEMORY[0x277D86220];
      v6 = MEMORY[0x277D86220];
    }

    else
    {
      v7 = *gLogObjects;
    }

    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(buf[0]) = 0;
      _os_log_impl(&dword_221CB0000, v7, OS_LOG_TYPE_DEFAULT, "Connecting to XPC server...", buf, 2u);
    }

    if (gLogSignpostObjects && gNumLogSignpostObjects >= 4)
    {
      v8 = *(gLogSignpostObjects + 24);
    }

    else
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        [ACCTransportClient _init];
      }

      v8 = MEMORY[0x277D86220];
      v9 = MEMORY[0x277D86220];
    }

    if (gLogSignpostObjects && gNumLogSignpostObjects >= 4)
    {
      v10 = *(gLogSignpostObjects + 24);
    }

    else
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        [ACCTransportClient _init];
      }

      v10 = MEMORY[0x277D86220];
      v11 = MEMORY[0x277D86220];
    }

    v12 = os_signpost_id_make_with_pointer(v10, selfCopy);

    if (v12 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v8))
    {
      LOWORD(buf[0]) = 0;
      _os_signpost_emit_with_name_impl(&dword_221CB0000, v8, OS_SIGNPOST_INTERVAL_BEGIN, v12, "TransportClient SERVER", "Connect to server", buf, 2u);
    }

    v13 = [objc_alloc(MEMORY[0x277CCAE80]) initWithMachServiceName:@"com.apple.accessories.transport-server" options:4096];
    v14 = [MEMORY[0x277CCAE90] interfaceWithProtocol:&unk_283537680];
    [v13 setRemoteObjectInterface:v14];

    v15 = [MEMORY[0x277CCAE90] interfaceWithProtocol:&unk_283535418];
    [v13 setExportedInterface:v15];

    [v13 setExportedObject:selfCopy];
    objc_initWeak(buf, selfCopy);
    v22[0] = MEMORY[0x277D85DD0];
    v22[1] = 3221225472;
    v22[2] = __38__ACCTransportClient_serverConnection__block_invoke;
    v22[3] = &unk_278487120;
    objc_copyWeak(&v25, buf);
    v4 = v13;
    v23 = v4;
    v24 = selfCopy;
    [(NSXPCConnection *)v4 setInvalidationHandler:v22];
    v17 = MEMORY[0x277D85DD0];
    v18 = 3221225472;
    v19 = __38__ACCTransportClient_serverConnection__block_invoke_127;
    v20 = &unk_278486298;
    objc_copyWeak(&v21, buf);
    [(NSXPCConnection *)v4 setInterruptionHandler:&v17];
    objc_storeStrong(&selfCopy->_serverConnection, v13);
    objc_destroyWeak(&v21);

    objc_destroyWeak(&v25);
    objc_destroyWeak(buf);
    objc_sync_exit(selfCopy);

    [(NSXPCConnection *)v4 resume:v17];
  }

  return v4;
}

+ (id)sharedClient
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __34__ACCTransportClient_sharedClient__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = self;
  if (sharedClient_once != -1)
  {
    dispatch_once(&sharedClient_once, block);
  }

  v2 = sharedClient_sharedInstance;

  return v2;
}

- (ACCTransportClient)init
{
  v4 = MEMORY[0x277CBEAD8];
  v5 = *MEMORY[0x277CBE658];
  v6 = objc_opt_class();
  v7 = NSStringFromClass(v6);
  v8 = NSStringFromSelector(sel_sharedClient);
  v9 = NSStringFromSelector(a2);
  [v4 raise:v5 format:{@"Use +[%@ %@] instead of -%@.", v7, v8, v9}];

  return 0;
}

- (id)_init
{
  init_logging();
  v23.receiver = self;
  v23.super_class = ACCTransportClient;
  v3 = [(ACCTransportClient *)&v23 init];
  if (v3)
  {
    if (gLogSignpostObjects)
    {
      v4 = gNumLogSignpostObjects < 4;
    }

    else
    {
      v4 = 1;
    }

    if (v4)
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        [ACCTransportClient _init];
      }

      v6 = MEMORY[0x277D86220];
      v5 = MEMORY[0x277D86220];
    }

    else
    {
      v6 = *(gLogSignpostObjects + 24);
    }

    if (gLogSignpostObjects && gNumLogSignpostObjects >= 4)
    {
      v7 = *(gLogSignpostObjects + 24);
    }

    else
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        [ACCTransportClient _init];
      }

      v7 = MEMORY[0x277D86220];
      v8 = MEMORY[0x277D86220];
    }

    v9 = os_signpost_id_make_with_pointer(v7, v3);

    if (v9 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v6))
    {
      *v22 = 0;
      _os_signpost_emit_with_name_impl(&dword_221CB0000, v6, OS_SIGNPOST_EVENT, v9, "TransportClient", "Create shared ACCTransportClient", v22, 2u);
    }

    objc_storeWeak(&v3->_delegate, 0);
    serverConnection = v3->_serverConnection;
    v3->_serverConnection = 0;

    v11 = objc_alloc_init(MEMORY[0x277CBEB38]);
    endpointDataOutHandlers = v3->_endpointDataOutHandlers;
    v3->_endpointDataOutHandlers = v11;

    v13 = objc_alloc_init(MEMORY[0x277CBEB38]);
    connectionPropertyChangeHandlers = v3->_connectionPropertyChangeHandlers;
    v3->_connectionPropertyChangeHandlers = v13;

    v15 = objc_alloc_init(MEMORY[0x277CBEB38]);
    endpointPropertyChangeHandlers = v3->_endpointPropertyChangeHandlers;
    v3->_endpointPropertyChangeHandlers = v15;

    v17 = objc_alloc_init(MEMORY[0x277CBEB38]);
    endpointSecureTunnelDataHandlers = v3->_endpointSecureTunnelDataHandlers;
    v3->_endpointSecureTunnelDataHandlers = v17;

    v19 = dispatch_queue_create("TransportClientEndpointEventHandlerQ", 0);
    endpointEventHandlerQueue = v3->_endpointEventHandlerQueue;
    v3->_endpointEventHandlerQueue = v19;

    [(ACCTransportClient *)v3 serverConnection];
  }

  return v3;
}

- (void)dealloc
{
  if (gLogSignpostObjects)
  {
    v3 = gNumLogSignpostObjects < 4;
  }

  else
  {
    v3 = 1;
  }

  if (v3)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      [ACCTransportClient _init];
    }

    v5 = MEMORY[0x277D86220];
    v4 = MEMORY[0x277D86220];
  }

  else
  {
    v5 = *(gLogSignpostObjects + 24);
  }

  if (gLogSignpostObjects)
  {
    v6 = gNumLogSignpostObjects < 4;
  }

  else
  {
    v6 = 1;
  }

  if (v6)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      [ACCTransportClient _init];
    }

    v8 = MEMORY[0x277D86220];
    v7 = MEMORY[0x277D86220];
  }

  else
  {
    v8 = *(gLogSignpostObjects + 24);
  }

  v9 = os_signpost_id_make_with_pointer(v8, self);

  if (v9 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v5))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_221CB0000, v5, OS_SIGNPOST_EVENT, v9, "TransportClient", "Destroy shared ACCTransportClient", buf, 2u);
  }

  [(ACCTransportClient *)self setServerConnection:0];
  v10.receiver = self;
  v10.super_class = ACCTransportClient;
  [(ACCTransportClient *)&v10 dealloc];
}

void __38__ACCTransportClient_serverConnection__block_invoke(uint64_t a1)
{
  v34 = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v3 = WeakRetained;
  if (WeakRetained)
  {
    v4 = [WeakRetained serverConnection];
    v5 = *(a1 + 32);

    if (v4 == v5)
    {
      [v3 setServerConnection:0];
    }

    if (gLogObjects && gNumLogObjects >= 1)
    {
      v6 = *gLogObjects;
    }

    else
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        [ACCTransportClient serverConnection];
      }

      v6 = MEMORY[0x277D86220];
      v7 = MEMORY[0x277D86220];
    }

    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_221CB0000, v6, OS_LOG_TYPE_DEFAULT, "XPC connection invalidated!", buf, 2u);
    }

    if (gLogSignpostObjects && gNumLogSignpostObjects >= 4)
    {
      v8 = *(gLogSignpostObjects + 24);
    }

    else
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        [ACCTransportClient _init];
      }

      v8 = MEMORY[0x277D86220];
      v9 = MEMORY[0x277D86220];
    }

    if (gLogSignpostObjects && gNumLogSignpostObjects >= 4)
    {
      v10 = *(gLogSignpostObjects + 24);
    }

    else
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        [ACCTransportClient _init];
      }

      v10 = MEMORY[0x277D86220];
      v11 = MEMORY[0x277D86220];
    }

    v12 = os_signpost_id_make_with_pointer(v10, v3);

    if (v12 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v8))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&dword_221CB0000, v8, OS_SIGNPOST_INTERVAL_END, v12, "TransportClient SERVER", "Server connection invalidated!", buf, 2u);
    }

    v13 = [v3 delegate];
    if (v13 && (v14 = v13, [v3 delegate], v15 = objc_claimAutoreleasedReturnValue(), v16 = objc_opt_respondsToSelector(), v15, v14, (v16 & 1) != 0))
    {
      if (gLogObjects && gNumLogObjects >= 1)
      {
        v17 = *gLogObjects;
      }

      else
      {
        if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
        {
          [ACCTransportClient serverConnection];
        }

        v17 = MEMORY[0x277D86220];
        v21 = MEMORY[0x277D86220];
      }

      if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315394;
        v29 = "[ACCTransportClient serverConnection]_block_invoke";
        v30 = 1024;
        v31 = 162;
        _os_log_impl(&dword_221CB0000, v17, OS_LOG_TYPE_DEFAULT, "%s:%d inform delegate: call transportClientServerDisconnected:", buf, 0x12u);
      }

      v22 = *(*(a1 + 40) + 56);
      block[0] = MEMORY[0x277D85DD0];
      block[1] = 3221225472;
      block[2] = __38__ACCTransportClient_serverConnection__block_invoke_124;
      block[3] = &unk_2784870F8;
      block[4] = v3;
      dispatch_async(v22, block);
    }

    else
    {
      if (gLogObjects && gNumLogObjects >= 1)
      {
        v18 = *gLogObjects;
      }

      else
      {
        if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
        {
          [ACCTransportClient serverConnection];
        }

        v18 = MEMORY[0x277D86220];
        v19 = MEMORY[0x277D86220];
      }

      if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
      {
        v20 = [v3 delegate];
        *buf = 136315650;
        v29 = "[ACCTransportClient serverConnection]_block_invoke_2";
        v30 = 1024;
        v31 = 169;
        v32 = 1024;
        v33 = v20 != 0;
        _os_log_impl(&dword_221CB0000, v18, OS_LOG_TYPE_DEFAULT, "%s:%d cannot inform delegate(%d): does not respond to transportClientServerDisconnected:", buf, 0x18u);
      }
    }

    v23 = objc_alloc_init(MEMORY[0x277CBEB38]);
    [v3 setEndpointDataOutHandlers:v23];

    v24 = objc_alloc_init(MEMORY[0x277CBEB38]);
    [v3 setConnectionPropertyChangeHandlers:v24];

    v25 = objc_alloc_init(MEMORY[0x277CBEB38]);
    [v3 setEndpointPropertyChangeHandlers:v25];
  }

  v26 = *MEMORY[0x277D85DE8];
}

void __38__ACCTransportClient_serverConnection__block_invoke_124(uint64_t a1)
{
  v2 = [*(a1 + 32) delegate];
  [v2 transportClientServerDisconnected:*(a1 + 32)];
}

void __38__ACCTransportClient_serverConnection__block_invoke_127(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    if (gLogSignpostObjects)
    {
      v2 = gNumLogSignpostObjects < 4;
    }

    else
    {
      v2 = 1;
    }

    if (v2)
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        [ACCTransportClient _init];
      }

      v4 = MEMORY[0x277D86220];
      v3 = MEMORY[0x277D86220];
    }

    else
    {
      v4 = *(gLogSignpostObjects + 24);
    }

    if (gLogSignpostObjects && gNumLogSignpostObjects >= 4)
    {
      v5 = *(gLogSignpostObjects + 24);
    }

    else
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        [ACCTransportClient _init];
      }

      v5 = MEMORY[0x277D86220];
      v6 = MEMORY[0x277D86220];
    }

    v7 = os_signpost_id_make_with_pointer(v5, WeakRetained);

    if (v7 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v4))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&dword_221CB0000, v4, OS_SIGNPOST_EVENT, v7, "TransportClient SERVER", "Server connection interrupted!", buf, 2u);
    }

    v8 = [WeakRetained serverConnection];
    [v8 invalidate];

    if (gLogObjects && gNumLogObjects >= 1)
    {
      v9 = *gLogObjects;
    }

    else
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        [ACCTransportClient serverConnection];
      }

      v9 = MEMORY[0x277D86220];
      v10 = MEMORY[0x277D86220];
    }

    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      *v11 = 0;
      _os_log_impl(&dword_221CB0000, v9, OS_LOG_TYPE_DEFAULT, "XPC connection interrupted!", v11, 2u);
    }
  }
}

- (void)setServerConnection:(id)connection
{
  connectionCopy = connection;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  v6 = selfCopy->_serverConnection;
  objc_storeStrong(&selfCopy->_serverConnection, connection);
  objc_sync_exit(selfCopy);

  if (v6)
  {
    [(NSXPCConnection *)v6 invalidate];
  }
}

- (void)sendOutgoingData:(id)data forEndpointWithUUID:(id)d connectionUUID:(id)iD withReply:(id)reply
{
  dataCopy = data;
  dCopy = d;
  iDCopy = iD;
  replyCopy = reply;
  endpointDataOutHandlers = [(ACCTransportClient *)self endpointDataOutHandlers];
  objc_sync_enter(endpointDataOutHandlers);
  endpointDataOutHandlers2 = [(ACCTransportClient *)self endpointDataOutHandlers];
  v15 = [endpointDataOutHandlers2 objectForKey:dCopy];

  if (v15)
  {
    (v15)[2](v15, iDCopy, dCopy, dataCopy);
  }

  objc_sync_exit(endpointDataOutHandlers);
  if (replyCopy)
  {
    replyCopy[2](replyCopy, v15 != 0);
  }
}

- (void)propertiesDidChange:(id)change forConnectionWithUUID:(id)d previousProperties:(id)properties
{
  v61 = *MEMORY[0x277D85DE8];
  changeCopy = change;
  dCopy = d;
  propertiesCopy = properties;
  if (gLogObjects)
  {
    v7 = gNumLogObjects < 1;
  }

  else
  {
    v7 = 1;
  }

  if (v7)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      [ACCTransportClient serverConnection];
    }

    v9 = MEMORY[0x277D86220];
    v8 = MEMORY[0x277D86220];
  }

  else
  {
    v9 = *gLogObjects;
  }

  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v52 = dCopy;
    _os_log_impl(&dword_221CB0000, v9, OS_LOG_TYPE_DEFAULT, "Connection properties did change! (connectionUUID: %@)", buf, 0xCu);
  }

  if (gLogObjects && gNumLogObjects >= 1)
  {
    v10 = *gLogObjects;
  }

  else
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      [ACCTransportClient serverConnection];
    }

    v10 = MEMORY[0x277D86220];
    v11 = MEMORY[0x277D86220];
  }

  if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
  {
    *buf = 138412546;
    v52 = changeCopy;
    v53 = 2112;
    v54 = propertiesCopy;
    _os_log_impl(&dword_221CB0000, v10, OS_LOG_TYPE_INFO, "properties: %@, previousProperties: %@", buf, 0x16u);
  }

  if (gLogSignpostObjects && gNumLogSignpostObjects >= 4)
  {
    v12 = *(gLogSignpostObjects + 24);
  }

  else
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      [ACCTransportClient _init];
    }

    v12 = MEMORY[0x277D86220];
    v13 = MEMORY[0x277D86220];
  }

  if (gLogSignpostObjects && gNumLogSignpostObjects >= 4)
  {
    v14 = *(gLogSignpostObjects + 24);
  }

  else
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      [ACCTransportClient _init];
    }

    v14 = MEMORY[0x277D86220];
    v15 = MEMORY[0x277D86220];
  }

  v16 = os_signpost_id_make_with_pointer(v14, self);

  if (v16 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v12))
  {
    v17 = [changeCopy count];
    allKeys = [changeCopy allKeys];
    v19 = [propertiesCopy count];
    allKeys2 = [propertiesCopy allKeys];
    *buf = 138413314;
    v52 = dCopy;
    v53 = 2048;
    v54 = v17;
    v55 = 2112;
    v56 = allKeys;
    v57 = 2048;
    v58 = v19;
    v59 = 2112;
    v60 = allKeys2;
    _os_signpost_emit_with_name_impl(&dword_221CB0000, v12, OS_SIGNPOST_EVENT, v16, "Endpoint PROPERTY", "Connection PropertiesDidChange! %@, %lu properties: %@, previous %lu properties: %@", buf, 0x34u);
  }

  delegate = [(ACCTransportClient *)self delegate];
  if (delegate)
  {
    delegate2 = [(ACCTransportClient *)self delegate];
    v23 = objc_opt_respondsToSelector();

    if (v23)
    {
      delegate3 = [(ACCTransportClient *)self delegate];
      [delegate3 transportClient:self propertiesDidChange:changeCopy forConnectionWithUUID:dCopy previousProperties:propertiesCopy];
    }
  }

  obj = [(ACCTransportClient *)self connectionPropertyChangeHandlers];
  objc_sync_enter(obj);
  v46 = 0u;
  v47 = 0u;
  v48 = 0u;
  v49 = 0u;
  connectionPropertyChangeHandlers = [(ACCTransportClient *)self connectionPropertyChangeHandlers];
  allKeys3 = [connectionPropertyChangeHandlers allKeys];

  v27 = [allKeys3 countByEnumeratingWithState:&v46 objects:v50 count:16];
  if (v27)
  {
    v28 = *v47;
    v29 = MEMORY[0x277D86220];
    do
    {
      for (i = 0; i != v27; ++i)
      {
        if (*v47 != v28)
        {
          objc_enumerationMutation(allKeys3);
        }

        v31 = *(*(&v46 + 1) + 8 * i);
        v32 = [changeCopy objectForKey:v31];
        v33 = [propertiesCopy objectForKey:v31];
        if ((isNSObjectEqual(v32, v33) & 1) == 0)
        {
          v34 = gLogObjects;
          v35 = gNumLogObjects;
          if (gLogObjects && gNumLogObjects >= 1)
          {
            v36 = *gLogObjects;
          }

          else
          {
            if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
            {
              *buf = 134218240;
              v52 = v34;
              v53 = 1024;
              LODWORD(v54) = v35;
              _os_log_error_impl(&dword_221CB0000, v29, OS_LOG_TYPE_ERROR, "Make sure you have called init_logging()!\ngLogObjects: %p, gNumLogObjects: %d", buf, 0x12u);
            }

            v37 = v29;
            v36 = v29;
          }

          if (os_log_type_enabled(v36, OS_LOG_TYPE_DEBUG))
          {
            *buf = 138412802;
            v52 = v31;
            v53 = 2112;
            v54 = v32;
            v55 = 2112;
            v56 = v33;
            _os_log_debug_impl(&dword_221CB0000, v36, OS_LOG_TYPE_DEBUG, "Calling connection property did change handler for property: %@ (newValue: %@, oldValue: %@)", buf, 0x20u);
          }

          connectionPropertyChangeHandlers2 = [(ACCTransportClient *)self connectionPropertyChangeHandlers];
          v39 = [connectionPropertyChangeHandlers2 objectForKey:v31];

          if (v39)
          {
            (v39)[2](v39, dCopy, v31, v32, v33);
          }
        }
      }

      v27 = [allKeys3 countByEnumeratingWithState:&v46 objects:v50 count:16];
    }

    while (v27);
  }

  objc_sync_exit(obj);
  v40 = *MEMORY[0x277D85DE8];
}

- (void)propertiesDidChange:(id)change forEndpointWithUUID:(id)d previousProperties:(id)properties connectionUUID:(id)iD
{
  v73 = *MEMORY[0x277D85DE8];
  changeCopy = change;
  dCopy = d;
  propertiesCopy = properties;
  iDCopy = iD;
  if (gLogObjects)
  {
    v9 = gNumLogObjects < 1;
  }

  else
  {
    v9 = 1;
  }

  if (v9)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      [ACCTransportClient serverConnection];
    }

    v11 = MEMORY[0x277D86220];
    v10 = MEMORY[0x277D86220];
  }

  else
  {
    v11 = *gLogObjects;
  }

  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412546;
    v64 = dCopy;
    v65 = 2112;
    v66 = iDCopy;
    _os_log_impl(&dword_221CB0000, v11, OS_LOG_TYPE_DEFAULT, "Endpoint properties did change! (endpointUUID: %@, connectionUUID: %@)", buf, 0x16u);
  }

  if (gLogObjects && gNumLogObjects >= 1)
  {
    v12 = *gLogObjects;
  }

  else
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      [ACCTransportClient serverConnection];
    }

    v12 = MEMORY[0x277D86220];
    v13 = MEMORY[0x277D86220];
  }

  if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
  {
    *buf = 138412546;
    v64 = changeCopy;
    v65 = 2112;
    v66 = propertiesCopy;
    _os_log_impl(&dword_221CB0000, v12, OS_LOG_TYPE_INFO, "properties: %@, previousProperties: %@", buf, 0x16u);
  }

  if (gLogSignpostObjects && gNumLogSignpostObjects >= 4)
  {
    v14 = *(gLogSignpostObjects + 24);
  }

  else
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      [ACCTransportClient _init];
    }

    v14 = MEMORY[0x277D86220];
    v15 = MEMORY[0x277D86220];
  }

  if (gLogSignpostObjects && gNumLogSignpostObjects >= 4)
  {
    v16 = *(gLogSignpostObjects + 24);
  }

  else
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      [ACCTransportClient _init];
    }

    v16 = MEMORY[0x277D86220];
    v17 = MEMORY[0x277D86220];
  }

  v18 = os_signpost_id_make_with_pointer(v16, self);

  if (v18 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v14))
  {
    v19 = [changeCopy count];
    allKeys = [changeCopy allKeys];
    v21 = [propertiesCopy count];
    allKeys2 = [propertiesCopy allKeys];
    *buf = 138413314;
    v64 = dCopy;
    v65 = 2048;
    v66 = v19;
    v67 = 2112;
    v68 = allKeys;
    v69 = 2048;
    v70 = v21;
    v71 = 2112;
    v72 = allKeys2;
    _os_signpost_emit_with_name_impl(&dword_221CB0000, v14, OS_SIGNPOST_EVENT, v18, "Endpoint PROPERTY", "Endpoint PropertiesDidChange! %@, %lu properties: %@, previous %lu properties: %@", buf, 0x34u);
  }

  delegate = [(ACCTransportClient *)self delegate];
  if (delegate)
  {
    delegate2 = [(ACCTransportClient *)self delegate];
    v25 = objc_opt_respondsToSelector();

    if (v25)
    {
      delegate3 = [(ACCTransportClient *)self delegate];
      [delegate3 transportClient:self propertiesDidChange:changeCopy forEndpointWithUUID:dCopy previousProperties:propertiesCopy connectionUUID:iDCopy];
    }
  }

  obj = [(ACCTransportClient *)self endpointPropertyChangeHandlers];
  objc_sync_enter(obj);
  v58 = 0u;
  v59 = 0u;
  v60 = 0u;
  v61 = 0u;
  endpointPropertyChangeHandlers = [(ACCTransportClient *)self endpointPropertyChangeHandlers];
  allKeys3 = [endpointPropertyChangeHandlers allKeys];

  v29 = [allKeys3 countByEnumeratingWithState:&v58 objects:v62 count:16];
  if (v29)
  {
    v30 = *v59;
    do
    {
      for (i = 0; i != v29; ++i)
      {
        if (*v59 != v30)
        {
          objc_enumerationMutation(allKeys3);
        }

        v32 = *(*(&v58 + 1) + 8 * i);
        v33 = [changeCopy objectForKey:v32];
        v34 = [propertiesCopy objectForKey:v32];
        if ((isNSObjectEqual(v33, v34) & 1) == 0)
        {
          v35 = gLogObjects;
          v36 = gNumLogObjects;
          if (gLogObjects && gNumLogObjects >= 1)
          {
            v37 = *gLogObjects;
          }

          else
          {
            v38 = allKeys3;
            v39 = MEMORY[0x277D86220];
            if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
            {
              *buf = 134218240;
              v64 = v35;
              v65 = 1024;
              LODWORD(v66) = v36;
              _os_log_error_impl(&dword_221CB0000, v39, OS_LOG_TYPE_ERROR, "Make sure you have called init_logging()!\ngLogObjects: %p, gNumLogObjects: %d", buf, 0x12u);
            }

            v40 = v39;
            v37 = v39;
            allKeys3 = v38;
          }

          if (os_log_type_enabled(v37, OS_LOG_TYPE_DEBUG))
          {
            *buf = 138412802;
            v64 = v32;
            v65 = 2112;
            v66 = v33;
            v67 = 2112;
            v68 = v34;
            _os_log_debug_impl(&dword_221CB0000, v37, OS_LOG_TYPE_DEBUG, "Calling endpoint property did change handler for property: %@ (newValue: %@, oldValue: %@)", buf, 0x20u);
          }

          endpointPropertyChangeHandlers2 = [(ACCTransportClient *)self endpointPropertyChangeHandlers];
          v42 = [endpointPropertyChangeHandlers2 objectForKey:v32];

          if (v42)
          {
            endpointEventHandlerQueue = self->_endpointEventHandlerQueue;
            block[0] = MEMORY[0x277D85DD0];
            block[1] = 3221225472;
            block[2] = __96__ACCTransportClient_propertiesDidChange_forEndpointWithUUID_previousProperties_connectionUUID___block_invoke;
            block[3] = &unk_278487148;
            v57 = v42;
            v52 = dCopy;
            v53 = v32;
            v54 = v33;
            v55 = v34;
            v56 = iDCopy;
            dispatch_async(endpointEventHandlerQueue, block);
          }
        }
      }

      v29 = [allKeys3 countByEnumeratingWithState:&v58 objects:v62 count:16];
    }

    while (v29);
  }

  objc_sync_exit(obj);
  v44 = *MEMORY[0x277D85DE8];
}

- (void)receivedSecureTunnelData:(id)data forEndpoint:(id)endpoint
{
  v25 = *MEMORY[0x277D85DE8];
  dataCopy = data;
  endpointCopy = endpoint;
  if (gLogObjects)
  {
    v8 = gNumLogObjects < 3;
  }

  else
  {
    v8 = 1;
  }

  if (v8)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      [ACCTransportClient serverConnection];
    }

    v10 = MEMORY[0x277D86220];
    v9 = MEMORY[0x277D86220];
  }

  else
  {
    v10 = *(gLogObjects + 16);
  }

  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
  {
    [ACCTransportClient receivedSecureTunnelData:forEndpoint:];
  }

  endpointSecureTunnelDataHandlers = [(ACCTransportClient *)self endpointSecureTunnelDataHandlers];
  objc_sync_enter(endpointSecureTunnelDataHandlers);
  endpointSecureTunnelDataHandlers2 = [(ACCTransportClient *)self endpointSecureTunnelDataHandlers];
  v13 = [endpointSecureTunnelDataHandlers2 objectForKey:endpointCopy];

  if (gLogObjects)
  {
    v14 = gNumLogObjects <= 2;
  }

  else
  {
    v14 = 1;
  }

  v15 = !v14;
  if (v13)
  {
    if (v15)
    {
      v16 = *(gLogObjects + 16);
    }

    else
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        [ACCTransportClient serverConnection];
      }

      v16 = MEMORY[0x277D86220];
      v18 = MEMORY[0x277D86220];
    }

    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
    {
      v21 = 138412546;
      v22 = endpointCopy;
      v23 = 2112;
      v24 = dataCopy;
      _os_log_impl(&dword_221CB0000, v16, OS_LOG_TYPE_DEFAULT, "SecureTunnelData: call dataInHandler, endpoint: %@, data:%@", &v21, 0x16u);
    }

    (v13)[2](v13, endpointCopy, dataCopy);
  }

  else
  {
    if (v15)
    {
      v17 = *(gLogObjects + 16);
    }

    else
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        [ACCTransportClient serverConnection];
      }

      v17 = MEMORY[0x277D86220];
      v19 = MEMORY[0x277D86220];
    }

    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
    {
      v21 = 138412546;
      v22 = endpointCopy;
      v23 = 2112;
      v24 = dataCopy;
      _os_log_impl(&dword_221CB0000, v17, OS_LOG_TYPE_DEFAULT, "SecureTunnelData: No dataInHandler! endpoint: %@, data:%@", &v21, 0x16u);
    }
  }

  objc_sync_exit(endpointSecureTunnelDataHandlers);
  v20 = *MEMORY[0x277D85DE8];
}

- (void)launchServer
{
  kdebug_trace();
  serverConnection = [(ACCTransportClient *)self serverConnection];
  if (serverConnection)
  {
    v5 = serverConnection;
    v4 = [serverConnection remoteObjectProxyWithErrorHandler:&__block_literal_global_5];
    [v4 launchServer];

    serverConnection = v5;
  }
}

void __34__ACCTransportClient_launchServer__block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  if (gLogObjects)
  {
    v3 = gNumLogObjects < 3;
  }

  else
  {
    v3 = 1;
  }

  if (v3)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      [ACCTransportClient serverConnection];
    }

    v5 = MEMORY[0x277D86220];
    v4 = MEMORY[0x277D86220];
  }

  else
  {
    v5 = *(gLogObjects + 16);
  }

  if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
  {
    __58__ACCConnectionInfo_copyLocalizedAccessoryNameFromDaemon___block_invoke_cold_2();
  }
}

void __61__ACCTransportClient_createConnectionWithType_andIdentifier___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  if (gLogObjects)
  {
    v3 = gNumLogObjects < 1;
  }

  else
  {
    v3 = 1;
  }

  if (v3)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      [ACCTransportClient serverConnection];
    }

    v5 = MEMORY[0x277D86220];
    v4 = MEMORY[0x277D86220];
  }

  else
  {
    v5 = *gLogObjects;
  }

  if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
  {
    __58__ACCConnectionInfo_copyLocalizedAccessoryNameFromDaemon___block_invoke_cold_2();
  }
}

void __61__ACCTransportClient_createConnectionWithType_andIdentifier___block_invoke_137(uint64_t a1, int a2, void *a3)
{
  v16 = *MEMORY[0x277D85DE8];
  v5 = a3;
  if (gLogObjects)
  {
    v6 = gNumLogObjects < 1;
  }

  else
  {
    v6 = 1;
  }

  if (v6)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      [ACCTransportClient serverConnection];
    }

    v8 = MEMORY[0x277D86220];
    v7 = MEMORY[0x277D86220];
  }

  else
  {
    v8 = *gLogObjects;
  }

  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v12 = 138412546;
    v13 = v5;
    v14 = 1024;
    v15 = a2;
    _os_log_impl(&dword_221CB0000, v8, OS_LOG_TYPE_DEFAULT, "Created new accessory connection with UUID: %@, result: %d", &v12, 0x12u);
  }

  v9 = *(*(a1 + 32) + 8);
  v10 = *(v9 + 40);
  *(v9 + 40) = v5;

  v11 = *MEMORY[0x277D85DE8];
}

- (BOOL)setProperties:(id)properties forConnectionWithUUID:(id)d
{
  v45 = *MEMORY[0x277D85DE8];
  propertiesCopy = properties;
  dCopy = d;
  v35 = 0;
  v36 = &v35;
  v37 = 0x2020000000;
  v38 = 0;
  if (gLogObjects)
  {
    v8 = gNumLogObjects < 1;
  }

  else
  {
    v8 = 1;
  }

  if (v8)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      [ACCTransportClient serverConnection];
    }

    v10 = MEMORY[0x277D86220];
    v9 = MEMORY[0x277D86220];
  }

  else
  {
    v10 = *gLogObjects;
  }

  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v40 = dCopy;
    _os_log_impl(&dword_221CB0000, v10, OS_LOG_TYPE_DEFAULT, "Setting properties for connection: %@", buf, 0xCu);
  }

  if (gLogObjects && gNumLogObjects >= 1)
  {
    v11 = *gLogObjects;
  }

  else
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      [ACCTransportClient serverConnection];
    }

    v11 = MEMORY[0x277D86220];
    v12 = MEMORY[0x277D86220];
  }

  if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
  {
    *buf = 138412290;
    v40 = propertiesCopy;
    _os_log_impl(&dword_221CB0000, v11, OS_LOG_TYPE_INFO, "properties: %@", buf, 0xCu);
  }

  if (gLogSignpostObjects && gNumLogSignpostObjects >= 4)
  {
    v13 = *(gLogSignpostObjects + 24);
  }

  else
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      [ACCTransportClient _init];
    }

    v13 = MEMORY[0x277D86220];
    v14 = MEMORY[0x277D86220];
  }

  if (gLogSignpostObjects && gNumLogSignpostObjects >= 4)
  {
    v15 = *(gLogSignpostObjects + 24);
  }

  else
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      [ACCTransportClient _init];
    }

    v15 = MEMORY[0x277D86220];
    v16 = MEMORY[0x277D86220];
  }

  v17 = os_signpost_id_make_with_pointer(v15, self);

  if (v17 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v13))
  {
    v18 = [propertiesCopy count];
    allKeys = [propertiesCopy allKeys];
    *buf = 138412802;
    v40 = dCopy;
    v41 = 2048;
    v42 = v18;
    v43 = 2112;
    v44 = allKeys;
    _os_signpost_emit_with_name_impl(&dword_221CB0000, v13, OS_SIGNPOST_INTERVAL_BEGIN, v17, "Connection PROPERTY", "Connection SetProperties! %@, %lu properties: %@", buf, 0x20u);
  }

  serverConnection = [(ACCTransportClient *)self serverConnection];
  if (serverConnection)
  {
    v32[0] = MEMORY[0x277D85DD0];
    v32[1] = 3221225472;
    v32[2] = __58__ACCTransportClient_setProperties_forConnectionWithUUID___block_invoke;
    v32[3] = &unk_278487198;
    v32[4] = self;
    v21 = dCopy;
    v33 = v21;
    v22 = propertiesCopy;
    v34 = v22;
    v23 = [serverConnection synchronousRemoteObjectProxyWithErrorHandler:v32];
    v27[0] = MEMORY[0x277D85DD0];
    v27[1] = 3221225472;
    v27[2] = __58__ACCTransportClient_setProperties_forConnectionWithUUID___block_invoke_139;
    v27[3] = &unk_2784871C0;
    v28 = v21;
    selfCopy = self;
    v30 = v22;
    v31 = &v35;
    [v23 setProperties:v30 forConnectionWithUUID:v28 withReply:v27];
  }

  v24 = *(v36 + 24);

  _Block_object_dispose(&v35, 8);
  v25 = *MEMORY[0x277D85DE8];
  return v24 & 1;
}

void __58__ACCTransportClient_setProperties_forConnectionWithUUID___block_invoke(uint64_t a1, void *a2)
{
  v25 = *MEMORY[0x277D85DE8];
  v3 = a2;
  if (gLogObjects)
  {
    v4 = gNumLogObjects < 1;
  }

  else
  {
    v4 = 1;
  }

  if (v4)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      [ACCTransportClient serverConnection];
    }

    v6 = MEMORY[0x277D86220];
    v5 = MEMORY[0x277D86220];
  }

  else
  {
    v6 = *gLogObjects;
  }

  if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
  {
    __58__ACCConnectionInfo_copyLocalizedAccessoryNameFromDaemon___block_invoke_cold_2();
  }

  if (gLogSignpostObjects && gNumLogSignpostObjects >= 4)
  {
    v7 = *(gLogSignpostObjects + 24);
  }

  else
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      [ACCTransportClient _init];
    }

    v7 = MEMORY[0x277D86220];
    v8 = MEMORY[0x277D86220];
  }

  if (gLogSignpostObjects && gNumLogSignpostObjects >= 4)
  {
    v9 = *(gLogSignpostObjects + 24);
  }

  else
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      [ACCTransportClient _init];
    }

    v9 = MEMORY[0x277D86220];
    v10 = MEMORY[0x277D86220];
  }

  v11 = os_signpost_id_make_with_pointer(v9, *(a1 + 32));

  if (v11 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v7))
  {
    v12 = [v3 localizedFailureReason];
    v13 = *(a1 + 40);
    v14 = [*(a1 + 48) count];
    v15 = [*(a1 + 48) allKeys];
    v17 = 138413058;
    v18 = v12;
    v19 = 2112;
    v20 = v13;
    v21 = 2048;
    v22 = v14;
    v23 = 2112;
    v24 = v15;
    _os_signpost_emit_with_name_impl(&dword_221CB0000, v7, OS_SIGNPOST_INTERVAL_END, v11, "Connection PROPERTY", "ERROR (%@) handling Connection SetProperties! %@, %lu properties: %@", &v17, 0x2Au);
  }

  v16 = *MEMORY[0x277D85DE8];
}

void __58__ACCTransportClient_setProperties_forConnectionWithUUID___block_invoke_139(uint64_t a1, int a2)
{
  v23 = *MEMORY[0x277D85DE8];
  if (gLogObjects)
  {
    v4 = gNumLogObjects < 1;
  }

  else
  {
    v4 = 1;
  }

  if (v4)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      [ACCTransportClient serverConnection];
    }

    v6 = MEMORY[0x277D86220];
    v5 = MEMORY[0x277D86220];
  }

  else
  {
    v6 = *gLogObjects;
  }

  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    v7 = *(a1 + 32);
    v17 = 138412546;
    v18 = v7;
    v19 = 1024;
    LODWORD(v20) = a2;
    _os_log_impl(&dword_221CB0000, v6, OS_LOG_TYPE_INFO, "Set properties for connection: %@, result: %d", &v17, 0x12u);
  }

  if (gLogSignpostObjects && gNumLogSignpostObjects >= 4)
  {
    v8 = *(gLogSignpostObjects + 24);
  }

  else
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      [ACCTransportClient _init];
    }

    v8 = MEMORY[0x277D86220];
    v9 = MEMORY[0x277D86220];
  }

  if (gLogSignpostObjects && gNumLogSignpostObjects >= 4)
  {
    v10 = *(gLogSignpostObjects + 24);
  }

  else
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      [ACCTransportClient _init];
    }

    v10 = MEMORY[0x277D86220];
    v11 = MEMORY[0x277D86220];
  }

  v12 = os_signpost_id_make_with_pointer(v10, *(a1 + 40));

  if (v12 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v8))
  {
    v13 = *(a1 + 32);
    v14 = [*(a1 + 48) count];
    v15 = [*(a1 + 48) allKeys];
    v17 = 138412802;
    v18 = v13;
    v19 = 2048;
    v20 = v14;
    v21 = 2112;
    v22 = v15;
    _os_signpost_emit_with_name_impl(&dword_221CB0000, v8, OS_SIGNPOST_INTERVAL_END, v12, "Connection PROPERTY", "Connection SetProperties! %@, %lu properties: %@", &v17, 0x20u);
  }

  *(*(*(a1 + 56) + 8) + 24) = a2;
  v16 = *MEMORY[0x277D85DE8];
}

- (BOOL)setProperty:(id)property value:(id)value forConnectionWithUUID:(id)d
{
  v16[1] = *MEMORY[0x277D85DE8];
  propertyCopy = property;
  v16[0] = value;
  v8 = MEMORY[0x277CBEAC0];
  dCopy = d;
  valueCopy = value;
  propertyCopy2 = property;
  v12 = [v8 dictionaryWithObjects:v16 forKeys:&propertyCopy count:1];

  LOBYTE(valueCopy) = [(ACCTransportClient *)self setProperties:v12 forConnectionWithUUID:dCopy];
  v13 = *MEMORY[0x277D85DE8];
  return valueCopy;
}

- (BOOL)appendToArrayProperty:(id)property values:(id)values forConnectionWithUUID:(id)d
{
  v47 = *MEMORY[0x277D85DE8];
  propertyCopy = property;
  valuesCopy = values;
  dCopy = d;
  v37 = 0;
  v38 = &v37;
  v39 = 0x2020000000;
  v40 = 0;
  if (gLogObjects)
  {
    v11 = gNumLogObjects < 1;
  }

  else
  {
    v11 = 1;
  }

  if (v11)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      [ACCTransportClient serverConnection];
    }

    v13 = MEMORY[0x277D86220];
    v12 = MEMORY[0x277D86220];
  }

  else
  {
    v13 = *gLogObjects;
  }

  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412546;
    v42 = propertyCopy;
    v43 = 2112;
    v44 = dCopy;
    _os_log_impl(&dword_221CB0000, v13, OS_LOG_TYPE_DEFAULT, "Appending to property %@ for connection: %@", buf, 0x16u);
  }

  if (gLogObjects && gNumLogObjects >= 1)
  {
    v14 = *gLogObjects;
  }

  else
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      [ACCTransportClient serverConnection];
    }

    v14 = MEMORY[0x277D86220];
    v15 = MEMORY[0x277D86220];
  }

  if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
  {
    *buf = 138412290;
    v42 = valuesCopy;
    _os_log_impl(&dword_221CB0000, v14, OS_LOG_TYPE_INFO, "values: %@", buf, 0xCu);
  }

  if (gLogSignpostObjects && gNumLogSignpostObjects >= 4)
  {
    v16 = *(gLogSignpostObjects + 24);
  }

  else
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      [ACCTransportClient _init];
    }

    v16 = MEMORY[0x277D86220];
    v17 = MEMORY[0x277D86220];
  }

  if (gLogSignpostObjects && gNumLogSignpostObjects >= 4)
  {
    v18 = *(gLogSignpostObjects + 24);
  }

  else
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      [ACCTransportClient _init];
    }

    v18 = MEMORY[0x277D86220];
    v19 = MEMORY[0x277D86220];
  }

  v20 = os_signpost_id_make_with_pointer(v18, self);

  if (v20 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v16))
  {
    v21 = [valuesCopy count];
    *buf = 138412802;
    v42 = dCopy;
    v43 = 2048;
    v44 = v21;
    v45 = 2112;
    v46 = valuesCopy;
    _os_signpost_emit_with_name_impl(&dword_221CB0000, v16, OS_SIGNPOST_INTERVAL_BEGIN, v20, "Endpoint PROPERTY", "Connection appendToArrayProperty! %@, %lu values: %@", buf, 0x20u);
  }

  serverConnection = [(ACCTransportClient *)self serverConnection];
  if (serverConnection)
  {
    v34[0] = MEMORY[0x277D85DD0];
    v34[1] = 3221225472;
    v34[2] = __73__ACCTransportClient_appendToArrayProperty_values_forConnectionWithUUID___block_invoke;
    v34[3] = &unk_278487198;
    v34[4] = self;
    v23 = dCopy;
    v35 = v23;
    v24 = valuesCopy;
    v36 = v24;
    v25 = [serverConnection synchronousRemoteObjectProxyWithErrorHandler:v34];
    v29[0] = MEMORY[0x277D85DD0];
    v29[1] = 3221225472;
    v29[2] = __73__ACCTransportClient_appendToArrayProperty_values_forConnectionWithUUID___block_invoke_142;
    v29[3] = &unk_2784871C0;
    v30 = v23;
    selfCopy = self;
    v32 = v24;
    v33 = &v37;
    [v25 appendToArrayProperty:propertyCopy values:v32 forConnectionWithUUID:v30 withReply:v29];
  }

  v26 = *(v38 + 24);

  _Block_object_dispose(&v37, 8);
  v27 = *MEMORY[0x277D85DE8];
  return v26 & 1;
}

void __73__ACCTransportClient_appendToArrayProperty_values_forConnectionWithUUID___block_invoke(uint64_t a1, void *a2)
{
  v22 = *MEMORY[0x277D85DE8];
  v3 = a2;
  if (gLogObjects)
  {
    v4 = gNumLogObjects < 1;
  }

  else
  {
    v4 = 1;
  }

  if (v4)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      [ACCTransportClient serverConnection];
    }

    v6 = MEMORY[0x277D86220];
    v5 = MEMORY[0x277D86220];
  }

  else
  {
    v6 = *gLogObjects;
  }

  if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
  {
    __58__ACCConnectionInfo_copyLocalizedAccessoryNameFromDaemon___block_invoke_cold_2();
  }

  if (gLogSignpostObjects && gNumLogSignpostObjects >= 4)
  {
    v7 = *(gLogSignpostObjects + 24);
  }

  else
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      [ACCTransportClient _init];
    }

    v7 = MEMORY[0x277D86220];
    v8 = MEMORY[0x277D86220];
  }

  if (gLogSignpostObjects && gNumLogSignpostObjects >= 4)
  {
    v9 = *(gLogSignpostObjects + 24);
  }

  else
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      [ACCTransportClient _init];
    }

    v9 = MEMORY[0x277D86220];
    v10 = MEMORY[0x277D86220];
  }

  v11 = os_signpost_id_make_with_pointer(v9, *(a1 + 32));

  if (v11 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v7))
  {
    v12 = [v3 localizedFailureReason];
    v13 = *(a1 + 40);
    v14 = [*(a1 + 48) count];
    v16 = 138412802;
    v17 = v12;
    v18 = 2112;
    v19 = v13;
    v20 = 2048;
    v21 = v14;
    _os_signpost_emit_with_name_impl(&dword_221CB0000, v7, OS_SIGNPOST_INTERVAL_END, v11, "Endpoint PROPERTY", "ERROR (%@) handling Connection appendToArrayProperty! %@, %lu values", &v16, 0x20u);
  }

  v15 = *MEMORY[0x277D85DE8];
}

void __73__ACCTransportClient_appendToArrayProperty_values_forConnectionWithUUID___block_invoke_142(uint64_t a1, int a2)
{
  v20 = *MEMORY[0x277D85DE8];
  if (gLogObjects)
  {
    v4 = gNumLogObjects < 1;
  }

  else
  {
    v4 = 1;
  }

  if (v4)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      [ACCTransportClient serverConnection];
    }

    v6 = MEMORY[0x277D86220];
    v5 = MEMORY[0x277D86220];
  }

  else
  {
    v6 = *gLogObjects;
  }

  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    v7 = *(a1 + 32);
    v16 = 138412546;
    v17 = v7;
    v18 = 1024;
    LODWORD(v19) = a2;
    _os_log_impl(&dword_221CB0000, v6, OS_LOG_TYPE_INFO, "Endpoint appendToArrayProperty for connection: %@, result: %d", &v16, 0x12u);
  }

  if (gLogSignpostObjects && gNumLogSignpostObjects >= 4)
  {
    v8 = *(gLogSignpostObjects + 24);
  }

  else
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      [ACCTransportClient _init];
    }

    v8 = MEMORY[0x277D86220];
    v9 = MEMORY[0x277D86220];
  }

  if (gLogSignpostObjects && gNumLogSignpostObjects >= 4)
  {
    v10 = *(gLogSignpostObjects + 24);
  }

  else
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      [ACCTransportClient _init];
    }

    v10 = MEMORY[0x277D86220];
    v11 = MEMORY[0x277D86220];
  }

  v12 = os_signpost_id_make_with_pointer(v10, *(a1 + 40));

  if (v12 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v8))
  {
    v13 = *(a1 + 32);
    v14 = [*(a1 + 48) count];
    v16 = 138412546;
    v17 = v13;
    v18 = 2048;
    v19 = v14;
    _os_signpost_emit_with_name_impl(&dword_221CB0000, v8, OS_SIGNPOST_INTERVAL_END, v12, "Endpoint PROPERTY", "Connection appendToArrayProperty! %@, %lu values", &v16, 0x16u);
  }

  *(*(*(a1 + 56) + 8) + 24) = a2;
  v15 = *MEMORY[0x277D85DE8];
}

- (BOOL)addToDictionaryProperty:(id)property values:(id)values forConnectionWithUUID:(id)d
{
  v47 = *MEMORY[0x277D85DE8];
  propertyCopy = property;
  valuesCopy = values;
  dCopy = d;
  v37 = 0;
  v38 = &v37;
  v39 = 0x2020000000;
  v40 = 0;
  if (gLogObjects)
  {
    v11 = gNumLogObjects < 1;
  }

  else
  {
    v11 = 1;
  }

  if (v11)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      [ACCTransportClient serverConnection];
    }

    v13 = MEMORY[0x277D86220];
    v12 = MEMORY[0x277D86220];
  }

  else
  {
    v13 = *gLogObjects;
  }

  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412546;
    v42 = propertyCopy;
    v43 = 2112;
    v44 = dCopy;
    _os_log_impl(&dword_221CB0000, v13, OS_LOG_TYPE_DEFAULT, "Add to property %@ for connection: %@", buf, 0x16u);
  }

  if (gLogObjects && gNumLogObjects >= 1)
  {
    v14 = *gLogObjects;
  }

  else
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      [ACCTransportClient serverConnection];
    }

    v14 = MEMORY[0x277D86220];
    v15 = MEMORY[0x277D86220];
  }

  if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
  {
    *buf = 138412290;
    v42 = valuesCopy;
    _os_log_impl(&dword_221CB0000, v14, OS_LOG_TYPE_INFO, "values: %@", buf, 0xCu);
  }

  if (gLogSignpostObjects && gNumLogSignpostObjects >= 4)
  {
    v16 = *(gLogSignpostObjects + 24);
  }

  else
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      [ACCTransportClient _init];
    }

    v16 = MEMORY[0x277D86220];
    v17 = MEMORY[0x277D86220];
  }

  if (gLogSignpostObjects && gNumLogSignpostObjects >= 4)
  {
    v18 = *(gLogSignpostObjects + 24);
  }

  else
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      [ACCTransportClient _init];
    }

    v18 = MEMORY[0x277D86220];
    v19 = MEMORY[0x277D86220];
  }

  v20 = os_signpost_id_make_with_pointer(v18, self);

  if (v20 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v16))
  {
    v21 = [valuesCopy count];
    *buf = 138412802;
    v42 = dCopy;
    v43 = 2048;
    v44 = v21;
    v45 = 2112;
    v46 = valuesCopy;
    _os_signpost_emit_with_name_impl(&dword_221CB0000, v16, OS_SIGNPOST_INTERVAL_BEGIN, v20, "Endpoint PROPERTY", "Connection addToDictionaryProperty! %@, %lu values: %@", buf, 0x20u);
  }

  serverConnection = [(ACCTransportClient *)self serverConnection];
  if (serverConnection)
  {
    v34[0] = MEMORY[0x277D85DD0];
    v34[1] = 3221225472;
    v34[2] = __75__ACCTransportClient_addToDictionaryProperty_values_forConnectionWithUUID___block_invoke;
    v34[3] = &unk_278487198;
    v34[4] = self;
    v23 = dCopy;
    v35 = v23;
    v24 = valuesCopy;
    v36 = v24;
    v25 = [serverConnection synchronousRemoteObjectProxyWithErrorHandler:v34];
    v29[0] = MEMORY[0x277D85DD0];
    v29[1] = 3221225472;
    v29[2] = __75__ACCTransportClient_addToDictionaryProperty_values_forConnectionWithUUID___block_invoke_143;
    v29[3] = &unk_2784871C0;
    v30 = v23;
    selfCopy = self;
    v32 = v24;
    v33 = &v37;
    [v25 addToDictionaryProperty:propertyCopy values:v32 forConnectionWithUUID:v30 withReply:v29];
  }

  v26 = *(v38 + 24);

  _Block_object_dispose(&v37, 8);
  v27 = *MEMORY[0x277D85DE8];
  return v26 & 1;
}

void __75__ACCTransportClient_addToDictionaryProperty_values_forConnectionWithUUID___block_invoke(uint64_t a1, void *a2)
{
  v25 = *MEMORY[0x277D85DE8];
  v3 = a2;
  if (gLogObjects)
  {
    v4 = gNumLogObjects < 1;
  }

  else
  {
    v4 = 1;
  }

  if (v4)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      [ACCTransportClient serverConnection];
    }

    v6 = MEMORY[0x277D86220];
    v5 = MEMORY[0x277D86220];
  }

  else
  {
    v6 = *gLogObjects;
  }

  if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
  {
    __58__ACCConnectionInfo_copyLocalizedAccessoryNameFromDaemon___block_invoke_cold_2();
  }

  if (gLogSignpostObjects && gNumLogSignpostObjects >= 4)
  {
    v7 = *(gLogSignpostObjects + 24);
  }

  else
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      [ACCTransportClient _init];
    }

    v7 = MEMORY[0x277D86220];
    v8 = MEMORY[0x277D86220];
  }

  if (gLogSignpostObjects && gNumLogSignpostObjects >= 4)
  {
    v9 = *(gLogSignpostObjects + 24);
  }

  else
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      [ACCTransportClient _init];
    }

    v9 = MEMORY[0x277D86220];
    v10 = MEMORY[0x277D86220];
  }

  v11 = os_signpost_id_make_with_pointer(v9, *(a1 + 32));

  if (v11 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v7))
  {
    v12 = [v3 localizedFailureReason];
    v13 = *(a1 + 40);
    v14 = [*(a1 + 48) count];
    v15 = [*(a1 + 48) allKeys];
    v17 = 138413058;
    v18 = v12;
    v19 = 2112;
    v20 = v13;
    v21 = 2048;
    v22 = v14;
    v23 = 2112;
    v24 = v15;
    _os_signpost_emit_with_name_impl(&dword_221CB0000, v7, OS_SIGNPOST_INTERVAL_END, v11, "Endpoint PROPERTY", "ERROR (%@) handling Endpoint appendToArrayProperty! %@, %lu values: %@", &v17, 0x2Au);
  }

  v16 = *MEMORY[0x277D85DE8];
}

void __75__ACCTransportClient_addToDictionaryProperty_values_forConnectionWithUUID___block_invoke_143(uint64_t a1, int a2)
{
  v23 = *MEMORY[0x277D85DE8];
  if (gLogObjects)
  {
    v4 = gNumLogObjects < 1;
  }

  else
  {
    v4 = 1;
  }

  if (v4)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      [ACCTransportClient serverConnection];
    }

    v6 = MEMORY[0x277D86220];
    v5 = MEMORY[0x277D86220];
  }

  else
  {
    v6 = *gLogObjects;
  }

  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    v7 = *(a1 + 32);
    v17 = 138412546;
    v18 = v7;
    v19 = 1024;
    LODWORD(v20) = a2;
    _os_log_impl(&dword_221CB0000, v6, OS_LOG_TYPE_INFO, "Connection addToDictionaryProperty for endpoint: %@, result: %d", &v17, 0x12u);
  }

  if (gLogSignpostObjects && gNumLogSignpostObjects >= 4)
  {
    v8 = *(gLogSignpostObjects + 24);
  }

  else
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      [ACCTransportClient _init];
    }

    v8 = MEMORY[0x277D86220];
    v9 = MEMORY[0x277D86220];
  }

  if (gLogSignpostObjects && gNumLogSignpostObjects >= 4)
  {
    v10 = *(gLogSignpostObjects + 24);
  }

  else
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      [ACCTransportClient _init];
    }

    v10 = MEMORY[0x277D86220];
    v11 = MEMORY[0x277D86220];
  }

  v12 = os_signpost_id_make_with_pointer(v10, *(a1 + 40));

  if (v12 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v8))
  {
    v13 = *(a1 + 32);
    v14 = [*(a1 + 48) count];
    v15 = [*(a1 + 48) allKeys];
    v17 = 138412802;
    v18 = v13;
    v19 = 2048;
    v20 = v14;
    v21 = 2112;
    v22 = v15;
    _os_signpost_emit_with_name_impl(&dword_221CB0000, v8, OS_SIGNPOST_INTERVAL_END, v12, "Endpoint PROPERTY", "Connection addToDictionaryProperty! %@, %lu values: %@", &v17, 0x20u);
  }

  *(*(*(a1 + 56) + 8) + 24) = a2;
  v16 = *MEMORY[0x277D85DE8];
}

- (BOOL)removeProperty:(id)property forConnectionWithUUID:(id)d
{
  propertyCopy = property;
  dCopy = d;
  v16 = 0;
  v17 = &v16;
  v18 = 0x2020000000;
  v19 = 0;
  serverConnection = [(ACCTransportClient *)self serverConnection];
  v9 = serverConnection;
  if (serverConnection)
  {
    v10 = [serverConnection synchronousRemoteObjectProxyWithErrorHandler:&__block_literal_global_145];
    v13[0] = MEMORY[0x277D85DD0];
    v13[1] = 3221225472;
    v13[2] = __59__ACCTransportClient_removeProperty_forConnectionWithUUID___block_invoke_146;
    v13[3] = &unk_2784871E8;
    v14 = dCopy;
    v15 = &v16;
    [v10 removeProperty:propertyCopy forConnectionWithUUID:v14 withReply:v13];
  }

  v11 = *(v17 + 24);

  _Block_object_dispose(&v16, 8);
  return v11;
}

void __59__ACCTransportClient_removeProperty_forConnectionWithUUID___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  if (gLogObjects)
  {
    v3 = gNumLogObjects < 1;
  }

  else
  {
    v3 = 1;
  }

  if (v3)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      [ACCTransportClient serverConnection];
    }

    v5 = MEMORY[0x277D86220];
    v4 = MEMORY[0x277D86220];
  }

  else
  {
    v5 = *gLogObjects;
  }

  if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
  {
    __58__ACCConnectionInfo_copyLocalizedAccessoryNameFromDaemon___block_invoke_cold_2();
  }
}

void __59__ACCTransportClient_removeProperty_forConnectionWithUUID___block_invoke_146(uint64_t a1, int a2)
{
  v13 = *MEMORY[0x277D85DE8];
  if (gLogObjects)
  {
    v4 = gNumLogObjects < 1;
  }

  else
  {
    v4 = 1;
  }

  if (v4)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      [ACCTransportClient serverConnection];
    }

    v6 = MEMORY[0x277D86220];
    v5 = MEMORY[0x277D86220];
  }

  else
  {
    v6 = *gLogObjects;
  }

  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    v7 = *(a1 + 32);
    v9 = 138412546;
    v10 = v7;
    v11 = 1024;
    v12 = a2;
    _os_log_impl(&dword_221CB0000, v6, OS_LOG_TYPE_INFO, "Remove property for connection: %@, result: %d", &v9, 0x12u);
  }

  *(*(*(a1 + 40) + 8) + 24) = a2;
  v8 = *MEMORY[0x277D85DE8];
}

void __138__ACCTransportClient_createEndpointWithTransportType_andProtocol_andIdentifier_andDataOutHandler_forConnectionWithUUID_publishConnection___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  if (gLogObjects)
  {
    v3 = gNumLogObjects < 1;
  }

  else
  {
    v3 = 1;
  }

  if (v3)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      [ACCTransportClient serverConnection];
    }

    v5 = MEMORY[0x277D86220];
    v4 = MEMORY[0x277D86220];
  }

  else
  {
    v5 = *gLogObjects;
  }

  if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
  {
    __58__ACCConnectionInfo_copyLocalizedAccessoryNameFromDaemon___block_invoke_cold_2();
  }
}

void __138__ACCTransportClient_createEndpointWithTransportType_andProtocol_andIdentifier_andDataOutHandler_forConnectionWithUUID_publishConnection___block_invoke_151(uint64_t a1, int a2, void *a3)
{
  v19 = *MEMORY[0x277D85DE8];
  v5 = a3;
  if (gLogObjects)
  {
    v6 = gNumLogObjects < 1;
  }

  else
  {
    v6 = 1;
  }

  if (v6)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      [ACCTransportClient serverConnection];
    }

    v8 = MEMORY[0x277D86220];
    v7 = MEMORY[0x277D86220];
  }

  else
  {
    v8 = *gLogObjects;
  }

  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v9 = *(a1 + 32);
    v13 = 138412802;
    v14 = v5;
    v15 = 2112;
    v16 = v9;
    v17 = 1024;
    v18 = a2;
    _os_log_impl(&dword_221CB0000, v8, OS_LOG_TYPE_DEFAULT, "Created new endpoint %@ for connection %@, result: %d", &v13, 0x1Cu);
  }

  v10 = *(*(a1 + 40) + 8);
  v11 = *(v10 + 40);
  *(v10 + 40) = v5;

  v12 = *MEMORY[0x277D85DE8];
}

- (BOOL)setAccessoryInfo:(id)info forEndpointWithUUID:(id)d
{
  infoCopy = info;
  dCopy = d;
  v16 = 0;
  v17 = &v16;
  v18 = 0x2020000000;
  v19 = 0;
  serverConnection = [(ACCTransportClient *)self serverConnection];
  v9 = serverConnection;
  if (serverConnection)
  {
    v10 = [serverConnection synchronousRemoteObjectProxyWithErrorHandler:&__block_literal_global_153];
    v13[0] = MEMORY[0x277D85DD0];
    v13[1] = 3221225472;
    v13[2] = __59__ACCTransportClient_setAccessoryInfo_forEndpointWithUUID___block_invoke_154;
    v13[3] = &unk_2784871E8;
    v14 = dCopy;
    v15 = &v16;
    [v10 setAccessoryInfo:infoCopy forEndpointWithUUID:v14 withReply:v13];
  }

  v11 = *(v17 + 24);

  _Block_object_dispose(&v16, 8);
  return v11;
}

void __59__ACCTransportClient_setAccessoryInfo_forEndpointWithUUID___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  if (gLogObjects)
  {
    v3 = gNumLogObjects < 1;
  }

  else
  {
    v3 = 1;
  }

  if (v3)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      [ACCTransportClient serverConnection];
    }

    v5 = MEMORY[0x277D86220];
    v4 = MEMORY[0x277D86220];
  }

  else
  {
    v5 = *gLogObjects;
  }

  if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
  {
    __58__ACCConnectionInfo_copyLocalizedAccessoryNameFromDaemon___block_invoke_cold_2();
  }
}

void __59__ACCTransportClient_setAccessoryInfo_forEndpointWithUUID___block_invoke_154(uint64_t a1, int a2)
{
  v13 = *MEMORY[0x277D85DE8];
  if (gLogObjects)
  {
    v4 = gNumLogObjects < 1;
  }

  else
  {
    v4 = 1;
  }

  if (v4)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      [ACCTransportClient serverConnection];
    }

    v6 = MEMORY[0x277D86220];
    v5 = MEMORY[0x277D86220];
  }

  else
  {
    v6 = *gLogObjects;
  }

  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    v7 = *(a1 + 32);
    v9 = 138412546;
    v10 = v7;
    v11 = 1024;
    v12 = a2;
    _os_log_impl(&dword_221CB0000, v6, OS_LOG_TYPE_INFO, "Set accessory info for endpoint: %@, result: %d", &v9, 0x12u);
  }

  *(*(*(a1 + 40) + 8) + 24) = a2;
  v8 = *MEMORY[0x277D85DE8];
}

- (BOOL)setProperties:(id)properties forEndpointWithUUID:(id)d
{
  v45 = *MEMORY[0x277D85DE8];
  propertiesCopy = properties;
  dCopy = d;
  v35 = 0;
  v36 = &v35;
  v37 = 0x2020000000;
  v38 = 0;
  if (gLogObjects)
  {
    v8 = gNumLogObjects < 1;
  }

  else
  {
    v8 = 1;
  }

  if (v8)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      [ACCTransportClient serverConnection];
    }

    v10 = MEMORY[0x277D86220];
    v9 = MEMORY[0x277D86220];
  }

  else
  {
    v10 = *gLogObjects;
  }

  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v40 = dCopy;
    _os_log_impl(&dword_221CB0000, v10, OS_LOG_TYPE_DEFAULT, "Setting properties for endpoint: %@", buf, 0xCu);
  }

  if (gLogObjects && gNumLogObjects >= 1)
  {
    v11 = *gLogObjects;
  }

  else
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      [ACCTransportClient serverConnection];
    }

    v11 = MEMORY[0x277D86220];
    v12 = MEMORY[0x277D86220];
  }

  if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
  {
    *buf = 138412290;
    v40 = propertiesCopy;
    _os_log_impl(&dword_221CB0000, v11, OS_LOG_TYPE_INFO, "properties: %@", buf, 0xCu);
  }

  if (gLogSignpostObjects && gNumLogSignpostObjects >= 4)
  {
    v13 = *(gLogSignpostObjects + 24);
  }

  else
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      [ACCTransportClient _init];
    }

    v13 = MEMORY[0x277D86220];
    v14 = MEMORY[0x277D86220];
  }

  if (gLogSignpostObjects && gNumLogSignpostObjects >= 4)
  {
    v15 = *(gLogSignpostObjects + 24);
  }

  else
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      [ACCTransportClient _init];
    }

    v15 = MEMORY[0x277D86220];
    v16 = MEMORY[0x277D86220];
  }

  v17 = os_signpost_id_make_with_pointer(v15, self);

  if (v17 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v13))
  {
    v18 = [propertiesCopy count];
    allKeys = [propertiesCopy allKeys];
    *buf = 138412802;
    v40 = dCopy;
    v41 = 2048;
    v42 = v18;
    v43 = 2112;
    v44 = allKeys;
    _os_signpost_emit_with_name_impl(&dword_221CB0000, v13, OS_SIGNPOST_INTERVAL_BEGIN, v17, "Endpoint PROPERTY", "Endpoint SetProperties! %@, %lu properties: %@", buf, 0x20u);
  }

  serverConnection = [(ACCTransportClient *)self serverConnection];
  if (serverConnection)
  {
    v32[0] = MEMORY[0x277D85DD0];
    v32[1] = 3221225472;
    v32[2] = __56__ACCTransportClient_setProperties_forEndpointWithUUID___block_invoke;
    v32[3] = &unk_278487198;
    v32[4] = self;
    v21 = dCopy;
    v33 = v21;
    v22 = propertiesCopy;
    v34 = v22;
    v23 = [serverConnection synchronousRemoteObjectProxyWithErrorHandler:v32];
    v27[0] = MEMORY[0x277D85DD0];
    v27[1] = 3221225472;
    v27[2] = __56__ACCTransportClient_setProperties_forEndpointWithUUID___block_invoke_155;
    v27[3] = &unk_2784871C0;
    v28 = v21;
    selfCopy = self;
    v30 = v22;
    v31 = &v35;
    [v23 setProperties:v30 forEndpointWithUUID:v28 withReply:v27];
  }

  v24 = *(v36 + 24);

  _Block_object_dispose(&v35, 8);
  v25 = *MEMORY[0x277D85DE8];
  return v24 & 1;
}

void __56__ACCTransportClient_setProperties_forEndpointWithUUID___block_invoke(uint64_t a1, void *a2)
{
  v25 = *MEMORY[0x277D85DE8];
  v3 = a2;
  if (gLogObjects)
  {
    v4 = gNumLogObjects < 1;
  }

  else
  {
    v4 = 1;
  }

  if (v4)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      [ACCTransportClient serverConnection];
    }

    v6 = MEMORY[0x277D86220];
    v5 = MEMORY[0x277D86220];
  }

  else
  {
    v6 = *gLogObjects;
  }

  if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
  {
    __58__ACCConnectionInfo_copyLocalizedAccessoryNameFromDaemon___block_invoke_cold_2();
  }

  if (gLogSignpostObjects && gNumLogSignpostObjects >= 4)
  {
    v7 = *(gLogSignpostObjects + 24);
  }

  else
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      [ACCTransportClient _init];
    }

    v7 = MEMORY[0x277D86220];
    v8 = MEMORY[0x277D86220];
  }

  if (gLogSignpostObjects && gNumLogSignpostObjects >= 4)
  {
    v9 = *(gLogSignpostObjects + 24);
  }

  else
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      [ACCTransportClient _init];
    }

    v9 = MEMORY[0x277D86220];
    v10 = MEMORY[0x277D86220];
  }

  v11 = os_signpost_id_make_with_pointer(v9, *(a1 + 32));

  if (v11 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v7))
  {
    v12 = [v3 localizedFailureReason];
    v13 = *(a1 + 40);
    v14 = [*(a1 + 48) count];
    v15 = [*(a1 + 48) allKeys];
    v17 = 138413058;
    v18 = v12;
    v19 = 2112;
    v20 = v13;
    v21 = 2048;
    v22 = v14;
    v23 = 2112;
    v24 = v15;
    _os_signpost_emit_with_name_impl(&dword_221CB0000, v7, OS_SIGNPOST_INTERVAL_END, v11, "Endpoint PROPERTY", "ERROR (%@) handling Endpoint SetProperties! %@, %lu properties: %@", &v17, 0x2Au);
  }

  v16 = *MEMORY[0x277D85DE8];
}

void __56__ACCTransportClient_setProperties_forEndpointWithUUID___block_invoke_155(uint64_t a1, int a2)
{
  v23 = *MEMORY[0x277D85DE8];
  if (gLogObjects)
  {
    v4 = gNumLogObjects < 1;
  }

  else
  {
    v4 = 1;
  }

  if (v4)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      [ACCTransportClient serverConnection];
    }

    v6 = MEMORY[0x277D86220];
    v5 = MEMORY[0x277D86220];
  }

  else
  {
    v6 = *gLogObjects;
  }

  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    v7 = *(a1 + 32);
    v17 = 138412546;
    v18 = v7;
    v19 = 1024;
    LODWORD(v20) = a2;
    _os_log_impl(&dword_221CB0000, v6, OS_LOG_TYPE_INFO, "Set properties for endpoint: %@, result: %d", &v17, 0x12u);
  }

  if (gLogSignpostObjects && gNumLogSignpostObjects >= 4)
  {
    v8 = *(gLogSignpostObjects + 24);
  }

  else
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      [ACCTransportClient _init];
    }

    v8 = MEMORY[0x277D86220];
    v9 = MEMORY[0x277D86220];
  }

  if (gLogSignpostObjects && gNumLogSignpostObjects >= 4)
  {
    v10 = *(gLogSignpostObjects + 24);
  }

  else
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      [ACCTransportClient _init];
    }

    v10 = MEMORY[0x277D86220];
    v11 = MEMORY[0x277D86220];
  }

  v12 = os_signpost_id_make_with_pointer(v10, *(a1 + 40));

  if (v12 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v8))
  {
    v13 = *(a1 + 32);
    v14 = [*(a1 + 48) count];
    v15 = [*(a1 + 48) allKeys];
    v17 = 138412802;
    v18 = v13;
    v19 = 2048;
    v20 = v14;
    v21 = 2112;
    v22 = v15;
    _os_signpost_emit_with_name_impl(&dword_221CB0000, v8, OS_SIGNPOST_INTERVAL_END, v12, "Endpoint PROPERTY", "Endpoint SetProperties! %@, %lu properties: %@", &v17, 0x20u);
  }

  *(*(*(a1 + 56) + 8) + 24) = a2;
  v16 = *MEMORY[0x277D85DE8];
}

- (BOOL)setProperty:(id)property value:(id)value forEndpointWithUUID:(id)d
{
  v16[1] = *MEMORY[0x277D85DE8];
  propertyCopy = property;
  v16[0] = value;
  v8 = MEMORY[0x277CBEAC0];
  dCopy = d;
  valueCopy = value;
  propertyCopy2 = property;
  v12 = [v8 dictionaryWithObjects:v16 forKeys:&propertyCopy count:1];

  LOBYTE(valueCopy) = [(ACCTransportClient *)self setProperties:v12 forEndpointWithUUID:dCopy];
  v13 = *MEMORY[0x277D85DE8];
  return valueCopy;
}

- (BOOL)appendToArrayProperty:(id)property values:(id)values forEndpointWithUUID:(id)d
{
  v47 = *MEMORY[0x277D85DE8];
  propertyCopy = property;
  valuesCopy = values;
  dCopy = d;
  v37 = 0;
  v38 = &v37;
  v39 = 0x2020000000;
  v40 = 0;
  if (gLogObjects)
  {
    v11 = gNumLogObjects < 1;
  }

  else
  {
    v11 = 1;
  }

  if (v11)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      [ACCTransportClient serverConnection];
    }

    v13 = MEMORY[0x277D86220];
    v12 = MEMORY[0x277D86220];
  }

  else
  {
    v13 = *gLogObjects;
  }

  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412546;
    v42 = propertyCopy;
    v43 = 2112;
    v44 = dCopy;
    _os_log_impl(&dword_221CB0000, v13, OS_LOG_TYPE_DEFAULT, "Appending to property %@ for endpoint: %@", buf, 0x16u);
  }

  if (gLogObjects && gNumLogObjects >= 1)
  {
    v14 = *gLogObjects;
  }

  else
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      [ACCTransportClient serverConnection];
    }

    v14 = MEMORY[0x277D86220];
    v15 = MEMORY[0x277D86220];
  }

  if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
  {
    *buf = 138412290;
    v42 = valuesCopy;
    _os_log_impl(&dword_221CB0000, v14, OS_LOG_TYPE_INFO, "values: %@", buf, 0xCu);
  }

  if (gLogSignpostObjects && gNumLogSignpostObjects >= 4)
  {
    v16 = *(gLogSignpostObjects + 24);
  }

  else
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      [ACCTransportClient _init];
    }

    v16 = MEMORY[0x277D86220];
    v17 = MEMORY[0x277D86220];
  }

  if (gLogSignpostObjects && gNumLogSignpostObjects >= 4)
  {
    v18 = *(gLogSignpostObjects + 24);
  }

  else
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      [ACCTransportClient _init];
    }

    v18 = MEMORY[0x277D86220];
    v19 = MEMORY[0x277D86220];
  }

  v20 = os_signpost_id_make_with_pointer(v18, self);

  if (v20 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v16))
  {
    v21 = [valuesCopy count];
    *buf = 138412802;
    v42 = dCopy;
    v43 = 2048;
    v44 = v21;
    v45 = 2112;
    v46 = valuesCopy;
    _os_signpost_emit_with_name_impl(&dword_221CB0000, v16, OS_SIGNPOST_INTERVAL_BEGIN, v20, "Endpoint PROPERTY", "Endpoint appendToArrayProperty! %@, %lu values: %@", buf, 0x20u);
  }

  serverConnection = [(ACCTransportClient *)self serverConnection];
  if (serverConnection)
  {
    v34[0] = MEMORY[0x277D85DD0];
    v34[1] = 3221225472;
    v34[2] = __71__ACCTransportClient_appendToArrayProperty_values_forEndpointWithUUID___block_invoke;
    v34[3] = &unk_278487198;
    v34[4] = self;
    v23 = dCopy;
    v35 = v23;
    v24 = valuesCopy;
    v36 = v24;
    v25 = [serverConnection synchronousRemoteObjectProxyWithErrorHandler:v34];
    v29[0] = MEMORY[0x277D85DD0];
    v29[1] = 3221225472;
    v29[2] = __71__ACCTransportClient_appendToArrayProperty_values_forEndpointWithUUID___block_invoke_156;
    v29[3] = &unk_2784871C0;
    v30 = v23;
    selfCopy = self;
    v32 = v24;
    v33 = &v37;
    [v25 appendToArrayProperty:propertyCopy values:v32 forEndpointWithUUID:v30 withReply:v29];
  }

  v26 = *(v38 + 24);

  _Block_object_dispose(&v37, 8);
  v27 = *MEMORY[0x277D85DE8];
  return v26 & 1;
}

void __71__ACCTransportClient_appendToArrayProperty_values_forEndpointWithUUID___block_invoke(uint64_t a1, void *a2)
{
  v22 = *MEMORY[0x277D85DE8];
  v3 = a2;
  if (gLogObjects)
  {
    v4 = gNumLogObjects < 1;
  }

  else
  {
    v4 = 1;
  }

  if (v4)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      [ACCTransportClient serverConnection];
    }

    v6 = MEMORY[0x277D86220];
    v5 = MEMORY[0x277D86220];
  }

  else
  {
    v6 = *gLogObjects;
  }

  if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
  {
    __58__ACCConnectionInfo_copyLocalizedAccessoryNameFromDaemon___block_invoke_cold_2();
  }

  if (gLogSignpostObjects && gNumLogSignpostObjects >= 4)
  {
    v7 = *(gLogSignpostObjects + 24);
  }

  else
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      [ACCTransportClient _init];
    }

    v7 = MEMORY[0x277D86220];
    v8 = MEMORY[0x277D86220];
  }

  if (gLogSignpostObjects && gNumLogSignpostObjects >= 4)
  {
    v9 = *(gLogSignpostObjects + 24);
  }

  else
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      [ACCTransportClient _init];
    }

    v9 = MEMORY[0x277D86220];
    v10 = MEMORY[0x277D86220];
  }

  v11 = os_signpost_id_make_with_pointer(v9, *(a1 + 32));

  if (v11 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v7))
  {
    v12 = [v3 localizedFailureReason];
    v13 = *(a1 + 40);
    v14 = [*(a1 + 48) count];
    v16 = 138412802;
    v17 = v12;
    v18 = 2112;
    v19 = v13;
    v20 = 2048;
    v21 = v14;
    _os_signpost_emit_with_name_impl(&dword_221CB0000, v7, OS_SIGNPOST_INTERVAL_END, v11, "Endpoint PROPERTY", "ERROR (%@) handling Endpoint appendToArrayProperty! %@, %lu values", &v16, 0x20u);
  }

  v15 = *MEMORY[0x277D85DE8];
}

void __71__ACCTransportClient_appendToArrayProperty_values_forEndpointWithUUID___block_invoke_156(uint64_t a1, int a2)
{
  v20 = *MEMORY[0x277D85DE8];
  if (gLogObjects)
  {
    v4 = gNumLogObjects < 1;
  }

  else
  {
    v4 = 1;
  }

  if (v4)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      [ACCTransportClient serverConnection];
    }

    v6 = MEMORY[0x277D86220];
    v5 = MEMORY[0x277D86220];
  }

  else
  {
    v6 = *gLogObjects;
  }

  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    v7 = *(a1 + 32);
    v16 = 138412546;
    v17 = v7;
    v18 = 1024;
    LODWORD(v19) = a2;
    _os_log_impl(&dword_221CB0000, v6, OS_LOG_TYPE_INFO, "Endpoint appendToArrayProperty for endpoint: %@, result: %d", &v16, 0x12u);
  }

  if (gLogSignpostObjects && gNumLogSignpostObjects >= 4)
  {
    v8 = *(gLogSignpostObjects + 24);
  }

  else
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      [ACCTransportClient _init];
    }

    v8 = MEMORY[0x277D86220];
    v9 = MEMORY[0x277D86220];
  }

  if (gLogSignpostObjects && gNumLogSignpostObjects >= 4)
  {
    v10 = *(gLogSignpostObjects + 24);
  }

  else
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      [ACCTransportClient _init];
    }

    v10 = MEMORY[0x277D86220];
    v11 = MEMORY[0x277D86220];
  }

  v12 = os_signpost_id_make_with_pointer(v10, *(a1 + 40));

  if (v12 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v8))
  {
    v13 = *(a1 + 32);
    v14 = [*(a1 + 48) count];
    v16 = 138412546;
    v17 = v13;
    v18 = 2048;
    v19 = v14;
    _os_signpost_emit_with_name_impl(&dword_221CB0000, v8, OS_SIGNPOST_INTERVAL_END, v12, "Endpoint PROPERTY", "Endpoint appendToArrayProperty! %@, %lu values", &v16, 0x16u);
  }

  *(*(*(a1 + 56) + 8) + 24) = a2;
  v15 = *MEMORY[0x277D85DE8];
}

- (BOOL)addToDictionaryProperty:(id)property values:(id)values forEndpointWithUUID:(id)d
{
  v47 = *MEMORY[0x277D85DE8];
  propertyCopy = property;
  valuesCopy = values;
  dCopy = d;
  v37 = 0;
  v38 = &v37;
  v39 = 0x2020000000;
  v40 = 0;
  if (gLogObjects)
  {
    v11 = gNumLogObjects < 1;
  }

  else
  {
    v11 = 1;
  }

  if (v11)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      [ACCTransportClient serverConnection];
    }

    v13 = MEMORY[0x277D86220];
    v12 = MEMORY[0x277D86220];
  }

  else
  {
    v13 = *gLogObjects;
  }

  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412546;
    v42 = propertyCopy;
    v43 = 2112;
    v44 = dCopy;
    _os_log_impl(&dword_221CB0000, v13, OS_LOG_TYPE_DEFAULT, "Add to property %@ for endpoint: %@", buf, 0x16u);
  }

  if (gLogObjects && gNumLogObjects >= 1)
  {
    v14 = *gLogObjects;
  }

  else
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      [ACCTransportClient serverConnection];
    }

    v14 = MEMORY[0x277D86220];
    v15 = MEMORY[0x277D86220];
  }

  if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
  {
    *buf = 138412290;
    v42 = valuesCopy;
    _os_log_impl(&dword_221CB0000, v14, OS_LOG_TYPE_INFO, "values: %@", buf, 0xCu);
  }

  if (gLogSignpostObjects && gNumLogSignpostObjects >= 4)
  {
    v16 = *(gLogSignpostObjects + 24);
  }

  else
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      [ACCTransportClient _init];
    }

    v16 = MEMORY[0x277D86220];
    v17 = MEMORY[0x277D86220];
  }

  if (gLogSignpostObjects && gNumLogSignpostObjects >= 4)
  {
    v18 = *(gLogSignpostObjects + 24);
  }

  else
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      [ACCTransportClient _init];
    }

    v18 = MEMORY[0x277D86220];
    v19 = MEMORY[0x277D86220];
  }

  v20 = os_signpost_id_make_with_pointer(v18, self);

  if (v20 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v16))
  {
    v21 = [valuesCopy count];
    *buf = 138412802;
    v42 = dCopy;
    v43 = 2048;
    v44 = v21;
    v45 = 2112;
    v46 = valuesCopy;
    _os_signpost_emit_with_name_impl(&dword_221CB0000, v16, OS_SIGNPOST_INTERVAL_BEGIN, v20, "Endpoint PROPERTY", "Endpoint addToDictionaryProperty! %@, %lu values: %@", buf, 0x20u);
  }

  serverConnection = [(ACCTransportClient *)self serverConnection];
  if (serverConnection)
  {
    v34[0] = MEMORY[0x277D85DD0];
    v34[1] = 3221225472;
    v34[2] = __73__ACCTransportClient_addToDictionaryProperty_values_forEndpointWithUUID___block_invoke;
    v34[3] = &unk_278487198;
    v34[4] = self;
    v23 = dCopy;
    v35 = v23;
    v24 = valuesCopy;
    v36 = v24;
    v25 = [serverConnection synchronousRemoteObjectProxyWithErrorHandler:v34];
    v29[0] = MEMORY[0x277D85DD0];
    v29[1] = 3221225472;
    v29[2] = __73__ACCTransportClient_addToDictionaryProperty_values_forEndpointWithUUID___block_invoke_157;
    v29[3] = &unk_2784871C0;
    v30 = v23;
    selfCopy = self;
    v32 = v24;
    v33 = &v37;
    [v25 addToDictionaryProperty:propertyCopy values:v32 forEndpointWithUUID:v30 withReply:v29];
  }

  v26 = *(v38 + 24);

  _Block_object_dispose(&v37, 8);
  v27 = *MEMORY[0x277D85DE8];
  return v26 & 1;
}

void __73__ACCTransportClient_addToDictionaryProperty_values_forEndpointWithUUID___block_invoke(uint64_t a1, void *a2)
{
  v25 = *MEMORY[0x277D85DE8];
  v3 = a2;
  if (gLogObjects)
  {
    v4 = gNumLogObjects < 1;
  }

  else
  {
    v4 = 1;
  }

  if (v4)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      [ACCTransportClient serverConnection];
    }

    v6 = MEMORY[0x277D86220];
    v5 = MEMORY[0x277D86220];
  }

  else
  {
    v6 = *gLogObjects;
  }

  if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
  {
    __58__ACCConnectionInfo_copyLocalizedAccessoryNameFromDaemon___block_invoke_cold_2();
  }

  if (gLogSignpostObjects && gNumLogSignpostObjects >= 4)
  {
    v7 = *(gLogSignpostObjects + 24);
  }

  else
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      [ACCTransportClient _init];
    }

    v7 = MEMORY[0x277D86220];
    v8 = MEMORY[0x277D86220];
  }

  if (gLogSignpostObjects && gNumLogSignpostObjects >= 4)
  {
    v9 = *(gLogSignpostObjects + 24);
  }

  else
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      [ACCTransportClient _init];
    }

    v9 = MEMORY[0x277D86220];
    v10 = MEMORY[0x277D86220];
  }

  v11 = os_signpost_id_make_with_pointer(v9, *(a1 + 32));

  if (v11 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v7))
  {
    v12 = [v3 localizedFailureReason];
    v13 = *(a1 + 40);
    v14 = [*(a1 + 48) count];
    v15 = [*(a1 + 48) allKeys];
    v17 = 138413058;
    v18 = v12;
    v19 = 2112;
    v20 = v13;
    v21 = 2048;
    v22 = v14;
    v23 = 2112;
    v24 = v15;
    _os_signpost_emit_with_name_impl(&dword_221CB0000, v7, OS_SIGNPOST_INTERVAL_END, v11, "Endpoint PROPERTY", "ERROR (%@) handling Endpoint addToDictionaryProperty! %@, %lu values: %@", &v17, 0x2Au);
  }

  v16 = *MEMORY[0x277D85DE8];
}

void __73__ACCTransportClient_addToDictionaryProperty_values_forEndpointWithUUID___block_invoke_157(uint64_t a1, int a2)
{
  v23 = *MEMORY[0x277D85DE8];
  if (gLogObjects)
  {
    v4 = gNumLogObjects < 1;
  }

  else
  {
    v4 = 1;
  }

  if (v4)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      [ACCTransportClient serverConnection];
    }

    v6 = MEMORY[0x277D86220];
    v5 = MEMORY[0x277D86220];
  }

  else
  {
    v6 = *gLogObjects;
  }

  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    v7 = *(a1 + 32);
    v17 = 138412546;
    v18 = v7;
    v19 = 1024;
    LODWORD(v20) = a2;
    _os_log_impl(&dword_221CB0000, v6, OS_LOG_TYPE_INFO, "Endpoint addToDictionaryProperty for endpoint: %@, result: %d", &v17, 0x12u);
  }

  if (gLogSignpostObjects && gNumLogSignpostObjects >= 4)
  {
    v8 = *(gLogSignpostObjects + 24);
  }

  else
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      [ACCTransportClient _init];
    }

    v8 = MEMORY[0x277D86220];
    v9 = MEMORY[0x277D86220];
  }

  if (gLogSignpostObjects && gNumLogSignpostObjects >= 4)
  {
    v10 = *(gLogSignpostObjects + 24);
  }

  else
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      [ACCTransportClient _init];
    }

    v10 = MEMORY[0x277D86220];
    v11 = MEMORY[0x277D86220];
  }

  v12 = os_signpost_id_make_with_pointer(v10, *(a1 + 40));

  if (v12 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v8))
  {
    v13 = *(a1 + 32);
    v14 = [*(a1 + 48) count];
    v15 = [*(a1 + 48) allKeys];
    v17 = 138412802;
    v18 = v13;
    v19 = 2048;
    v20 = v14;
    v21 = 2112;
    v22 = v15;
    _os_signpost_emit_with_name_impl(&dword_221CB0000, v8, OS_SIGNPOST_INTERVAL_END, v12, "Endpoint PROPERTY", "Endpoint addToDictionaryProperty! %@, %lu values: %@", &v17, 0x20u);
  }

  *(*(*(a1 + 56) + 8) + 24) = a2;
  v16 = *MEMORY[0x277D85DE8];
}

- (BOOL)removeProperty:(id)property forEndpointWithUUID:(id)d
{
  propertyCopy = property;
  dCopy = d;
  v16 = 0;
  v17 = &v16;
  v18 = 0x2020000000;
  v19 = 0;
  serverConnection = [(ACCTransportClient *)self serverConnection];
  v9 = serverConnection;
  if (serverConnection)
  {
    v10 = [serverConnection synchronousRemoteObjectProxyWithErrorHandler:&__block_literal_global_159];
    v13[0] = MEMORY[0x277D85DD0];
    v13[1] = 3221225472;
    v13[2] = __57__ACCTransportClient_removeProperty_forEndpointWithUUID___block_invoke_160;
    v13[3] = &unk_2784871E8;
    v14 = dCopy;
    v15 = &v16;
    [v10 removeProperty:propertyCopy forEndpointWithUUID:v14 withReply:v13];
  }

  v11 = *(v17 + 24);

  _Block_object_dispose(&v16, 8);
  return v11;
}

void __57__ACCTransportClient_removeProperty_forEndpointWithUUID___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  if (gLogObjects)
  {
    v3 = gNumLogObjects < 1;
  }

  else
  {
    v3 = 1;
  }

  if (v3)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      [ACCTransportClient serverConnection];
    }

    v5 = MEMORY[0x277D86220];
    v4 = MEMORY[0x277D86220];
  }

  else
  {
    v5 = *gLogObjects;
  }

  if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
  {
    __58__ACCConnectionInfo_copyLocalizedAccessoryNameFromDaemon___block_invoke_cold_2();
  }
}

void __57__ACCTransportClient_removeProperty_forEndpointWithUUID___block_invoke_160(uint64_t a1, int a2)
{
  v13 = *MEMORY[0x277D85DE8];
  if (gLogObjects)
  {
    v4 = gNumLogObjects < 1;
  }

  else
  {
    v4 = 1;
  }

  if (v4)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      [ACCTransportClient serverConnection];
    }

    v6 = MEMORY[0x277D86220];
    v5 = MEMORY[0x277D86220];
  }

  else
  {
    v6 = *gLogObjects;
  }

  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    v7 = *(a1 + 32);
    v9 = 138412546;
    v10 = v7;
    v11 = 1024;
    v12 = a2;
    _os_log_impl(&dword_221CB0000, v6, OS_LOG_TYPE_INFO, "Remove property for endpoint: %@, result: %d", &v9, 0x12u);
  }

  *(*(*(a1 + 40) + 8) + 24) = a2;
  v8 = *MEMORY[0x277D85DE8];
}

- (BOOL)publishConnectionWithUUID:(id)d
{
  v23 = *MEMORY[0x277D85DE8];
  dCopy = d;
  v17 = 0;
  v18 = &v17;
  v19 = 0x2020000000;
  v20 = 0;
  if (gLogObjects)
  {
    v5 = gNumLogObjects < 1;
  }

  else
  {
    v5 = 1;
  }

  if (v5)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      [ACCTransportClient serverConnection];
    }

    v7 = MEMORY[0x277D86220];
    v6 = MEMORY[0x277D86220];
  }

  else
  {
    v7 = *gLogObjects;
  }

  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v22 = dCopy;
    _os_log_impl(&dword_221CB0000, v7, OS_LOG_TYPE_DEFAULT, "Publishing connection... (connectionUUID: %@)", buf, 0xCu);
  }

  serverConnection = [(ACCTransportClient *)self serverConnection];
  v9 = serverConnection;
  if (serverConnection)
  {
    v10 = [serverConnection synchronousRemoteObjectProxyWithErrorHandler:&__block_literal_global_162];
    v14[0] = MEMORY[0x277D85DD0];
    v14[1] = 3221225472;
    v14[2] = __48__ACCTransportClient_publishConnectionWithUUID___block_invoke_163;
    v14[3] = &unk_2784871E8;
    v15 = dCopy;
    v16 = &v17;
    [v10 publishConnectionWithUUID:v15 withReply:v14];
  }

  v11 = *(v18 + 24);

  _Block_object_dispose(&v17, 8);
  v12 = *MEMORY[0x277D85DE8];
  return v11 & 1;
}

void __48__ACCTransportClient_publishConnectionWithUUID___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  if (gLogObjects)
  {
    v3 = gNumLogObjects < 1;
  }

  else
  {
    v3 = 1;
  }

  if (v3)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      [ACCTransportClient serverConnection];
    }

    v5 = MEMORY[0x277D86220];
    v4 = MEMORY[0x277D86220];
  }

  else
  {
    v5 = *gLogObjects;
  }

  if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
  {
    __58__ACCConnectionInfo_copyLocalizedAccessoryNameFromDaemon___block_invoke_cold_2();
  }
}

void __48__ACCTransportClient_publishConnectionWithUUID___block_invoke_163(uint64_t a1, int a2)
{
  v13 = *MEMORY[0x277D85DE8];
  if (gLogObjects)
  {
    v4 = gNumLogObjects < 1;
  }

  else
  {
    v4 = 1;
  }

  if (v4)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      [ACCTransportClient serverConnection];
    }

    v6 = MEMORY[0x277D86220];
    v5 = MEMORY[0x277D86220];
  }

  else
  {
    v6 = *gLogObjects;
  }

  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = *(a1 + 32);
    v9 = 138412546;
    v10 = v7;
    v11 = 1024;
    v12 = a2;
    _os_log_impl(&dword_221CB0000, v6, OS_LOG_TYPE_DEFAULT, "Published connection: %@, result: %d", &v9, 0x12u);
  }

  *(*(*(a1 + 40) + 8) + 24) = a2;
  v8 = *MEMORY[0x277D85DE8];
}

- (BOOL)destroyEndpointWithUUID:(id)d
{
  v27 = *MEMORY[0x277D85DE8];
  dCopy = d;
  v21 = 0;
  v22 = &v21;
  v23 = 0x2020000000;
  v24 = 0;
  if (gLogObjects)
  {
    v5 = gNumLogObjects < 1;
  }

  else
  {
    v5 = 1;
  }

  if (v5)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      [ACCTransportClient serverConnection];
    }

    v7 = MEMORY[0x277D86220];
    v6 = MEMORY[0x277D86220];
  }

  else
  {
    v7 = *gLogObjects;
  }

  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v26 = dCopy;
    _os_log_impl(&dword_221CB0000, v7, OS_LOG_TYPE_DEFAULT, "Destroying endpoint... (endpointUUID: %@)", buf, 0xCu);
  }

  serverConnection = [(ACCTransportClient *)self serverConnection];
  v9 = serverConnection;
  if (serverConnection)
  {
    v10 = [serverConnection synchronousRemoteObjectProxyWithErrorHandler:&__block_literal_global_165];
    v15 = MEMORY[0x277D85DD0];
    v16 = 3221225472;
    v17 = __46__ACCTransportClient_destroyEndpointWithUUID___block_invoke_166;
    v18 = &unk_2784871E8;
    v19 = dCopy;
    v20 = &v21;
    [v10 destroyEndpointWithUUID:v19 withReply:&v15];
  }

  v11 = [(ACCTransportClient *)self endpointDataOutHandlers:v15];
  objc_sync_enter(v11);
  endpointDataOutHandlers = [(ACCTransportClient *)self endpointDataOutHandlers];
  [endpointDataOutHandlers removeObjectForKey:dCopy];

  objc_sync_exit(v11);
  LOBYTE(endpointDataOutHandlers) = *(v22 + 24);

  _Block_object_dispose(&v21, 8);
  v13 = *MEMORY[0x277D85DE8];
  return endpointDataOutHandlers & 1;
}

void __46__ACCTransportClient_destroyEndpointWithUUID___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  if (gLogObjects)
  {
    v3 = gNumLogObjects < 1;
  }

  else
  {
    v3 = 1;
  }

  if (v3)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      [ACCTransportClient serverConnection];
    }

    v5 = MEMORY[0x277D86220];
    v4 = MEMORY[0x277D86220];
  }

  else
  {
    v5 = *gLogObjects;
  }

  if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
  {
    __58__ACCConnectionInfo_copyLocalizedAccessoryNameFromDaemon___block_invoke_cold_2();
  }
}

void __46__ACCTransportClient_destroyEndpointWithUUID___block_invoke_166(uint64_t a1, int a2)
{
  v13 = *MEMORY[0x277D85DE8];
  if (gLogObjects)
  {
    v4 = gNumLogObjects < 1;
  }

  else
  {
    v4 = 1;
  }

  if (v4)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      [ACCTransportClient serverConnection];
    }

    v6 = MEMORY[0x277D86220];
    v5 = MEMORY[0x277D86220];
  }

  else
  {
    v6 = *gLogObjects;
  }

  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = *(a1 + 32);
    v9 = 138412546;
    v10 = v7;
    v11 = 1024;
    v12 = a2;
    _os_log_impl(&dword_221CB0000, v6, OS_LOG_TYPE_DEFAULT, "Destroyed endpoint: %@, result: %d", &v9, 0x12u);
  }

  *(*(*(a1 + 40) + 8) + 24) = a2;
  v8 = *MEMORY[0x277D85DE8];
}

- (BOOL)destroyConnectionWithUUID:(id)d
{
  v30 = *MEMORY[0x277D85DE8];
  dCopy = d;
  v24 = 0;
  v25 = &v24;
  v26 = 0x2020000000;
  v27 = 0;
  if (gLogObjects)
  {
    v5 = gNumLogObjects < 1;
  }

  else
  {
    v5 = 1;
  }

  if (v5)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      [ACCTransportClient serverConnection];
    }

    v7 = MEMORY[0x277D86220];
    v6 = MEMORY[0x277D86220];
  }

  else
  {
    v7 = *gLogObjects;
  }

  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v29 = dCopy;
    _os_log_impl(&dword_221CB0000, v7, OS_LOG_TYPE_DEFAULT, "Destroying connection... (connectionUUID: %@)", buf, 0xCu);
  }

  if (dCopy)
  {
    serverConnection = [(ACCTransportClient *)self serverConnection];
    if (serverConnection)
    {
      v9 = [(ACCTransportClient *)self endpointUUIDsForConnectionWithUUID:dCopy];
      v10 = [serverConnection synchronousRemoteObjectProxyWithErrorHandler:&__block_literal_global_168];
      v18 = MEMORY[0x277D85DD0];
      v19 = 3221225472;
      v20 = __48__ACCTransportClient_destroyConnectionWithUUID___block_invoke_169;
      v21 = &unk_2784871E8;
      v22 = dCopy;
      v23 = &v24;
      [v10 destroyConnectionWithUUID:v22 withReply:&v18];

      v11 = [(ACCTransportClient *)self endpointDataOutHandlers:v18];
      objc_sync_enter(v11);
      endpointDataOutHandlers = [(ACCTransportClient *)self endpointDataOutHandlers];
      allObjects = [v9 allObjects];
      [endpointDataOutHandlers removeObjectsForKeys:allObjects];

      objc_sync_exit(v11);
    }
  }

  else
  {
    if (gLogObjects && gNumLogObjects >= 1)
    {
      serverConnection = *gLogObjects;
    }

    else
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        [ACCTransportClient serverConnection];
      }

      serverConnection = MEMORY[0x277D86220];
      v14 = MEMORY[0x277D86220];
    }

    if (os_log_type_enabled(serverConnection, OS_LOG_TYPE_FAULT))
    {
      [ACCTransportClient destroyConnectionWithUUID:serverConnection];
    }
  }

  v15 = *(v25 + 24);
  _Block_object_dispose(&v24, 8);

  v16 = *MEMORY[0x277D85DE8];
  return v15 & 1;
}

void __48__ACCTransportClient_destroyConnectionWithUUID___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  if (gLogObjects)
  {
    v3 = gNumLogObjects < 1;
  }

  else
  {
    v3 = 1;
  }

  if (v3)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      [ACCTransportClient serverConnection];
    }

    v5 = MEMORY[0x277D86220];
    v4 = MEMORY[0x277D86220];
  }

  else
  {
    v5 = *gLogObjects;
  }

  if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
  {
    __58__ACCConnectionInfo_copyLocalizedAccessoryNameFromDaemon___block_invoke_cold_2();
  }
}

void __48__ACCTransportClient_destroyConnectionWithUUID___block_invoke_169(uint64_t a1, int a2)
{
  v13 = *MEMORY[0x277D85DE8];
  if (gLogObjects)
  {
    v4 = gNumLogObjects < 1;
  }

  else
  {
    v4 = 1;
  }

  if (v4)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      [ACCTransportClient serverConnection];
    }

    v6 = MEMORY[0x277D86220];
    v5 = MEMORY[0x277D86220];
  }

  else
  {
    v6 = *gLogObjects;
  }

  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = *(a1 + 32);
    v9 = 138412546;
    v10 = v7;
    v11 = 1024;
    v12 = a2;
    _os_log_impl(&dword_221CB0000, v6, OS_LOG_TYPE_DEFAULT, "Destroyed connection: %@, result: %d", &v9, 0x12u);
  }

  *(*(*(a1 + 40) + 8) + 24) = a2;
  v8 = *MEMORY[0x277D85DE8];
}

- (id)connectionUUIDForEndpointWithUUID:(id)d
{
  dCopy = d;
  v11 = 0;
  v12 = &v11;
  v13 = 0x3032000000;
  v14 = __Block_byref_object_copy__1;
  v15 = __Block_byref_object_dispose__1;
  v16 = 0;
  serverConnection = [(ACCTransportClient *)self serverConnection];
  v6 = serverConnection;
  if (serverConnection)
  {
    v7 = [serverConnection synchronousRemoteObjectProxyWithErrorHandler:&__block_literal_global_171];
    v10[0] = MEMORY[0x277D85DD0];
    v10[1] = 3221225472;
    v10[2] = __56__ACCTransportClient_connectionUUIDForEndpointWithUUID___block_invoke_172;
    v10[3] = &unk_278487238;
    v10[4] = &v11;
    [v7 connectionUUIDForEndpointWithUUID:dCopy withReply:v10];
  }

  v8 = v12[5];

  _Block_object_dispose(&v11, 8);

  return v8;
}

void __56__ACCTransportClient_connectionUUIDForEndpointWithUUID___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  if (gLogObjects)
  {
    v3 = gNumLogObjects < 1;
  }

  else
  {
    v3 = 1;
  }

  if (v3)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      [ACCTransportClient serverConnection];
    }

    v5 = MEMORY[0x277D86220];
    v4 = MEMORY[0x277D86220];
  }

  else
  {
    v5 = *gLogObjects;
  }

  if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
  {
    __58__ACCConnectionInfo_copyLocalizedAccessoryNameFromDaemon___block_invoke_cold_2();
  }
}

- (id)endpointUUIDsForConnectionWithUUID:(id)d
{
  dCopy = d;
  v11 = 0;
  v12 = &v11;
  v13 = 0x3032000000;
  v14 = __Block_byref_object_copy__1;
  v15 = __Block_byref_object_dispose__1;
  v16 = 0;
  serverConnection = [(ACCTransportClient *)self serverConnection];
  v6 = serverConnection;
  if (serverConnection)
  {
    v7 = [serverConnection synchronousRemoteObjectProxyWithErrorHandler:&__block_literal_global_175];
    v10[0] = MEMORY[0x277D85DD0];
    v10[1] = 3221225472;
    v10[2] = __57__ACCTransportClient_endpointUUIDsForConnectionWithUUID___block_invoke_176;
    v10[3] = &unk_278487260;
    v10[4] = &v11;
    [v7 endpointUUIDsForConnectionWithUUID:dCopy withReply:v10];
  }

  v8 = v12[5];

  _Block_object_dispose(&v11, 8);

  return v8;
}

void __57__ACCTransportClient_endpointUUIDsForConnectionWithUUID___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  if (gLogObjects)
  {
    v3 = gNumLogObjects < 1;
  }

  else
  {
    v3 = 1;
  }

  if (v3)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      [ACCTransportClient serverConnection];
    }

    v5 = MEMORY[0x277D86220];
    v4 = MEMORY[0x277D86220];
  }

  else
  {
    v5 = *gLogObjects;
  }

  if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
  {
    __58__ACCConnectionInfo_copyLocalizedAccessoryNameFromDaemon___block_invoke_cold_2();
  }
}

uint64_t __57__ACCTransportClient_endpointUUIDsForConnectionWithUUID___block_invoke_176(uint64_t a1, uint64_t a2)
{
  v3 = [MEMORY[0x277CBEB98] setWithArray:a2];
  v4 = *(*(a1 + 32) + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = v3;

  return MEMORY[0x2821F96F8]();
}

void __63__ACCTransportClient_authStatusForConnectionWithUUID_authType___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  if (gLogObjects)
  {
    v3 = gNumLogObjects < 1;
  }

  else
  {
    v3 = 1;
  }

  if (v3)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      [ACCTransportClient serverConnection];
    }

    v5 = MEMORY[0x277D86220];
    v4 = MEMORY[0x277D86220];
  }

  else
  {
    v5 = *gLogObjects;
  }

  if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
  {
    __58__ACCConnectionInfo_copyLocalizedAccessoryNameFromDaemon___block_invoke_cold_2();
  }
}

- (BOOL)isConnectionAuthenticated:(id)authenticated
{
  authenticatedCopy = authenticated;
  v11 = 0;
  v12 = &v11;
  v13 = 0x2020000000;
  v14 = 0;
  serverConnection = [(ACCTransportClient *)self serverConnection];
  v6 = serverConnection;
  if (serverConnection)
  {
    v7 = [serverConnection synchronousRemoteObjectProxyWithErrorHandler:&__block_literal_global_184];
    v10[0] = MEMORY[0x277D85DD0];
    v10[1] = 3221225472;
    v10[2] = __48__ACCTransportClient_isConnectionAuthenticated___block_invoke_185;
    v10[3] = &unk_2784872B0;
    v10[4] = &v11;
    [v7 isConnectionAuthenticatedForUUID:authenticatedCopy withReply:v10];
  }

  v8 = *(v12 + 24);

  _Block_object_dispose(&v11, 8);
  return v8;
}

void __48__ACCTransportClient_isConnectionAuthenticated___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  if (gLogObjects)
  {
    v3 = gNumLogObjects < 1;
  }

  else
  {
    v3 = 1;
  }

  if (v3)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      [ACCTransportClient serverConnection];
    }

    v5 = MEMORY[0x277D86220];
    v4 = MEMORY[0x277D86220];
  }

  else
  {
    v5 = *gLogObjects;
  }

  if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
  {
    __58__ACCConnectionInfo_copyLocalizedAccessoryNameFromDaemon___block_invoke_cold_2();
  }
}

void __55__ACCTransportClient_setConnectionAuthenticated_state___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  if (gLogObjects)
  {
    v3 = gNumLogObjects < 1;
  }

  else
  {
    v3 = 1;
  }

  if (v3)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      [ACCTransportClient serverConnection];
    }

    v5 = MEMORY[0x277D86220];
    v4 = MEMORY[0x277D86220];
  }

  else
  {
    v5 = *gLogObjects;
  }

  if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
  {
    __58__ACCConnectionInfo_copyLocalizedAccessoryNameFromDaemon___block_invoke_cold_2();
  }
}

- (id)accessoryInfoForConnectionWithUUID:(id)d
{
  dCopy = d;
  v11 = 0;
  v12 = &v11;
  v13 = 0x3032000000;
  v14 = __Block_byref_object_copy__1;
  v15 = __Block_byref_object_dispose__1;
  v16 = 0;
  serverConnection = [(ACCTransportClient *)self serverConnection];
  v6 = serverConnection;
  if (serverConnection)
  {
    v7 = [serverConnection synchronousRemoteObjectProxyWithErrorHandler:&__block_literal_global_189];
    v10[0] = MEMORY[0x277D85DD0];
    v10[1] = 3221225472;
    v10[2] = __57__ACCTransportClient_accessoryInfoForConnectionWithUUID___block_invoke_190;
    v10[3] = &unk_2784872D8;
    v10[4] = &v11;
    [v7 accessoryInfoForConnectionWithUUID:dCopy withReply:v10];
  }

  v8 = v12[5];

  _Block_object_dispose(&v11, 8);

  return v8;
}

void __57__ACCTransportClient_accessoryInfoForConnectionWithUUID___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  if (gLogObjects)
  {
    v3 = gNumLogObjects < 1;
  }

  else
  {
    v3 = 1;
  }

  if (v3)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      [ACCTransportClient serverConnection];
    }

    v5 = MEMORY[0x277D86220];
    v4 = MEMORY[0x277D86220];
  }

  else
  {
    v5 = *gLogObjects;
  }

  if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
  {
    __58__ACCConnectionInfo_copyLocalizedAccessoryNameFromDaemon___block_invoke_cold_2();
  }
}

- (id)accessoryInfoForEndpointWithUUID:(id)d
{
  dCopy = d;
  v11 = 0;
  v12 = &v11;
  v13 = 0x3032000000;
  v14 = __Block_byref_object_copy__1;
  v15 = __Block_byref_object_dispose__1;
  v16 = 0;
  serverConnection = [(ACCTransportClient *)self serverConnection];
  v6 = serverConnection;
  if (serverConnection)
  {
    v7 = [serverConnection synchronousRemoteObjectProxyWithErrorHandler:&__block_literal_global_193];
    v10[0] = MEMORY[0x277D85DD0];
    v10[1] = 3221225472;
    v10[2] = __55__ACCTransportClient_accessoryInfoForEndpointWithUUID___block_invoke_194;
    v10[3] = &unk_2784872D8;
    v10[4] = &v11;
    [v7 accessoryInfoForEndpointWithUUID:dCopy withReply:v10];
  }

  v8 = v12[5];

  _Block_object_dispose(&v11, 8);

  return v8;
}

void __55__ACCTransportClient_accessoryInfoForEndpointWithUUID___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  if (gLogObjects)
  {
    v3 = gNumLogObjects < 1;
  }

  else
  {
    v3 = 1;
  }

  if (v3)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      [ACCTransportClient serverConnection];
    }

    v5 = MEMORY[0x277D86220];
    v4 = MEMORY[0x277D86220];
  }

  else
  {
    v5 = *gLogObjects;
  }

  if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
  {
    __58__ACCConnectionInfo_copyLocalizedAccessoryNameFromDaemon___block_invoke_cold_2();
  }
}

- (id)propertiesForConnectionWithUUID:(id)d
{
  dCopy = d;
  v11 = 0;
  v12 = &v11;
  v13 = 0x3032000000;
  v14 = __Block_byref_object_copy__1;
  v15 = __Block_byref_object_dispose__1;
  v16 = 0;
  serverConnection = [(ACCTransportClient *)self serverConnection];
  v6 = serverConnection;
  if (serverConnection)
  {
    v7 = [serverConnection synchronousRemoteObjectProxyWithErrorHandler:&__block_literal_global_196];
    v10[0] = MEMORY[0x277D85DD0];
    v10[1] = 3221225472;
    v10[2] = __54__ACCTransportClient_propertiesForConnectionWithUUID___block_invoke_197;
    v10[3] = &unk_2784872D8;
    v10[4] = &v11;
    [v7 propertiesForConnectionWithUUID:dCopy withReply:v10];
  }

  v8 = v12[5];

  _Block_object_dispose(&v11, 8);

  return v8;
}

void __54__ACCTransportClient_propertiesForConnectionWithUUID___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  if (gLogObjects)
  {
    v3 = gNumLogObjects < 1;
  }

  else
  {
    v3 = 1;
  }

  if (v3)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      [ACCTransportClient serverConnection];
    }

    v5 = MEMORY[0x277D86220];
    v4 = MEMORY[0x277D86220];
  }

  else
  {
    v5 = *gLogObjects;
  }

  if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
  {
    __58__ACCConnectionInfo_copyLocalizedAccessoryNameFromDaemon___block_invoke_cold_2();
  }
}

- (id)propertiesForEndpointWithUUID:(id)d
{
  dCopy = d;
  v11 = 0;
  v12 = &v11;
  v13 = 0x3032000000;
  v14 = __Block_byref_object_copy__1;
  v15 = __Block_byref_object_dispose__1;
  v16 = 0;
  serverConnection = [(ACCTransportClient *)self serverConnection];
  v6 = serverConnection;
  if (serverConnection)
  {
    v7 = [serverConnection synchronousRemoteObjectProxyWithErrorHandler:&__block_literal_global_199];
    v10[0] = MEMORY[0x277D85DD0];
    v10[1] = 3221225472;
    v10[2] = __52__ACCTransportClient_propertiesForEndpointWithUUID___block_invoke_200;
    v10[3] = &unk_2784872D8;
    v10[4] = &v11;
    [v7 propertiesForEndpointWithUUID:dCopy withReply:v10];
  }

  v8 = v12[5];

  _Block_object_dispose(&v11, 8);

  return v8;
}

void __52__ACCTransportClient_propertiesForEndpointWithUUID___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  if (gLogObjects)
  {
    v3 = gNumLogObjects < 1;
  }

  else
  {
    v3 = 1;
  }

  if (v3)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      [ACCTransportClient serverConnection];
    }

    v5 = MEMORY[0x277D86220];
    v4 = MEMORY[0x277D86220];
  }

  else
  {
    v5 = *gLogObjects;
  }

  if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
  {
    __58__ACCConnectionInfo_copyLocalizedAccessoryNameFromDaemon___block_invoke_cold_2();
  }
}

- (id)identifierForConnectionWithUUID:(id)d
{
  dCopy = d;
  v11 = 0;
  v12 = &v11;
  v13 = 0x3032000000;
  v14 = __Block_byref_object_copy__1;
  v15 = __Block_byref_object_dispose__1;
  v16 = 0;
  serverConnection = [(ACCTransportClient *)self serverConnection];
  v6 = serverConnection;
  if (serverConnection)
  {
    v7 = [serverConnection synchronousRemoteObjectProxyWithErrorHandler:&__block_literal_global_202];
    v10[0] = MEMORY[0x277D85DD0];
    v10[1] = 3221225472;
    v10[2] = __54__ACCTransportClient_identifierForConnectionWithUUID___block_invoke_203;
    v10[3] = &unk_278487238;
    v10[4] = &v11;
    [v7 identifierForConnectionWithUUID:dCopy withReply:v10];
  }

  v8 = v12[5];

  _Block_object_dispose(&v11, 8);

  return v8;
}

void __54__ACCTransportClient_identifierForConnectionWithUUID___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  if (gLogObjects)
  {
    v3 = gNumLogObjects < 1;
  }

  else
  {
    v3 = 1;
  }

  if (v3)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      [ACCTransportClient serverConnection];
    }

    v5 = MEMORY[0x277D86220];
    v4 = MEMORY[0x277D86220];
  }

  else
  {
    v5 = *gLogObjects;
  }

  if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
  {
    __58__ACCConnectionInfo_copyLocalizedAccessoryNameFromDaemon___block_invoke_cold_2();
  }
}

- (id)identifierForEndpointWithUUID:(id)d
{
  dCopy = d;
  v11 = 0;
  v12 = &v11;
  v13 = 0x3032000000;
  v14 = __Block_byref_object_copy__1;
  v15 = __Block_byref_object_dispose__1;
  v16 = 0;
  serverConnection = [(ACCTransportClient *)self serverConnection];
  v6 = serverConnection;
  if (serverConnection)
  {
    v7 = [serverConnection synchronousRemoteObjectProxyWithErrorHandler:&__block_literal_global_205_0];
    v10[0] = MEMORY[0x277D85DD0];
    v10[1] = 3221225472;
    v10[2] = __52__ACCTransportClient_identifierForEndpointWithUUID___block_invoke_206;
    v10[3] = &unk_278487238;
    v10[4] = &v11;
    [v7 identifierForEndpointWithUUID:dCopy withReply:v10];
  }

  v8 = v12[5];

  _Block_object_dispose(&v11, 8);

  return v8;
}

void __52__ACCTransportClient_identifierForEndpointWithUUID___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  if (gLogObjects)
  {
    v3 = gNumLogObjects < 1;
  }

  else
  {
    v3 = 1;
  }

  if (v3)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      [ACCTransportClient serverConnection];
    }

    v5 = MEMORY[0x277D86220];
    v4 = MEMORY[0x277D86220];
  }

  else
  {
    v5 = *gLogObjects;
  }

  if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
  {
    __58__ACCConnectionInfo_copyLocalizedAccessoryNameFromDaemon___block_invoke_cold_2();
  }
}

- (void)setHandler:(id)handler forConnectionProperty:(id)property
{
  aBlock = handler;
  propertyCopy = property;
  if (propertyCopy)
  {
    connectionPropertyChangeHandlers = [(ACCTransportClient *)self connectionPropertyChangeHandlers];
    objc_sync_enter(connectionPropertyChangeHandlers);
    connectionPropertyChangeHandlers2 = [(ACCTransportClient *)self connectionPropertyChangeHandlers];
    if (aBlock)
    {
      v9 = _Block_copy(aBlock);
      [connectionPropertyChangeHandlers2 setObject:v9 forKey:propertyCopy];
    }

    else
    {
      [connectionPropertyChangeHandlers2 removeObjectForKey:propertyCopy];
    }

    objc_sync_exit(connectionPropertyChangeHandlers);
  }
}

- (void)setHandler:(id)handler forEndpointProperty:(id)property
{
  v22 = *MEMORY[0x277D85DE8];
  handlerCopy = handler;
  propertyCopy = property;
  if (gLogObjects)
  {
    v8 = gNumLogObjects < 1;
  }

  else
  {
    v8 = 1;
  }

  if (v8)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      [ACCTransportClient serverConnection];
    }

    v10 = MEMORY[0x277D86220];
    v9 = MEMORY[0x277D86220];
  }

  else
  {
    v10 = *gLogObjects;
  }

  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    v11 = "set";
    v17 = "[ACCTransportClient setHandler:forEndpointProperty:]";
    v16 = 136315650;
    if (!handlerCopy)
    {
      v11 = "reset";
    }

    v18 = 2080;
    v19 = v11;
    v20 = 2112;
    v21 = propertyCopy;
    _os_log_impl(&dword_221CB0000, v10, OS_LOG_TYPE_DEFAULT, "%s: %s eventHandler for property %@", &v16, 0x20u);
  }

  if (propertyCopy)
  {
    endpointPropertyChangeHandlers = [(ACCTransportClient *)self endpointPropertyChangeHandlers];
    objc_sync_enter(endpointPropertyChangeHandlers);
    endpointPropertyChangeHandlers2 = [(ACCTransportClient *)self endpointPropertyChangeHandlers];
    if (handlerCopy)
    {
      v14 = _Block_copy(handlerCopy);
      [endpointPropertyChangeHandlers2 setObject:v14 forKey:propertyCopy];
    }

    else
    {
      [endpointPropertyChangeHandlers2 removeObjectForKey:propertyCopy];
    }

    objc_sync_exit(endpointPropertyChangeHandlers);
  }

  v15 = *MEMORY[0x277D85DE8];
}

- (void)setSecureTunnelDataReceiveHandler:(id)handler forEndpoint:(id)endpoint
{
  v25 = *MEMORY[0x277D85DE8];
  handlerCopy = handler;
  endpointCopy = endpoint;
  if (gLogObjects)
  {
    v8 = gNumLogObjects < 1;
  }

  else
  {
    v8 = 1;
  }

  if (v8)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      [ACCTransportClient serverConnection];
    }

    v10 = MEMORY[0x277D86220];
    v9 = MEMORY[0x277D86220];
  }

  else
  {
    v10 = *gLogObjects;
  }

  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    v11 = "set";
    v20 = "[ACCTransportClient setSecureTunnelDataReceiveHandler:forEndpoint:]";
    v19 = 136315650;
    if (!handlerCopy)
    {
      v11 = "reset";
    }

    v21 = 2080;
    v22 = v11;
    v23 = 2112;
    v24 = endpointCopy;
    _os_log_impl(&dword_221CB0000, v10, OS_LOG_TYPE_DEFAULT, "%s: %s eventHandler for endpoint %@", &v19, 0x20u);
  }

  if (endpointCopy)
  {
    endpointSecureTunnelDataHandlers = [(ACCTransportClient *)self endpointSecureTunnelDataHandlers];
    objc_sync_enter(endpointSecureTunnelDataHandlers);
    endpointSecureTunnelDataHandlers2 = [(ACCTransportClient *)self endpointSecureTunnelDataHandlers];
    if (handlerCopy)
    {
      v14 = _Block_copy(handlerCopy);
      [endpointSecureTunnelDataHandlers2 setObject:v14 forKey:endpointCopy];
    }

    else
    {
      [endpointSecureTunnelDataHandlers2 removeObjectForKey:endpointCopy];
    }

    objc_sync_exit(endpointSecureTunnelDataHandlers);
    serverConnection = [(ACCTransportClient *)self serverConnection];
    v16 = serverConnection;
    if (serverConnection)
    {
      v17 = [serverConnection synchronousRemoteObjectProxyWithErrorHandler:&__block_literal_global_210];
      [v17 enableSecureTunnelDataReceiveHandlerForEndpoint:endpointCopy];
    }
  }

  v18 = *MEMORY[0x277D85DE8];
}

void __68__ACCTransportClient_setSecureTunnelDataReceiveHandler_forEndpoint___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  if (gLogObjects)
  {
    v3 = gNumLogObjects < 1;
  }

  else
  {
    v3 = 1;
  }

  if (v3)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      [ACCTransportClient serverConnection];
    }

    v5 = MEMORY[0x277D86220];
    v4 = MEMORY[0x277D86220];
  }

  else
  {
    v5 = *gLogObjects;
  }

  if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
  {
    __58__ACCConnectionInfo_copyLocalizedAccessoryNameFromDaemon___block_invoke_cold_2();
  }
}

void __74__ACCTransportClient_processOutgoingSecureTunnelData_forEndpoint_forType___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  if (gLogObjects)
  {
    v3 = gNumLogObjects < 1;
  }

  else
  {
    v3 = 1;
  }

  if (v3)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      [ACCTransportClient serverConnection];
    }

    v5 = MEMORY[0x277D86220];
    v4 = MEMORY[0x277D86220];
  }

  else
  {
    v5 = *gLogObjects;
  }

  if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
  {
    __58__ACCConnectionInfo_copyLocalizedAccessoryNameFromDaemon___block_invoke_cold_2();
  }
}

void __74__ACCTransportClient_processOutgoingSecureTunnelData_forEndpoint_forType___block_invoke_213(uint64_t a1, char a2)
{
  if (gLogObjects)
  {
    v4 = gNumLogObjects < 1;
  }

  else
  {
    v4 = 1;
  }

  if (v4)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      [ACCTransportClient serverConnection];
    }

    v6 = MEMORY[0x277D86220];
    v5 = MEMORY[0x277D86220];
  }

  else
  {
    v6 = *gLogObjects;
  }

  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
  {
    __74__ACCTransportClient_processOutgoingSecureTunnelData_forEndpoint_forType___block_invoke_213_cold_2(a1);
  }

  *(*(*(a1 + 40) + 8) + 24) = a2;
}

- (BOOL)processIncomingData:(id)data forEndpointWithUUID:(id)d
{
  dataCopy = data;
  dCopy = d;
  v16 = 0;
  v17 = &v16;
  v18 = 0x2020000000;
  v19 = 0;
  kdebug_trace();
  serverConnection = [(ACCTransportClient *)self serverConnection];
  v9 = serverConnection;
  if (serverConnection)
  {
    v10 = [serverConnection synchronousRemoteObjectProxyWithErrorHandler:&__block_literal_global_215_0];
    v13[0] = MEMORY[0x277D85DD0];
    v13[1] = 3221225472;
    v13[2] = __62__ACCTransportClient_processIncomingData_forEndpointWithUUID___block_invoke_216;
    v13[3] = &unk_2784871E8;
    v14 = dCopy;
    v15 = &v16;
    [v10 processIncomingData:dataCopy forEndpointWithUUID:v14 withReply:v13];
  }

  v11 = *(v17 + 24);

  _Block_object_dispose(&v16, 8);
  return v11;
}

void __62__ACCTransportClient_processIncomingData_forEndpointWithUUID___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  if (gLogObjects)
  {
    v3 = gNumLogObjects < 1;
  }

  else
  {
    v3 = 1;
  }

  if (v3)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      [ACCTransportClient serverConnection];
    }

    v5 = MEMORY[0x277D86220];
    v4 = MEMORY[0x277D86220];
  }

  else
  {
    v5 = *gLogObjects;
  }

  if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
  {
    __58__ACCConnectionInfo_copyLocalizedAccessoryNameFromDaemon___block_invoke_cold_2();
  }
}

void __62__ACCTransportClient_processIncomingData_forEndpointWithUUID___block_invoke_216(uint64_t a1, char a2)
{
  if (gLogObjects)
  {
    v4 = gNumLogObjects < 1;
  }

  else
  {
    v4 = 1;
  }

  if (v4)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      [ACCTransportClient serverConnection];
    }

    v6 = MEMORY[0x277D86220];
    v5 = MEMORY[0x277D86220];
  }

  else
  {
    v6 = *gLogObjects;
  }

  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
  {
    __62__ACCTransportClient_processIncomingData_forEndpointWithUUID___block_invoke_216_cold_2(a1);
  }

  *(*(*(a1 + 40) + 8) + 24) = a2;
}

uint64_t __34__ACCTransportClient_sharedClient__block_invoke(uint64_t a1)
{
  sharedClient_sharedInstance = [objc_alloc(*(a1 + 32)) _init];

  return MEMORY[0x2821F96F8]();
}

- (ACCTransportClientDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)_init
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0_4();
  OUTLINED_FUNCTION_3_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x18u);
  v5 = *MEMORY[0x277D85DE8];
}

- (void)serverConnection
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_3_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x12u);
  v5 = *MEMORY[0x277D85DE8];
}

- (void)receivedSecureTunnelData:forEndpoint:.cold.2()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_4_3();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0x16u);
  v5 = *MEMORY[0x277D85DE8];
}

void __74__ACCTransportClient_processOutgoingSecureTunnelData_forEndpoint_forType___block_invoke_213_cold_2(uint64_t a1)
{
  v9 = *MEMORY[0x277D85DE8];
  v7 = *(a1 + 48);
  v8 = *(a1 + 32);
  OUTLINED_FUNCTION_4_3();
  _os_log_debug_impl(v1, v2, v3, v4, v5, 0x18u);
  v6 = *MEMORY[0x277D85DE8];
}

void __62__ACCTransportClient_processIncomingData_forEndpointWithUUID___block_invoke_216_cold_2(uint64_t a1)
{
  v8 = *MEMORY[0x277D85DE8];
  v7 = *(a1 + 32);
  OUTLINED_FUNCTION_4_3();
  _os_log_debug_impl(v1, v2, v3, v4, v5, 0x12u);
  v6 = *MEMORY[0x277D85DE8];
}

@end