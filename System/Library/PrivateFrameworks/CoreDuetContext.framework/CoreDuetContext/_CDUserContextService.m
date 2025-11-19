@interface _CDUserContextService
+ (id)sharedInstanceWithPersistence:(id)a3;
+ (id)sharedInstanceWithSharedMemoryStore:(id)a3;
- (BOOL)listener:(id)a3 shouldAcceptNewConnection:(id)a4;
- (BOOL)setMappingObject:(id)a3 forContextualKeyPath:(id)a4;
- (_CDUserContextService)initWithListener:(id)a3 withPersistence:(id)a4 withStorage:(id)a5 withStore:(id)a6;
- (id)obtainFiredRegistrationMatchingRegistration:(id)a3 info:(id *)a4;
- (id)subscriberForSourceDeviceUUID:(id)a3;
- (id)subscribersForClientIdentifier:(id)a3;
- (unint64_t)tokenForSourceDeviceUUID:(id)a3;
- (void)addOpenRegistration:(id)a3;
- (void)addProxyWithSourceDeviceUUID:(id)a3;
- (void)addSubscriber:(id)a3;
- (void)clientWasInterrupted:(id)a3;
- (void)fetchProxySourceDeviceUUIDFromSubscriber:(id)a3;
- (void)informClientOfFiredRegistration:(id)a3 info:(id)a4;
- (void)regenerateState;
- (void)removeOpenRegistration:(id)a3;
- (void)removeSubscriberWithToken:(unint64_t)a3 streamName:(id)a4;
- (void)requestActivateDevicesFromAllSubscribersWithHandler:(id)a3;
- (void)requestActivateDevicesFromSubscriber:(id)a3 withHandler:(id)a4;
- (void)sendEvent:(id)a3 toClient:(id)a4 handler:(id)a5;
- (void)sendEvent:(id)a3 toClient:(id)a4 replyHandler:(id)a5;
- (void)sendEvent:(id)a3 toProxy:(id)a4 handler:(id)a5;
- (void)sendEvent:(id)a3 toProxy:(id)a4 replyHandler:(id)a5;
@end

@implementation _CDUserContextService

- (_CDUserContextService)initWithListener:(id)a3 withPersistence:(id)a4 withStorage:(id)a5 withStore:(id)a6
{
  v11 = a3;
  v12 = a4;
  v13 = a5;
  v14 = a6;
  v48.receiver = self;
  v48.super_class = _CDUserContextService;
  v15 = [(_CDUserContextService *)&v48 init];
  if (v15)
  {
    v16 = [MEMORY[0x1E695DFA8] set];
    clients = v15->_clients;
    v15->_clients = v16;

    v18 = +[_CDInMemoryUserContext userContext];
    userContext = v15->_userContext;
    v15->_userContext = v18;

    objc_storeStrong(&v15->_listener, a3);
    if (v12)
    {
      v20 = v12;
    }

    else if (v13)
    {
      v20 = [_CDCoreDataContextPersisting persistenceWithStorage:v13];
    }

    else
    {
      if (!v14)
      {
        v21 = [MEMORY[0x1E696AEC0] stringWithFormat:@"/%@", @"CDCSS"];
        v45 = [MEMORY[0x1E6997918] keyValueStoreWithName:v21 size:0];
        v46 = [_CDSharedMemoryContextPersisting persistenceWithSharedMemoryKeyValueStore:v45];
        persistence = v15->_persistence;
        v15->_persistence = v46;

        goto LABEL_9;
      }

      v20 = [_CDSharedMemoryContextPersisting persistenceWithSharedMemoryKeyValueStore:v14];
    }

    v21 = v15->_persistence;
    v15->_persistence = v20;
LABEL_9:

    [(_CDUserContextService *)v15 regenerateState];
    [(NSXPCListener *)v15->_listener setDelegate:v15];
    v22 = objc_opt_new();
    mdcsEventSubscribersByToken = v15->_mdcsEventSubscribersByToken;
    v15->_mdcsEventSubscribersByToken = v22;

    v24 = objc_opt_new();
    notificationEventSubscribersByToken = v15->_notificationEventSubscribersByToken;
    v15->_notificationEventSubscribersByToken = v24;

    v26 = objc_opt_new();
    notificationEventSubscribersByClientIdentifier = v15->_notificationEventSubscribersByClientIdentifier;
    v15->_notificationEventSubscribersByClientIdentifier = v26;

    v28 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v29 = dispatch_queue_attr_make_with_qos_class(v28, QOS_CLASS_UTILITY, 0);

    v30 = dispatch_queue_create("com.apple.coreduet.context-work-queue", v29);
    workQueue = v15->_workQueue;
    v15->_workQueue = v30;

    v32 = MEMORY[0x1E6997928];
    v33 = v15->_workQueue;
    v34 = [MEMORY[0x1E6997908] mdcsChannel];
    v35 = [v32 eventPublisherWithStreamName:"com.apple.coreduetcontext.mdcs_events" delegate:v15 queue:v33 log:v34 os_variant_diagnostic_subsystem:"com.apple.coreduetcontext"];
    mdcsEventPublisher = v15->_mdcsEventPublisher;
    v15->_mdcsEventPublisher = v35;

    v37 = MEMORY[0x1E6997928];
    v38 = v15->_workQueue;
    v39 = [MEMORY[0x1E6997908] contextChannel];
    v40 = [v37 eventPublisherWithStreamName:"com.apple.coreduetcontext.client_event_stream" delegate:v15 queue:v38 log:v39 os_variant_diagnostic_subsystem:"com.apple.coreduetcontext"];
    notificationEventPublisher = v15->_notificationEventPublisher;
    v15->_notificationEventPublisher = v40;

    v42 = [MEMORY[0x1E695DF90] dictionary];
    remoteDevicesByDeviceID = v15->_remoteDevicesByDeviceID;
    v15->_remoteDevicesByDeviceID = v42;
  }

  return v15;
}

