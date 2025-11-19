@interface _CDClientContext
+ (id)clientInterface;
+ (id)serverInterface;
+ (id)userContext;
+ (id)userContextWithEndpoint:(id)a3;
- (BOOL)addObjects:(id)a3 andRemoveObjects:(id)a4 fromArrayAtKeyPath:(id)a5;
- (BOOL)addObjects:(id)a3 andRemoveObjects:(id)a4 fromArrayAtKeyPath:(id)a5 synchronous:(BOOL)a6 responseQueue:(id)a7 withCompletion:(id)a8;
- (BOOL)addObjects:(id)a3 toArrayAtKeyPath:(id)a4;
- (BOOL)addObjects:(id)a3 toArrayAtKeyPath:(id)a4 synchronous:(BOOL)a5 responseQueue:(id)a6 withCompletion:(id)a7;
- (BOOL)evaluatePredicate:(id)a3;
- (BOOL)hasKnowledgeOfContextualKeyPath:(id)a3;
- (BOOL)removeObjects:(id)a3 fromArrayAtKeyPath:(id)a4;
- (BOOL)removeObjects:(id)a3 fromArrayAtKeyPath:(id)a4 synchronous:(BOOL)a5 responseQueue:(id)a6 withCompletion:(id)a7;
- (BOOL)setObject:(id)a3 forContextualKeyPath:(id)a4;
- (BOOL)setObject:(id)a3 forContextualKeyPath:(id)a4 synchronous:(BOOL)a5 responseQueue:(id)a6 withCompletion:(id)a7;
- (BOOL)setObject:(id)a3 lastModifiedDate:(id)a4 forContextualKeyPath:(id)a5;
- (_CDClientContext)initWithEndpoint:(id)a3;
- (id)cachedValueIfClientHasRegistrationsForKeyPath:(id)a3;
- (id)currentConnection;
- (id)defaultCallbackQueue;
- (id)lastModifiedDateForContextualKeyPath:(id)a3;
- (id)lastModifiedDateForContextualKeyPath:(id)a3 synchronous:(BOOL)a4 responseQueue:(id)a5 withCompletion:(id)a6;
- (id)objectForContextualKeyPath:(id)a3;
- (id)objectForContextualKeyPath:(id)a3 synchronous:(BOOL)a4 responseQueue:(id)a5 withCompletion:(id)a6;
- (id)removeObjectsMatchingPredicate:(id)a3 fromArrayAtKeyPath:(id)a4;
- (id)removeObjectsMatchingPredicate:(id)a3 fromArrayAtKeyPath:(id)a4 synchronous:(BOOL)a5 responseQueue:(id)a6 withCompletion:(id)a7;
- (id)valuesForKeyPaths:(id)a3;
- (id)valuesForKeyPaths:(id)a3 inContextsMatchingPredicate:(id)a4;
- (id)valuesForKeyPaths:(id)a3 synchronous:(BOOL)a4 responseQueue:(id)a5 withCompletion:(id)a6;
- (void)activateDevices:(id)a3 remoteUserContextProxySourceDeviceUUID:(id)a4;
- (void)addKeyPathsWithRegistrationsForAnyChangeFromRegistration:(id)a3;
- (void)addObjects:(id)a3 andRemoveObjects:(id)a4 fromArrayAtKeyPath:(id)a5 responseQueue:(id)a6 withCompletion:(id)a7;
- (void)addObjects:(id)a3 toArrayAtKeyPath:(id)a4 responseQueue:(id)a5 withCompletion:(id)a6;
- (void)cleanupInternalReferencesToRegistration:(id)a3;
- (void)clearCacheForKeyPathsWithFireOnChangeRegistrations:(id)a3;
- (void)deactivateDevices:(id)a3 remoteUserContextProxySourceDeviceUUID:(id)a4;
- (void)dealloc;
- (void)deregisterCallback:(id)a3;
- (void)handleContextualChange:(id)a3 info:(id)a4 handler:(id)a5;
- (void)handleFetchPropertiesEvent:(id)a3;
- (void)handleFetchProxySourceDeviceUUIDEvent:(id)a3;
- (void)handleKeepAliveEvent:(id)a3;
- (void)handleMDCSEvent:(id)a3;
- (void)handleNotificationEvent:(id)a3;
- (void)handleRegistrationCompleted:(id)a3 handler:(id)a4;
- (void)handleRequestActivateDevicesEvent:(id)a3;
- (void)handleSubscribeToContextValueNotificationsEvent:(id)a3;
- (void)handleUnsubscribeFromContextValueNotificationsEvent:(id)a3;
- (void)lastModifiedDateForContextualKeyPath:(id)a3 responseQueue:(id)a4 withCompletion:(id)a5;
- (void)logFaultIfDeprecatedKeyPath:(id)a3;
- (void)objectForContextualKeyPath:(id)a3 responseQueue:(id)a4 withCompletion:(id)a5;
- (void)registerCallback:(id)a3;
- (void)removeKeyPathsWithRegistrationsForAnyChangeFromRegistration:(id)a3;
- (void)removeObjects:(id)a3 fromArrayAtKeyPath:(id)a4 responseQueue:(id)a5 withCompletion:(id)a6;
- (void)removeObjectsMatchingPredicate:(id)a3 fromArrayAtKeyPath:(id)a4 responseQueue:(id)a5 withCompletion:(id)a6;
- (void)retryTimes:(int)a3 block:(id)a4;
- (void)setCachedValueIfClientHasRegistrations:(id)a3 forKeyPath:(id)a4;
- (void)setObject:(id)a3 forContextualKeyPath:(id)a4 responseQueue:(id)a5 withCompletion:(id)a6;
- (void)subscribeToEventStreams;
- (void)unprotectedSetUpXPCConnectionWithEndpoint:(id)a3;
- (void)valuesForKeyPaths:(id)a3 responseQueue:(id)a4 withCompletion:(id)a5;
@end

@implementation _CDClientContext

+ (id)userContext
{
  if (userContext_onceToken != -1)
  {
    +[_CDClientContext userContext];
  }

  v3 = userContext_context;

  return v3;
}

- (id)currentConnection
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x3032000000;
  v9 = __Block_byref_object_copy__1;
  v10 = __Block_byref_object_dispose__1;
  v11 = 0;
  queue = self->_queue;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __37___CDClientContext_currentConnection__block_invoke;
  v5[3] = &unk_1E7886790;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(queue, v5);
  v3 = v7[5];
  _Block_object_dispose(&v6, 8);

  return v3;
}

+ (id)serverInterface
{
  if (serverInterface_onceToken != -1)
  {
    +[_CDClientContext serverInterface];
  }

  v3 = serverInterface_serverInterface;

  return v3;
}

+ (id)clientInterface
{
  if (clientInterface_onceToken != -1)
  {
    +[_CDClientContext clientInterface];
  }

  v3 = clientInterface_clientInterface;

  return v3;
}

- (id)defaultCallbackQueue
{
  if (defaultCallbackQueue_onceToken != -1)
  {
    [_CDClientContext defaultCallbackQueue];
  }

  v3 = defaultCallbackQueue_callbackQueue;

  return v3;
}

