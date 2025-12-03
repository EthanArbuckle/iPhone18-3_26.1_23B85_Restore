@interface MSNPillDataSourceServer
- (BOOL)listener:(id)listener shouldAcceptNewConnection:(id)connection;
- (BOOL)shouldQueryPillDataSource;
- (MSNPillDataSourceServer)initWithQueue:(id)queue;
- (void)_callingDataUpdatedWithData:(id)data;
- (void)dealloc;
- (void)fetchPillRegistrationForProcess:(id)process withCompletion:(id)completion;
- (void)registerPillDataSourceForIdentifiers:(id)identifiers;
@end

@implementation MSNPillDataSourceServer

- (MSNPillDataSourceServer)initWithQueue:(id)queue
{
  queueCopy = queue;
  v13.receiver = self;
  v13.super_class = MSNPillDataSourceServer;
  v6 = [(MSNPillDataSourceServer *)&v13 init];
  if (v6)
  {
    array = [MEMORY[0x277CBEB18] array];
    activeDataSources = v6->_activeDataSources;
    v6->_activeDataSources = array;

    objc_storeStrong(&v6->_queue, queue);
    queue = v6->_queue;
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __41__MSNPillDataSourceServer_initWithQueue___block_invoke;
    block[3] = &unk_2798A3D68;
    v12 = v6;
    dispatch_sync(queue, block);
  }

  return v6;
}

void __41__MSNPillDataSourceServer_initWithQueue___block_invoke(uint64_t a1)
{
  v26 = 0;
  v27 = &v26;
  v28 = 0x2050000000;
  v2 = getSTDynamicActivityAttributionMonitorClass_softClass;
  v29 = getSTDynamicActivityAttributionMonitorClass_softClass;
  if (!getSTDynamicActivityAttributionMonitorClass_softClass)
  {
    v21 = MEMORY[0x277D85DD0];
    v22 = 3221225472;
    v23 = __getSTDynamicActivityAttributionMonitorClass_block_invoke;
    v24 = &unk_2798A3E08;
    v25 = &v26;
    __getSTDynamicActivityAttributionMonitorClass_block_invoke(&v21);
    v2 = v27[3];
  }

  v3 = v2;
  _Block_object_dispose(&v26, 8);
  v4 = objc_alloc_init(v2);
  v5 = *(a1 + 32);
  v6 = *(v5 + 32);
  *(v5 + 32) = v4;

  [*(*(a1 + 32) + 32) activate];
  objc_initWeak(&location, *(a1 + 32));
  v26 = 0;
  v27 = &v26;
  v28 = 0x2050000000;
  v7 = getSTCallingStatusDomainClass_softClass;
  v29 = getSTCallingStatusDomainClass_softClass;
  if (!getSTCallingStatusDomainClass_softClass)
  {
    v21 = MEMORY[0x277D85DD0];
    v22 = 3221225472;
    v23 = __getSTCallingStatusDomainClass_block_invoke;
    v24 = &unk_2798A3E08;
    v25 = &v26;
    __getSTCallingStatusDomainClass_block_invoke(&v21);
    v7 = v27[3];
  }

  v8 = v7;
  _Block_object_dispose(&v26, 8);
  v9 = objc_alloc_init(v7);
  v10 = *(a1 + 32);
  v11 = *(v10 + 40);
  *(v10 + 40) = v9;

  v12 = *(*(a1 + 32) + 40);
  v18[0] = MEMORY[0x277D85DD0];
  v18[1] = 3221225472;
  v18[2] = __41__MSNPillDataSourceServer_initWithQueue___block_invoke_2;
  v18[3] = &unk_2798A3D40;
  objc_copyWeak(&v19, &location);
  [v12 observeDataWithBlock:v18];
  v13 = *(a1 + 32);
  v14 = [v13[5] data];
  [v13 _callingDataUpdatedWithData:v14];

  v15 = [objc_alloc(MEMORY[0x277CCAE98]) initWithMachServiceName:@"com.apple.mediasafetynet.pill"];
  v16 = *(a1 + 32);
  v17 = *(v16 + 24);
  *(v16 + 24) = v15;

  [*(*(a1 + 32) + 24) setDelegate:?];
  [*(*(a1 + 32) + 24) resume];
  objc_destroyWeak(&v19);
  objc_destroyWeak(&location);
}