+ (id)sharedInstanceWithPersistence:(id)a3
{
  v3 = a3;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __55___CDUserContextService_sharedInstanceWithPersistence___block_invoke;
  block[3] = &unk_1E7886288;
  v10 = v3;
  v4 = sharedInstanceWithPersistence__onceToken;
  v5 = v3;
  if (v4 != -1)
  {
    dispatch_once(&sharedInstanceWithPersistence__onceToken, block);
  }

  v6 = sharedInstanceWithPersistence__service;
  v7 = sharedInstanceWithPersistence__service;

  return v6;
}

+ (id)sharedInstanceWithSharedMemoryStore:(id)a3
{
  v3 = a3;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __61___CDUserContextService_sharedInstanceWithSharedMemoryStore___block_invoke;
  block[3] = &unk_1E7886288;
  v10 = v3;
  v4 = sharedInstanceWithSharedMemoryStore__onceToken;
  v5 = v3;
  if (v4 != -1)
  {
    dispatch_once(&sharedInstanceWithSharedMemoryStore__onceToken, block);
  }

  v6 = sharedInstanceWithSharedMemoryStore__service;
  v7 = sharedInstanceWithSharedMemoryStore__service;

  return v6;
}

- (void)addOpenRegistration:(id)a3
{
  v4 = a3;
  v5 = self->_openRegistrations;
  objc_sync_enter(v5);
  v6 = [(NSMutableSet *)self->_openRegistrations member:v4];
  objc_sync_exit(v5);

  if (!v6)
  {
    v6 = v4;
  }

  objc_initWeak(&location, v6);
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __45___CDUserContextService_addOpenRegistration___block_invoke;
  v7[3] = &unk_1E7886EB0;
  objc_copyWeak(&v8, &location);
  v7[4] = self;
  [v6 setInformativeCallback:v7];
  objc_destroyWeak(&v8);
  objc_destroyWeak(&location);
}

- (void)removeOpenRegistration:(id)a3
{
  v17 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = self->_openRegistrations;
  objc_sync_enter(v5);
  if ([(NSMutableSet *)self->_openRegistrations containsObject:v4])
  {
    v14 = 0u;
    v15 = 0u;
    v12 = 0u;
    v13 = 0u;
    v6 = self->_openRegistrations;
    v7 = [(NSMutableSet *)v6 countByEnumeratingWithState:&v12 objects:v16 count:16];
    if (v7)
    {
      v8 = *v13;
      while (2)
      {
        for (i = 0; i != v7; ++i)
        {
          if (*v13 != v8)
          {
            objc_enumerationMutation(v6);
          }

          v10 = *(*(&v12 + 1) + 8 * i);
          if ([v10 isEqual:{v4, v12}])
          {
            [(_CDInMemoryUserContext *)self->_userContext deregisterCallback:v10];
            [(NSMutableSet *)self->_openRegistrations removeObject:v10];
            goto LABEL_12;
          }
        }

        v7 = [(NSMutableSet *)v6 countByEnumeratingWithState:&v12 objects:v16 count:16];
        if (v7)
        {
          continue;
        }

        break;
      }
    }

LABEL_12:
  }

  objc_sync_exit(v5);

  v11 = *MEMORY[0x1E69E9840];
}