- (void)unprotectedSetUpXPCConnectionWithEndpoint:(id)a3
{
  v23 = *MEMORY[0x1E69E9840];
  v5 = a3;
  if (self->_interrupted)
  {
    v6 = _os_activity_create(&dword_1A9611000, "CoreDuet: ClientContext setupXPCConnection:", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
    state.opaque[0] = 0;
    state.opaque[1] = 0;
    os_activity_scope_enter(v6, &state);
    os_activity_scope_leave(&state);

    log = self->_log;
    if (os_log_type_enabled(log, OS_LOG_TYPE_DEFAULT))
    {
      v8 = @"com.apple.coreduetd.context";
      if (v5)
      {
        v8 = v5;
      }

      LODWORD(state.opaque[0]) = 138412290;
      *(state.opaque + 4) = v8;
      _os_log_impl(&dword_1A9611000, log, OS_LOG_TYPE_DEFAULT, "Setting up XPC connection with %@", &state, 0xCu);
    }

    [(NSXPCConnection *)self->_xpcConnection invalidate];
    if (v5)
    {
      objc_storeStrong(&self->_endpoint, a3);
      v9 = [objc_alloc(MEMORY[0x1E696B0B8]) initWithListenerEndpoint:v5];
    }

    else
    {
      v9 = [objc_alloc(MEMORY[0x1E696B0B8]) initWithMachServiceName:@"com.apple.coreduetd.context" options:4096];
    }

    v10 = v9;
    [(NSXPCConnection *)v9 _setQueue:self->_xpcQueue];
    objc_initWeak(&state, self);
    v16 = MEMORY[0x1E69E9820];
    v17 = 3221225472;
    v18 = __62___CDClientContext_unprotectedSetUpXPCConnectionWithEndpoint___block_invoke;
    v19 = &unk_1E7886768;
    objc_copyWeak(&v21, &state);
    v20 = self;
    [(NSXPCConnection *)v10 setInterruptionHandler:&v16];
    v11 = [objc_opt_class() serverInterface];
    [(NSXPCConnection *)v10 setRemoteObjectInterface:v11];

    v12 = [objc_opt_class() clientInterface];
    [(NSXPCConnection *)v10 setExportedInterface:v12];

    [(NSXPCConnection *)v10 setExportedObject:self];
    [(NSXPCConnection *)v10 resume];
    self->_interrupted = 0;
    xpcConnection = self->_xpcConnection;
    self->_xpcConnection = v10;
    v14 = v10;

    objc_destroyWeak(&v21);
    objc_destroyWeak(&state);
  }

  v15 = *MEMORY[0x1E69E9840];
}

- (_CDClientContext)initWithEndpoint:(id)a3
{
  v4 = a3;
  v40.receiver = self;
  v40.super_class = _CDClientContext;
  v5 = [(_CDClientContext *)&v40 init];
  if (v5)
  {
    v6 = [MEMORY[0x1E696AB50] set];
    keyPathsWithRegistrationsForAnyChange = v5->_keyPathsWithRegistrationsForAnyChange;
    v5->_keyPathsWithRegistrationsForAnyChange = v6;

    v8 = [MEMORY[0x1E695DF90] dictionary];
    registrations = v5->_registrations;
    v5->_registrations = v8;

    v10 = [MEMORY[0x1E695DF90] dictionary];
    openRegistrationTokens = v5->_openRegistrationTokens;
    v5->_openRegistrationTokens = v10;

    v12 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v13 = dispatch_queue_create("com.apple.cdclientcontext.queue", v12);
    queue = v5->_queue;
    v5->_queue = v13;

    v15 = dispatch_queue_attr_make_with_autorelease_frequency(MEMORY[0x1E69E96A8], DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v16 = dispatch_queue_create("com.apple.cdclientcontext.concurrentRegistrationCallbackQueue", v15);
    concurrentRegistrationCallbackQueue = v5->_concurrentRegistrationCallbackQueue;
    v5->_concurrentRegistrationCallbackQueue = v16;

    v18 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v19 = dispatch_queue_create("com.apple.cdclientcontext.serialRegistrationCallbackQueue", v18);
    serialRegistrationCallbackQueue = v5->_serialRegistrationCallbackQueue;
    v5->_serialRegistrationCallbackQueue = v19;

    v21 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v22 = dispatch_queue_create("com.apple.cdclientcontext.xpcQueue", v21);
    xpcQueue = v5->_xpcQueue;
    v5->_xpcQueue = v22;

    v24 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v25 = dispatch_queue_create("com.apple.cdclientcontext.xpcEventQueue", v24);
    xpcEventQueue = v5->_xpcEventQueue;
    v5->_xpcEventQueue = v25;

    v27 = [MEMORY[0x1E695DF90] dictionary];
    keyPathToValues = v5->_keyPathToValues;
    v5->_keyPathToValues = v27;

    v5->_interrupted = 1;
    v29 = os_log_create("com.apple.coreduet", "context");
    log = v5->_log;
    v5->_log = v29;

    v31 = v5->_queue;
    v34 = MEMORY[0x1E69E9820];
    v35 = 3221225472;
    v36 = __37___CDClientContext_initWithEndpoint___block_invoke;
    v37 = &unk_1E7886250;
    v32 = v5;
    v38 = v32;
    v39 = v4;
    dispatch_sync(v31, &v34);
    [(_CDClientContext *)v32 subscribeToEventStreams:v34];
  }

  return v5;
}

- (void)dealloc
{
  [(NSXPCConnection *)self->_xpcConnection invalidate];
  v3.receiver = self;
  v3.super_class = _CDClientContext;
  [(_CDClientContext *)&v3 dealloc];
}

+ (id)userContextWithEndpoint:(id)a3
{
  v3 = a3;
  v4 = [objc_alloc(objc_opt_class()) initWithEndpoint:v3];

  return v4;
}

- (void)subscribeToEventStreams
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __43___CDClientContext_subscribeToEventStreams__block_invoke;
  block[3] = &unk_1E7886288;
  block[4] = self;
  if (subscribeToEventStreams_onceToken != -1)
  {
    dispatch_once(&subscribeToEventStreams_onceToken, block);
  }
}

- (void)handleMDCSEvent:(id)a3
{
  v4 = a3;
  v5 = [(_CDXPCCodecs *)_CDXPCContextCodecs eventTypeWithEvent:v4];
  if (v5 > 3)
  {
    switch(v5)
    {
      case 4:
        [(_CDClientContext *)self handleKeepAliveEvent:v4];
        goto LABEL_17;
      case 5:
        [(_CDClientContext *)self handleFetchProxySourceDeviceUUIDEvent:v4];
        goto LABEL_17;
      case 6:
        [(_CDClientContext *)self handleRequestActivateDevicesEvent:v4];
        goto LABEL_17;
    }

LABEL_12:
    v6 = MEMORY[0x1AC588970](v4);
    if (os_log_type_enabled(self->_log, OS_LOG_TYPE_ERROR))
    {
      [_CDClientContext handleMDCSEvent:];
      if (!v6)
      {
        goto LABEL_17;
      }
    }

    else if (!v6)
    {
      goto LABEL_17;
    }

    free(v6);
    goto LABEL_17;
  }

  if (v5 == 1)
  {
    [(_CDClientContext *)self handleFetchPropertiesEvent:v4];
    goto LABEL_17;
  }

  if (v5 == 2)
  {
    [(_CDClientContext *)self handleSubscribeToContextValueNotificationsEvent:v4];
    goto LABEL_17;
  }

  if (v5 != 3)
  {
    goto LABEL_12;
  }

  [(_CDClientContext *)self handleUnsubscribeFromContextValueNotificationsEvent:v4];
LABEL_17:
}

- (void)handleFetchPropertiesEvent:(id)a3
{
  v4 = a3;
  v15 = 0;
  v5 = [_CDXPCContextCodecs keyPathsFromFetchPropertiesEvent:v4 error:&v15];
  v6 = v15;
  if (v5)
  {
    v7 = [(_CDClientContext *)self remoteUserContextProxy];

    if (v7)
    {
      v8 = [(_CDClientContext *)self remoteUserContextProxy];
      v13[0] = MEMORY[0x1E69E9820];
      v13[1] = 3221225472;
      v13[2] = __47___CDClientContext_handleFetchPropertiesEvent___block_invoke;
      v13[3] = &unk_1E78867E0;
      v13[4] = self;
      v14 = v4;
      [v8 fetchPropertiesOfRemoteKeyPaths:v5 handler:v13];
    }

    else
    {
      log = self->_log;
      if (os_log_type_enabled(log, OS_LOG_TYPE_ERROR))
      {
        [_CDClientContext handleFetchPropertiesEvent:?];
      }

      v11 = [MEMORY[0x1E696ABC0] errorWithDomain:*MEMORY[0x1E6997A18] code:*MEMORY[0x1E6997A38] userInfo:0];

      v12 = [(_CDXPCCodecs *)_CDXPCContextCodecs fetchPropertiesReplyWithEvent:v4 error:v11];
      if (v12)
      {
        xpc_dictionary_send_reply();
      }

      v6 = v11;
    }
  }

  else
  {
    v9 = [(_CDXPCCodecs *)_CDXPCContextCodecs fetchPropertiesReplyWithEvent:v4 error:v6];
    if (v9)
    {
      xpc_dictionary_send_reply();
    }
  }
}

- (void)handleSubscribeToContextValueNotificationsEvent:(id)a3
{
  v25 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [(_CDClientContext *)self remoteUserContextProxy];

  if (v5)
  {
    v19 = 0;
    v20 = 0;
    v18 = 0;
    v6 = [_CDXPCContextCodecs parseSubscribeToContextValueNotificationsEvent:v4 registration:&v20 deviceIDs:&v19 error:&v18];
    v7 = v20;
    v8 = v19;
    v9 = v18;
    if (v6)
    {
      log = self->_log;
      if (os_log_type_enabled(log, OS_LOG_TYPE_INFO))
      {
        v11 = log;
        v12 = [v7 identifier];
        *buf = 138412546;
        v22 = v12;
        v23 = 2112;
        v24 = v7;
        _os_log_impl(&dword_1A9611000, v11, OS_LOG_TYPE_INFO, "Handling subscribe to context value change notifications request with registration %@: %@", buf, 0x16u);
      }

      v13 = [(_CDClientContext *)self remoteUserContextProxy];
      v16[0] = MEMORY[0x1E69E9820];
      v16[1] = 3221225472;
      v16[2] = __68___CDClientContext_handleSubscribeToContextValueNotificationsEvent___block_invoke;
      v16[3] = &unk_1E7886808;
      v17 = v4;
      [v13 subscribeToContextValueChangeNotificationsWithRegistration:v7 deviceIDs:v8 handler:v16];

      v14 = v17;
    }

    else
    {
      v14 = [_CDXPCContextCodecs subscribeToContextValueNotificationsReplyWithEvent:v4 error:v9];
      if (v14)
      {
        xpc_dictionary_send_reply();
      }
    }
  }

  else
  {
    v7 = [MEMORY[0x1E696ABC0] errorWithDomain:*MEMORY[0x1E6997A18] code:*MEMORY[0x1E6997A38] userInfo:0];
    v8 = [_CDXPCContextCodecs subscribeToContextValueNotificationsReplyWithEvent:v4 error:v7];
    if (v8)
    {
      xpc_dictionary_send_reply();
    }
  }

  v15 = *MEMORY[0x1E69E9840];
}

- (void)handleUnsubscribeFromContextValueNotificationsEvent:(id)a3
{
  v25 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [(_CDClientContext *)self remoteUserContextProxy];

  if (v5)
  {
    v19 = 0;
    v20 = 0;
    v18 = 0;
    v6 = [_CDXPCContextCodecs parseUnsubscribeFromContextValueNotificationsEvent:v4 registration:&v20 deviceIDs:&v19 error:&v18];
    v7 = v20;
    v8 = v19;
    v9 = v18;
    if (v6)
    {
      log = self->_log;
      if (os_log_type_enabled(log, OS_LOG_TYPE_INFO))
      {
        v11 = log;
        v12 = [v7 identifier];
        *buf = 138412546;
        v22 = v12;
        v23 = 2112;
        v24 = v7;
        _os_log_impl(&dword_1A9611000, v11, OS_LOG_TYPE_INFO, "Handling unsubscribe from context value change notifications request with registration %@: %@", buf, 0x16u);
      }

      v13 = [(_CDClientContext *)self remoteUserContextProxy];
      v16[0] = MEMORY[0x1E69E9820];
      v16[1] = 3221225472;
      v16[2] = __72___CDClientContext_handleUnsubscribeFromContextValueNotificationsEvent___block_invoke;
      v16[3] = &unk_1E7886808;
      v17 = v4;
      [v13 unsubscribeFromContextValueChangeNotificationsWithRegistration:v7 deviceIDs:v8 handler:v16];

      v14 = v17;
    }

    else
    {
      v14 = [_CDXPCContextCodecs unsubscribeFromContextValueNotificationsReplyWithEvent:v4 error:v9];
      if (v14)
      {
        xpc_dictionary_send_reply();
      }
    }
  }

  else
  {
    v7 = [MEMORY[0x1E696ABC0] errorWithDomain:*MEMORY[0x1E6997A18] code:*MEMORY[0x1E6997A38] userInfo:0];
    v8 = [_CDXPCContextCodecs unsubscribeFromContextValueNotificationsReplyWithEvent:v4 error:v7];
    if (v8)
    {
      xpc_dictionary_send_reply();
    }
  }

  v15 = *MEMORY[0x1E69E9840];
}

- (void)handleKeepAliveEvent:(id)a3
{
  v4 = a3;
  v5 = [(_CDClientContext *)self remoteUserContextProxy];

  if (!v5)
  {
    v7 = [MEMORY[0x1E696ABC0] errorWithDomain:*MEMORY[0x1E6997A18] code:*MEMORY[0x1E6997A38] userInfo:0];
    goto LABEL_5;
  }

  v16 = 0;
  v6 = [(_CDXPCCodecs *)_CDXPCContextCodecs keepAliveFromKeepAliveEvent:v4 error:&v16];
  v7 = v16;
  if (!v7)
  {
    log = self->_log;
    v10 = os_log_type_enabled(log, OS_LOG_TYPE_INFO);
    if (v6)
    {
      if (v10)
      {
        *buf = 0;
        v11 = "Handling request to keep alive";
LABEL_12:
        _os_log_impl(&dword_1A9611000, log, OS_LOG_TYPE_INFO, v11, buf, 2u);
      }
    }

    else if (v10)
    {
      *buf = 0;
      v11 = "Handling request to no longer keep alive";
      goto LABEL_12;
    }

    v12 = [(_CDClientContext *)self remoteUserContextProxy];
    v13[0] = MEMORY[0x1E69E9820];
    v13[1] = 3221225472;
    v13[2] = __41___CDClientContext_handleKeepAliveEvent___block_invoke;
    v13[3] = &unk_1E7886808;
    v14 = v4;
    [v12 subscribeToDeviceStatusChangeNotificationsForDeviceTypes:0xFFFFLL handler:v13];

    v8 = v14;
    goto LABEL_14;
  }

LABEL_5:
  v8 = [(_CDXPCCodecs *)_CDXPCContextCodecs keepAliveReplyWithEvent:v4 error:v7];
  if (v8)
  {
    xpc_dictionary_send_reply();
  }

LABEL_14:
}

- (void)handleFetchProxySourceDeviceUUIDEvent:(id)a3
{
  v4 = a3;
  v5 = [(_CDClientContext *)self remoteUserContextProxy];

  if (!v5)
  {
    v9 = [MEMORY[0x1E696ABC0] errorWithDomain:*MEMORY[0x1E6997A18] code:*MEMORY[0x1E6997A38] userInfo:0];
    v10 = [(_CDXPCCodecs *)_CDXPCContextCodecs keepAliveReplyWithEvent:v4 error:v9];

    if (!v10)
    {
      goto LABEL_13;
    }

    goto LABEL_12;
  }

  v6 = [(_CDClientContext *)self remoteUserContextProxy];
  v7 = [v6 sourceDeviceUUID];

  if (v7)
  {
    v8 = 0;
  }

  else
  {
    v8 = [MEMORY[0x1E696ABC0] errorWithDomain:*MEMORY[0x1E6997A18] code:*MEMORY[0x1E6997A48] userInfo:0];
  }

  v10 = [(_CDXPCCodecs *)_CDXPCContextCodecs fetchProxySourceDeviceUUIDReplyWithEvent:v4 sourceDeviceUUID:v7 error:v8];
  if (v8)
  {
    v11 = [(_CDXPCCodecs *)_CDXPCContextCodecs keepAliveReplyWithEvent:v4 error:v8];

    v10 = v11;
  }

  else
  {
    log = self->_log;
    if (os_log_type_enabled(log, OS_LOG_TYPE_INFO))
    {
      *v13 = 0;
      _os_log_impl(&dword_1A9611000, log, OS_LOG_TYPE_INFO, "Handling request for source device uuid", v13, 2u);
    }
  }

  if (v10)
  {
LABEL_12:
    xpc_dictionary_send_reply();
  }

LABEL_13:
}

- (void)handleRequestActivateDevicesEvent:(id)a3
{
  v4 = a3;
  v5 = [(_CDClientContext *)self remoteUserContextProxy];

  if (v5)
  {
    log = self->_log;
    if (os_log_type_enabled(log, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_1A9611000, log, OS_LOG_TYPE_INFO, "Handling request for activate devices", buf, 2u);
    }

    v7 = [(_CDClientContext *)self remoteUserContextProxy];
    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v10[2] = __54___CDClientContext_handleRequestActivateDevicesEvent___block_invoke;
    v10[3] = &unk_1E7886808;
    v11 = v4;
    [v7 requestActivateDevicesWithHandler:v10];
  }

  else
  {
    v8 = [MEMORY[0x1E696ABC0] errorWithDomain:*MEMORY[0x1E6997A18] code:*MEMORY[0x1E6997A38] userInfo:0];
    v9 = [(_CDXPCCodecs *)_CDXPCContextCodecs requestActivateDevicesReplyWithEvent:v4 error:v8];
    if (v9)
    {
      xpc_dictionary_send_reply();
    }
  }
}

- (void)handleNotificationEvent:(id)a3
{
  v25 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v17 = 0;
  v18 = 0;
  v16 = 0;
  v5 = [(_CDXPCCodecs *)_CDXPCContextCodecs parseNotificationEvent:v4 registrationIdentifier:&v18 info:&v17 error:&v16];
  v6 = v18;
  v7 = v17;
  v8 = v16;
  log = self->_log;
  if (v5)
  {
    if (os_log_type_enabled(log, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412546;
      v22 = v6;
      v23 = 2112;
      v24 = v7;
      _os_log_impl(&dword_1A9611000, log, OS_LOG_TYPE_DEFAULT, "Received context value change notification for registration %@: %@", buf, 0x16u);
    }

    v10 = self->_registrations;
    objc_sync_enter(v10);
    v11 = [(NSMutableDictionary *)self->_registrations objectForKeyedSubscript:v6];
    objc_sync_exit(v10);

    if (v11)
    {
      [(_CDClientContext *)self handleContextualChange:v6 info:v7 handler:&__block_literal_global_126];
    }

    else
    {
      v12 = self->_log;
      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v22 = v6;
        _os_log_impl(&dword_1A9611000, v12, OS_LOG_TYPE_DEFAULT, "Sending change notification for registration %@", buf, 0xCu);
      }

      v19[0] = @"RegistrationIdentifier";
      v19[1] = @"Info";
      v20[0] = v6;
      v20[1] = v7;
      v13 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v20 forKeys:v19 count:2];
      v14 = [MEMORY[0x1E696AD88] defaultCenter];
      [v14 postNotificationName:@"_CDClientContextContextChanged" object:self userInfo:v13];
    }
  }

  else if (os_log_type_enabled(log, OS_LOG_TYPE_ERROR))
  {
    [_CDClientContext handleNotificationEvent:];
  }

  v15 = *MEMORY[0x1E69E9840];
}

