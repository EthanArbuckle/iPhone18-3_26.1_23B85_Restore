@interface _CDUserContextServerClient
+ (id)clientInterface;
+ (id)clientOfService:(id)a3 withConnection:(id)a4 andContext:(id)a5;
+ (id)serverInterface;
- (BOOL)isMDCSNeededForKeyPath:(id)a3;
- (BOOL)isMDCSNeededForKeyPathInKeyPaths:(id)a3;
- (id)deviceIDsForDeviceTypes:(unint64_t)a3;
- (id)deviceIDsSortedByRemoteUserContextProxySourceDeviceUUIDFromDeviceIDs:(id)a3;
- (id)initForService:(id)a3 withConnection:(id)a4 andContext:(id)a5;
- (id)keyPathsSortedByDeviceID:(id)a3;
- (id)remoteDeviceIDs;
- (id)remoteDeviceIDsForRemoteUserContextProxySourceDeviceUUID:(id)a3;
- (id)remoteDevices;
- (id)remoteDevicesForRemoteUserContextProxySourceDeviceUUID:(id)a3;
- (id)remoteUserContextProxySourceDeviceUUIDByDeviceID;
- (id)remoteUserContextProxySourceDeviceUUIDForKeyPath:(id)a3;
- (void)_hasKnowledgeOfPath:(id)a3 handler:(id)a4;
- (void)_propertiesOfPath:(id)a3 handler:(id)a4;
- (void)_propertiesOfRemotePath:(id)a3 handler:(id)a4;
- (void)_valueForPath:(id)a3 handler:(id)a4;
- (void)_valueForRemotePath:(id)a3 handler:(id)a4;
- (void)_valuesForPaths:(id)a3 handler:(id)a4;
- (void)activateDevices:(id)a3 remoteUserContextProxySourceDeviceUUID:(id)a4;
- (void)addObjects:(id)a3 andRemoveObjects:(id)a4 forArrayAtPath:(id)a5 handler:(id)a6;
- (void)addObjects:(id)a3 toArrayAtPath:(id)a4 handler:(id)a5;
- (void)deactivateDevices:(id)a3 remoteUserContextProxySourceDeviceUUID:(id)a4;
- (void)dealloc;
- (void)deregisterAllCallbacks:(BOOL)a3;
- (void)deregisterCallback:(id)a3;
- (void)evaluatePredicate:(id)a3 handler:(id)a4;
- (void)fetchPropertiesOfRemoteKeyPaths:(id)a3 handler:(id)a4;
- (void)fetchPropertiesOfRemoteKeyPaths:(id)a3 remoteUserContextProxySourceDeviceUUID:(id)a4 handler:(id)a5;
- (void)handlePreviouslyFiredRegistration:(id)a3 info:(id)a4;
- (void)hasKnowledgeOfPath:(id)a3 handler:(id)a4;
- (void)performRegistrationCallbackWithRegistration:(id)a3 info:(id)a4;
- (void)propertiesOfPath:(id)a3 handler:(id)a4;
- (void)propertiesOfRemotePath:(id)a3 handler:(id)a4;
- (void)proxyTokenDidUpdate;
- (void)registerCallback:(id)a3;
- (void)removeObjects:(id)a3 fromArrayAtPath:(id)a4 handler:(id)a5;
- (void)removeObjectsMatchingPredicate:(id)a3 fromArrayAtPath:(id)a4 handler:(id)a5;
- (void)setObject:(id)a3 forPath:(id)a4 handler:(id)a5;
- (void)setObject:(id)a3 lastModifiedDate:(id)a4 forContextualKeyPath:(id)a5 handler:(id)a6;
- (void)subscribeToContextValueNotificationsWithRegistration:(id)a3 deviceIDs:(id)a4;
- (void)subscribeToDeviceStatusChangeNotificationsForDeviceTypes:(unint64_t)a3;
- (void)unsubscribeFromContextValueNotificationsWithRegistration:(id)a3 deviceIDs:(id)a4;
- (void)valuesForPaths:(id)a3 handler:(id)a4;
- (void)valuesForPaths:(id)a3 inContextsMatching:(id)a4 handler:(id)a5;
@end

@implementation _CDUserContextServerClient

+ (id)serverInterface
{
  if (serverInterface_onceToken_0 != -1)
  {
    +[_CDUserContextServerClient serverInterface];
  }

  v3 = serverInterface_serverInterface_0;

  return v3;
}

+ (id)clientInterface
{
  if (clientInterface_onceToken_0 != -1)
  {
    +[_CDUserContextServerClient clientInterface];
  }

  v3 = clientInterface_clientInterface_0;

  return v3;
}

- (id)initForService:(id)a3 withConnection:(id)a4 andContext:(id)a5
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v43.receiver = self;
  v43.super_class = _CDUserContextServerClient;
  v12 = [(_CDUserContextServerClient *)&v43 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_service, a3);
    objc_storeStrong(&v13->_userContext, a5);
    v14 = _CDProcessNameForXPCConnection();
    v15 = [MEMORY[0x1E696AEC0] stringWithFormat:@"contextstored.client.queue [%@]", v14];
    v16 = [v15 UTF8String];
    v17 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v18 = dispatch_queue_create(v16, v17);
    queue = v13->_queue;
    v13->_queue = v18;

    v20 = [MEMORY[0x1E695DFA8] set];
    wakingRegistrations = v13->_wakingRegistrations;
    v13->_wakingRegistrations = v20;

    v22 = [MEMORY[0x1E695DFA8] set];
    nonWakingRegistration = v13->_nonWakingRegistration;
    v13->_nonWakingRegistration = v22;

    objc_storeStrong(&v13->_clientConnection, a4);
    v24 = [MEMORY[0x1E696AEC0] stringWithFormat:@"contextstored.client.activateMonitorQueue [%@]", v14];
    v25 = [v24 UTF8String];
    v26 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v27 = dispatch_queue_create(v25, v26);
    activateMonitorQueue = v13->_activateMonitorQueue;
    v13->_activateMonitorQueue = v27;

    v29 = [objc_opt_class() clientInterface];
    [(NSXPCConnection *)v13->_clientConnection setRemoteObjectInterface:v29];

    v30 = [objc_opt_class() serverInterface];
    [(NSXPCConnection *)v13->_clientConnection setExportedInterface:v30];

    [(NSXPCConnection *)v13->_clientConnection setExportedObject:v13];
    objc_initWeak(&location, v9);
    objc_initWeak(&from, v13);
    clientConnection = v13->_clientConnection;
    v38[0] = MEMORY[0x1E69E9820];
    v38[1] = 3221225472;
    v38[2] = __71___CDUserContextServerClient_initForService_withConnection_andContext___block_invoke;
    v38[3] = &unk_1E7886BA0;
    objc_copyWeak(&v39, &location);
    objc_copyWeak(&v40, &from);
    [(NSXPCConnection *)clientConnection setInterruptionHandler:v38];
    v32 = v13->_clientConnection;
    v33 = [(NSXPCConnection *)v32 interruptionHandler];
    [(NSXPCConnection *)v32 setInvalidationHandler:v33];

    [(NSXPCConnection *)v13->_clientConnection resume];
    v34 = [MEMORY[0x1E695DF90] dictionaryWithCapacity:1];
    devicesToActivateByRemoteUserContextProxySourceDeviceUUID = v13->_devicesToActivateByRemoteUserContextProxySourceDeviceUUID;
    v13->_devicesToActivateByRemoteUserContextProxySourceDeviceUUID = v34;

    v36 = [MEMORY[0x1E696AD88] defaultCenter];
    [v36 addObserver:v13 selector:sel_proxyTokenDidUpdate name:@"_CDMDCSProxyTokenUpdated" object:0];

    objc_destroyWeak(&v40);
    objc_destroyWeak(&v39);
    objc_destroyWeak(&from);
    objc_destroyWeak(&location);
  }

  return v13;
}

- (void)dealloc
{
  v3 = [MEMORY[0x1E696AD88] defaultCenter];
  [v3 removeObserver:self name:@"_CDMDCSProxyTokenUpdated" object:0];

  [(NSXPCConnection *)self->_clientConnection invalidate];
  v4.receiver = self;
  v4.super_class = _CDUserContextServerClient;
  [(_CDUserContextServerClient *)&v4 dealloc];
}

+ (id)clientOfService:(id)a3 withConnection:(id)a4 andContext:(id)a5
{
  v7 = a5;
  v8 = a4;
  v9 = a3;
  v10 = [objc_alloc(objc_opt_class()) initForService:v9 withConnection:v8 andContext:v7];

  return v10;
}