- (id)obtainFiredRegistrationMatchingRegistration:(id)a3 info:(id *)a4
{
  v6 = a3;
  v7 = self->_firedRegistrations;
  objc_sync_enter(v7);
  v8 = [(NSMutableSet *)self->_firedRegistrations member:v6];
  if (v8)
  {
    [(NSMutableSet *)self->_firedRegistrations removeObject:v8];
    if (a4)
    {
      firedRegistrationInfos = self->_firedRegistrationInfos;
      v10 = [v8 identifier];
      *a4 = [(NSMutableDictionary *)firedRegistrationInfos objectForKeyedSubscript:v10];
    }

    v11 = self->_firedRegistrationInfos;
    v12 = [v8 identifier];
    [(NSMutableDictionary *)v11 setObject:0 forKeyedSubscript:v12];
  }

  objc_sync_exit(v7);

  return v8;
}

- (void)informClientOfFiredRegistration:(id)a3 info:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [v6 clientIdentifier];
  if (v8)
  {
    v9 = [MEMORY[0x1E6997908] contextChannel];
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
    {
      [_CDUserContextService informClientOfFiredRegistration:v6 info:?];
    }

    v10 = [v6 identifier];
    v21 = 0;
    v11 = [(_CDXPCCodecs *)_CDXPCContextCodecs notificationEventWithRegistrationIdentifier:v10 info:v7 error:&v21];
    v12 = v21;
    if (v11)
    {
      v16 = MEMORY[0x1E69E9820];
      v17 = 3221225472;
      v18 = __62___CDUserContextService_informClientOfFiredRegistration_info___block_invoke;
      v19 = &unk_1E7886808;
      v20 = v6;
      [(_CDUserContextService *)self sendEvent:v11 toClient:v8 handler:&v16];
      v13 = v20;
    }

    else
    {
      v13 = [MEMORY[0x1E6997908] contextChannel];
      if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
      {
        [_CDUserContextService informClientOfFiredRegistration:info:];
      }
    }
  }

  v14 = [MEMORY[0x1E6997908] contextChannel];
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
  {
    [_CDUserContextService informClientOfFiredRegistration:v6 info:?];
  }

  v15 = [v6 identifier];
  notify_post([v15 UTF8String]);
}

- (void)regenerateState
{
  v32 = *MEMORY[0x1E69E9840];
  p_persistence = &self->_persistence;
  persistence = self->_persistence;
  v5 = [MEMORY[0x1E695DF00] dateWithTimeIntervalSinceNow:-1209600.0];
  [(_CDContextPersisting *)persistence deleteDataCreatedBefore:v5];

  v22 = [(_CDContextPersisting *)*p_persistence loadValues];
  v30[0] = MEMORY[0x1E69E9820];
  v30[1] = 3221225472;
  v30[2] = __40___CDUserContextService_regenerateState__block_invoke;
  v30[3] = &unk_1E7886ED8;
  v30[4] = self;
  [v22 enumerateKeysAndObjectsUsingBlock:v30];
  v6 = MEMORY[0x1E695DFA8];
  v7 = [(_CDContextPersisting *)*p_persistence loadRegistrations];
  v8 = [v6 setWithArray:v7];
  openRegistrations = self->_openRegistrations;
  self->_openRegistrations = v8;

  v10 = [MEMORY[0x1E695DFA8] set];
  firedRegistrations = self->_firedRegistrations;
  self->_firedRegistrations = v10;

  v12 = [MEMORY[0x1E695DF90] dictionaryWithCapacity:{-[NSMutableSet count](self->_openRegistrations, "count")}];
  firedRegistrationInfos = self->_firedRegistrationInfos;
  self->_firedRegistrationInfos = v12;

  obj = self->_openRegistrations;
  objc_sync_enter(obj);
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  v14 = self->_openRegistrations;
  v15 = [(NSMutableSet *)v14 countByEnumeratingWithState:&v26 objects:v31 count:16];
  if (v15)
  {
    v16 = *v27;
    v17 = MEMORY[0x1E69E9820];
    do
    {
      for (i = 0; i != v15; ++i)
      {
        if (*v27 != v16)
        {
          objc_enumerationMutation(v14);
        }

        v19 = *(*(&v26 + 1) + 8 * i);
        objc_initWeak(&location, v19);
        v23[0] = v17;
        v23[1] = 3221225472;
        v23[2] = __40___CDUserContextService_regenerateState__block_invoke_2;
        v23[3] = &unk_1E7886EB0;
        objc_copyWeak(&v24, &location);
        v23[4] = self;
        [v19 setInformativeCallback:v23];
        [(_CDInMemoryUserContext *)self->_userContext registerCallback:v19];
        objc_destroyWeak(&v24);
        objc_destroyWeak(&location);
      }

      v15 = [(NSMutableSet *)v14 countByEnumeratingWithState:&v26 objects:v31 count:16];
    }

    while (v15);
  }

  objc_sync_exit(obj);
  v20 = *MEMORY[0x1E69E9840];
}