- (void)logFaultIfDeprecatedKeyPath:(id)a3
{
  v4 = a3;
  v5 = [v4 key];

  if (v5)
  {
    v6 = +[_CDContextQueries keyPathForDeviceName];
    v7 = [v6 key];

    v8 = [v4 key];
    v9 = [v7 isEqualToString:v8];

    if (v9 && os_log_type_enabled(self->_log, OS_LOG_TYPE_FAULT))
    {
      [_CDClientContext logFaultIfDeprecatedKeyPath:];
    }
  }
}

- (BOOL)hasKnowledgeOfContextualKeyPath:(id)a3
{
  v4 = a3;
  [(_CDClientContext *)self logFaultIfDeprecatedKeyPath:v4];
  v5 = +[_CDContextQueries keyPathForSystemTime];
  v6 = [v4 isEqual:v5];

  if (v6)
  {
    v7 = 1;
  }

  else
  {
    v15 = 0;
    v16 = &v15;
    v17 = 0x2020000000;
    v18 = 0;
    v8 = [(_CDClientContext *)self currentConnection];
    v13[0] = MEMORY[0x1E69E9820];
    v13[1] = 3221225472;
    v13[2] = __52___CDClientContext_hasKnowledgeOfContextualKeyPath___block_invoke;
    v13[3] = &unk_1E78867E0;
    v13[4] = self;
    v9 = v4;
    v14 = v9;
    v10 = [v8 synchronousRemoteObjectProxyWithErrorHandler:v13];
    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 3221225472;
    v12[2] = __52___CDClientContext_hasKnowledgeOfContextualKeyPath___block_invoke_130;
    v12[3] = &unk_1E7886850;
    v12[4] = &v15;
    [v10 hasKnowledgeOfPath:v9 handler:v12];

    v7 = *(v16 + 24);
    _Block_object_dispose(&v15, 8);
  }

  return v7 & 1;
}