- (void)hasKnowledgeOfPath:(id)a3 handler:(id)a4
{
  v16 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  if ([(_CDUserContextService *)self->_service remoteDevicesHaveBeenActivated]|| ![(_CDUserContextServerClient *)self isMDCSNeededForKeyPath:v6])
  {
    [(_CDUserContextServerClient *)self _hasKnowledgeOfPath:v6 handler:v7];
  }

  else
  {
    v8 = [MEMORY[0x1E6997908] mdcsChannel];
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v15 = v6;
      _os_log_impl(&dword_1A9611000, v8, OS_LOG_TYPE_DEFAULT, "Requesting activate devices for %@", buf, 0xCu);
    }

    service = self->_service;
    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 3221225472;
    v11[2] = __57___CDUserContextServerClient_hasKnowledgeOfPath_handler___block_invoke;
    v11[3] = &unk_1E7886BC8;
    v11[4] = self;
    v12 = v6;
    v13 = v7;
    [(_CDUserContextService *)service requestActivateDevicesFromAllSubscribersWithHandler:v11];
  }

  v10 = *MEMORY[0x1E69E9840];
}

- (void)_hasKnowledgeOfPath:(id)a3 handler:(id)a4
{
  v6 = a3;
  v7 = a4;
  activateMonitorQueue = self->_activateMonitorQueue;
  v12 = v7;
  v11 = v6;
  v9 = v7;
  v10 = v6;
  cd_dispatch_async_xpc();
}

- (void)propertiesOfPath:(id)a3 handler:(id)a4
{
  v16 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  if ([(_CDUserContextService *)self->_service remoteDevicesHaveBeenActivated]|| ![(_CDUserContextServerClient *)self isMDCSNeededForKeyPath:v6])
  {
    [(_CDUserContextServerClient *)self _propertiesOfPath:v6 handler:v7];
  }

  else
  {
    v8 = [MEMORY[0x1E6997908] mdcsChannel];
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v15 = v6;
      _os_log_impl(&dword_1A9611000, v8, OS_LOG_TYPE_DEFAULT, "Requesting activate devices for %@", buf, 0xCu);
    }

    service = self->_service;
    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 3221225472;
    v11[2] = __55___CDUserContextServerClient_propertiesOfPath_handler___block_invoke;
    v11[3] = &unk_1E7886BC8;
    v11[4] = self;
    v12 = v6;
    v13 = v7;
    [(_CDUserContextService *)service requestActivateDevicesFromAllSubscribersWithHandler:v11];
  }

  v10 = *MEMORY[0x1E69E9840];
}

- (void)_propertiesOfPath:(id)a3 handler:(id)a4
{
  v6 = a4;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __56___CDUserContextServerClient__propertiesOfPath_handler___block_invoke;
  v8[3] = &unk_1E7886BF0;
  v9 = v6;
  v7 = v6;
  [(_CDUserContextServerClient *)self _valueForPath:a3 handler:v8];
}

- (void)_valueForPath:(id)a3 handler:(id)a4
{
  v6 = a3;
  v7 = a4;
  activateMonitorQueue = self->_activateMonitorQueue;
  v11 = v6;
  v12 = v7;
  v9 = v7;
  v10 = v6;
  cd_dispatch_async_xpc();
}

- (void)propertiesOfRemotePath:(id)a3 handler:(id)a4
{
  v16 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  if ([(_CDUserContextService *)self->_service remoteDevicesHaveBeenActivated]|| ![(_CDUserContextServerClient *)self isMDCSNeededForKeyPath:v6])
  {
    [(_CDUserContextServerClient *)self _propertiesOfRemotePath:v6 handler:v7];
  }

  else
  {
    v8 = [MEMORY[0x1E6997908] mdcsChannel];
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v15 = v6;
      _os_log_impl(&dword_1A9611000, v8, OS_LOG_TYPE_DEFAULT, "Requesting activate devices for %@", buf, 0xCu);
    }

    service = self->_service;
    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 3221225472;
    v11[2] = __61___CDUserContextServerClient_propertiesOfRemotePath_handler___block_invoke;
    v11[3] = &unk_1E7886BC8;
    v11[4] = self;
    v12 = v6;
    v13 = v7;
    [(_CDUserContextService *)service requestActivateDevicesFromAllSubscribersWithHandler:v11];
  }

  v10 = *MEMORY[0x1E69E9840];
}

- (void)_propertiesOfRemotePath:(id)a3 handler:(id)a4
{
  v6 = a4;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __62___CDUserContextServerClient__propertiesOfRemotePath_handler___block_invoke;
  v8[3] = &unk_1E7886BF0;
  v9 = v6;
  v7 = v6;
  [(_CDUserContextServerClient *)self _valueForRemotePath:a3 handler:v8];
}

- (void)_valueForRemotePath:(id)a3 handler:(id)a4
{
  v19[1] = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  if ([v6 isMultiDeviceKeyPath])
  {
    v8 = [(_CDInMemoryUserContext *)self->_userContext propertiesForContextualKeyPath:v6];
    if (v8)
    {
      v9 = v8;
      v10 = [v8 lastModifiedDate];
      [v10 timeIntervalSinceNow];
      v12 = v11;

      if (v12 > -0.2)
      {
        v13 = [MEMORY[0x1E6997908] mdcsChannel];
        if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
        {
          [_CDUserContextServerClient _valueForRemotePath:v6 handler:v9];
        }

        v7[2](v7, v9);
        goto LABEL_12;
      }
    }

    v19[0] = v6;
    v9 = [MEMORY[0x1E695DEC8] arrayWithObjects:v19 count:1];
    v16[0] = MEMORY[0x1E69E9820];
    v16[1] = 3221225472;
    v16[2] = __58___CDUserContextServerClient__valueForRemotePath_handler___block_invoke;
    v16[3] = &unk_1E7886C40;
    v16[4] = self;
    v17 = v6;
    v18 = v7;
    [(_CDUserContextServerClient *)self fetchPropertiesOfRemoteKeyPaths:v9 handler:v16];

LABEL_12:
    goto LABEL_13;
  }

  v14 = [MEMORY[0x1E6997908] mdcsChannel];
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
  {
    [_CDUserContextServerClient _valueForRemotePath:handler:];
  }

  v7[2](v7, 0);
LABEL_13:

  v15 = *MEMORY[0x1E69E9840];
}

- (void)handlePreviouslyFiredRegistration:(id)a3 info:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = os_transaction_create();
  v9 = [v6 qualityOfService];
  queue = self->_queue;
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __69___CDUserContextServerClient_handlePreviouslyFiredRegistration_info___block_invoke;
  v15[3] = &unk_1E7886618;
  v16 = v6;
  v17 = self;
  v18 = v7;
  v19 = v8;
  v11 = v8;
  v12 = v7;
  v13 = v6;
  v14 = dispatch_block_create_with_qos_class(DISPATCH_BLOCK_ENFORCE_QOS_CLASS, v9, 0, v15);
  dispatch_async(queue, v14);
}

- (void)registerCallback:(id)a3
{
  v35 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [v4 isMultiDeviceRegistration];
  if (v5)
  {
    v6 = ![(_CDInMemoryUserContext *)self->_userContext hasMultiDeviceRegistrations];
  }

  else
  {
    v6 = 1;
  }

  objc_initWeak(&location, v4);
  [(_CDUserContextService *)self->_service removeOpenRegistration:v4];
  service = self->_service;
  v28 = 0;
  v8 = [(_CDUserContextService *)service obtainFiredRegistrationMatchingRegistration:v4 info:&v28];
  v9 = v28;
  if (v8)
  {
    [(_CDUserContextServerClient *)self handlePreviouslyFiredRegistration:v4 info:v9];
  }

  else
  {
    if ([v4 mustWake])
    {
      v10 = self->_wakingRegistrations;
      objc_sync_enter(v10);
      [(NSMutableSet *)self->_wakingRegistrations addObject:v4];
    }

    else
    {
      v10 = self->_nonWakingRegistration;
      objc_sync_enter(v10);
      [(NSMutableSet *)self->_nonWakingRegistration addObject:v4];
    }

    objc_sync_exit(v10);

    objc_initWeak(&from, self);
    v24[0] = MEMORY[0x1E69E9820];
    v24[1] = 3221225472;
    v24[2] = __47___CDUserContextServerClient_registerCallback___block_invoke;
    v24[3] = &unk_1E7886CD8;
    objc_copyWeak(&v25, &from);
    objc_copyWeak(&v26, &location);
    [v4 setInformativeCallback:v24];
    activateMonitorQueue = self->_activateMonitorQueue;
    v21[0] = MEMORY[0x1E69E9820];
    v21[1] = 3221225472;
    v21[2] = __47___CDUserContextServerClient_registerCallback___block_invoke_2;
    v21[3] = &unk_1E7886250;
    v12 = v4;
    v22 = v12;
    v23 = self;
    v13 = v21;
    v14 = activateMonitorQueue;
    v15 = os_transaction_create();
    *&block = MEMORY[0x1E69E9820];
    *(&block + 1) = 3221225472;
    v31 = __cd_dispatch_async_capture_tx_block_invoke_0;
    v32 = &unk_1E7886668;
    v33 = v15;
    v34 = v13;
    v16 = v15;
    dispatch_async(v14, &block);

    if (v5)
    {
      v17 = [MEMORY[0x1E6997908] mdcsChannel];
      if (os_log_type_enabled(v17, OS_LOG_TYPE_DEBUG))
      {
        [_CDUserContextServerClient registerCallback:];
      }

      if (v6)
      {
        [(_CDUserContextServerClient *)self subscribeToDeviceStatusChangeNotificationsForDeviceTypes:0xFFFFLL];
      }

      v18 = -[_CDUserContextServerClient deviceIDsForDeviceTypes:](self, "deviceIDsForDeviceTypes:", [v12 deviceTypes]);
      [(_CDUserContextServerClient *)self subscribeToContextValueNotificationsWithRegistration:v12 deviceIDs:v18];
      if (![(_CDUserContextService *)self->_service remoteDevicesHaveBeenActivated])
      {
        v19 = [MEMORY[0x1E6997908] mdcsChannel];
        if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
        {
          LODWORD(block) = 138412290;
          *(&block + 4) = v12;
          _os_log_impl(&dword_1A9611000, v19, OS_LOG_TYPE_DEFAULT, "Requesting activate devices for %@", &block, 0xCu);
        }

        [(_CDUserContextService *)self->_service requestActivateDevicesFromAllSubscribersWithHandler:&__block_literal_global_136];
      }
    }

    objc_destroyWeak(&v26);
    objc_destroyWeak(&v25);
    objc_destroyWeak(&from);
  }

  objc_destroyWeak(&location);
  v20 = *MEMORY[0x1E69E9840];
}