- (void)clientWasInterrupted:(id)a3
{
  v4 = a3;
  if (v4)
  {
    v6 = v4;
    v5 = self->_clients;
    objc_sync_enter(v5);
    [(NSMutableSet *)self->_clients removeObject:v6];
    objc_sync_exit(v5);

    v4 = v6;
  }
}

- (BOOL)listener:(id)a3 shouldAcceptNewConnection:(id)a4
{
  v17 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  if (os_variant_has_internal_content())
  {
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __60___CDUserContextService_listener_shouldAcceptNewConnection___block_invoke;
    block[3] = &unk_1E7886288;
    block[4] = self;
    if (listener_shouldAcceptNewConnection__initialized != -1)
    {
      dispatch_once(&listener_shouldAcceptNewConnection__initialized, block);
    }
  }

  if (listener_shouldAcceptNewConnection__isUnitTests)
  {
    goto LABEL_8;
  }

  v8 = [v7 valueForEntitlement:@"com.apple.coreduetd.context"];
  v9 = v8;
  if (v8 && ([v8 BOOLValue] & 1) != 0)
  {

LABEL_8:
    v9 = [_CDUserContextServerClient clientOfService:self withConnection:v7 andContext:self->_userContext];
    v10 = self->_clients;
    objc_sync_enter(v10);
    [(NSMutableSet *)self->_clients addObject:v9];
    objc_sync_exit(v10);
    v11 = 1;
    goto LABEL_12;
  }

  v10 = [MEMORY[0x1E6997908] contextChannel];
  if (os_log_type_enabled(&v10->super.super, OS_LOG_TYPE_INFO))
  {
    *buf = 138412290;
    v16 = v7;
    _os_log_impl(&dword_1A9611000, &v10->super.super, OS_LOG_TYPE_INFO, "Client %@ does not have required entitlement", buf, 0xCu);
  }

  v11 = 0;
LABEL_12:

  v12 = *MEMORY[0x1E69E9840];
  return v11;
}

- (void)sendEvent:(id)a3 toProxy:(id)a4 handler:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = [(_CDUserContextService *)self subscriberForSourceDeviceUUID:v9];
  if (!v11)
  {
    v13 = [MEMORY[0x1E6997908] mdcsChannel];
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      [_CDUserContextService sendEvent:toProxy:handler:];
    }

    v14 = MEMORY[0x1E696ABC0];
    v15 = *MEMORY[0x1E6997A18];
    v16 = MEMORY[0x1E6997A58];
    goto LABEL_8;
  }

  mdcsEventPublisher = self->_mdcsEventPublisher;
  if (!mdcsEventPublisher)
  {
    v14 = MEMORY[0x1E696ABC0];
    v15 = *MEMORY[0x1E6997A18];
    v16 = MEMORY[0x1E6997A40];
LABEL_8:
    v17 = [v14 errorWithDomain:v15 code:*v16 userInfo:0];
    v10[2](v10, v17);

    goto LABEL_9;
  }

  [(_CDXPCEventPublisher *)mdcsEventPublisher sendEvent:v8 toSubscriber:v11 handler:v10];
LABEL_9:
}

- (void)sendEvent:(id)a3 toProxy:(id)a4 replyHandler:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = [(_CDUserContextService *)self subscriberForSourceDeviceUUID:v9];
  if (!v11)
  {
    v13 = [MEMORY[0x1E6997908] mdcsChannel];
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      [_CDUserContextService sendEvent:toProxy:handler:];
    }

    v14 = MEMORY[0x1E696ABC0];
    v15 = *MEMORY[0x1E6997A18];
    v16 = MEMORY[0x1E6997A58];
    goto LABEL_8;
  }

  mdcsEventPublisher = self->_mdcsEventPublisher;
  if (!mdcsEventPublisher)
  {
    v14 = MEMORY[0x1E696ABC0];
    v15 = *MEMORY[0x1E6997A18];
    v16 = MEMORY[0x1E6997A40];
LABEL_8:
    v17 = [v14 errorWithDomain:v15 code:*v16 userInfo:0];
    v10[2](v10, 0, v17);

    goto LABEL_9;
  }

  [(_CDXPCEventPublisher *)mdcsEventPublisher sendEvent:v8 toSubscriber:v11 replyHandler:v10];
LABEL_9:
}