void __41__MSNPillDataSourceServer_initWithQueue___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v5 = [WeakRetained queue];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __41__MSNPillDataSourceServer_initWithQueue___block_invoke_3;
  v8[3] = &unk_2798A3D18;
  v9 = WeakRetained;
  v10 = v3;
  v6 = v3;
  v7 = WeakRetained;
  dispatch_async(v5, v8);
}

- (void)_callingDataUpdatedWithData:(id)data
{
  dataCopy = data;
  queue = [(MSNPillDataSourceServer *)self queue];
  dispatch_assert_queue_V2(queue);

  [(MSNPillDataSourceServer *)self setCallingData:dataCopy];
}

- (void)dealloc
{
  [(STDynamicActivityAttributionMonitor *)self->_systemStatusDynamicAttributionMonitor invalidate];
  v3.receiver = self;
  v3.super_class = MSNPillDataSourceServer;
  [(MSNPillDataSourceServer *)&v3 dealloc];
}

- (BOOL)shouldQueryPillDataSource
{
  queue = [(MSNPillDataSourceServer *)self queue];
  dispatch_assert_queue_V2(queue);

  systemStatusDynamicAttributionMonitor = [(MSNPillDataSourceServer *)self systemStatusDynamicAttributionMonitor];
  currentAttributions = [systemStatusDynamicAttributionMonitor currentAttributions];
  if ([currentAttributions count])
  {
    activeDataSources = [(MSNPillDataSourceServer *)self activeDataSources];
    v7 = [activeDataSources count] != 0;
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (void)fetchPillRegistrationForProcess:(id)process withCompletion:(id)completion
{
  v58 = *MEMORY[0x277D85DE8];
  processCopy = process;
  completionCopy = completion;
  selfCopy = self;
  queue = [(MSNPillDataSourceServer *)self queue];
  dispatch_assert_queue_V2(queue);

  v50 = 0;
  v51 = &v50;
  v52 = 0x2020000000;
  v53 = 0;
  activeDataSources = [(MSNPillDataSourceServer *)self activeDataSources];
  LODWORD(self) = [activeDataSources count] == 0;

  if (self)
  {
    v30 = MSNLog();
    if (os_log_type_enabled(v30, OS_LOG_TYPE_DEBUG))
    {
      [MSNPillDataSourceServer fetchPillRegistrationForProcess:v30 withCompletion:?];
    }

    completionCopy[2](completionCopy, *(v51 + 6));
  }

  else
  {
    v48 = 0u;
    v49 = 0u;
    v46 = 0u;
    v47 = 0u;
    systemStatusDynamicAttributionMonitor = [(MSNPillDataSourceServer *)selfCopy systemStatusDynamicAttributionMonitor];
    currentAttributions = [systemStatusDynamicAttributionMonitor currentAttributions];

    v10 = [currentAttributions countByEnumeratingWithState:&v46 objects:v57 count:16];
    if (v10)
    {
      v11 = *v47;
LABEL_4:
      v12 = 0;
      while (1)
      {
        if (*v47 != v11)
        {
          objc_enumerationMutation(currentAttributions);
        }

        v13 = *(*(&v46 + 1) + 8 * v12);
        clientExecutablePath = [v13 clientExecutablePath];
        lastPathComponent = [clientExecutablePath lastPathComponent];
        v16 = [lastPathComponent isEqualToString:processCopy];

        if (v16)
        {
          break;
        }

        if (v10 == ++v12)
        {
          v10 = [currentAttributions countByEnumeratingWithState:&v46 objects:v57 count:16];
          if (v10)
          {
            goto LABEL_4;
          }

          goto LABEL_10;
        }
      }

      v17 = v13;

      if (!v17)
      {
        goto LABEL_25;
      }

      v18 = dispatch_group_create();
      v42 = 0u;
      v43 = 0u;
      v44 = 0u;
      v45 = 0u;
      activeDataSources2 = [(MSNPillDataSourceServer *)selfCopy activeDataSources];
      v20 = [activeDataSources2 countByEnumeratingWithState:&v42 objects:v56 count:16];
      if (v20)
      {
        v22 = *v43;
        *&v21 = 138412290;
        v32 = v21;
        do
        {
          for (i = 0; i != v20; ++i)
          {
            if (*v43 != v22)
            {
              objc_enumerationMutation(activeDataSources2);
            }

            connection = [*(*(&v42 + 1) + 8 * i) connection];
            remoteObjectProxy = [connection remoteObjectProxy];

            if (remoteObjectProxy)
            {
              dispatch_group_enter(v18);
              bundleIdentifier = [v17 bundleIdentifier];
              v39[0] = MEMORY[0x277D85DD0];
              v39[1] = 3221225472;
              v39[2] = __74__MSNPillDataSourceServer_fetchPillRegistrationForProcess_withCompletion___block_invoke;
              v39[3] = &unk_2798A3D90;
              v39[4] = selfCopy;
              v41 = &v50;
              v40 = v18;
              [remoteObjectProxy currentStatusDescriptorForIdentifier:bundleIdentifier reply:v39];
            }

            else
            {
              *(v51 + 6) = 1;
              v27 = MSNLog();
              if (os_log_type_enabled(v27, OS_LOG_TYPE_DEBUG))
              {
                *buf = v32;
                v55 = processCopy;
                _os_log_debug_impl(&dword_258731000, v27, OS_LOG_TYPE_DEBUG, "Dont have data source tracking the attribution for client: %@", buf, 0xCu);
              }

              completionCopy[2](completionCopy, *(v51 + 6));
            }
          }

          v20 = [activeDataSources2 countByEnumeratingWithState:&v42 objects:v56 count:16];
        }

        while (v20);
      }

      queue2 = [(MSNPillDataSourceServer *)selfCopy queue];
      block[0] = MEMORY[0x277D85DD0];
      block[1] = 3221225472;
      block[2] = __74__MSNPillDataSourceServer_fetchPillRegistrationForProcess_withCompletion___block_invoke_27;
      block[3] = &unk_2798A3DB8;
      v37 = completionCopy;
      v38 = &v50;
      dispatch_group_notify(v18, queue2, block);
    }

    else
    {
LABEL_10:

LABEL_25:
      v29 = MSNLog();
      if (os_log_type_enabled(v29, OS_LOG_TYPE_DEBUG))
      {
        [MSNPillDataSourceServer fetchPillRegistrationForProcess:processCopy withCompletion:v29];
      }

      completionCopy[2](completionCopy, *(v51 + 6));
    }
  }

  _Block_object_dispose(&v50, 8);

  v31 = *MEMORY[0x277D85DE8];
}

void __74__MSNPillDataSourceServer_fetchPillRegistrationForProcess_withCompletion___block_invoke(void *a1, void *a2)
{
  if (a2)
  {
    v3 = a1[4];
    v4 = a2;
    v5 = [v3 callingData];
    v6 = [v5 callDescriptors];
    v7 = [v6 containsObject:v4];

    if (v7)
    {
      v8 = 2;
    }

    else
    {
      v8 = 3;
    }
  }

  else
  {
    v8 = 3;
  }

  *(*(a1[6] + 8) + 24) = v8;
  v9 = a1[5];

  dispatch_group_leave(v9);
}

- (BOOL)listener:(id)listener shouldAcceptNewConnection:(id)connection
{
  connectionCopy = connection;
  v6 = [connectionCopy valueForEntitlement:@"com.apple.private.mediasafetynet.pilldatasource"];
  bOOLValue = [v6 BOOLValue];

  if (bOOLValue)
  {
    v8 = [MEMORY[0x277CCAE90] interfaceWithProtocol:&unk_2869B57C8];
    [connectionCopy setExportedInterface:v8];

    v9 = [MEMORY[0x277CCAE90] interfaceWithProtocol:&unk_2869B6450];
    [connectionCopy setRemoteObjectInterface:v9];

    [connectionCopy setExportedObject:self];
    queue = [(MSNPillDataSourceServer *)self queue];
    [connectionCopy _setQueue:queue];

    v14 = MEMORY[0x277D85DD0];
    v15 = 3221225472;
    v16 = __62__MSNPillDataSourceServer_listener_shouldAcceptNewConnection___block_invoke;
    v17 = &unk_2798A3D18;
    selfCopy = self;
    v11 = connectionCopy;
    v19 = v11;
    v12 = MEMORY[0x259C893D0](&v14);
    [v11 setInterruptionHandler:{v12, v14, v15, v16, v17, selfCopy}];
    [v11 setInvalidationHandler:v12];
    [v11 resume];
  }

  return bOOLValue;
}

void __62__MSNPillDataSourceServer_listener_shouldAcceptNewConnection___block_invoke(uint64_t a1)
{
  v2 = MSNLog();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_258731000, v2, OS_LOG_TYPE_DEFAULT, "Connection gone.", buf, 2u);
  }

  v4 = *(a1 + 32);
  v3 = *(a1 + 40);
  v5 = *(v4 + 16);
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __62__MSNPillDataSourceServer_listener_shouldAcceptNewConnection___block_invoke_39;
  v6[3] = &unk_2798A3D18;
  v6[4] = v4;
  v7 = v3;
  dispatch_async(v5, v6);
}