- (void)performRegistrationCallbackWithRegistration:(id)a3 info:(id)a4
{
  v6 = a3;
  v7 = a4;
  queue = self->_queue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __79___CDUserContextServerClient_performRegistrationCallbackWithRegistration_info___block_invoke;
  block[3] = &unk_1E7886228;
  v12 = v6;
  v13 = self;
  v14 = v7;
  v9 = v7;
  v10 = v6;
  dispatch_sync(queue, block);
}

- (void)deregisterAllCallbacks:(BOOL)a3
{
  v3 = a3;
  v26 = *MEMORY[0x1E69E9840];
  v5 = [(_CDInMemoryUserContext *)self->_userContext hasMultiDeviceRegistrations];
  v6 = 56;
  if (v3)
  {
    v6 = 48;
  }

  v7 = *(&self->super.isa + v6);
  objc_sync_enter(v7);
  v8 = [v7 copy];
  [v7 removeAllObjects];
  objc_sync_exit(v7);

  v21 = 0u;
  v22 = 0u;
  v19 = 0u;
  v20 = 0u;
  v9 = v8;
  v10 = [v9 countByEnumeratingWithState:&v19 objects:v25 count:16];
  if (v10)
  {
    v11 = *v20;
    v12 = !v5;
    do
    {
      v13 = 0;
      do
      {
        if (*v20 != v11)
        {
          objc_enumerationMutation(v9);
        }

        v14 = *(*(&v19 + 1) + 8 * v13);
        v15 = [(_CDUserContextService *)self->_service persistence];
        [v15 deleteRegistration:v14];

        [(_CDInMemoryUserContext *)self->_userContext deregisterCallback:v14];
        if ([v14 isMultiDeviceRegistration])
        {
          v16 = [MEMORY[0x1E6997908] mdcsChannel];
          if (os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG))
          {
            *buf = 138412290;
            v24 = v14;
            _os_log_debug_impl(&dword_1A9611000, v16, OS_LOG_TYPE_DEBUG, "Deregistering multi-device callback: %@", buf, 0xCu);
          }

          if (((v12 | [(_CDInMemoryUserContext *)self->_userContext hasMultiDeviceRegistrations]) & 1) == 0)
          {
            [(_CDUserContextServerClient *)self subscribeToDeviceStatusChangeNotificationsForDeviceTypes:0];
          }

          v17 = -[_CDUserContextServerClient deviceIDsForDeviceTypes:](self, "deviceIDsForDeviceTypes:", [v14 deviceTypes]);
          if ([v17 count])
          {
            [(_CDUserContextServerClient *)self unsubscribeFromContextValueNotificationsWithRegistration:v14 deviceIDs:v17];
          }
        }

        ++v13;
      }

      while (v10 != v13);
      v10 = [v9 countByEnumeratingWithState:&v19 objects:v25 count:16];
    }

    while (v10);
  }

  v18 = *MEMORY[0x1E69E9840];
}

- (void)deregisterCallback:(id)a3
{
  v4 = a3;
  if ([v4 isMultiDeviceRegistration])
  {
    v5 = ![(_CDInMemoryUserContext *)self->_userContext hasMultiDeviceRegistrations];
  }

  else
  {
    v5 = 1;
  }

  v6 = [v4 mustWake];
  v7 = 56;
  if (v6)
  {
    v7 = 48;
  }

  v8 = *(&self->super.isa + v7);
  objc_sync_enter(v8);
  [v8 removeObject:v4];
  v9 = [(_CDUserContextService *)self->_service persistence];
  [v9 deleteRegistration:v4];

  [(_CDInMemoryUserContext *)self->_userContext deregisterCallback:v4];
  objc_sync_exit(v8);

  if ([v4 isMultiDeviceRegistration])
  {
    v10 = [MEMORY[0x1E6997908] mdcsChannel];
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
    {
      [_CDUserContextServerClient deregisterCallback:];
    }

    if (((v5 | [(_CDInMemoryUserContext *)self->_userContext hasMultiDeviceRegistrations]) & 1) == 0)
    {
      [(_CDUserContextServerClient *)self subscribeToDeviceStatusChangeNotificationsForDeviceTypes:0];
      v11 = -[_CDUserContextServerClient deviceIDsForDeviceTypes:](self, "deviceIDsForDeviceTypes:", [v4 deviceTypes]);
      if ([v11 count])
      {
        [(_CDUserContextServerClient *)self unsubscribeFromContextValueNotificationsWithRegistration:v4 deviceIDs:v11];
      }
    }
  }
}

- (void)evaluatePredicate:(id)a3 handler:(id)a4
{
  userContext = self->_userContext;
  v7 = a4;
  (*(a4 + 2))(v7, [(_CDInMemoryUserContext *)userContext evaluatePredicate:a3]);
}

- (void)setObject:(id)a3 lastModifiedDate:(id)a4 forContextualKeyPath:(id)a5 handler:(id)a6
{
  v26 = *MEMORY[0x1E69E9840];
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  v14 = [MEMORY[0x1E6997908] mdcsChannel];
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
  {
    v19 = _CDRedactedObjectForKeyPath(v12, v10);
    v20 = 138412802;
    v21 = v12;
    v22 = 2112;
    v23 = v19;
    v24 = 2112;
    v25 = v11;
    _os_log_debug_impl(&dword_1A9611000, v14, OS_LOG_TYPE_DEBUG, "CDUserContext: SET %@ => %@ / %@", &v20, 0x20u);
  }

  v15 = [(_CDInMemoryUserContext *)self->_userContext setObject:v10 returningMetadataForContextualKeyPath:v12];
  v16 = v15;
  if (v15)
  {
    if (v11)
    {
      [v15 setLastModifiedDate:v11];
    }

    v17 = [(_CDUserContextService *)self->_service persistence];
    [v17 saveValue:v16 forKeyPath:v12];
  }

  v13[2](v13, v16 != 0);

  v18 = *MEMORY[0x1E69E9840];
}

- (void)proxyTokenDidUpdate
{
  v17 = *MEMORY[0x1E69E9840];
  v3 = self->_devicesToActivateByRemoteUserContextProxySourceDeviceUUID;
  objc_sync_enter(v3);
  v4 = [(NSMutableDictionary *)self->_devicesToActivateByRemoteUserContextProxySourceDeviceUUID copy];
  objc_sync_exit(v3);

  v14 = 0u;
  v15 = 0u;
  v12 = 0u;
  v13 = 0u;
  v5 = v4;
  v6 = [v5 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v6)
  {
    v7 = *v13;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v13 != v7)
        {
          objc_enumerationMutation(v5);
        }

        v9 = *(*(&v12 + 1) + 8 * i);
        v10 = [v5 objectForKeyedSubscript:{v9, v12}];
        [(_CDUserContextServerClient *)self activateDevices:v10 remoteUserContextProxySourceDeviceUUID:v9];
      }

      v6 = [v5 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v6);
  }

  v11 = *MEMORY[0x1E69E9840];
}