- (void)sendEvent:(id)a3 toClient:(id)a4 handler:(id)a5
{
  v28 = *MEMORY[0x1E69E9840];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = [(_CDUserContextService *)self subscribersForClientIdentifier:v9];
  v12 = v11;
  if (!v11)
  {
    v17 = [MEMORY[0x1E6997908] mdcsChannel];
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      [_CDUserContextService sendEvent:toClient:handler:];
    }

    v18 = MEMORY[0x1E696ABC0];
    v19 = *MEMORY[0x1E6997A18];
    v20 = MEMORY[0x1E6997A50];
    goto LABEL_15;
  }

  if (!self->_notificationEventPublisher)
  {
    v18 = MEMORY[0x1E696ABC0];
    v19 = *MEMORY[0x1E6997A18];
    v20 = MEMORY[0x1E6997A40];
LABEL_15:
    v21 = [v18 errorWithDomain:v19 code:*v20 userInfo:0];
    v10[2](v10, v21);

    goto LABEL_16;
  }

  v25 = 0u;
  v26 = 0u;
  v23 = 0u;
  v24 = 0u;
  v13 = [v11 countByEnumeratingWithState:&v23 objects:v27 count:16];
  if (v13)
  {
    v14 = v13;
    v15 = *v24;
    do
    {
      for (i = 0; i != v14; ++i)
      {
        if (*v24 != v15)
        {
          objc_enumerationMutation(v12);
        }

        [(_CDXPCEventPublisher *)self->_notificationEventPublisher sendEvent:v8 toSubscriber:*(*(&v23 + 1) + 8 * i) handler:v10];
      }

      v14 = [v12 countByEnumeratingWithState:&v23 objects:v27 count:16];
    }

    while (v14);
  }

LABEL_16:

  v22 = *MEMORY[0x1E69E9840];
}

- (void)sendEvent:(id)a3 toClient:(id)a4 replyHandler:(id)a5
{
  v28 = *MEMORY[0x1E69E9840];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = [(_CDUserContextService *)self subscribersForClientIdentifier:v9];
  v12 = v11;
  if (!v11)
  {
    v17 = [MEMORY[0x1E6997908] mdcsChannel];
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      [_CDUserContextService sendEvent:toClient:handler:];
    }

    v18 = MEMORY[0x1E696ABC0];
    v19 = *MEMORY[0x1E6997A18];
    v20 = MEMORY[0x1E6997A50];
    goto LABEL_15;
  }

  if (!self->_mdcsEventPublisher)
  {
    v18 = MEMORY[0x1E696ABC0];
    v19 = *MEMORY[0x1E6997A18];
    v20 = MEMORY[0x1E6997A40];
LABEL_15:
    v21 = [v18 errorWithDomain:v19 code:*v20 userInfo:0];
    v10[2](v10, 0, v21);

    goto LABEL_16;
  }

  v25 = 0u;
  v26 = 0u;
  v23 = 0u;
  v24 = 0u;
  v13 = [v11 countByEnumeratingWithState:&v23 objects:v27 count:16];
  if (v13)
  {
    v14 = v13;
    v15 = *v24;
    do
    {
      for (i = 0; i != v14; ++i)
      {
        if (*v24 != v15)
        {
          objc_enumerationMutation(v12);
        }

        [(_CDXPCEventPublisher *)self->_notificationEventPublisher sendEvent:v8 toSubscriber:*(*(&v23 + 1) + 8 * i) replyHandler:v10];
      }

      v14 = [v12 countByEnumeratingWithState:&v23 objects:v27 count:16];
    }

    while (v14);
  }

LABEL_16:

  v22 = *MEMORY[0x1E69E9840];
}

- (BOOL)setMappingObject:(id)a3 forContextualKeyPath:(id)a4
{
  v21 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v8 = [MEMORY[0x1E695DF00] date];
  v9 = [MEMORY[0x1E6997908] mdcsChannel];
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
  {
    v15 = 138412802;
    v16 = v7;
    v17 = 2112;
    v18 = v6;
    v19 = 2112;
    v20 = v8;
    _os_log_debug_impl(&dword_1A9611000, v9, OS_LOG_TYPE_DEBUG, "SET MAPPING %@ => %@ / %@", &v15, 0x20u);
  }

  v10 = [(_CDInMemoryUserContext *)self->_userContext setObject:v6 returningMetadataForContextualKeyPath:v7];
  v11 = v10;
  if (v10)
  {
    [v10 setLastModifiedDate:v8];
  }

  else
  {
    v12 = [MEMORY[0x1E6997908] mdcsChannel];
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      [_CDUserContextService setMappingObject:forContextualKeyPath:];
    }
  }

  v13 = *MEMORY[0x1E69E9840];
  return v11 != 0;
}

- (void)addProxyWithSourceDeviceUUID:(id)a3
{
  v9 = a3;
  v4 = +[_CDContextQueries keyPathForMDCSProxies];
  v5 = [(_CDInMemoryUserContext *)self->_userContext objectForKeyedSubscript:v4];
  if (([v5 containsObject:v9] & 1) == 0)
  {
    if (v5)
    {
      v6 = [v5 mutableCopy];
    }

    else
    {
      v6 = [MEMORY[0x1E695DF70] arrayWithCapacity:1];
    }

    v7 = v6;
    [v6 addObject:v9];
    v8 = [v7 copy];

    [(_CDUserContextService *)self setMappingObject:v8 forContextualKeyPath:v4];
    v5 = v8;
  }
}