void __62__MSNPillDataSourceServer_listener_shouldAcceptNewConnection___block_invoke_39(uint64_t a1)
{
  v19 = *MEMORY[0x277D85DE8];
  v2 = [MEMORY[0x277CBEB18] array];
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v3 = *(*(a1 + 32) + 8);
  v4 = [v3 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v15;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v15 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = *(*(&v14 + 1) + 8 * i);
        v9 = [v8 connection];
        v10 = *(a1 + 40);

        if (v9 == v10)
        {
          [v2 addObject:v8];
        }
      }

      v5 = [v3 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v5);
  }

  v11 = *(*(a1 + 32) + 8);
  v12 = [v2 copy];
  [v11 removeObjectsInArray:v12];

  v13 = *MEMORY[0x277D85DE8];
}

- (void)registerPillDataSourceForIdentifiers:(id)identifiers
{
  identifiersCopy = identifiers;
  currentConnection = [MEMORY[0x277CCAE80] currentConnection];
  queue = [(MSNPillDataSourceServer *)self queue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __64__MSNPillDataSourceServer_registerPillDataSourceForIdentifiers___block_invoke;
  block[3] = &unk_2798A3DE0;
  v10 = currentConnection;
  v11 = identifiersCopy;
  selfCopy = self;
  v7 = identifiersCopy;
  v8 = currentConnection;
  dispatch_async(queue, block);
}

void __64__MSNPillDataSourceServer_registerPillDataSourceForIdentifiers___block_invoke(uint64_t a1)
{
  v12 = *MEMORY[0x277D85DE8];
  v2 = MSNLog();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    v4 = *(a1 + 40);
    v8 = 138412546;
    v9 = v3;
    v10 = 2112;
    v11 = v4;
    _os_log_impl(&dword_258731000, v2, OS_LOG_TYPE_DEFAULT, "Current connection (%@) registering with identifiers: %@", &v8, 0x16u);
  }

  v5 = [*(a1 + 48) activeDataSources];
  v6 = [[MSNPillDataSource alloc] initWithConnection:*(a1 + 32) identifiers:*(a1 + 40)];
  [v5 addObject:v6];

  v7 = *MEMORY[0x277D85DE8];
}

- (void)fetchPillRegistrationForProcess:(uint64_t)a1 withCompletion:(NSObject *)a2 .cold.1(uint64_t a1, NSObject *a2)
{
  v5 = *MEMORY[0x277D85DE8];
  v3 = 138412290;
  v4 = a1;
  _os_log_debug_impl(&dword_258731000, a2, OS_LOG_TYPE_DEBUG, "Dont have matching attribution for client: %@", &v3, 0xCu);
  v2 = *MEMORY[0x277D85DE8];
}

@end