- (void)activateDevices:(id)a3 remoteUserContextProxySourceDeviceUUID:(id)a4
{
  v50 = *MEMORY[0x1E69E9840];
  v35 = a3;
  v36 = a4;
  v33 = [(NSXPCConnection *)self->_clientConnection effectiveUserIdentifier];
  v34 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:?];
  v6 = self->_devicesToActivateByRemoteUserContextProxySourceDeviceUUID;
  objc_sync_enter(v6);
  v7 = [_CDContextQueries keyPathForMDCSProxyTokenWithUserID:v34];
  v8 = [(_CDInMemoryUserContext *)self->_userContext objectForKeyedSubscript:v7];
  if (v8)
  {
    v9 = 0;
  }

  else
  {
    v10 = [MEMORY[0x1E6997908] mdcsChannel];
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
    {
      v11 = [v36 UUIDString];
      -[_CDUserContextServerClient activateDevices:remoteUserContextProxySourceDeviceUUID:].cold.1(v11, [v35 count], v49, v10);
    }

    v9 = v35;
  }

  [(NSMutableDictionary *)self->_devicesToActivateByRemoteUserContextProxySourceDeviceUUID setObject:v9 forKeyedSubscript:v36];

  objc_sync_exit(v6);
  if (v8)
  {
    v12 = [MEMORY[0x1E6997908] mdcsChannel];
    v13 = os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG);

    if (v13)
    {
      v14 = [MEMORY[0x1E6997908] mdcsChannel];
      if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
      {
        [_CDUserContextServerClient activateDevices:v35 remoteUserContextProxySourceDeviceUUID:?];
      }

      v43 = 0u;
      v44 = 0u;
      v41 = 0u;
      v42 = 0u;
      v15 = v35;
      v16 = [v15 countByEnumeratingWithState:&v41 objects:v48 count:16];
      if (v16)
      {
        v17 = *v42;
        do
        {
          v18 = 0;
          do
          {
            if (*v42 != v17)
            {
              objc_enumerationMutation(v15);
            }

            v19 = *(*(&v41 + 1) + 8 * v18);
            v20 = [MEMORY[0x1E6997908] mdcsChannel];
            if (os_log_type_enabled(v20, OS_LOG_TYPE_DEBUG))
            {
              *buf = 138543362;
              v47 = v19;
              _os_log_debug_impl(&dword_1A9611000, v20, OS_LOG_TYPE_DEBUG, "Activating device %{public}@", buf, 0xCu);
            }

            ++v18;
          }

          while (v16 != v18);
          v16 = [v15 countByEnumeratingWithState:&v41 objects:v48 count:16];
        }

        while (v16);
      }
    }

    v21 = [(_CDUserContextService *)self->_service remoteDevicesByDeviceID];
    objc_sync_enter(v21);
    v37 = 0u;
    v38 = 0u;
    v39 = 0u;
    v40 = 0u;
    v22 = v35;
    v23 = [v22 countByEnumeratingWithState:&v37 objects:v45 count:16];
    if (v23)
    {
      v24 = *v38;
      do
      {
        for (i = 0; i != v23; ++i)
        {
          if (*v38 != v24)
          {
            objc_enumerationMutation(v22);
          }

          v26 = *(*(&v37 + 1) + 8 * i);
          v27 = [(_CDUserContextService *)self->_service remoteDevicesByDeviceID];
          v28 = [v26 deviceID];
          [v27 setObject:v26 forKeyedSubscript:v28];
        }

        v23 = [v22 countByEnumeratingWithState:&v37 objects:v45 count:16];
      }

      while (v23);
    }

    [(_CDUserContextService *)self->_service setRemoteDevicesHaveBeenActivated:1];
    objc_sync_exit(v21);

    v29 = [(_CDUserContextService *)self->_service proxySourceDeviceUUIDForUserID:v33];
    v30 = v29 == 0;

    if (v30)
    {
      v31 = [MEMORY[0x1E6997908] mdcsChannel];
      if (os_log_type_enabled(v31, OS_LOG_TYPE_DEBUG))
      {
        [_CDUserContextServerClient activateDevices:v36 remoteUserContextProxySourceDeviceUUID:?];
      }

      [(_CDUserContextService *)self->_service setProxySourceDeviceUUID:v36 forUserID:v33];
    }

    [(_CDInMemoryUserContext *)self->_userContext activateDevices:v22 remoteUserContextProxySourceDeviceUUID:v36];
  }

  v32 = *MEMORY[0x1E69E9840];
}

- (void)deactivateDevices:(id)a3 remoteUserContextProxySourceDeviceUUID:(id)a4
{
  v28 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v8 = [MEMORY[0x1E6997908] mdcsChannel];
  v9 = os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG);

  if (v9)
  {
    v19 = v7;
    v20 = self;
    v10 = [MEMORY[0x1E6997908] mdcsChannel];
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
    {
      [_CDUserContextServerClient deactivateDevices:v6 remoteUserContextProxySourceDeviceUUID:?];
    }

    v23 = 0u;
    v24 = 0u;
    v21 = 0u;
    v22 = 0u;
    v11 = v6;
    v12 = [v11 countByEnumeratingWithState:&v21 objects:v27 count:16];
    if (v12)
    {
      v13 = v12;
      v14 = *v22;
      do
      {
        v15 = 0;
        do
        {
          if (*v22 != v14)
          {
            objc_enumerationMutation(v11);
          }

          v16 = *(*(&v21 + 1) + 8 * v15);
          v17 = [MEMORY[0x1E6997908] mdcsChannel];
          if (os_log_type_enabled(v17, OS_LOG_TYPE_DEBUG))
          {
            *buf = 138543362;
            v26 = v16;
            _os_log_debug_impl(&dword_1A9611000, v17, OS_LOG_TYPE_DEBUG, "Deactivating device %{public}@", buf, 0xCu);
          }

          ++v15;
        }

        while (v13 != v15);
        v13 = [v11 countByEnumeratingWithState:&v21 objects:v27 count:16];
      }

      while (v13);
    }

    v7 = v19;
    self = v20;
  }

  [(_CDInMemoryUserContext *)self->_userContext deactivateDevices:v6 remoteUserContextProxySourceDeviceUUID:v7];

  v18 = *MEMORY[0x1E69E9840];
}

- (void)fetchPropertiesOfRemoteKeyPaths:(id)a3 handler:(id)a4
{
  v41 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v8 = [MEMORY[0x1E6997908] mdcsChannel];
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    [_CDUserContextServerClient fetchPropertiesOfRemoteKeyPaths:handler:];
  }

  v9 = [(_CDUserContextServerClient *)self keyPathsSortedByDeviceID:v6];
  if (![v9 count])
  {
    v7[2](v7, 0);
    goto LABEL_20;
  }

  v27 = v7;
  v25 = v6;
  v10 = [MEMORY[0x1E695DF70] arrayWithCapacity:{objc_msgSend(v9, "count")}];
  v26 = [MEMORY[0x1E695DFA8] setWithCapacity:1];
  v34 = 0u;
  v35 = 0u;
  v36 = 0u;
  v37 = 0u;
  v24 = v9;
  v11 = v9;
  v12 = [v11 countByEnumeratingWithState:&v34 objects:v40 count:16];
  if (!v12)
  {
    goto LABEL_18;
  }

  v13 = v12;
  v14 = *v35;
  do
  {
    for (i = 0; i != v13; ++i)
    {
      if (*v35 != v14)
      {
        objc_enumerationMutation(v11);
      }

      v16 = *(*(&v34 + 1) + 8 * i);
      v17 = [v11 objectForKeyedSubscript:{v16, v24}];
      v18 = [v17 firstObject];
      v19 = [(_CDUserContextServerClient *)self remoteUserContextProxySourceDeviceUUIDForKeyPath:v18];

      if (v19)
      {
        v28[0] = MEMORY[0x1E69E9820];
        v28[1] = 3221225472;
        v28[2] = __70___CDUserContextServerClient_fetchPropertiesOfRemoteKeyPaths_handler___block_invoke;
        v28[3] = &unk_1E7886D00;
        v29 = v26;
        v30 = v10;
        v31 = v16;
        v32 = v11;
        v33 = v27;
        [(_CDUserContextServerClient *)self fetchPropertiesOfRemoteKeyPaths:v17 remoteUserContextProxySourceDeviceUUID:v19 handler:v28];

        v20 = v29;
LABEL_15:

        goto LABEL_16;
      }

      v21 = [MEMORY[0x1E6997908] mdcsChannel];
      if (os_log_type_enabled(v21, OS_LOG_TYPE_DEBUG))
      {
        *buf = 138412290;
        v39 = v16;
        _os_log_debug_impl(&dword_1A9611000, v21, OS_LOG_TYPE_DEBUG, "CDUserContext: Unknown device specified: %@", buf, 0xCu);
      }

      [v10 addObject:v16];
      v22 = [v10 count];
      if (v22 == [v11 count])
      {
        v20 = [v26 anyObject];
        (v27)[2](v27, v20);
        goto LABEL_15;
      }

LABEL_16:
    }

    v13 = [v11 countByEnumeratingWithState:&v34 objects:v40 count:16];
  }

  while (v13);
LABEL_18:

  v9 = v24;
  v6 = v25;
  v7 = v27;
LABEL_20:

  v23 = *MEMORY[0x1E69E9840];
}

- (void)fetchPropertiesOfRemoteKeyPaths:(id)a3 remoteUserContextProxySourceDeviceUUID:(id)a4 handler:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = [MEMORY[0x1E6997908] mdcsChannel];
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
  {
    [_CDUserContextServerClient fetchPropertiesOfRemoteKeyPaths:remoteUserContextProxySourceDeviceUUID:handler:];
  }

  v19 = 0;
  v12 = [_CDXPCContextCodecs fetchPropertiesEventWithRemoteKeyPaths:v8 error:&v19];
  v13 = v19;
  if (v12)
  {
    service = self->_service;
    v16[0] = MEMORY[0x1E69E9820];
    v16[1] = 3221225472;
    v16[2] = __109___CDUserContextServerClient_fetchPropertiesOfRemoteKeyPaths_remoteUserContextProxySourceDeviceUUID_handler___block_invoke;
    v16[3] = &unk_1E7886D28;
    v17 = v8;
    v18 = v10;
    [(_CDUserContextService *)service sendEvent:v12 toProxy:v9 replyHandler:v16];
  }

  else
  {
    v15 = [MEMORY[0x1E6997908] mdcsChannel];
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      [_CDUserContextServerClient fetchPropertiesOfRemoteKeyPaths:remoteUserContextProxySourceDeviceUUID:handler:];
    }

    (*(v10 + 2))(v10, v13);
  }
}