- (id)subscriberForSourceDeviceUUID:(id)a3
{
  v4 = a3;
  v5 = [(_CDUserContextService *)self tokenForSourceDeviceUUID:v4];
  v6 = self->_mdcsEventSubscribersByToken;
  objc_sync_enter(v6);
  mdcsEventSubscribersByToken = self->_mdcsEventSubscribersByToken;
  v8 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:v5];
  v9 = [(NSMutableDictionary *)mdcsEventSubscribersByToken objectForKeyedSubscript:v8];

  objc_sync_exit(v6);

  return v9;
}

- (unint64_t)tokenForSourceDeviceUUID:(id)a3
{
  v4 = a3;
  v5 = [_CDContextQueries keyPathForMDCSUserIDWithProxySourceDeviceUUID:v4];
  v6 = [(_CDInMemoryUserContext *)self->_userContext objectForKeyedSubscript:v5];
  if (v6)
  {
    v7 = [_CDContextQueries keyPathForMDCSProxyTokenWithUserID:v6];
    v8 = [(_CDInMemoryUserContext *)self->_userContext objectForKeyedSubscript:v7];
    v9 = v8;
    if (v8)
    {
      v10 = [v8 unsignedLongLongValue];
    }

    else
    {
      v11 = [MEMORY[0x1E6997908] mdcsChannel];
      if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
      {
        [_CDUserContextService tokenForSourceDeviceUUID:];
      }

      v10 = 0;
    }
  }

  else
  {
    v7 = [MEMORY[0x1E6997908] mdcsChannel];
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      [_CDUserContextService tokenForSourceDeviceUUID:];
    }

    v10 = 0;
  }

  return v10;
}

- (id)subscribersForClientIdentifier:(id)a3
{
  v4 = a3;
  v5 = self->_notificationEventSubscribersByClientIdentifier;
  objc_sync_enter(v5);
  v6 = [(NSMutableDictionary *)self->_notificationEventSubscribersByClientIdentifier objectForKeyedSubscript:v4];
  v7 = [v6 copy];

  objc_sync_exit(v5);

  return v7;
}

- (void)fetchProxySourceDeviceUUIDFromSubscriber:(id)a3
{
  v4 = a3;
  v5 = +[(_CDXPCCodecs *)_CDXPCContextCodecs];
  if (v5)
  {
    mdcsEventPublisher = self->_mdcsEventPublisher;
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 3221225472;
    v8[2] = __66___CDUserContextService_fetchProxySourceDeviceUUIDFromSubscriber___block_invoke;
    v8[3] = &unk_1E7886D78;
    v8[4] = self;
    v9 = v4;
    [(_CDXPCEventPublisher *)mdcsEventPublisher sendEvent:v5 toSubscriber:v9 replyHandler:v8];
  }

  else
  {
    v7 = [MEMORY[0x1E6997908] contextChannel];
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      [_CDUserContextService fetchProxySourceDeviceUUIDFromSubscriber:];
    }
  }
}

- (void)requestActivateDevicesFromAllSubscribersWithHandler:(id)a3
{
  v45 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = self->_mdcsEventSubscribersByToken;
  objc_sync_enter(v5);
  v6 = [(NSMutableDictionary *)self->_mdcsEventSubscribersByToken allValues];
  objc_sync_exit(v5);

  v7 = [v6 count];
  v18 = v4;
  if (v7)
  {
    v8 = v7;
    v42[0] = 0;
    v42[1] = v42;
    v42[2] = 0x2810000000;
    v42[3] = &unk_1A965209E;
    v43 = 0;
    v40[0] = 0;
    v40[1] = v40;
    v40[2] = 0x3032000000;
    v40[3] = __Block_byref_object_copy__3;
    v40[4] = __Block_byref_object_dispose__3;
    v41 = [MEMORY[0x1E695DF70] arrayWithCapacity:v7];
    v39[0] = 0;
    v39[1] = v39;
    v39[2] = 0x2020000000;
    v39[3] = 0;
    v37[0] = 0;
    v37[1] = v37;
    v37[2] = 0x3032000000;
    v37[3] = __Block_byref_object_copy__3;
    v37[4] = __Block_byref_object_dispose__3;
    v38 = os_transaction_create();
    v9 = dispatch_time(0, 10000000000);
    workQueue = self->_workQueue;
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __77___CDUserContextService_requestActivateDevicesFromAllSubscribersWithHandler___block_invoke;
    block[3] = &unk_1E7886F00;
    v33 = v42;
    v34 = v40;
    v11 = v8;
    v36 = v8;
    v12 = v4;
    v32 = v12;
    v35 = v37;
    dispatch_after(v9, workQueue, block);
    v29 = 0u;
    v30 = 0u;
    v27 = 0u;
    v28 = 0u;
    obj = v6;
    v13 = [obj countByEnumeratingWithState:&v27 objects:v44 count:16];
    if (v13)
    {
      v14 = *v28;
      do
      {
        for (i = 0; i != v13; ++i)
        {
          if (*v28 != v14)
          {
            objc_enumerationMutation(obj);
          }

          v16 = *(*(&v27 + 1) + 8 * i);
          v20[0] = MEMORY[0x1E69E9820];
          v20[1] = 3221225472;
          v20[2] = __77___CDUserContextService_requestActivateDevicesFromAllSubscribersWithHandler___block_invoke_38;
          v20[3] = &unk_1E7886F28;
          v22 = v42;
          v23 = v40;
          v20[4] = v16;
          v24 = v39;
          v26 = v11;
          v21 = v12;
          v25 = v37;
          [(_CDUserContextService *)self requestActivateDevicesFromSubscriber:v16 withHandler:v20];
        }

        v13 = [obj countByEnumeratingWithState:&v27 objects:v44 count:16];
      }

      while (v13);
    }

    _Block_object_dispose(v37, 8);
    _Block_object_dispose(v39, 8);
    _Block_object_dispose(v40, 8);

    _Block_object_dispose(v42, 8);
  }

  else
  {
    v4[2](v4);
  }

  v17 = *MEMORY[0x1E69E9840];
}