- (id)cachedValueIfClientHasRegistrationsForKeyPath:(id)a3
{
  v4 = a3;
  v5 = self->_keyPathsWithRegistrationsForAnyChange;
  objc_sync_enter(v5);
  v6 = [(NSCountedSet *)self->_keyPathsWithRegistrationsForAnyChange countForObject:v4];
  objc_sync_exit(v5);

  if (v6)
  {
    v7 = self->_keyPathToValues;
    objc_sync_enter(v7);
    v8 = [(NSMutableDictionary *)self->_keyPathToValues objectForKeyedSubscript:v4];
    objc_sync_exit(v7);
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (void)setCachedValueIfClientHasRegistrations:(id)a3 forKeyPath:(id)a4
{
  v10 = a3;
  v6 = a4;
  if (v10)
  {
    v7 = self->_keyPathsWithRegistrationsForAnyChange;
    objc_sync_enter(v7);
    v8 = [(NSCountedSet *)self->_keyPathsWithRegistrationsForAnyChange countForObject:v6];
    objc_sync_exit(v7);

    if (v8)
    {
      v9 = self->_keyPathToValues;
      objc_sync_enter(v9);
      [(NSMutableDictionary *)self->_keyPathToValues setObject:v10 forKeyedSubscript:v6];
      objc_sync_exit(v9);
    }
  }
}

- (id)objectForContextualKeyPath:(id)a3
{
  if (a3)
  {
    v4 = [(_CDClientContext *)self objectForContextualKeyPath:a3 synchronous:1 responseQueue:0 withCompletion:0];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (void)objectForContextualKeyPath:(id)a3 responseQueue:(id)a4 withCompletion:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = v10;
  if (v8 && v10)
  {
    v12 = [(_CDClientContext *)self objectForContextualKeyPath:v8 synchronous:0 responseQueue:v9 withCompletion:v10];
  }

  else if (v10)
  {
    v13 = v9;
    if (!v9)
    {
      v13 = [(_CDClientContext *)self defaultCallbackQueue];
    }

    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __76___CDClientContext_objectForContextualKeyPath_responseQueue_withCompletion___block_invoke;
    block[3] = &unk_1E7886878;
    v15 = v11;
    dispatch_async(v13, block);
    if (!v9)
    {
    }
  }
}

- (id)objectForContextualKeyPath:(id)a3 synchronous:(BOOL)a4 responseQueue:(id)a5 withCompletion:(id)a6
{
  v8 = a4;
  v54 = *MEMORY[0x1E69E9840];
  v10 = a3;
  v11 = a5;
  v12 = a6;
  [(_CDClientContext *)self logFaultIfDeprecatedKeyPath:v10];
  v45[0] = MEMORY[0x1E69E9820];
  v45[1] = 3221225472;
  v45[2] = __88___CDClientContext_objectForContextualKeyPath_synchronous_responseQueue_withCompletion___block_invoke;
  v45[3] = &unk_1E78868A0;
  v45[4] = self;
  v13 = v10;
  v46 = v13;
  v14 = v12;
  v48 = v14;
  v15 = v11;
  v47 = v15;
  v16 = MEMORY[0x1AC5886D0](v45);
  v17 = [(_CDClientContext *)self currentConnection];
  v18 = v17;
  if (v8)
  {
    [v17 synchronousRemoteObjectProxyWithErrorHandler:v16];
  }

  else
  {
    [v17 remoteObjectProxyWithErrorHandler:v16];
  }
  v19 = ;

  v20 = +[_CDContextQueries keyPathForSystemTime];
  v21 = [v13 isEqual:v20];

  if (v21)
  {
    v22 = [MEMORY[0x1E695DF00] date];
    if (!v14)
    {
      goto LABEL_28;
    }

    v23 = v15;
    if (!v15)
    {
      v23 = [(_CDClientContext *)self defaultCallbackQueue];
    }

    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __88___CDClientContext_objectForContextualKeyPath_synchronous_responseQueue_withCompletion___block_invoke_2;
    block[3] = &unk_1E7886668;
    v44 = v14;
    v22 = v22;
    v43 = v22;
    dispatch_async(v23, block);
    if (!v15)
    {
    }

    v24 = v44;
  }

  else
  {
    v24 = [(_CDClientContext *)self cachedValueIfClientHasRegistrationsForKeyPath:v13];
    v22 = [v24 value];
    if (v22)
    {
      v25 = [MEMORY[0x1E695DFB0] null];
      v26 = [v22 isEqual:v25];

      if (v26)
      {

        v22 = 0;
      }

      if (!v14)
      {
        goto LABEL_27;
      }

      v27 = v15;
      if (!v15)
      {
        v27 = [(_CDClientContext *)self defaultCallbackQueue];
      }

      v39[0] = MEMORY[0x1E69E9820];
      v39[1] = 3221225472;
      v39[2] = __88___CDClientContext_objectForContextualKeyPath_synchronous_responseQueue_withCompletion___block_invoke_3;
      v39[3] = &unk_1E7886668;
      v41 = v14;
      v22 = v22;
      v40 = v22;
      dispatch_async(v27, v39);
      if (!v15)
      {
      }

      v28 = v41;
    }

    else
    {
      if (v8)
      {
        v29 = "CoreDuet: ClientContext objectForContextualKeyPath:";
      }

      else
      {
        v29 = "CoreDuet: ClientContext objectForContextualKeyPath:responseQueue:withCompletion:";
      }

      v28 = _os_activity_create(&dword_1A9611000, v29, MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
      state.opaque[0] = 0;
      state.opaque[1] = 0;
      os_activity_scope_enter(v28, &state);
      log = self->_log;
      if (os_log_type_enabled(log, OS_LOG_TYPE_INFO))
      {
        LODWORD(buf) = 138412290;
        *(&buf + 4) = v13;
        _os_log_impl(&dword_1A9611000, log, OS_LOG_TYPE_INFO, "Fetching uncached value for %@", &buf, 0xCu);
      }

      *&buf = 0;
      *(&buf + 1) = &buf;
      v50 = 0x3032000000;
      v51 = __Block_byref_object_copy__1;
      v52 = __Block_byref_object_dispose__1;
      v53 = 0;
      v33[0] = MEMORY[0x1E69E9820];
      v33[1] = 3221225472;
      v33[2] = __88___CDClientContext_objectForContextualKeyPath_synchronous_responseQueue_withCompletion___block_invoke_133;
      v33[3] = &unk_1E78868F0;
      p_buf = &buf;
      v33[4] = self;
      v34 = v13;
      v36 = v14;
      v35 = v15;
      [v19 propertiesOfPath:v34 handler:v33];
      v22 = *(*(&buf + 1) + 40);

      _Block_object_dispose(&buf, 8);
      os_activity_scope_leave(&state);
    }
  }

LABEL_27:

LABEL_28:
  v31 = *MEMORY[0x1E69E9840];

  return v22;
}

- (id)lastModifiedDateForContextualKeyPath:(id)a3
{
  if (a3)
  {
    v4 = [(_CDClientContext *)self lastModifiedDateForContextualKeyPath:a3 synchronous:1 responseQueue:0 withCompletion:0];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (void)lastModifiedDateForContextualKeyPath:(id)a3 responseQueue:(id)a4 withCompletion:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = v10;
  if (v8 && v10)
  {
    v12 = [(_CDClientContext *)self lastModifiedDateForContextualKeyPath:v8 synchronous:0 responseQueue:v9 withCompletion:v10];
  }

  else if (v10)
  {
    v13 = v9;
    if (!v9)
    {
      v13 = [(_CDClientContext *)self defaultCallbackQueue];
    }

    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __86___CDClientContext_lastModifiedDateForContextualKeyPath_responseQueue_withCompletion___block_invoke;
    block[3] = &unk_1E7886878;
    v15 = v11;
    dispatch_async(v13, block);
    if (!v9)
    {
    }
  }
}

- (id)lastModifiedDateForContextualKeyPath:(id)a3 synchronous:(BOOL)a4 responseQueue:(id)a5 withCompletion:(id)a6
{
  v8 = a4;
  v10 = a3;
  v11 = a5;
  v12 = a6;
  [(_CDClientContext *)self logFaultIfDeprecatedKeyPath:v10];
  v47[0] = MEMORY[0x1E69E9820];
  v47[1] = 3221225472;
  v47[2] = __98___CDClientContext_lastModifiedDateForContextualKeyPath_synchronous_responseQueue_withCompletion___block_invoke;
  v47[3] = &unk_1E78868A0;
  v47[4] = self;
  v13 = v10;
  v48 = v13;
  v14 = v12;
  v50 = v14;
  v15 = v11;
  v49 = v15;
  v16 = MEMORY[0x1AC5886D0](v47);
  v17 = [(_CDClientContext *)self currentConnection];
  v18 = v17;
  if (v8)
  {
    [v17 synchronousRemoteObjectProxyWithErrorHandler:v16];
  }

  else
  {
    [v17 remoteObjectProxyWithErrorHandler:v16];
  }
  v19 = ;

  v20 = +[_CDContextQueries keyPathForSystemTime];
  v21 = [v13 isEqual:v20];

  if (v21)
  {
    v22 = [MEMORY[0x1E695DF00] date];
    if (!v14)
    {
      goto LABEL_24;
    }

    v23 = v15;
    if (!v15)
    {
      v23 = [(_CDClientContext *)self defaultCallbackQueue];
    }

    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __98___CDClientContext_lastModifiedDateForContextualKeyPath_synchronous_responseQueue_withCompletion___block_invoke_2;
    block[3] = &unk_1E7886668;
    v46 = v14;
    v22 = v22;
    v45 = v22;
    dispatch_async(v23, block);
    if (!v15)
    {
    }

    v24 = v46;
  }

  else
  {
    v24 = [(_CDClientContext *)self cachedValueIfClientHasRegistrationsForKeyPath:v13];
    if (v24)
    {
      if (v14)
      {
        v25 = v15;
        if (!v15)
        {
          v25 = [(_CDClientContext *)self defaultCallbackQueue];
        }

        v41[0] = MEMORY[0x1E69E9820];
        v41[1] = 3221225472;
        v41[2] = __98___CDClientContext_lastModifiedDateForContextualKeyPath_synchronous_responseQueue_withCompletion___block_invoke_3;
        v41[3] = &unk_1E7886668;
        v43 = v14;
        v42 = v24;
        dispatch_async(v25, v41);
        if (!v15)
        {
        }
      }

      v22 = [v24 lastModifiedDate];
    }

    else
    {
      if (v8)
      {
        v26 = "CoreDuet: ClientContext lastModifiedDateForContextualKeyPath:";
      }

      else
      {
        v26 = "CoreDuet: ClientContext lastModifiedDateForContextualKeyPath:responseQueue:withCompletion:";
      }

      v27 = _os_activity_create(&dword_1A9611000, v26, MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
      state.opaque[0] = 0;
      state.opaque[1] = 0;
      os_activity_scope_enter(v27, &state);
      v34 = 0;
      v35 = &v34;
      v36 = 0x3032000000;
      v37 = __Block_byref_object_copy__1;
      v38 = __Block_byref_object_dispose__1;
      v39 = 0;
      v29[0] = MEMORY[0x1E69E9820];
      v29[1] = 3221225472;
      v29[2] = __98___CDClientContext_lastModifiedDateForContextualKeyPath_synchronous_responseQueue_withCompletion___block_invoke_4;
      v29[3] = &unk_1E78868F0;
      v33 = &v34;
      v29[4] = self;
      v30 = v13;
      v32 = v14;
      v31 = v15;
      [v19 propertiesOfPath:v30 handler:v29];
      v22 = v35[5];

      _Block_object_dispose(&v34, 8);
      os_activity_scope_leave(&state);
    }
  }

LABEL_24:

  return v22;
}

- (void)addKeyPathsWithRegistrationsForAnyChangeFromRegistration:(id)a3
{
  v19 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [v4 predicate];
  v6 = [v5 firesOnAnyChange];

  if (v6)
  {
    v7 = self->_keyPathsWithRegistrationsForAnyChange;
    objc_sync_enter(v7);
    v14 = 0u;
    v15 = 0u;
    v16 = 0u;
    v17 = 0u;
    v8 = [v4 predicate];
    v9 = [v8 keyPaths];

    v10 = [v9 countByEnumeratingWithState:&v14 objects:v18 count:16];
    if (v10)
    {
      v11 = *v15;
      do
      {
        v12 = 0;
        do
        {
          if (*v15 != v11)
          {
            objc_enumerationMutation(v9);
          }

          [(NSCountedSet *)self->_keyPathsWithRegistrationsForAnyChange addObject:*(*(&v14 + 1) + 8 * v12++)];
        }

        while (v10 != v12);
        v10 = [v9 countByEnumeratingWithState:&v14 objects:v18 count:16];
      }

      while (v10);
    }

    objc_sync_exit(v7);
  }

  v13 = *MEMORY[0x1E69E9840];
}

- (void)removeKeyPathsWithRegistrationsForAnyChangeFromRegistration:(id)a3
{
  v21 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [v4 predicate];
  v6 = [v5 firesOnAnyChange];

  if (v6)
  {
    v7 = self->_keyPathsWithRegistrationsForAnyChange;
    objc_sync_enter(v7);
    v16 = 0u;
    v17 = 0u;
    v18 = 0u;
    v19 = 0u;
    v8 = [v4 predicate];
    v9 = [v8 keyPaths];

    v10 = [v9 countByEnumeratingWithState:&v16 objects:v20 count:16];
    if (v10)
    {
      v11 = *v17;
      do
      {
        for (i = 0; i != v10; ++i)
        {
          if (*v17 != v11)
          {
            objc_enumerationMutation(v9);
          }

          v13 = *(*(&v16 + 1) + 8 * i);
          [(NSCountedSet *)self->_keyPathsWithRegistrationsForAnyChange removeObject:v13];
          if (![(NSCountedSet *)self->_keyPathsWithRegistrationsForAnyChange countForObject:v13])
          {
            v14 = self->_keyPathToValues;
            objc_sync_enter(v14);
            [(NSMutableDictionary *)self->_keyPathToValues removeObjectForKey:v13];
            objc_sync_exit(v14);
          }
        }

        v10 = [v9 countByEnumeratingWithState:&v16 objects:v20 count:16];
      }

      while (v10);
    }

    objc_sync_exit(v7);
  }

  v15 = *MEMORY[0x1E69E9840];
}

- (void)clearCacheForKeyPathsWithFireOnChangeRegistrations:(id)a3
{
  v19 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [v4 predicate];
  v6 = [v5 firesOnAnyChange];

  if (v6)
  {
    v7 = self->_keyPathToValues;
    objc_sync_enter(v7);
    v14 = 0u;
    v15 = 0u;
    v16 = 0u;
    v17 = 0u;
    v8 = [v4 predicate];
    v9 = [v8 keyPaths];

    v10 = [v9 countByEnumeratingWithState:&v14 objects:v18 count:16];
    if (v10)
    {
      v11 = *v15;
      do
      {
        v12 = 0;
        do
        {
          if (*v15 != v11)
          {
            objc_enumerationMutation(v9);
          }

          [(NSMutableDictionary *)self->_keyPathToValues removeObjectForKey:*(*(&v14 + 1) + 8 * v12++)];
        }

        while (v10 != v12);
        v10 = [v9 countByEnumeratingWithState:&v14 objects:v18 count:16];
      }

      while (v10);
    }

    objc_sync_exit(v7);
  }

  v13 = *MEMORY[0x1E69E9840];
}

- (void)retryTimes:(int)a3 block:(id)a4
{
  v7 = a4;
  if (a3 >= 1)
  {
    v5 = a3 & ~(a3 >> 31);
    v6 = 1;
    do
    {
      if (!v7[2]())
      {
        break;
      }

      sleep(v6);
      v6 += v6 * arc4random_uniform(3u);
      --v5;
    }

    while (v5);
  }
}

- (void)registerCallback:(id)a3
{
  v31 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = _os_activity_create(&dword_1A9611000, "CoreDuet: ClientContext registerCallback:", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
  state.opaque[0] = 0;
  state.opaque[1] = 0;
  os_activity_scope_enter(v5, &state);
  os_activity_scope_leave(&state);

  log = self->_log;
  if (os_log_type_enabled(log, OS_LOG_TYPE_DEFAULT))
  {
    v7 = log;
    v8 = [v4 identifier];
    LODWORD(state.opaque[0]) = 138412290;
    *(state.opaque + 4) = v8;
    _os_log_impl(&dword_1A9611000, v7, OS_LOG_TYPE_DEFAULT, "Registering callback: %@", &state, 0xCu);
  }

  v9 = self->_registrations;
  objc_sync_enter(v9);
  registrations = self->_registrations;
  v11 = [v4 identifier];
  [(NSMutableDictionary *)registrations setObject:v4 forKeyedSubscript:v11];

  objc_sync_exit(v9);
  out_token = 0;
  objc_initWeak(&state, v4);
  v12 = [v4 identifier];
  v13 = v12;
  v14 = [v12 UTF8String];
  concurrentRegistrationCallbackQueue = self->_concurrentRegistrationCallbackQueue;
  handler[0] = MEMORY[0x1E69E9820];
  handler[1] = 3221225472;
  handler[2] = __37___CDClientContext_registerCallback___block_invoke;
  handler[3] = &unk_1E7886968;
  objc_copyWeak(&v28, &state);
  handler[4] = self;
  notify_register_dispatch(v14, &out_token, concurrentRegistrationCallbackQueue, handler);

  v16 = self->_openRegistrationTokens;
  objc_sync_enter(v16);
  openRegistrationTokens = self->_openRegistrationTokens;
  v18 = [v4 identifier];
  v19 = [(NSMutableDictionary *)openRegistrationTokens objectForKeyedSubscript:v18];

  if (v19)
  {
    notify_cancel([v19 intValue]);
  }

  v20 = [MEMORY[0x1E696AD98] numberWithInt:out_token];
  v21 = self->_openRegistrationTokens;
  v22 = [v4 identifier];
  [(NSMutableDictionary *)v21 setObject:v20 forKeyedSubscript:v22];

  objc_sync_exit(v16);
  v25[0] = MEMORY[0x1E69E9820];
  v25[1] = 3221225472;
  v25[2] = __37___CDClientContext_registerCallback___block_invoke_140;
  v25[3] = &unk_1E7886940;
  v25[4] = self;
  v23 = v4;
  v26 = v23;
  [(_CDClientContext *)self retryTimes:3 block:v25];
  [(_CDClientContext *)self addKeyPathsWithRegistrationsForAnyChangeFromRegistration:v23];

  objc_destroyWeak(&v28);
  objc_destroyWeak(&state);

  v24 = *MEMORY[0x1E69E9840];
}

- (void)cleanupInternalReferencesToRegistration:(id)a3
{
  v13 = a3;
  [(_CDClientContext *)self removeKeyPathsWithRegistrationsForAnyChangeFromRegistration:v13];
  v4 = self->_registrations;
  objc_sync_enter(v4);
  registrations = self->_registrations;
  v6 = [v13 identifier];
  [(NSMutableDictionary *)registrations removeObjectForKey:v6];

  objc_sync_exit(v4);
  v7 = self->_openRegistrationTokens;
  objc_sync_enter(v7);
  openRegistrationTokens = self->_openRegistrationTokens;
  v9 = [v13 identifier];
  v10 = [(NSMutableDictionary *)openRegistrationTokens objectForKeyedSubscript:v9];

  if (v10)
  {
    notify_cancel([v10 intValue]);
    v11 = self->_openRegistrationTokens;
    v12 = [v13 identifier];
    [(NSMutableDictionary *)v11 removeObjectForKey:v12];
  }

  objc_sync_exit(v7);
}

- (void)deregisterCallback:(id)a3
{
  v13 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = _os_activity_create(&dword_1A9611000, "CoreDuet: ClientContext deregisterCallback:", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
  v12.opaque[0] = 0;
  v12.opaque[1] = 0;
  os_activity_scope_enter(v5, &v12);
  os_activity_scope_leave(&v12);

  log = self->_log;
  if (os_log_type_enabled(log, OS_LOG_TYPE_DEFAULT))
  {
    v7 = log;
    v8 = [v4 identifier];
    LODWORD(v12.opaque[0]) = 138412290;
    *(v12.opaque + 4) = v8;
    _os_log_impl(&dword_1A9611000, v7, OS_LOG_TYPE_DEFAULT, "Deregistering callback: %@", &v12, 0xCu);
  }

  v9 = [(_CDClientContext *)self currentConnection];
  v10 = [v9 remoteObjectProxy];
  [v10 deregisterCallback:v4];

  [(_CDClientContext *)self cleanupInternalReferencesToRegistration:v4];
  v11 = *MEMORY[0x1E69E9840];
}

- (BOOL)evaluatePredicate:(id)a3
{
  v18 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = _os_activity_create(&dword_1A9611000, "CoreDuet: ClientContext evaluatePredicate:", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
  state.opaque[0] = 0;
  state.opaque[1] = 0;
  os_activity_scope_enter(v5, &state);
  os_activity_scope_leave(&state);

  log = self->_log;
  if (os_log_type_enabled(log, OS_LOG_TYPE_DEFAULT))
  {
    LODWORD(state.opaque[0]) = 138412290;
    *(state.opaque + 4) = v4;
    _os_log_impl(&dword_1A9611000, log, OS_LOG_TYPE_DEFAULT, "Evaluating predicate: %@", &state, 0xCu);
  }

  state.opaque[0] = 0;
  state.opaque[1] = &state;
  v16 = 0x2020000000;
  v17 = 0;
  v7 = [(_CDClientContext *)self currentConnection];
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __38___CDClientContext_evaluatePredicate___block_invoke;
  v13[3] = &unk_1E78867E0;
  v13[4] = self;
  v8 = v4;
  v14 = v8;
  v9 = [v7 synchronousRemoteObjectProxyWithErrorHandler:v13];
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __38___CDClientContext_evaluatePredicate___block_invoke_142;
  v12[3] = &unk_1E7886850;
  v12[4] = &state;
  [v9 evaluatePredicate:v8 handler:v12];

  LOBYTE(v9) = *(state.opaque[1] + 24);
  _Block_object_dispose(&state, 8);

  v10 = *MEMORY[0x1E69E9840];
  return v9 & 1;
}

- (void)handleContextualChange:(id)a3 info:(id)a4 handler:(id)a5
{
  v47 = *MEMORY[0x1E69E9840];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = _os_activity_create(&dword_1A9611000, "CoreDuet: ClientContext handleContextualChange:info:handler:", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
  state.opaque[0] = 0;
  state.opaque[1] = 0;
  os_activity_scope_enter(v11, &state);
  os_activity_scope_leave(&state);

  log = self->_log;
  if (os_log_type_enabled(log, OS_LOG_TYPE_DEFAULT))
  {
    LODWORD(state.opaque[0]) = 138412290;
    *(state.opaque + 4) = v8;
    _os_log_impl(&dword_1A9611000, log, OS_LOG_TYPE_DEFAULT, "Registration fired for %@", &state, 0xCu);
  }

  v13 = self->_registrations;
  objc_sync_enter(v13);
  v14 = [(NSMutableDictionary *)self->_registrations objectForKeyedSubscript:v8];
  objc_sync_exit(v13);

  if (v14)
  {
    v15 = self->_keyPathToValues;
    objc_sync_enter(v15);
    v41 = 0u;
    v42 = 0u;
    v43 = 0u;
    v44 = 0u;
    v16 = [v14 predicate];
    v17 = [v16 keyPaths];

    v18 = [v17 countByEnumeratingWithState:&v41 objects:v45 count:16];
    v19 = v10;
    v20 = v9;
    if (v18)
    {
      v21 = *v42;
      do
      {
        for (i = 0; i != v18; ++i)
        {
          if (*v42 != v21)
          {
            objc_enumerationMutation(v17);
          }

          [(NSMutableDictionary *)self->_keyPathToValues removeObjectForKey:*(*(&v41 + 1) + 8 * i)];
        }

        v18 = [v17 countByEnumeratingWithState:&v41 objects:v45 count:16];
      }

      while (v18);
    }

    v9 = v20;
    v10 = v19;
    objc_sync_exit(v15);

    v23 = [v14 informativeCallback];

    if (v23)
    {
      v24 = self->_log;
      if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
      {
        LODWORD(state.opaque[0]) = 138412290;
        *(state.opaque + 4) = v8;
        _os_log_impl(&dword_1A9611000, v24, OS_LOG_TYPE_DEFAULT, "Dispatching call to informative registration callback for %@", &state, 0xCu);
      }

      v25 = os_transaction_create();
      serialRegistrationCallbackQueue = self->_serialRegistrationCallbackQueue;
      block[0] = MEMORY[0x1E69E9820];
      block[1] = 3221225472;
      block[2] = __56___CDClientContext_handleContextualChange_info_handler___block_invoke;
      block[3] = &unk_1E7886618;
      v37 = v14;
      v38 = v8;
      v39 = v9;
      v40 = v25;
      v27 = v25;
      v28 = dispatch_block_create(DISPATCH_BLOCK_ENFORCE_QOS_CLASS|DISPATCH_BLOCK_ASSIGN_CURRENT, block);
      dispatch_async(serialRegistrationCallbackQueue, v28);

      v19[2](v19, 1);
    }

    else
    {
      _cdcontextstore_signpost_deprecated_api();
      if (os_log_type_enabled(self->_log, OS_LOG_TYPE_ERROR))
      {
        [_CDClientContext handleContextualChange:info:handler:];
      }

      v29 = [v14 callback];
      concurrentRegistrationCallbackQueue = self->_concurrentRegistrationCallbackQueue;
      v33 = v8;
      v35 = v19;
      v34 = v14;
      v31 = v29;
      cd_dispatch_async_xpc();
    }
  }

  else
  {
    if (os_log_type_enabled(self->_log, OS_LOG_TYPE_ERROR))
    {
      [_CDClientContext handleContextualChange:info:handler:];
    }

    (*(v10 + 2))(v10, 0);
  }

  v32 = *MEMORY[0x1E69E9840];
}

- (void)handleRegistrationCompleted:(id)a3 handler:(id)a4
{
  v14 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v8 = _os_activity_create(&dword_1A9611000, "CoreDuet: ClientContext handleRegistrationCompleted:handler:", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
  v13.opaque[0] = 0;
  v13.opaque[1] = 0;
  os_activity_scope_enter(v8, &v13);
  os_activity_scope_leave(&v13);

  log = self->_log;
  if (os_log_type_enabled(log, OS_LOG_TYPE_DEFAULT))
  {
    LODWORD(v13.opaque[0]) = 138412290;
    *(v13.opaque + 4) = v6;
    _os_log_impl(&dword_1A9611000, log, OS_LOG_TYPE_DEFAULT, "Registration completed for %@", &v13, 0xCu);
  }

  v10 = self->_registrations;
  objc_sync_enter(v10);
  v11 = [(NSMutableDictionary *)self->_registrations objectForKeyedSubscript:v6];
  objc_sync_exit(v10);

  if (v11)
  {
    [(_CDClientContext *)self clearCacheForKeyPathsWithFireOnChangeRegistrations:v11];
  }

  v7[2](v7, v11 != 0);

  v12 = *MEMORY[0x1E69E9840];
}

- (BOOL)setObject:(id)a3 forContextualKeyPath:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = _os_activity_create(&dword_1A9611000, "CoreDuet: ClientContext setObject:forContextualKeyPath:", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
  v11.opaque[0] = 0;
  v11.opaque[1] = 0;
  os_activity_scope_enter(v8, &v11);
  os_activity_scope_leave(&v11);

  if (v7)
  {
    v9 = [(_CDClientContext *)self setObject:v6 forContextualKeyPath:v7 synchronous:1 responseQueue:0 withCompletion:0];
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (void)setObject:(id)a3 forContextualKeyPath:(id)a4 responseQueue:(id)a5 withCompletion:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  v14 = _os_activity_create(&dword_1A9611000, "CoreDuet: ClientContext setObject:forContextualKeyPath:responseQueue:withCompletion:", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
  state.opaque[0] = 0;
  state.opaque[1] = 0;
  os_activity_scope_enter(v14, &state);
  os_activity_scope_leave(&state);

  if (v11)
  {
    [(_CDClientContext *)self setObject:v10 forContextualKeyPath:v11 synchronous:0 responseQueue:v12 withCompletion:v13];
  }

  else if (v13)
  {
    v15 = v12;
    if (!v12)
    {
      v15 = [(_CDClientContext *)self defaultCallbackQueue];
    }

    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __80___CDClientContext_setObject_forContextualKeyPath_responseQueue_withCompletion___block_invoke;
    block[3] = &unk_1E7886878;
    v17 = v13;
    dispatch_async(v15, block);
    if (!v12)
    {
    }
  }
}

- (BOOL)setObject:(id)a3 forContextualKeyPath:(id)a4 synchronous:(BOOL)a5 responseQueue:(id)a6 withCompletion:(id)a7
{
  v9 = a5;
  v45 = *MEMORY[0x1E69E9840];
  v12 = a3;
  v13 = a4;
  v14 = a6;
  v15 = a7;
  [(_CDClientContext *)self logFaultIfDeprecatedKeyPath:v13];
  v37[0] = MEMORY[0x1E69E9820];
  v37[1] = 3221225472;
  v37[2] = __92___CDClientContext_setObject_forContextualKeyPath_synchronous_responseQueue_withCompletion___block_invoke;
  v37[3] = &unk_1E78869B8;
  v37[4] = self;
  v16 = v12;
  v38 = v16;
  v17 = v13;
  v39 = v17;
  v18 = v15;
  v41 = v18;
  v19 = v14;
  v40 = v19;
  v20 = MEMORY[0x1AC5886D0](v37);
  log = self->_log;
  if (os_log_type_enabled(log, OS_LOG_TYPE_INFO))
  {
    LODWORD(buf) = 138412290;
    *(&buf + 4) = v17;
    _os_log_impl(&dword_1A9611000, log, OS_LOG_TYPE_INFO, "Setting keypath: %@", &buf, 0xCu);
  }

  v22 = [(_CDClientContext *)self currentConnection];
  v23 = v22;
  if (v9)
  {
    [v22 synchronousRemoteObjectProxyWithErrorHandler:v20];
  }

  else
  {
    [v22 remoteObjectProxyWithErrorHandler:v20];
  }
  v24 = ;

  *&buf = 0;
  *(&buf + 1) = &buf;
  v43 = 0x2020000000;
  v44 = 0;
  v31[0] = MEMORY[0x1E69E9820];
  v31[1] = 3221225472;
  v31[2] = __92___CDClientContext_setObject_forContextualKeyPath_synchronous_responseQueue_withCompletion___block_invoke_147;
  v31[3] = &unk_1E7886A08;
  p_buf = &buf;
  v25 = v18;
  v35 = v25;
  v26 = v19;
  v32 = v26;
  v33 = self;
  v27 = v17;
  v34 = v27;
  [v24 setObject:v16 forPath:v27 handler:v31];
  v28 = *(*(&buf + 1) + 24);

  _Block_object_dispose(&buf, 8);
  v29 = *MEMORY[0x1E69E9840];
  return v28 & 1;
}

- (BOOL)addObjects:(id)a3 toArrayAtKeyPath:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = _os_activity_create(&dword_1A9611000, "CoreDuet: ClientContext addObjects:toArrayAtKeyPath:", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
  v11.opaque[0] = 0;
  v11.opaque[1] = 0;
  os_activity_scope_enter(v8, &v11);
  os_activity_scope_leave(&v11);

  if ([v6 count])
  {
    v9 = [(_CDClientContext *)self addObjects:v6 toArrayAtKeyPath:v7 synchronous:1 responseQueue:0 withCompletion:0];
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (void)addObjects:(id)a3 toArrayAtKeyPath:(id)a4 responseQueue:(id)a5 withCompletion:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  v14 = _os_activity_create(&dword_1A9611000, "CoreDuet: ClientContext addObjects:toArrayAtKeyPath:responseQueue:withCompletion:", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
  state.opaque[0] = 0;
  state.opaque[1] = 0;
  os_activity_scope_enter(v14, &state);
  os_activity_scope_leave(&state);

  if ([v10 count])
  {
    [(_CDClientContext *)self addObjects:v10 toArrayAtKeyPath:v11 synchronous:0 responseQueue:v12 withCompletion:v13];
  }

  else if (v13)
  {
    v15 = v12;
    if (!v12)
    {
      v15 = [(_CDClientContext *)self defaultCallbackQueue];
    }

    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __77___CDClientContext_addObjects_toArrayAtKeyPath_responseQueue_withCompletion___block_invoke;
    block[3] = &unk_1E7886878;
    v17 = v13;
    dispatch_async(v15, block);
    if (!v12)
    {
    }
  }
}

- (BOOL)addObjects:(id)a3 toArrayAtKeyPath:(id)a4 synchronous:(BOOL)a5 responseQueue:(id)a6 withCompletion:(id)a7
{
  v9 = a5;
  v45 = *MEMORY[0x1E69E9840];
  v12 = a3;
  v13 = a4;
  v14 = a6;
  v15 = a7;
  [(_CDClientContext *)self logFaultIfDeprecatedKeyPath:v13];
  v37[0] = MEMORY[0x1E69E9820];
  v37[1] = 3221225472;
  v37[2] = __89___CDClientContext_addObjects_toArrayAtKeyPath_synchronous_responseQueue_withCompletion___block_invoke;
  v37[3] = &unk_1E78869B8;
  v37[4] = self;
  v16 = v12;
  v38 = v16;
  v17 = v13;
  v39 = v17;
  v18 = v15;
  v41 = v18;
  v19 = v14;
  v40 = v19;
  v20 = MEMORY[0x1AC5886D0](v37);
  log = self->_log;
  if (os_log_type_enabled(log, OS_LOG_TYPE_INFO))
  {
    LODWORD(buf) = 138412290;
    *(&buf + 4) = v17;
    _os_log_impl(&dword_1A9611000, log, OS_LOG_TYPE_INFO, "Adding object to keypath: %@", &buf, 0xCu);
  }

  v22 = [(_CDClientContext *)self currentConnection];
  v23 = v22;
  if (v9)
  {
    [v22 synchronousRemoteObjectProxyWithErrorHandler:v20];
  }

  else
  {
    [v22 remoteObjectProxyWithErrorHandler:v20];
  }
  v24 = ;

  *&buf = 0;
  *(&buf + 1) = &buf;
  v43 = 0x2020000000;
  v44 = 0;
  v31[0] = MEMORY[0x1E69E9820];
  v31[1] = 3221225472;
  v31[2] = __89___CDClientContext_addObjects_toArrayAtKeyPath_synchronous_responseQueue_withCompletion___block_invoke_149;
  v31[3] = &unk_1E7886A08;
  p_buf = &buf;
  v25 = v18;
  v35 = v25;
  v26 = v19;
  v32 = v26;
  v33 = self;
  v27 = v17;
  v34 = v27;
  [v24 addObjects:v16 andRemoveObjects:0 forArrayAtPath:v27 handler:v31];
  v28 = *(*(&buf + 1) + 24);

  _Block_object_dispose(&buf, 8);
  v29 = *MEMORY[0x1E69E9840];
  return v28 & 1;
}

- (BOOL)removeObjects:(id)a3 fromArrayAtKeyPath:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = _os_activity_create(&dword_1A9611000, "CoreDuet: ClientContext removeObjects:fromArrayAtKeyPath:", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
  v11.opaque[0] = 0;
  v11.opaque[1] = 0;
  os_activity_scope_enter(v8, &v11);
  os_activity_scope_leave(&v11);

  if ([v6 count])
  {
    v9 = [(_CDClientContext *)self removeObjects:v6 fromArrayAtKeyPath:v7 synchronous:1 responseQueue:0 withCompletion:0];
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (void)removeObjects:(id)a3 fromArrayAtKeyPath:(id)a4 responseQueue:(id)a5 withCompletion:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  v14 = _os_activity_create(&dword_1A9611000, "CoreDuet: ClientContext removeObjects:fromArrayAtKeyPath:responseQueue:withCompletion:", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
  state.opaque[0] = 0;
  state.opaque[1] = 0;
  os_activity_scope_enter(v14, &state);
  os_activity_scope_leave(&state);

  if ([v10 count])
  {
    [(_CDClientContext *)self removeObjects:v10 fromArrayAtKeyPath:v11 synchronous:0 responseQueue:v12 withCompletion:v13];
  }

  else if (v13)
  {
    v15 = v12;
    if (!v12)
    {
      v15 = [(_CDClientContext *)self defaultCallbackQueue];
    }

    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __82___CDClientContext_removeObjects_fromArrayAtKeyPath_responseQueue_withCompletion___block_invoke;
    block[3] = &unk_1E7886878;
    v17 = v13;
    dispatch_async(v15, block);
    if (!v12)
    {
    }
  }
}

- (BOOL)removeObjects:(id)a3 fromArrayAtKeyPath:(id)a4 synchronous:(BOOL)a5 responseQueue:(id)a6 withCompletion:(id)a7
{
  v9 = a5;
  v44 = *MEMORY[0x1E69E9840];
  v12 = a3;
  v13 = a4;
  v14 = a6;
  v15 = a7;
  [(_CDClientContext *)self logFaultIfDeprecatedKeyPath:v13];
  v36[0] = MEMORY[0x1E69E9820];
  v36[1] = 3221225472;
  v36[2] = __94___CDClientContext_removeObjects_fromArrayAtKeyPath_synchronous_responseQueue_withCompletion___block_invoke;
  v36[3] = &unk_1E78869B8;
  v36[4] = self;
  v16 = v12;
  v37 = v16;
  v17 = v13;
  v38 = v17;
  v18 = v15;
  v40 = v18;
  v19 = v14;
  v39 = v19;
  v20 = MEMORY[0x1AC5886D0](v36);
  log = self->_log;
  if (os_log_type_enabled(log, OS_LOG_TYPE_INFO))
  {
    LODWORD(buf) = 138412290;
    *(&buf + 4) = v17;
    _os_log_impl(&dword_1A9611000, log, OS_LOG_TYPE_INFO, "Removing object from keypath: %@", &buf, 0xCu);
  }

  v22 = [(_CDClientContext *)self currentConnection];
  v23 = v22;
  if (v9)
  {
    [v22 synchronousRemoteObjectProxyWithErrorHandler:v20];
  }

  else
  {
    [v22 remoteObjectProxyWithErrorHandler:v20];
  }
  v24 = ;

  *&buf = 0;
  *(&buf + 1) = &buf;
  v42 = 0x2020000000;
  v43 = 0;
  v31[0] = MEMORY[0x1E69E9820];
  v31[1] = 3221225472;
  v31[2] = __94___CDClientContext_removeObjects_fromArrayAtKeyPath_synchronous_responseQueue_withCompletion___block_invoke_151;
  v31[3] = &unk_1E7886A30;
  p_buf = &buf;
  v31[4] = self;
  v25 = v17;
  v32 = v25;
  v26 = v18;
  v34 = v26;
  v27 = v19;
  v33 = v27;
  [v24 addObjects:0 andRemoveObjects:v16 forArrayAtPath:v25 handler:v31];
  v28 = *(*(&buf + 1) + 24);

  _Block_object_dispose(&buf, 8);
  v29 = *MEMORY[0x1E69E9840];
  return v28 & 1;
}

- (id)removeObjectsMatchingPredicate:(id)a3 fromArrayAtKeyPath:(id)a4
{
  if (a3)
  {
    v5 = [(_CDClientContext *)self removeObjectsMatchingPredicate:a3 fromArrayAtKeyPath:a4 synchronous:1 responseQueue:0 withCompletion:0];
  }

  else
  {
    v5 = MEMORY[0x1E695E0F0];
  }

  return v5;
}

- (void)removeObjectsMatchingPredicate:(id)a3 fromArrayAtKeyPath:(id)a4 responseQueue:(id)a5 withCompletion:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  v14 = v13;
  if (v10)
  {
    v15 = [(_CDClientContext *)self removeObjectsMatchingPredicate:v10 fromArrayAtKeyPath:v11 synchronous:0 responseQueue:v12 withCompletion:v13];
  }

  else if (v13)
  {
    v16 = v12;
    if (!v12)
    {
      v16 = [(_CDClientContext *)self defaultCallbackQueue];
    }

    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __99___CDClientContext_removeObjectsMatchingPredicate_fromArrayAtKeyPath_responseQueue_withCompletion___block_invoke;
    block[3] = &unk_1E7886878;
    v18 = v14;
    dispatch_async(v16, block);
    if (!v12)
    {
    }
  }
}

- (id)removeObjectsMatchingPredicate:(id)a3 fromArrayAtKeyPath:(id)a4 synchronous:(BOOL)a5 responseQueue:(id)a6 withCompletion:(id)a7
{
  v9 = a5;
  v47 = *MEMORY[0x1E69E9840];
  v12 = a3;
  v13 = a4;
  v14 = a6;
  v15 = a7;
  [(_CDClientContext *)self logFaultIfDeprecatedKeyPath:v13];
  v16 = _os_activity_create(&dword_1A9611000, "CoreDuet: ClientContext removeObjectsMatchingPredicate:fromArrayAtKeyPath:synchronous:responseQueue:withCompletion:", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
  state.opaque[0] = 0;
  state.opaque[1] = 0;
  os_activity_scope_enter(v16, &state);
  os_activity_scope_leave(&state);

  v37[0] = MEMORY[0x1E69E9820];
  v37[1] = 3221225472;
  v37[2] = __111___CDClientContext_removeObjectsMatchingPredicate_fromArrayAtKeyPath_synchronous_responseQueue_withCompletion___block_invoke;
  v37[3] = &unk_1E78869B8;
  v37[4] = self;
  v17 = v12;
  v38 = v17;
  v18 = v13;
  v39 = v18;
  v19 = v15;
  v41 = v19;
  v20 = v14;
  v40 = v20;
  v21 = MEMORY[0x1AC5886D0](v37);
  log = self->_log;
  if (os_log_type_enabled(log, OS_LOG_TYPE_INFO))
  {
    LODWORD(state.opaque[0]) = 138412290;
    *(state.opaque + 4) = v18;
    _os_log_impl(&dword_1A9611000, log, OS_LOG_TYPE_INFO, "Removing objects matching predicate from keypath: %@", &state, 0xCu);
  }

  v23 = [(_CDClientContext *)self currentConnection];
  v24 = v23;
  if (v9)
  {
    [v23 synchronousRemoteObjectProxyWithErrorHandler:v21];
  }

  else
  {
    [v23 remoteObjectProxyWithErrorHandler:v21];
  }
  v25 = ;

  state.opaque[0] = 0;
  state.opaque[1] = &state;
  v43 = 0x3032000000;
  v44 = __Block_byref_object_copy__1;
  v45 = __Block_byref_object_dispose__1;
  v46 = 0;
  v32[0] = MEMORY[0x1E69E9820];
  v32[1] = 3221225472;
  v32[2] = __111___CDClientContext_removeObjectsMatchingPredicate_fromArrayAtKeyPath_synchronous_responseQueue_withCompletion___block_invoke_154;
  v32[3] = &unk_1E7886A80;
  p_state = &state;
  v32[4] = self;
  v26 = v18;
  v33 = v26;
  v27 = v19;
  v35 = v27;
  v28 = v20;
  v34 = v28;
  [v25 removeObjectsMatchingPredicate:v17 fromArrayAtPath:v26 handler:v32];
  v29 = *(state.opaque[1] + 40);

  _Block_object_dispose(&state, 8);
  v30 = *MEMORY[0x1E69E9840];

  return v29;
}

- (BOOL)addObjects:(id)a3 andRemoveObjects:(id)a4 fromArrayAtKeyPath:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = _os_activity_create(&dword_1A9611000, "CoreDuet: ClientContext addObjects:andRemoveObjects:fromArrayAtKeyPath:", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
  v14.opaque[0] = 0;
  v14.opaque[1] = 0;
  os_activity_scope_enter(v11, &v14);
  os_activity_scope_leave(&v14);

  v12 = ([v8 count] || objc_msgSend(v9, "count")) && -[_CDClientContext addObjects:andRemoveObjects:fromArrayAtKeyPath:synchronous:responseQueue:withCompletion:](self, "addObjects:andRemoveObjects:fromArrayAtKeyPath:synchronous:responseQueue:withCompletion:", v8, v9, v10, 1, 0, 0);
  return v12;
}

- (void)addObjects:(id)a3 andRemoveObjects:(id)a4 fromArrayAtKeyPath:(id)a5 responseQueue:(id)a6 withCompletion:(id)a7
{
  v12 = a3;
  v13 = a4;
  v14 = a5;
  v15 = a6;
  v16 = a7;
  v17 = _os_activity_create(&dword_1A9611000, "CoreDuet: ClientContext addObjects:andRemoveObjects:fromArrayAtKeyPath:responseQueue:withCompletion:", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
  state.opaque[0] = 0;
  state.opaque[1] = 0;
  os_activity_scope_enter(v17, &state);
  os_activity_scope_leave(&state);

  if ([v12 count] || objc_msgSend(v13, "count"))
  {
    [(_CDClientContext *)self addObjects:v12 andRemoveObjects:v13 fromArrayAtKeyPath:v14 synchronous:0 responseQueue:v15 withCompletion:v16];
  }

  else if (v16)
  {
    v18 = v15;
    if (!v15)
    {
      v18 = [(_CDClientContext *)self defaultCallbackQueue];
    }

    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __96___CDClientContext_addObjects_andRemoveObjects_fromArrayAtKeyPath_responseQueue_withCompletion___block_invoke;
    block[3] = &unk_1E7886878;
    v20 = v16;
    dispatch_async(v18, block);
    if (!v15)
    {
    }
  }
}

- (BOOL)addObjects:(id)a3 andRemoveObjects:(id)a4 fromArrayAtKeyPath:(id)a5 synchronous:(BOOL)a6 responseQueue:(id)a7 withCompletion:(id)a8
{
  v10 = a6;
  v49 = *MEMORY[0x1E69E9840];
  v14 = a3;
  v15 = a4;
  v16 = a5;
  v17 = a7;
  v18 = a8;
  [(_CDClientContext *)self logFaultIfDeprecatedKeyPath:v16];
  v40[0] = MEMORY[0x1E69E9820];
  v40[1] = 3221225472;
  v40[2] = __108___CDClientContext_addObjects_andRemoveObjects_fromArrayAtKeyPath_synchronous_responseQueue_withCompletion___block_invoke;
  v40[3] = &unk_1E7886AA8;
  v40[4] = self;
  v19 = v14;
  v41 = v19;
  v20 = v15;
  v42 = v20;
  v21 = v16;
  v43 = v21;
  v22 = v18;
  v45 = v22;
  v23 = v17;
  v44 = v23;
  v24 = MEMORY[0x1AC5886D0](v40);
  log = self->_log;
  if (os_log_type_enabled(log, OS_LOG_TYPE_INFO))
  {
    LODWORD(buf) = 138412290;
    *(&buf + 4) = v21;
    _os_log_impl(&dword_1A9611000, log, OS_LOG_TYPE_INFO, "Adding to and removing from keypath: %@", &buf, 0xCu);
  }

  v26 = [(_CDClientContext *)self currentConnection];
  v27 = v26;
  if (v10)
  {
    [v26 synchronousRemoteObjectProxyWithErrorHandler:v24];
  }

  else
  {
    [v26 remoteObjectProxyWithErrorHandler:v24];
  }
  v28 = ;

  *&buf = 0;
  *(&buf + 1) = &buf;
  v47 = 0x2020000000;
  v48 = 0;
  v35[0] = MEMORY[0x1E69E9820];
  v35[1] = 3221225472;
  v35[2] = __108___CDClientContext_addObjects_andRemoveObjects_fromArrayAtKeyPath_synchronous_responseQueue_withCompletion___block_invoke_158;
  v35[3] = &unk_1E7886A30;
  p_buf = &buf;
  v35[4] = self;
  v29 = v21;
  v36 = v29;
  v30 = v22;
  v38 = v30;
  v31 = v23;
  v37 = v31;
  [v28 addObjects:v19 andRemoveObjects:v20 forArrayAtPath:v29 handler:v35];
  v32 = *(*(&buf + 1) + 24);

  _Block_object_dispose(&buf, 8);
  v33 = *MEMORY[0x1E69E9840];
  return v32 & 1;
}

- (id)valuesForKeyPaths:(id)a3 inContextsMatchingPredicate:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = _os_activity_create(&dword_1A9611000, "CoreDuet: ClientContext valuesForKeyPaths:inContextsMatchingPredicate:", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
  state.opaque[0] = 0;
  state.opaque[1] = 0;
  os_activity_scope_enter(v8, &state);
  os_activity_scope_leave(&state);

  state.opaque[0] = 0;
  state.opaque[1] = &state;
  v16 = 0x3032000000;
  v17 = __Block_byref_object_copy__1;
  v18 = __Block_byref_object_dispose__1;
  v19 = 0;
  v9 = [(_CDClientContext *)self currentConnection];
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __66___CDClientContext_valuesForKeyPaths_inContextsMatchingPredicate___block_invoke;
  v14[3] = &unk_1E7886808;
  v14[4] = self;
  v10 = [v9 synchronousRemoteObjectProxyWithErrorHandler:v14];
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __66___CDClientContext_valuesForKeyPaths_inContextsMatchingPredicate___block_invoke_160;
  v13[3] = &unk_1E7886AD0;
  v13[4] = &state;
  [v10 valuesForPaths:v6 inContextsMatching:v7 handler:v13];

  v11 = *(state.opaque[1] + 40);
  _Block_object_dispose(&state, 8);

  return v11;
}

- (id)valuesForKeyPaths:(id)a3
{
  v4 = a3;
  v5 = _os_activity_create(&dword_1A9611000, "CoreDuet: ClientContext valuesForKeyPaths:", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
  v8.opaque[0] = 0;
  v8.opaque[1] = 0;
  os_activity_scope_enter(v5, &v8);
  os_activity_scope_leave(&v8);

  if ([v4 count])
  {
    v6 = [(_CDClientContext *)self valuesForKeyPaths:v4 synchronous:1 responseQueue:0 withCompletion:0];
  }

  else
  {
    v6 = MEMORY[0x1E695E0F8];
  }

  return v6;
}

- (void)valuesForKeyPaths:(id)a3 responseQueue:(id)a4 withCompletion:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = _os_activity_create(&dword_1A9611000, "CoreDuet: ClientContext valuesForKeyPaths:responseQueue:withCompletion:", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
  state.opaque[0] = 0;
  state.opaque[1] = 0;
  os_activity_scope_enter(v11, &state);
  os_activity_scope_leave(&state);

  v12 = [v8 count];
  if (v10 && v12)
  {
    v13 = [(_CDClientContext *)self valuesForKeyPaths:v8 synchronous:0 responseQueue:v9 withCompletion:v10];
  }

  else if (v10)
  {
    v14 = v9;
    if (!v9)
    {
      v14 = [(_CDClientContext *)self defaultCallbackQueue];
    }

    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __67___CDClientContext_valuesForKeyPaths_responseQueue_withCompletion___block_invoke;
    block[3] = &unk_1E7886878;
    v16 = v10;
    dispatch_async(v14, block);
    if (!v9)
    {
    }
  }
}

- (id)valuesForKeyPaths:(id)a3 synchronous:(BOOL)a4 responseQueue:(id)a5 withCompletion:(id)a6
{
  v8 = a4;
  v48 = *MEMORY[0x1E69E9840];
  v10 = a3;
  v11 = a5;
  v12 = a6;
  v38 = 0u;
  v39 = 0u;
  v40 = 0u;
  v41 = 0u;
  v13 = [v10 countByEnumeratingWithState:&v38 objects:v47 count:16];
  if (v13)
  {
    v14 = *v39;
    do
    {
      for (i = 0; i != v13; ++i)
      {
        if (*v39 != v14)
        {
          objc_enumerationMutation(v10);
        }

        [(_CDClientContext *)self logFaultIfDeprecatedKeyPath:*(*(&v38 + 1) + 8 * i)];
      }

      v13 = [v10 countByEnumeratingWithState:&v38 objects:v47 count:16];
    }

    while (v13);
  }

  log = self->_log;
  if (os_log_type_enabled(log, OS_LOG_TYPE_DEFAULT))
  {
    LODWORD(buf) = 138412290;
    *(&buf + 4) = v10;
    _os_log_impl(&dword_1A9611000, log, OS_LOG_TYPE_DEFAULT, "Getting values for keypaths: %@", &buf, 0xCu);
  }

  v35[0] = MEMORY[0x1E69E9820];
  v35[1] = 3221225472;
  v35[2] = __79___CDClientContext_valuesForKeyPaths_synchronous_responseQueue_withCompletion___block_invoke;
  v35[3] = &unk_1E7886AF8;
  v35[4] = self;
  v17 = v12;
  v37 = v17;
  v18 = v11;
  v36 = v18;
  v19 = MEMORY[0x1AC5886D0](v35);
  v20 = [(_CDClientContext *)self currentConnection];
  v21 = v20;
  if (v8)
  {
    [v20 synchronousRemoteObjectProxyWithErrorHandler:v19];
  }

  else
  {
    [v20 remoteObjectProxyWithErrorHandler:v19];
  }
  v22 = ;

  *&buf = 0;
  *(&buf + 1) = &buf;
  v43 = 0x3032000000;
  v44 = __Block_byref_object_copy__1;
  v45 = __Block_byref_object_dispose__1;
  v46 = 0;
  v29[0] = MEMORY[0x1E69E9820];
  v29[1] = 3221225472;
  v29[2] = __79___CDClientContext_valuesForKeyPaths_synchronous_responseQueue_withCompletion___block_invoke_2;
  v29[3] = &unk_1E7886B20;
  p_buf = &buf;
  v23 = v17;
  v33 = v23;
  v24 = v18;
  v30 = v24;
  v31 = self;
  v25 = v10;
  v32 = v25;
  [v22 valuesForPaths:v25 handler:v29];
  v26 = *(*(&buf + 1) + 40);

  _Block_object_dispose(&buf, 8);
  v27 = *MEMORY[0x1E69E9840];

  return v26;
}

- (BOOL)setObject:(id)a3 lastModifiedDate:(id)a4 forContextualKeyPath:(id)a5
{
  v28 = *MEMORY[0x1E69E9840];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = _os_activity_create(&dword_1A9611000, "CoreDuet: ClientContext setObject:lastModifiedDate:forContextualKeyPath:", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
  *state = 0;
  *&state[8] = 0;
  os_activity_scope_enter(v11, state);
  os_activity_scope_leave(state);

  log = self->_log;
  if (os_log_type_enabled(log, OS_LOG_TYPE_INFO))
  {
    *state = 138412546;
    *&state[4] = v10;
    *&state[12] = 2112;
    *&state[14] = v9;
    _os_log_impl(&dword_1A9611000, log, OS_LOG_TYPE_INFO, "Setting object at keypath %@ with modified date: %@", state, 0x16u);
  }

  *state = 0;
  *&state[8] = state;
  *&state[16] = 0x2020000000;
  v27 = 0;
  v13 = [(_CDClientContext *)self currentConnection];
  v22[0] = MEMORY[0x1E69E9820];
  v22[1] = 3221225472;
  v22[2] = __68___CDClientContext_setObject_lastModifiedDate_forContextualKeyPath___block_invoke;
  v22[3] = &unk_1E7886B48;
  v22[4] = self;
  v14 = v8;
  v23 = v14;
  v15 = v9;
  v24 = v15;
  v16 = v10;
  v25 = v16;
  v17 = [v13 synchronousRemoteObjectProxyWithErrorHandler:v22];
  v21[0] = MEMORY[0x1E69E9820];
  v21[1] = 3221225472;
  v21[2] = __68___CDClientContext_setObject_lastModifiedDate_forContextualKeyPath___block_invoke_163;
  v21[3] = &unk_1E7886850;
  v21[4] = state;
  [v17 setObject:v14 lastModifiedDate:v15 forContextualKeyPath:v16 handler:v21];

  if (os_log_type_enabled(self->_log, OS_LOG_TYPE_DEBUG))
  {
    [_CDClientContext setObject:lastModifiedDate:forContextualKeyPath:];
  }

  v18 = *(*&state[8] + 24);

  _Block_object_dispose(state, 8);
  v19 = *MEMORY[0x1E69E9840];
  return v18 & 1;
}

- (void)activateDevices:(id)a3 remoteUserContextProxySourceDeviceUUID:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = _os_activity_create(&dword_1A9611000, "CoreDuet: ClientContext activateDevices:remoteUserContextProxySourceDeviceUUID:", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
  state.opaque[0] = 0;
  state.opaque[1] = 0;
  os_activity_scope_enter(v8, &state);
  os_activity_scope_leave(&state);

  log = self->_log;
  if (os_log_type_enabled(log, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(state.opaque[0]) = 0;
    _os_log_impl(&dword_1A9611000, log, OS_LOG_TYPE_DEFAULT, "Activating devices", &state, 2u);
  }

  v10 = [(_CDClientContext *)self currentConnection];
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __75___CDClientContext_activateDevices_remoteUserContextProxySourceDeviceUUID___block_invoke;
  v13[3] = &unk_1E7886808;
  v13[4] = self;
  v11 = [v10 synchronousRemoteObjectProxyWithErrorHandler:v13];
  [v11 activateDevices:v7 remoteUserContextProxySourceDeviceUUID:v6];

  v12 = self->_log;
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(state.opaque[0]) = 0;
    _os_log_impl(&dword_1A9611000, v12, OS_LOG_TYPE_DEFAULT, "Done activating devices", &state, 2u);
  }
}

- (void)deactivateDevices:(id)a3 remoteUserContextProxySourceDeviceUUID:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = _os_activity_create(&dword_1A9611000, "CoreDuet: ClientContext deactivateDevices:remoteUserContextProxySourceDeviceUUID:", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
  state.opaque[0] = 0;
  state.opaque[1] = 0;
  os_activity_scope_enter(v8, &state);
  os_activity_scope_leave(&state);

  log = self->_log;
  if (os_log_type_enabled(log, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(state.opaque[0]) = 0;
    _os_log_impl(&dword_1A9611000, log, OS_LOG_TYPE_DEFAULT, "Deactivating devices", &state, 2u);
  }

  v10 = [(_CDClientContext *)self currentConnection];
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __77___CDClientContext_deactivateDevices_remoteUserContextProxySourceDeviceUUID___block_invoke;
  v13[3] = &unk_1E7886808;
  v13[4] = self;
  v11 = [v10 synchronousRemoteObjectProxyWithErrorHandler:v13];
  [v11 deactivateDevices:v7 remoteUserContextProxySourceDeviceUUID:v6];

  v12 = self->_log;
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(state.opaque[0]) = 0;
    _os_log_impl(&dword_1A9611000, v12, OS_LOG_TYPE_DEFAULT, "Done deactivating devices", &state, 2u);
  }
}

- (void)handleMDCSEvent:.cold.1()
{
  v8 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0_0(&dword_1A9611000, v0, v1, "Ignoring unrecognized message: %s", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x1E69E9840];
}

- (void)handleNotificationEvent:.cold.1()
{
  v6 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_2_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
  v5 = *MEMORY[0x1E69E9840];
}

- (void)logFaultIfDeprecatedKeyPath:.cold.1()
{
  v3 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_1();
  _os_log_fault_impl(&dword_1A9611000, v0, OS_LOG_TYPE_FAULT, "the %@ contextual key path is deprecated and will be removed soon, please contact #help-biome", v2, 0xCu);
  v1 = *MEMORY[0x1E69E9840];
}

- (void)handleContextualChange:info:handler:.cold.1()
{
  v8 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0_0(&dword_1A9611000, v0, v1, "Dispatching call to deprecated registration callback for %@, this may lead to priority problems. Switch to non-deprecated _CDContextualChangeRegistration APIs.", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x1E69E9840];
}

- (void)handleContextualChange:info:handler:.cold.2()
{
  v8 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0_0(&dword_1A9611000, v0, v1, "Unable to find registration for %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x1E69E9840];
}

- (void)setObject:lastModifiedDate:forContextualKeyPath:.cold.1()
{
  v8 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_6(&dword_1A9611000, v0, v1, "Done setting object at keypath %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x1E69E9840];
}

@end