- (void)subscribeToContextValueNotificationsWithRegistration:(id)a3 deviceIDs:(id)a4
{
  v38 = *MEMORY[0x1E69E9840];
  v27 = a3;
  v6 = a4;
  v7 = [MEMORY[0x1E6997908] mdcsChannel];
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    [_CDUserContextServerClient subscribeToContextValueNotificationsWithRegistration:deviceIDs:];
  }

  v26 = self;
  v8 = [(_CDUserContextServerClient *)self deviceIDsSortedByRemoteUserContextProxySourceDeviceUUIDFromDeviceIDs:v6];
  v25 = v6;
  v9 = [MEMORY[0x1E695DFA8] setWithCapacity:{objc_msgSend(v6, "count")}];
  v33 = 0u;
  v34 = 0u;
  v35 = 0u;
  v36 = 0u;
  v10 = v8;
  v11 = [v10 countByEnumeratingWithState:&v33 objects:v37 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = *v34;
    do
    {
      for (i = 0; i != v12; ++i)
      {
        if (*v34 != v13)
        {
          objc_enumerationMutation(v10);
        }

        v15 = *(*(&v33 + 1) + 8 * i);
        v16 = [v10 objectForKeyedSubscript:v15];
        v32 = 0;
        v17 = [_CDXPCContextCodecs subscribeToContextValueNotificationsEventWithRegistration:v27 deviceIDs:v16 error:&v32];
        v18 = v32;
        if (v17)
        {
          service = v26->_service;
          v30[0] = MEMORY[0x1E69E9820];
          v30[1] = 3221225472;
          v30[2] = __93___CDUserContextServerClient_subscribeToContextValueNotificationsWithRegistration_deviceIDs___block_invoke;
          v30[3] = &unk_1E7886D50;
          v31 = v16;
          [(_CDUserContextService *)service sendEvent:v17 toProxy:v15 replyHandler:v30];
          v20 = v31;
        }

        else
        {
          v20 = [MEMORY[0x1E6997908] mdcsChannel];
          if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
          {
            [(_CDUserContextServerClient *)&v28 subscribeToContextValueNotificationsWithRegistration:v29 deviceIDs:v20];
          }
        }

        [v9 addObjectsFromArray:v16];
      }

      v12 = [v10 countByEnumeratingWithState:&v33 objects:v37 count:16];
    }

    while (v12);
  }

  v21 = [v9 count];
  if (v21 != [v25 count])
  {
    v22 = [v25 mutableCopy];
    [v22 minusSet:v9];
    v23 = [MEMORY[0x1E6997908] mdcsChannel];
    if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
    {
      [_CDUserContextServerClient subscribeToContextValueNotificationsWithRegistration:deviceIDs:];
    }
  }

  v24 = *MEMORY[0x1E69E9840];
}

- (void)unsubscribeFromContextValueNotificationsWithRegistration:(id)a3 deviceIDs:(id)a4
{
  v43 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v8 = [MEMORY[0x1E6997908] mdcsChannel];
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    [_CDUserContextServerClient unsubscribeFromContextValueNotificationsWithRegistration:deviceIDs:];
  }

  v29 = self;
  v9 = [(_CDUserContextServerClient *)self deviceIDsSortedByRemoteUserContextProxySourceDeviceUUIDFromDeviceIDs:v7];
  v28 = v7;
  v10 = [MEMORY[0x1E695DFA8] setWithCapacity:{objc_msgSend(v7, "count")}];
  v38 = 0u;
  v39 = 0u;
  v40 = 0u;
  v41 = 0u;
  v11 = v9;
  v12 = [v11 countByEnumeratingWithState:&v38 objects:v42 count:16];
  v30 = v11;
  if (v12)
  {
    v13 = v12;
    v31 = *v39;
    v14 = v6;
    do
    {
      for (i = 0; i != v13; ++i)
      {
        if (*v39 != v31)
        {
          objc_enumerationMutation(v11);
        }

        v16 = *(*(&v38 + 1) + 8 * i);
        v17 = [v11 objectForKeyedSubscript:v16];
        v37 = 0;
        [_CDXPCContextCodecs unsubscribeFromContextValueNotificationsEventWithRegistration:v6 deviceIDs:v17 error:&v37];
        v19 = v18 = v6;
        v20 = v37;
        if (v19)
        {
          service = v29->_service;
          v34[0] = MEMORY[0x1E69E9820];
          v34[1] = 3221225472;
          v34[2] = __97___CDUserContextServerClient_unsubscribeFromContextValueNotificationsWithRegistration_deviceIDs___block_invoke;
          v34[3] = &unk_1E7886D78;
          v35 = v17;
          v36 = v18;
          v22 = service;
          v11 = v30;
          [(_CDUserContextService *)v22 sendEvent:v19 toProxy:v16 replyHandler:v34];

          v23 = v35;
        }

        else
        {
          v23 = [MEMORY[0x1E6997908] mdcsChannel];
          if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
          {
            [(_CDUserContextServerClient *)&v32 unsubscribeFromContextValueNotificationsWithRegistration:v33 deviceIDs:v23];
          }
        }

        [v10 addObjectsFromArray:v17];
        v6 = v14;
      }

      v13 = [v11 countByEnumeratingWithState:&v38 objects:v42 count:16];
    }

    while (v13);
  }

  v24 = [v10 count];
  if (v24 != [v28 count])
  {
    v25 = [v28 mutableCopy];
    [v25 minusSet:v10];
    v26 = [MEMORY[0x1E6997908] mdcsChannel];
    if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
    {
      [_CDUserContextServerClient unsubscribeFromContextValueNotificationsWithRegistration:deviceIDs:];
    }
  }

  v27 = *MEMORY[0x1E69E9840];
}

- (void)subscribeToDeviceStatusChangeNotificationsForDeviceTypes:(unint64_t)a3
{
  v23 = *MEMORY[0x1E69E9840];
  v5 = [MEMORY[0x1E6997908] mdcsChannel];
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    [_CDUserContextServerClient subscribeToDeviceStatusChangeNotificationsForDeviceTypes:];
  }

  v21 = 0;
  v6 = [(_CDXPCCodecs *)_CDXPCContextCodecs keepAliveEventWithKeepAlive:a3 != 0 error:&v21];
  v7 = v21;
  if (v6)
  {
    v8 = +[_CDContextQueries keyPathForMDCSProxies];
    v9 = [(_CDInMemoryUserContext *)self->_userContext objectForKeyedSubscript:v8];
    v10 = [v9 copy];

    v19 = 0u;
    v20 = 0u;
    v17 = 0u;
    v18 = 0u;
    v11 = v10;
    v12 = [v11 countByEnumeratingWithState:&v17 objects:v22 count:16];
    if (v12)
    {
      v13 = v12;
      v14 = *v18;
      do
      {
        v15 = 0;
        do
        {
          if (*v18 != v14)
          {
            objc_enumerationMutation(v11);
          }

          [(_CDUserContextService *)self->_service sendEvent:v6 toProxy:*(*(&v17 + 1) + 8 * v15++) replyHandler:&__block_literal_global_146_0, v17];
        }

        while (v13 != v15);
        v13 = [v11 countByEnumeratingWithState:&v17 objects:v22 count:16];
      }

      while (v13);
    }
  }

  else
  {
    v8 = [MEMORY[0x1E6997908] mdcsChannel];
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      [_CDUserContextServerClient subscribeToDeviceStatusChangeNotificationsForDeviceTypes:];
    }
  }

  v16 = *MEMORY[0x1E69E9840];
}

- (id)remoteUserContextProxySourceDeviceUUIDForKeyPath:(id)a3
{
  v24 = *MEMORY[0x1E69E9840];
  v4 = [a3 deviceID];
  if (v4)
  {
    v5 = +[_CDContextQueries keyPathForMDCSProxies];
    v6 = [(_CDInMemoryUserContext *)self->_userContext objectForKeyedSubscript:v5];
    v7 = [v6 copy];

    v21 = 0u;
    v22 = 0u;
    v19 = 0u;
    v20 = 0u;
    v8 = v7;
    v9 = [v8 countByEnumeratingWithState:&v19 objects:v23 count:16];
    if (v9)
    {
      v10 = v9;
      v11 = 0;
      v12 = *v20;
LABEL_4:
      v13 = 0;
      v14 = v11;
      while (1)
      {
        if (*v20 != v12)
        {
          objc_enumerationMutation(v8);
        }

        v11 = *(*(&v19 + 1) + 8 * v13);

        v15 = [(_CDUserContextServerClient *)self remoteDeviceIDsForRemoteUserContextProxySourceDeviceUUID:v11, v19];
        v16 = [v15 containsObject:v4];

        if (v16)
        {
          break;
        }

        ++v13;
        v14 = v11;
        if (v10 == v13)
        {
          v10 = [v8 countByEnumeratingWithState:&v19 objects:v23 count:16];
          if (v10)
          {
            goto LABEL_4;
          }

          goto LABEL_11;
        }
      }
    }

    else
    {
LABEL_11:
      v11 = 0;
    }
  }

  else
  {
    v11 = 0;
  }

  v17 = *MEMORY[0x1E69E9840];

  return v11;
}