- (void)requestActivateDevicesFromSubscriber:(id)a3 withHandler:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = +[(_CDXPCCodecs *)_CDXPCContextCodecs];
  if (v8)
  {
    mdcsEventPublisher = self->_mdcsEventPublisher;
    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 3221225472;
    v11[2] = __74___CDUserContextService_requestActivateDevicesFromSubscriber_withHandler___block_invoke;
    v11[3] = &unk_1E7886F50;
    v12 = v7;
    [(_CDXPCEventPublisher *)mdcsEventPublisher sendEvent:v8 toSubscriber:v6 replyHandler:v11];
  }

  else
  {
    v10 = [MEMORY[0x1E6997908] contextChannel];
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      [_CDUserContextService requestActivateDevicesFromSubscriber:withHandler:];
    }

    if (v7)
    {
      v7[2](v7);
    }
  }
}

- (void)addSubscriber:(id)a3
{
  v4 = a3;
  v5 = [v4 streamName];
  v6 = [v4 token];
  v7 = [v4 uid];
  v8 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"com.apple.coreduetcontext.mdcs_events"];
  v9 = [v8 isEqualToString:v5];

  if (v9)
  {
    v10 = self->_mdcsEventSubscribersByToken;
    objc_sync_enter(v10);
    mdcsEventSubscribersByToken = self->_mdcsEventSubscribersByToken;
    v12 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:v6];
    [(NSMutableDictionary *)mdcsEventSubscribersByToken setObject:v4 forKeyedSubscript:v12];

    objc_sync_exit(v10);
    [(_CDUserContextService *)self setToken:v6 forUserID:v7];
  }

  else
  {
    v13 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"com.apple.coreduetcontext.client_event_stream"];
    v14 = [v13 isEqualToString:v5];

    if (v14)
    {
      v15 = self->_notificationEventSubscribersByToken;
      objc_sync_enter(v15);
      notificationEventSubscribersByToken = self->_notificationEventSubscribersByToken;
      v17 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:v6];
      [(NSMutableDictionary *)notificationEventSubscribersByToken setObject:v4 forKeyedSubscript:v17];

      objc_sync_exit(v15);
      v18 = self->_notificationEventSubscribersByClientIdentifier;
      objc_sync_enter(v18);
      v19 = [v4 clientIdentifier];
      v20 = [(NSMutableDictionary *)self->_notificationEventSubscribersByClientIdentifier objectForKeyedSubscript:v19];
      if (!v20)
      {
        v20 = [MEMORY[0x1E695DFA8] setWithCapacity:1];
        [(NSMutableDictionary *)self->_notificationEventSubscribersByClientIdentifier setObject:v20 forKeyedSubscript:v19];
      }

      [v20 addObject:v4];

      objc_sync_exit(v18);
    }

    else
    {
      v18 = [MEMORY[0x1E6997908] contextChannel];
      if (os_log_type_enabled(&v18->super.super, OS_LOG_TYPE_ERROR))
      {
        [_CDUserContextService addSubscriber:];
      }
    }
  }

  v21 = [(_CDUserContextService *)self proxySourceDeviceUUIDForUserID:v7];
  if (v21)
  {
    [(_CDUserContextService *)self addProxyWithSourceDeviceUUID:v21];
  }

  else
  {
    [(_CDUserContextService *)self fetchProxySourceDeviceUUIDFromSubscriber:v4];
    [(_CDUserContextService *)self requestActivateDevicesFromSubscriber:v4 withHandler:0];
  }
}