- (id)remoteDevices
{
  v3 = [(_CDUserContextService *)self->_service remoteDevicesByDeviceID];
  objc_sync_enter(v3);
  v4 = [(_CDUserContextService *)self->_service remoteDevicesByDeviceID];
  v5 = [v4 allValues];

  objc_sync_exit(v3);

  return v5;
}

- (id)remoteDeviceIDs
{
  v3 = [(_CDUserContextService *)self->_service remoteDevicesByDeviceID];
  objc_sync_enter(v3);
  v4 = [(_CDUserContextService *)self->_service remoteDevicesByDeviceID];
  v5 = [v4 allKeys];

  objc_sync_exit(v3);

  return v5;
}

- (id)remoteDevicesForRemoteUserContextProxySourceDeviceUUID:(id)a3
{
  v24 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [(_CDUserContextService *)self->_service remoteDevicesByDeviceID];
  objc_sync_enter(v5);
  v6 = MEMORY[0x1E695DF70];
  v7 = [(_CDUserContextService *)self->_service remoteDevicesByDeviceID];
  v8 = [v6 arrayWithCapacity:{objc_msgSend(v7, "count")}];

  [(_CDUserContextServerClient *)self remoteDeviceIDsForRemoteUserContextProxySourceDeviceUUID:v4];
  v21 = 0u;
  v22 = 0u;
  v19 = 0u;
  v9 = v20 = 0u;
  v10 = [v9 countByEnumeratingWithState:&v19 objects:v23 count:16];
  if (v10)
  {
    v11 = *v20;
    do
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v20 != v11)
        {
          objc_enumerationMutation(v9);
        }

        v13 = *(*(&v19 + 1) + 8 * i);
        v14 = [(_CDUserContextService *)self->_service remoteDevicesByDeviceID];
        v15 = [v14 objectForKeyedSubscript:v13];

        if (v15)
        {
          [v8 addObject:v15];
        }
      }

      v10 = [v9 countByEnumeratingWithState:&v19 objects:v23 count:16];
    }

    while (v10);
  }

  v16 = [v8 copy];
  objc_sync_exit(v5);

  v17 = *MEMORY[0x1E69E9840];

  return v16;
}

- (id)remoteDeviceIDsForRemoteUserContextProxySourceDeviceUUID:(id)a3
{
  v4 = [_CDContextQueries keyPathForMDCSDeviceIDsWithProxySourceDeviceUUID:a3];
  v5 = [(_CDInMemoryUserContext *)self->_userContext objectForKeyedSubscript:v4];
  v6 = [v5 copy];

  return v6;
}

- (id)deviceIDsForDeviceTypes:(unint64_t)a3
{
  v32 = *MEMORY[0x1E69E9840];
  v4 = [(_CDUserContextServerClient *)self remoteDevices];
  v5 = [MEMORY[0x1E695DFA8] setWithCapacity:{objc_msgSend(v4, "count")}];
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v6 = v4;
  v7 = [v6 countByEnumeratingWithState:&v19 objects:v31 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v20;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v20 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v19 + 1) + 8 * i);
        if ([v11 matchesDeviceTypes:{a3, v19}])
        {
          v12 = [v11 deviceID];
          [v5 addObject:v12];
        }
      }

      v8 = [v6 countByEnumeratingWithState:&v19 objects:v31 count:16];
    }

    while (v8);
  }

  v13 = [MEMORY[0x1E6997908] mdcsChannel];
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
  {
    v16 = [v5 count];
    v17 = [v6 count];
    v18 = _CDPrettyPrintCollection();
    *buf = 67109890;
    v24 = v16;
    v25 = 1024;
    v26 = v17;
    v27 = 1024;
    v28 = a3;
    v29 = 2114;
    v30 = v18;
    _os_log_debug_impl(&dword_1A9611000, v13, OS_LOG_TYPE_DEBUG, "Found %d out of %d device IDs for device types %X: %{public}@", buf, 0x1Eu);
  }

  v14 = *MEMORY[0x1E69E9840];

  return v5;
}

- (id)keyPathsSortedByDeviceID:(id)a3
{
  v20 = *MEMORY[0x1E69E9840];
  v3 = a3;
  v4 = [MEMORY[0x1E695DF90] dictionaryWithCapacity:1];
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v5 = v3;
  v6 = [v5 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v16;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v16 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v15 + 1) + 8 * i);
        v11 = [v10 deviceID];
        if (v11)
        {
          v12 = [v4 objectForKeyedSubscript:v11];
          if (!v12)
          {
            v12 = [MEMORY[0x1E695DF70] arrayWithCapacity:2];
            [v4 setObject:v12 forKeyedSubscript:v11];
          }

          [v12 addObject:v10];
        }
      }

      v7 = [v5 countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v7);
  }

  v13 = *MEMORY[0x1E69E9840];

  return v4;
}

- (id)remoteUserContextProxySourceDeviceUUIDByDeviceID
{
  v30 = *MEMORY[0x1E69E9840];
  v3 = [MEMORY[0x1E695DF90] dictionaryWithCapacity:1];
  v18 = +[_CDContextQueries keyPathForMDCSProxies];
  v4 = [(_CDInMemoryUserContext *)self->_userContext objectForKeyedSubscript:?];
  v5 = [v4 copy];

  v26 = 0u;
  v27 = 0u;
  v24 = 0u;
  v25 = 0u;
  obj = v5;
  v6 = [obj countByEnumeratingWithState:&v24 objects:v29 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v25;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v25 != v8)
        {
          objc_enumerationMutation(obj);
        }

        v10 = *(*(&v24 + 1) + 8 * i);
        v11 = [(_CDUserContextServerClient *)self remoteDeviceIDsForRemoteUserContextProxySourceDeviceUUID:v10];
        v20 = 0u;
        v21 = 0u;
        v22 = 0u;
        v23 = 0u;
        v12 = [v11 countByEnumeratingWithState:&v20 objects:v28 count:16];
        if (v12)
        {
          v13 = v12;
          v14 = *v21;
          do
          {
            for (j = 0; j != v13; ++j)
            {
              if (*v21 != v14)
              {
                objc_enumerationMutation(v11);
              }

              [v3 setObject:v10 forKeyedSubscript:*(*(&v20 + 1) + 8 * j)];
            }

            v13 = [v11 countByEnumeratingWithState:&v20 objects:v28 count:16];
          }

          while (v13);
        }
      }

      v7 = [obj countByEnumeratingWithState:&v24 objects:v29 count:16];
    }

    while (v7);
  }

  v16 = *MEMORY[0x1E69E9840];

  return v3;
}

- (id)deviceIDsSortedByRemoteUserContextProxySourceDeviceUUIDFromDeviceIDs:(id)a3
{
  v26 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [MEMORY[0x1E695DF90] dictionaryWithCapacity:1];
  v6 = [(_CDUserContextServerClient *)self remoteUserContextProxySourceDeviceUUIDByDeviceID];
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v7 = v4;
  v8 = [v7 countByEnumeratingWithState:&v19 objects:v25 count:16];
  if (v8)
  {
    v10 = v8;
    v11 = *v20;
    *&v9 = 138543362;
    v18 = v9;
    do
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v20 != v11)
        {
          objc_enumerationMutation(v7);
        }

        v13 = *(*(&v19 + 1) + 8 * i);
        v14 = [v6 objectForKeyedSubscript:{v13, v18, v19}];
        if (v14)
        {
          v15 = [v5 objectForKeyedSubscript:v14];
          if (!v15)
          {
            v15 = [MEMORY[0x1E695DF70] arrayWithCapacity:2];
            [v5 setObject:v15 forKeyedSubscript:v14];
          }

          [v15 addObject:v13];
        }

        else
        {
          v15 = [MEMORY[0x1E6997908] mdcsChannel];
          if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
          {
            *buf = v18;
            v24 = v13;
            _os_log_error_impl(&dword_1A9611000, v15, OS_LOG_TYPE_ERROR, "Unknown device id: %{public}@", buf, 0xCu);
          }
        }
      }

      v10 = [v7 countByEnumeratingWithState:&v19 objects:v25 count:16];
    }

    while (v10);
  }

  v16 = *MEMORY[0x1E69E9840];

  return v5;
}

- (BOOL)isMDCSNeededForKeyPath:(id)a3
{
  v3 = a3;
  if ([_CDContextQueries isMDCSKeyPath:v3])
  {
    LOBYTE(v4) = 1;
  }

  else
  {
    v5 = +[_CDDevice localDevice];
    v6 = [v5 deviceID];
    v7 = [v3 deviceID];
    v4 = [v6 isEqualToString:v7] ^ 1;
  }

  return v4;
}

- (BOOL)isMDCSNeededForKeyPathInKeyPaths:(id)a3
{
  v17 = *MEMORY[0x1E69E9840];
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v4 = a3;
  v5 = [v4 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v13;
    while (2)
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v13 != v7)
        {
          objc_enumerationMutation(v4);
        }

        if ([(_CDUserContextServerClient *)self isMDCSNeededForKeyPath:*(*(&v12 + 1) + 8 * i), v12])
        {
          v9 = 1;
          goto LABEL_11;
        }
      }

      v6 = [v4 countByEnumeratingWithState:&v12 objects:v16 count:16];
      if (v6)
      {
        continue;
      }

      break;
    }
  }

  v9 = 0;
LABEL_11:

  v10 = *MEMORY[0x1E69E9840];
  return v9;
}

- (void)setObject:(id)a3 forPath:(id)a4 handler:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = [MEMORY[0x1E6997908] contextChannel];
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
  {
    [_CDUserContextServerClient setObject:v9 forPath:v8 handler:?];
  }

  v12 = +[_CDContextQueries keyPathForAppWebUsageDataDictionaries];
  if ([v9 isEqual:v12])
  {
    v13 = [(_CDUserContextServerClient *)self _shouldUpdateWebUsageForCurrentUser];

    if (!v13)
    {
      goto LABEL_10;
    }
  }

  else
  {
  }

  v14 = [(_CDInMemoryUserContext *)self->_userContext setObject:v8 returningMetadataForContextualKeyPath:v9];
  if (v14)
  {
    v15 = [(_CDUserContextService *)self->_service persistence];
    [v15 saveValue:v14 forKeyPath:v9];
  }

  v10[2](v10, v14 != 0);

LABEL_10:
}

- (void)addObjects:(id)a3 andRemoveObjects:(id)a4 forArrayAtPath:(id)a5 handler:(id)a6
{
  v30 = *MEMORY[0x1E69E9840];
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  v14 = [MEMORY[0x1E6997908] contextChannel];
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
  {
    v15 = _CDRedactedObjectForKeyPath(v12, v10);
    v16 = _CDRedactedObjectForKeyPath(v12, v11);
    v24 = 138412802;
    v25 = v12;
    v26 = 2112;
    v27 = v15;
    v28 = 2112;
    v29 = v16;
    _os_log_impl(&dword_1A9611000, v14, OS_LOG_TYPE_DEFAULT, "CDUserContext: %@ => ADD %@, REMOVE %@", &v24, 0x20u);
  }

  v17 = +[_CDContextQueries keyPathForAppWebUsageDataDictionaries];
  v18 = [v12 isEqual:v17];
  if (v10 && v18)
  {
    v19 = [(_CDUserContextServerClient *)self _shouldUpdateWebUsageForCurrentUser];

    if (!v19)
    {
      goto LABEL_11;
    }
  }

  else
  {
  }

  LOBYTE(v24) = 0;
  v20 = [(_CDInMemoryUserContext *)self->_userContext addObjects:v10 andRemoveObjects:v11 fromArrayAtKeyPath:v12 valueDidChange:&v24];
  v21 = 0;
  if (v24 == 1)
  {
    v22 = [(_CDUserContextService *)self->_service persistence];
    [v22 saveValue:v20 forKeyPath:v12];

    v21 = v24;
  }

  v13[2](v13, v21 & 1);

LABEL_11:
  v23 = *MEMORY[0x1E69E9840];
}

- (void)addObjects:(id)a3 toArrayAtPath:(id)a4 handler:(id)a5
{
  v23 = *MEMORY[0x1E69E9840];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = [MEMORY[0x1E6997908] contextChannel];
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    v12 = _CDRedactedObjectForKeyPath(v9, v8);
    v19 = 138412546;
    v20 = v9;
    v21 = 2112;
    v22 = v12;
    _os_log_impl(&dword_1A9611000, v11, OS_LOG_TYPE_DEFAULT, "CDUserContext: ADD %@ => %@", &v19, 0x16u);
  }

  v13 = +[_CDContextQueries keyPathForAppWebUsageDataDictionaries];
  if ([v9 isEqual:v13])
  {
    v14 = [(_CDUserContextServerClient *)self _shouldUpdateWebUsageForCurrentUser];

    if (!v14)
    {
      goto LABEL_10;
    }
  }

  else
  {
  }

  LOBYTE(v19) = 0;
  v15 = [(_CDInMemoryUserContext *)self->_userContext addObjects:v8 andRemoveObjects:0 fromArrayAtKeyPath:v9 valueDidChange:&v19];
  v16 = 0;
  if (v19 == 1)
  {
    v17 = [(_CDUserContextService *)self->_service persistence];
    [v17 saveValue:v15 forKeyPath:v9];

    v16 = v19;
  }

  v10[2](v10, v16 & 1);

LABEL_10:
  v18 = *MEMORY[0x1E69E9840];
}

- (void)removeObjects:(id)a3 fromArrayAtPath:(id)a4 handler:(id)a5
{
  v21 = *MEMORY[0x1E69E9840];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = [MEMORY[0x1E6997908] contextChannel];
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    v12 = _CDRedactedObjectForKeyPath(v9, v8);
    v17 = 138412546;
    v18 = v9;
    v19 = 2112;
    v20 = v12;
    _os_log_impl(&dword_1A9611000, v11, OS_LOG_TYPE_DEFAULT, "CDUserContext: REMOVE %@ => %@", &v17, 0x16u);
  }

  LOBYTE(v17) = 0;
  v13 = [(_CDInMemoryUserContext *)self->_userContext addObjects:0 andRemoveObjects:v8 fromArrayAtKeyPath:v9 valueDidChange:&v17];
  v14 = 0;
  if (v17 == 1)
  {
    v15 = [(_CDUserContextService *)self->_service persistence];
    [v15 saveValue:v13 forKeyPath:v9];

    v14 = v17;
  }

  v10[2](v10, v14 & 1);

  v16 = *MEMORY[0x1E69E9840];
}

- (void)removeObjectsMatchingPredicate:(id)a3 fromArrayAtPath:(id)a4 handler:(id)a5
{
  v23 = *MEMORY[0x1E69E9840];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = [MEMORY[0x1E6997908] contextChannel];
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412546;
    v20 = v9;
    v21 = 2112;
    v22 = v8;
    _os_log_impl(&dword_1A9611000, v11, OS_LOG_TYPE_DEFAULT, "CDUserContext: Remove object matching predicate %@ => %@", buf, 0x16u);
  }

  if (![_CDPredicateValidator validatePredicate:v8 allowedKeys:0 error:0])
  {
    v16 = [MEMORY[0x1E6997908] contextChannel];
    if (os_log_type_enabled(v16, OS_LOG_TYPE_FAULT))
    {
      [_CDUserContextServerClient removeObjectsMatchingPredicate:fromArrayAtPath:handler:];
    }

    goto LABEL_14;
  }

  if (v8)
  {
    if ([_CDPredicateValidator validatePredicate:v8 allowedKeys:0 error:0])
    {
      [v8 allowEvaluation];
      goto LABEL_7;
    }

    v16 = [MEMORY[0x1E6997908] contextChannel];
    if (os_log_type_enabled(v16, OS_LOG_TYPE_FAULT))
    {
      [_CDUserContextServerClient removeObjectsMatchingPredicate:fromArrayAtPath:handler:];
    }

LABEL_14:

    v10[2](v10, MEMORY[0x1E695E0F0]);
    goto LABEL_15;
  }

LABEL_7:
  userContext = self->_userContext;
  v18 = 0;
  v13 = [(_CDInMemoryUserContext *)userContext removeObjectsMatchingPredicate:v8 fromArrayAtKeyPath:v9 removedObjects:&v18];
  v14 = v18;
  if ([v14 count])
  {
    v15 = [(_CDUserContextService *)self->_service persistence];
    [v15 saveValue:v13 forKeyPath:v9];
  }

  (v10)[2](v10, v14);

LABEL_15:
  v17 = *MEMORY[0x1E69E9840];
}

- (void)valuesForPaths:(id)a3 inContextsMatching:(id)a4 handler:(id)a5
{
  userContext = self->_userContext;
  v9 = a5;
  v10 = [(_CDInMemoryUserContext *)userContext valuesForKeyPaths:a3 inContextsMatchingPredicate:a4];
  (*(a5 + 2))(v9, v10);
}

- (void)valuesForPaths:(id)a3 handler:(id)a4
{
  v16 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  if ([(_CDUserContextService *)self->_service remoteDevicesHaveBeenActivated]|| ![(_CDUserContextServerClient *)self isMDCSNeededForKeyPathInKeyPaths:v6])
  {
    [(_CDUserContextServerClient *)self _valuesForPaths:v6 handler:v7];
  }

  else
  {
    v8 = [MEMORY[0x1E6997908] mdcsChannel];
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v15 = v6;
      _os_log_impl(&dword_1A9611000, v8, OS_LOG_TYPE_DEFAULT, "Requesting activate devices for %@", buf, 0xCu);
    }

    service = self->_service;
    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 3221225472;
    v11[2] = __53___CDUserContextServerClient_valuesForPaths_handler___block_invoke;
    v11[3] = &unk_1E7886BC8;
    v11[4] = self;
    v12 = v6;
    v13 = v7;
    [(_CDUserContextService *)service requestActivateDevicesFromAllSubscribersWithHandler:v11];
  }

  v10 = *MEMORY[0x1E69E9840];
}