- (void)removeSubscriberWithToken:(unint64_t)a3 streamName:(id)a4
{
  v6 = a4;
  v7 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"com.apple.coreduetcontext.mdcs_events"];
  v8 = [v7 isEqualToString:v6];

  if (v8)
  {
    v9 = self->_mdcsEventSubscribersByToken;
    objc_sync_enter(v9);
    mdcsEventSubscribersByToken = self->_mdcsEventSubscribersByToken;
    v11 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:a3];
    v12 = [(NSMutableDictionary *)mdcsEventSubscribersByToken objectForKeyedSubscript:v11];

    v13 = self->_mdcsEventSubscribersByToken;
    v14 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:a3];
    [(NSMutableDictionary *)v13 setObject:0 forKeyedSubscript:v14];

    objc_sync_exit(v9);
    if (v12)
    {
      -[_CDUserContextService removeTokenForUserID:](self, "removeTokenForUserID:", [v12 uid]);
    }

LABEL_7:

    goto LABEL_11;
  }

  v15 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"com.apple.coreduetcontext.client_event_stream"];
  v16 = [v15 isEqualToString:v6];

  if (v16)
  {
    v17 = self->_notificationEventSubscribersByToken;
    objc_sync_enter(v17);
    notificationEventSubscribersByToken = self->_notificationEventSubscribersByToken;
    v19 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:a3];
    v12 = [(NSMutableDictionary *)notificationEventSubscribersByToken objectForKeyedSubscript:v19];

    v20 = self->_notificationEventSubscribersByToken;
    v21 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:a3];
    [(NSMutableDictionary *)v20 setObject:0 forKeyedSubscript:v21];

    objc_sync_exit(v17);
    if (v12)
    {
      v22 = self->_notificationEventSubscribersByClientIdentifier;
      objc_sync_enter(v22);
      v23 = [v12 clientIdentifier];
      v24 = [(NSMutableDictionary *)self->_notificationEventSubscribersByClientIdentifier objectForKeyedSubscript:v23];
      [v24 removeObject:v12];

      objc_sync_exit(v22);
    }

    goto LABEL_7;
  }

  v25 = [MEMORY[0x1E6997908] contextChannel];
  if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
  {
    [_CDUserContextService addSubscriber:];
  }

LABEL_11:
}

- (void)informClientOfFiredRegistration:(void *)a1 info:.cold.1(void *a1)
{
  v10 = *MEMORY[0x1E69E9840];
  v1 = [a1 identifier];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_2_2(&dword_1A9611000, v2, v3, "CDUserContext: sending event for registration %@.", v4, v5, v6, v7, v9);

  v8 = *MEMORY[0x1E69E9840];
}

- (void)informClientOfFiredRegistration:info:.cold.2()
{
  v8 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0_0(&dword_1A9611000, v0, v1, "CDUserContext: Invalid registration: %{public}@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x1E69E9840];
}

- (void)informClientOfFiredRegistration:(void *)a1 info:.cold.3(void *a1)
{
  v10 = *MEMORY[0x1E69E9840];
  v1 = [a1 identifier];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_2_2(&dword_1A9611000, v2, v3, "CDUserContext: posting notification for registration %@.", v4, v5, v6, v7, v9);

  v8 = *MEMORY[0x1E69E9840];
}

- (void)sendEvent:toProxy:handler:.cold.1()
{
  v8 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0_0(&dword_1A9611000, v0, v1, "Unknown proxy source device id: %{public}@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x1E69E9840];
}

- (void)sendEvent:toClient:handler:.cold.1()
{
  v8 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0_0(&dword_1A9611000, v0, v1, "Unknown client identifier: %{public}@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x1E69E9840];
}

- (void)setMappingObject:forContextualKeyPath:.cold.1()
{
  v8 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0_0(&dword_1A9611000, v0, v1, "Failed to set mapping %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x1E69E9840];
}

- (void)tokenForSourceDeviceUUID:.cold.1()
{
  v8 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0_0(&dword_1A9611000, v0, v1, "Missing token for uid %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x1E69E9840];
}

- (void)tokenForSourceDeviceUUID:.cold.2()
{
  v8 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0_0(&dword_1A9611000, v0, v1, "Missing token user id for proxy source device id %{public}@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x1E69E9840];
}

- (void)addSubscriber:.cold.1()
{
  v8 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0_0(&dword_1A9611000, v0, v1, "Unknown event stream name: %{public}@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x1E69E9840];
}

@end