- (void)_valuesForPaths:(id)a3 handler:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [v6 count];
  if (v8)
  {
    v9 = v8;
    v24[0] = 0;
    v24[1] = v24;
    v24[2] = 0x3032000000;
    v24[3] = __Block_byref_object_copy__2;
    v24[4] = __Block_byref_object_dispose__2;
    v25 = [MEMORY[0x1E695DF90] dictionaryWithCapacity:v8];
    v23[0] = 0;
    v23[1] = v23;
    v23[2] = 0x2020000000;
    v23[3] = 0;
    v21[0] = 0;
    v21[1] = v21;
    v21[2] = 0x3032000000;
    v21[3] = __Block_byref_object_copy__2;
    v21[4] = __Block_byref_object_dispose__2;
    v22 = os_transaction_create();
    v10 = dispatch_time(0, 10000000000);
    queue = self->_queue;
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __54___CDUserContextServerClient__valuesForPaths_handler___block_invoke;
    block[3] = &unk_1E7886DC0;
    v18 = v24;
    v20 = v9;
    v12 = v7;
    v17 = v12;
    v19 = v21;
    dispatch_after(v10, queue, block);
    activateMonitorQueue = self->_activateMonitorQueue;
    v14 = v6;
    v15 = v12;
    cd_dispatch_async_xpc();

    _Block_object_dispose(v21, 8);
    _Block_object_dispose(v23, 8);
    _Block_object_dispose(v24, 8);
  }

  else
  {
    (*(v7 + 2))(v7, 0);
  }
}

- (void)_valueForRemotePath:handler:.cold.1()
{
  v6 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_8_0();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x1E69E9840];
}

- (void)_valueForRemotePath:(void *)a1 handler:(void *)a2 .cold.2(void *a1, void *a2)
{
  v9 = *MEMORY[0x1E69E9840];
  v2 = _CDRedactedObjectForKeyPath(a1, a2);
  OUTLINED_FUNCTION_6_0();
  OUTLINED_FUNCTION_1_1();
  _os_log_debug_impl(v3, v4, v5, v6, v7, 0x16u);

  v8 = *MEMORY[0x1E69E9840];
}

- (void)registerCallback:.cold.1()
{
  v6 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_8_0();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x1E69E9840];
}

- (void)deregisterCallback:.cold.1()
{
  v6 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_8_0();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x1E69E9840];
}

- (void)activateDevices:(uint8_t *)buf remoteUserContextProxySourceDeviceUUID:(os_log_t)log .cold.1(void *a1, int a2, uint8_t *buf, os_log_t log)
{
  *buf = 138543618;
  *(buf + 4) = a1;
  *(buf + 6) = 1024;
  *(buf + 14) = a2;
  _os_log_debug_impl(&dword_1A9611000, log, OS_LOG_TYPE_DEBUG, "Waiting for proxy token for remote user context proxy %{public}@ before activating %u devices", buf, 0x12u);
}

- (void)activateDevices:(void *)a1 remoteUserContextProxySourceDeviceUUID:.cold.2(void *a1)
{
  v7 = *MEMORY[0x1E69E9840];
  [a1 count];
  OUTLINED_FUNCTION_1_1();
  _os_log_debug_impl(v1, v2, v3, v4, v5, 8u);
  v6 = *MEMORY[0x1E69E9840];
}

- (void)activateDevices:(void *)a1 remoteUserContextProxySourceDeviceUUID:.cold.3(void *a1)
{
  v8 = *MEMORY[0x1E69E9840];
  v1 = [a1 UUIDString];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_1_1();
  _os_log_debug_impl(v2, v3, v4, v5, v6, 0xCu);

  v7 = *MEMORY[0x1E69E9840];
}

- (void)deactivateDevices:(void *)a1 remoteUserContextProxySourceDeviceUUID:.cold.1(void *a1)
{
  v7 = *MEMORY[0x1E69E9840];
  [a1 count];
  OUTLINED_FUNCTION_1_1();
  _os_log_debug_impl(v1, v2, v3, v4, v5, 8u);
  v6 = *MEMORY[0x1E69E9840];
}

- (void)fetchPropertiesOfRemoteKeyPaths:handler:.cold.1()
{
  v7 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_2_1();
  v0 = _CDPrettyPrintCollection();
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_1_1();
  _os_log_debug_impl(v1, v2, v3, v4, v5, 0xCu);

  v6 = *MEMORY[0x1E69E9840];
}

- (void)fetchPropertiesOfRemoteKeyPaths:remoteUserContextProxySourceDeviceUUID:handler:.cold.1()
{
  v7 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_2_1();
  v6 = _CDPrettyPrintCollection();
  OUTLINED_FUNCTION_1_1();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0x16u);

  v5 = *MEMORY[0x1E69E9840];
}

- (void)fetchPropertiesOfRemoteKeyPaths:remoteUserContextProxySourceDeviceUUID:handler:.cold.2()
{
  v7 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_2_1();
  v0 = _CDPrettyPrintCollection();
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_4();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0xCu);

  v6 = *MEMORY[0x1E69E9840];
}

- (void)subscribeToContextValueNotificationsWithRegistration:deviceIDs:.cold.1()
{
  OUTLINED_FUNCTION_10();
  v7 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_2_1();
  v0 = _CDPrettyPrintCollection();
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_1_1();
  _os_log_debug_impl(v1, v2, v3, v4, v5, 0x16u);

  v6 = *MEMORY[0x1E69E9840];
}

- (void)subscribeToContextValueNotificationsWithRegistration:(NSObject *)a3 deviceIDs:.cold.2(uint8_t *a1, _BYTE *a2, NSObject *a3)
{
  *a1 = 0;
  *a2 = 0;
  OUTLINED_FUNCTION_11(&dword_1A9611000, a3, a3, "Invalid registration or remote deviceIDs", a1);
}

- (void)subscribeToContextValueNotificationsWithRegistration:deviceIDs:.cold.3()
{
  v7 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_2_1();
  v0 = _CDPrettyPrintCollection();
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_4();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0xCu);

  v6 = *MEMORY[0x1E69E9840];
}

- (void)unsubscribeFromContextValueNotificationsWithRegistration:deviceIDs:.cold.1()
{
  OUTLINED_FUNCTION_10();
  v7 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_2_1();
  v0 = _CDPrettyPrintCollection();
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_1_1();
  _os_log_debug_impl(v1, v2, v3, v4, v5, 0x16u);

  v6 = *MEMORY[0x1E69E9840];
}

- (void)unsubscribeFromContextValueNotificationsWithRegistration:(NSObject *)a3 deviceIDs:.cold.2(uint8_t *a1, _BYTE *a2, NSObject *a3)
{
  *a1 = 0;
  *a2 = 0;
  OUTLINED_FUNCTION_11(&dword_1A9611000, a3, a3, "Invalid registration or deviceIDs", a1);
}

- (void)unsubscribeFromContextValueNotificationsWithRegistration:deviceIDs:.cold.3()
{
  OUTLINED_FUNCTION_10();
  v7 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_2_1();
  v0 = _CDPrettyPrintCollection();
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_4();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0x16u);

  v6 = *MEMORY[0x1E69E9840];
}

- (void)subscribeToDeviceStatusChangeNotificationsForDeviceTypes:.cold.1()
{
  OUTLINED_FUNCTION_9();
  OUTLINED_FUNCTION_8_0();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)setObject:(void *)a1 forPath:(void *)a2 handler:.cold.1(void *a1, void *a2)
{
  v9 = *MEMORY[0x1E69E9840];
  v2 = _CDRedactedObjectForKeyPath(a1, a2);
  OUTLINED_FUNCTION_6_0();
  OUTLINED_FUNCTION_1_1();
  _os_log_debug_impl(v3, v4, v5, v6, v7, 0x16u);

  v8 = *MEMORY[0x1E69E9840];
}

- (void)removeObjectsMatchingPredicate:fromArrayAtPath:handler:.cold.1()
{
  v3 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_1();
  _os_log_fault_impl(&dword_1A9611000, v0, OS_LOG_TYPE_FAULT, "Client provided invalid predicate to removeObjectsMatchingPredicate:fromArrayAtPath:handler: %@", v2, 0xCu);
  v1 = *MEMORY[0x1E69E9840];
}

- (void)removeObjectsMatchingPredicate:fromArrayAtPath:handler:.cold.2()
{
  v3 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_1();
  _os_log_fault_impl(&dword_1A9611000, v0, OS_LOG_TYPE_FAULT, "Client provided invalid predicate %@", v2, 0xCu);
  v1 = *MEMORY[0x1E69E9840];
}

@end