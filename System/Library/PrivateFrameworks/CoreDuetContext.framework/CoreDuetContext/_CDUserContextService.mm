@interface _CDUserContextService
+ (id)sharedInstanceWithPersistence:(id)persistence;
+ (id)sharedInstanceWithSharedMemoryStore:(id)store;
- (BOOL)listener:(id)listener shouldAcceptNewConnection:(id)connection;
- (BOOL)setMappingObject:(id)object forContextualKeyPath:(id)path;
- (_CDUserContextService)initWithListener:(id)listener withPersistence:(id)persistence withStorage:(id)storage withStore:(id)store;
- (id)obtainFiredRegistrationMatchingRegistration:(id)registration info:(id *)info;
- (id)subscriberForSourceDeviceUUID:(id)d;
- (id)subscribersForClientIdentifier:(id)identifier;
- (unint64_t)tokenForSourceDeviceUUID:(id)d;
- (void)addOpenRegistration:(id)registration;
- (void)addProxyWithSourceDeviceUUID:(id)d;
- (void)addSubscriber:(id)subscriber;
- (void)clientWasInterrupted:(id)interrupted;
- (void)fetchProxySourceDeviceUUIDFromSubscriber:(id)subscriber;
- (void)informClientOfFiredRegistration:(id)registration info:(id)info;
- (void)regenerateState;
- (void)removeOpenRegistration:(id)registration;
- (void)removeSubscriberWithToken:(unint64_t)token streamName:(id)name;
- (void)requestActivateDevicesFromAllSubscribersWithHandler:(id)handler;
- (void)requestActivateDevicesFromSubscriber:(id)subscriber withHandler:(id)handler;
- (void)sendEvent:(id)event toClient:(id)client handler:(id)handler;
- (void)sendEvent:(id)event toClient:(id)client replyHandler:(id)handler;
- (void)sendEvent:(id)event toProxy:(id)proxy handler:(id)handler;
- (void)sendEvent:(id)event toProxy:(id)proxy replyHandler:(id)handler;
@end

@implementation _CDUserContextService

- (_CDUserContextService)initWithListener:(id)listener withPersistence:(id)persistence withStorage:(id)storage withStore:(id)store
{
  listenerCopy = listener;
  persistenceCopy = persistence;
  storageCopy = storage;
  storeCopy = store;
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

    objc_storeStrong(&v15->_listener, listener);
    if (persistenceCopy)
    {
      v20 = persistenceCopy;
    }

    else if (storageCopy)
    {
      v20 = [_CDCoreDataContextPersisting persistenceWithStorage:storageCopy];
    }

    else
    {
      if (!storeCopy)
      {
        v21 = [MEMORY[0x1E696AEC0] stringWithFormat:@"/%@", @"CDCSS"];
        v45 = [MEMORY[0x1E6997918] keyValueStoreWithName:v21 size:0];
        v46 = [_CDSharedMemoryContextPersisting persistenceWithSharedMemoryKeyValueStore:v45];
        persistence = v15->_persistence;
        v15->_persistence = v46;

        goto LABEL_9;
      }

      v20 = [_CDSharedMemoryContextPersisting persistenceWithSharedMemoryKeyValueStore:storeCopy];
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
    mdcsChannel = [MEMORY[0x1E6997908] mdcsChannel];
    v35 = [v32 eventPublisherWithStreamName:"com.apple.coreduetcontext.mdcs_events" delegate:v15 queue:v33 log:mdcsChannel os_variant_diagnostic_subsystem:"com.apple.coreduetcontext"];
    mdcsEventPublisher = v15->_mdcsEventPublisher;
    v15->_mdcsEventPublisher = v35;

    v37 = MEMORY[0x1E6997928];
    v38 = v15->_workQueue;
    contextChannel = [MEMORY[0x1E6997908] contextChannel];
    v40 = [v37 eventPublisherWithStreamName:"com.apple.coreduetcontext.client_event_stream" delegate:v15 queue:v38 log:contextChannel os_variant_diagnostic_subsystem:"com.apple.coreduetcontext"];
    notificationEventPublisher = v15->_notificationEventPublisher;
    v15->_notificationEventPublisher = v40;

    dictionary = [MEMORY[0x1E695DF90] dictionary];
    remoteDevicesByDeviceID = v15->_remoteDevicesByDeviceID;
    v15->_remoteDevicesByDeviceID = dictionary;
  }

  return v15;
}

+ (id)sharedInstanceWithPersistence:(id)persistence
{
  persistenceCopy = persistence;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __55___CDUserContextService_sharedInstanceWithPersistence___block_invoke;
  block[3] = &unk_1E7886288;
  v10 = persistenceCopy;
  v4 = sharedInstanceWithPersistence__onceToken;
  v5 = persistenceCopy;
  if (v4 != -1)
  {
    dispatch_once(&sharedInstanceWithPersistence__onceToken, block);
  }

  v6 = sharedInstanceWithPersistence__service;
  v7 = sharedInstanceWithPersistence__service;

  return v6;
}

+ (id)sharedInstanceWithSharedMemoryStore:(id)store
{
  storeCopy = store;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __61___CDUserContextService_sharedInstanceWithSharedMemoryStore___block_invoke;
  block[3] = &unk_1E7886288;
  v10 = storeCopy;
  v4 = sharedInstanceWithSharedMemoryStore__onceToken;
  v5 = storeCopy;
  if (v4 != -1)
  {
    dispatch_once(&sharedInstanceWithSharedMemoryStore__onceToken, block);
  }

  v6 = sharedInstanceWithSharedMemoryStore__service;
  v7 = sharedInstanceWithSharedMemoryStore__service;

  return v6;
}

- (void)addOpenRegistration:(id)registration
{
  registrationCopy = registration;
  v5 = self->_openRegistrations;
  objc_sync_enter(v5);
  v6 = [(NSMutableSet *)self->_openRegistrations member:registrationCopy];
  objc_sync_exit(v5);

  if (!v6)
  {
    v6 = registrationCopy;
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

- (void)removeOpenRegistration:(id)registration
{
  v17 = *MEMORY[0x1E69E9840];
  registrationCopy = registration;
  v5 = self->_openRegistrations;
  objc_sync_enter(v5);
  if ([(NSMutableSet *)self->_openRegistrations containsObject:registrationCopy])
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
          if ([v10 isEqual:{registrationCopy, v12}])
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

- (id)obtainFiredRegistrationMatchingRegistration:(id)registration info:(id *)info
{
  registrationCopy = registration;
  v7 = self->_firedRegistrations;
  objc_sync_enter(v7);
  v8 = [(NSMutableSet *)self->_firedRegistrations member:registrationCopy];
  if (v8)
  {
    [(NSMutableSet *)self->_firedRegistrations removeObject:v8];
    if (info)
    {
      firedRegistrationInfos = self->_firedRegistrationInfos;
      identifier = [v8 identifier];
      *info = [(NSMutableDictionary *)firedRegistrationInfos objectForKeyedSubscript:identifier];
    }

    v11 = self->_firedRegistrationInfos;
    identifier2 = [v8 identifier];
    [(NSMutableDictionary *)v11 setObject:0 forKeyedSubscript:identifier2];
  }

  objc_sync_exit(v7);

  return v8;
}

- (void)informClientOfFiredRegistration:(id)registration info:(id)info
{
  registrationCopy = registration;
  infoCopy = info;
  clientIdentifier = [registrationCopy clientIdentifier];
  if (clientIdentifier)
  {
    contextChannel = [MEMORY[0x1E6997908] contextChannel];
    if (os_log_type_enabled(contextChannel, OS_LOG_TYPE_DEBUG))
    {
      [_CDUserContextService informClientOfFiredRegistration:registrationCopy info:?];
    }

    identifier = [registrationCopy identifier];
    v21 = 0;
    v11 = [(_CDXPCCodecs *)_CDXPCContextCodecs notificationEventWithRegistrationIdentifier:identifier info:infoCopy error:&v21];
    v12 = v21;
    if (v11)
    {
      v16 = MEMORY[0x1E69E9820];
      v17 = 3221225472;
      v18 = __62___CDUserContextService_informClientOfFiredRegistration_info___block_invoke;
      v19 = &unk_1E7886808;
      v20 = registrationCopy;
      [(_CDUserContextService *)self sendEvent:v11 toClient:clientIdentifier handler:&v16];
      contextChannel2 = v20;
    }

    else
    {
      contextChannel2 = [MEMORY[0x1E6997908] contextChannel];
      if (os_log_type_enabled(contextChannel2, OS_LOG_TYPE_ERROR))
      {
        [_CDUserContextService informClientOfFiredRegistration:info:];
      }
    }
  }

  contextChannel3 = [MEMORY[0x1E6997908] contextChannel];
  if (os_log_type_enabled(contextChannel3, OS_LOG_TYPE_DEBUG))
  {
    [_CDUserContextService informClientOfFiredRegistration:registrationCopy info:?];
  }

  identifier2 = [registrationCopy identifier];
  notify_post([identifier2 UTF8String]);
}

- (void)regenerateState
{
  v32 = *MEMORY[0x1E69E9840];
  p_persistence = &self->_persistence;
  persistence = self->_persistence;
  v5 = [MEMORY[0x1E695DF00] dateWithTimeIntervalSinceNow:-1209600.0];
  [(_CDContextPersisting *)persistence deleteDataCreatedBefore:v5];

  loadValues = [(_CDContextPersisting *)*p_persistence loadValues];
  v30[0] = MEMORY[0x1E69E9820];
  v30[1] = 3221225472;
  v30[2] = __40___CDUserContextService_regenerateState__block_invoke;
  v30[3] = &unk_1E7886ED8;
  v30[4] = self;
  [loadValues enumerateKeysAndObjectsUsingBlock:v30];
  v6 = MEMORY[0x1E695DFA8];
  loadRegistrations = [(_CDContextPersisting *)*p_persistence loadRegistrations];
  v8 = [v6 setWithArray:loadRegistrations];
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

- (void)clientWasInterrupted:(id)interrupted
{
  interruptedCopy = interrupted;
  if (interruptedCopy)
  {
    v6 = interruptedCopy;
    v5 = self->_clients;
    objc_sync_enter(v5);
    [(NSMutableSet *)self->_clients removeObject:v6];
    objc_sync_exit(v5);

    interruptedCopy = v6;
  }
}

- (BOOL)listener:(id)listener shouldAcceptNewConnection:(id)connection
{
  v17 = *MEMORY[0x1E69E9840];
  listenerCopy = listener;
  connectionCopy = connection;
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

  v8 = [connectionCopy valueForEntitlement:@"com.apple.coreduetd.context"];
  v9 = v8;
  if (v8 && ([v8 BOOLValue] & 1) != 0)
  {

LABEL_8:
    v9 = [_CDUserContextServerClient clientOfService:self withConnection:connectionCopy andContext:self->_userContext];
    contextChannel = self->_clients;
    objc_sync_enter(contextChannel);
    [(NSMutableSet *)self->_clients addObject:v9];
    objc_sync_exit(contextChannel);
    v11 = 1;
    goto LABEL_12;
  }

  contextChannel = [MEMORY[0x1E6997908] contextChannel];
  if (os_log_type_enabled(&contextChannel->super.super, OS_LOG_TYPE_INFO))
  {
    *buf = 138412290;
    v16 = connectionCopy;
    _os_log_impl(&dword_1A9611000, &contextChannel->super.super, OS_LOG_TYPE_INFO, "Client %@ does not have required entitlement", buf, 0xCu);
  }

  v11 = 0;
LABEL_12:

  v12 = *MEMORY[0x1E69E9840];
  return v11;
}

- (void)sendEvent:(id)event toProxy:(id)proxy handler:(id)handler
{
  eventCopy = event;
  proxyCopy = proxy;
  handlerCopy = handler;
  v11 = [(_CDUserContextService *)self subscriberForSourceDeviceUUID:proxyCopy];
  if (!v11)
  {
    mdcsChannel = [MEMORY[0x1E6997908] mdcsChannel];
    if (os_log_type_enabled(mdcsChannel, OS_LOG_TYPE_ERROR))
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
    handlerCopy[2](handlerCopy, v17);

    goto LABEL_9;
  }

  [(_CDXPCEventPublisher *)mdcsEventPublisher sendEvent:eventCopy toSubscriber:v11 handler:handlerCopy];
LABEL_9:
}

- (void)sendEvent:(id)event toProxy:(id)proxy replyHandler:(id)handler
{
  eventCopy = event;
  proxyCopy = proxy;
  handlerCopy = handler;
  v11 = [(_CDUserContextService *)self subscriberForSourceDeviceUUID:proxyCopy];
  if (!v11)
  {
    mdcsChannel = [MEMORY[0x1E6997908] mdcsChannel];
    if (os_log_type_enabled(mdcsChannel, OS_LOG_TYPE_ERROR))
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
    handlerCopy[2](handlerCopy, 0, v17);

    goto LABEL_9;
  }

  [(_CDXPCEventPublisher *)mdcsEventPublisher sendEvent:eventCopy toSubscriber:v11 replyHandler:handlerCopy];
LABEL_9:
}

- (void)sendEvent:(id)event toClient:(id)client handler:(id)handler
{
  v28 = *MEMORY[0x1E69E9840];
  eventCopy = event;
  clientCopy = client;
  handlerCopy = handler;
  v11 = [(_CDUserContextService *)self subscribersForClientIdentifier:clientCopy];
  v12 = v11;
  if (!v11)
  {
    mdcsChannel = [MEMORY[0x1E6997908] mdcsChannel];
    if (os_log_type_enabled(mdcsChannel, OS_LOG_TYPE_ERROR))
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
    handlerCopy[2](handlerCopy, v21);

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

        [(_CDXPCEventPublisher *)self->_notificationEventPublisher sendEvent:eventCopy toSubscriber:*(*(&v23 + 1) + 8 * i) handler:handlerCopy];
      }

      v14 = [v12 countByEnumeratingWithState:&v23 objects:v27 count:16];
    }

    while (v14);
  }

LABEL_16:

  v22 = *MEMORY[0x1E69E9840];
}

- (void)sendEvent:(id)event toClient:(id)client replyHandler:(id)handler
{
  v28 = *MEMORY[0x1E69E9840];
  eventCopy = event;
  clientCopy = client;
  handlerCopy = handler;
  v11 = [(_CDUserContextService *)self subscribersForClientIdentifier:clientCopy];
  v12 = v11;
  if (!v11)
  {
    mdcsChannel = [MEMORY[0x1E6997908] mdcsChannel];
    if (os_log_type_enabled(mdcsChannel, OS_LOG_TYPE_ERROR))
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
    handlerCopy[2](handlerCopy, 0, v21);

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

        [(_CDXPCEventPublisher *)self->_notificationEventPublisher sendEvent:eventCopy toSubscriber:*(*(&v23 + 1) + 8 * i) replyHandler:handlerCopy];
      }

      v14 = [v12 countByEnumeratingWithState:&v23 objects:v27 count:16];
    }

    while (v14);
  }

LABEL_16:

  v22 = *MEMORY[0x1E69E9840];
}

- (BOOL)setMappingObject:(id)object forContextualKeyPath:(id)path
{
  v21 = *MEMORY[0x1E69E9840];
  objectCopy = object;
  pathCopy = path;
  date = [MEMORY[0x1E695DF00] date];
  mdcsChannel = [MEMORY[0x1E6997908] mdcsChannel];
  if (os_log_type_enabled(mdcsChannel, OS_LOG_TYPE_DEBUG))
  {
    v15 = 138412802;
    v16 = pathCopy;
    v17 = 2112;
    v18 = objectCopy;
    v19 = 2112;
    v20 = date;
    _os_log_debug_impl(&dword_1A9611000, mdcsChannel, OS_LOG_TYPE_DEBUG, "SET MAPPING %@ => %@ / %@", &v15, 0x20u);
  }

  v10 = [(_CDInMemoryUserContext *)self->_userContext setObject:objectCopy returningMetadataForContextualKeyPath:pathCopy];
  v11 = v10;
  if (v10)
  {
    [v10 setLastModifiedDate:date];
  }

  else
  {
    mdcsChannel2 = [MEMORY[0x1E6997908] mdcsChannel];
    if (os_log_type_enabled(mdcsChannel2, OS_LOG_TYPE_ERROR))
    {
      [_CDUserContextService setMappingObject:forContextualKeyPath:];
    }
  }

  v13 = *MEMORY[0x1E69E9840];
  return v11 != 0;
}

- (void)addProxyWithSourceDeviceUUID:(id)d
{
  dCopy = d;
  v4 = +[_CDContextQueries keyPathForMDCSProxies];
  v5 = [(_CDInMemoryUserContext *)self->_userContext objectForKeyedSubscript:v4];
  if (([v5 containsObject:dCopy] & 1) == 0)
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
    [v6 addObject:dCopy];
    v8 = [v7 copy];

    [(_CDUserContextService *)self setMappingObject:v8 forContextualKeyPath:v4];
    v5 = v8;
  }
}

- (id)subscriberForSourceDeviceUUID:(id)d
{
  dCopy = d;
  v5 = [(_CDUserContextService *)self tokenForSourceDeviceUUID:dCopy];
  v6 = self->_mdcsEventSubscribersByToken;
  objc_sync_enter(v6);
  mdcsEventSubscribersByToken = self->_mdcsEventSubscribersByToken;
  v8 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:v5];
  v9 = [(NSMutableDictionary *)mdcsEventSubscribersByToken objectForKeyedSubscript:v8];

  objc_sync_exit(v6);

  return v9;
}

- (unint64_t)tokenForSourceDeviceUUID:(id)d
{
  dCopy = d;
  v5 = [_CDContextQueries keyPathForMDCSUserIDWithProxySourceDeviceUUID:dCopy];
  v6 = [(_CDInMemoryUserContext *)self->_userContext objectForKeyedSubscript:v5];
  if (v6)
  {
    mdcsChannel2 = [_CDContextQueries keyPathForMDCSProxyTokenWithUserID:v6];
    v8 = [(_CDInMemoryUserContext *)self->_userContext objectForKeyedSubscript:mdcsChannel2];
    v9 = v8;
    if (v8)
    {
      unsignedLongLongValue = [v8 unsignedLongLongValue];
    }

    else
    {
      mdcsChannel = [MEMORY[0x1E6997908] mdcsChannel];
      if (os_log_type_enabled(mdcsChannel, OS_LOG_TYPE_ERROR))
      {
        [_CDUserContextService tokenForSourceDeviceUUID:];
      }

      unsignedLongLongValue = 0;
    }
  }

  else
  {
    mdcsChannel2 = [MEMORY[0x1E6997908] mdcsChannel];
    if (os_log_type_enabled(mdcsChannel2, OS_LOG_TYPE_ERROR))
    {
      [_CDUserContextService tokenForSourceDeviceUUID:];
    }

    unsignedLongLongValue = 0;
  }

  return unsignedLongLongValue;
}

- (id)subscribersForClientIdentifier:(id)identifier
{
  identifierCopy = identifier;
  v5 = self->_notificationEventSubscribersByClientIdentifier;
  objc_sync_enter(v5);
  v6 = [(NSMutableDictionary *)self->_notificationEventSubscribersByClientIdentifier objectForKeyedSubscript:identifierCopy];
  v7 = [v6 copy];

  objc_sync_exit(v5);

  return v7;
}

- (void)fetchProxySourceDeviceUUIDFromSubscriber:(id)subscriber
{
  subscriberCopy = subscriber;
  v5 = +[(_CDXPCCodecs *)_CDXPCContextCodecs];
  if (v5)
  {
    mdcsEventPublisher = self->_mdcsEventPublisher;
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 3221225472;
    v8[2] = __66___CDUserContextService_fetchProxySourceDeviceUUIDFromSubscriber___block_invoke;
    v8[3] = &unk_1E7886D78;
    v8[4] = self;
    v9 = subscriberCopy;
    [(_CDXPCEventPublisher *)mdcsEventPublisher sendEvent:v5 toSubscriber:v9 replyHandler:v8];
  }

  else
  {
    contextChannel = [MEMORY[0x1E6997908] contextChannel];
    if (os_log_type_enabled(contextChannel, OS_LOG_TYPE_ERROR))
    {
      [_CDUserContextService fetchProxySourceDeviceUUIDFromSubscriber:];
    }
  }
}

- (void)requestActivateDevicesFromAllSubscribersWithHandler:(id)handler
{
  v45 = *MEMORY[0x1E69E9840];
  handlerCopy = handler;
  v5 = self->_mdcsEventSubscribersByToken;
  objc_sync_enter(v5);
  allValues = [(NSMutableDictionary *)self->_mdcsEventSubscribersByToken allValues];
  objc_sync_exit(v5);

  v7 = [allValues count];
  v18 = handlerCopy;
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
    v12 = handlerCopy;
    v32 = v12;
    v35 = v37;
    dispatch_after(v9, workQueue, block);
    v29 = 0u;
    v30 = 0u;
    v27 = 0u;
    v28 = 0u;
    obj = allValues;
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
    handlerCopy[2](handlerCopy);
  }

  v17 = *MEMORY[0x1E69E9840];
}

- (void)requestActivateDevicesFromSubscriber:(id)subscriber withHandler:(id)handler
{
  subscriberCopy = subscriber;
  handlerCopy = handler;
  v8 = +[(_CDXPCCodecs *)_CDXPCContextCodecs];
  if (v8)
  {
    mdcsEventPublisher = self->_mdcsEventPublisher;
    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 3221225472;
    v11[2] = __74___CDUserContextService_requestActivateDevicesFromSubscriber_withHandler___block_invoke;
    v11[3] = &unk_1E7886F50;
    v12 = handlerCopy;
    [(_CDXPCEventPublisher *)mdcsEventPublisher sendEvent:v8 toSubscriber:subscriberCopy replyHandler:v11];
  }

  else
  {
    contextChannel = [MEMORY[0x1E6997908] contextChannel];
    if (os_log_type_enabled(contextChannel, OS_LOG_TYPE_ERROR))
    {
      [_CDUserContextService requestActivateDevicesFromSubscriber:withHandler:];
    }

    if (handlerCopy)
    {
      handlerCopy[2](handlerCopy);
    }
  }
}

- (void)addSubscriber:(id)subscriber
{
  subscriberCopy = subscriber;
  streamName = [subscriberCopy streamName];
  token = [subscriberCopy token];
  v7 = [subscriberCopy uid];
  v8 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"com.apple.coreduetcontext.mdcs_events"];
  v9 = [v8 isEqualToString:streamName];

  if (v9)
  {
    v10 = self->_mdcsEventSubscribersByToken;
    objc_sync_enter(v10);
    mdcsEventSubscribersByToken = self->_mdcsEventSubscribersByToken;
    v12 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:token];
    [(NSMutableDictionary *)mdcsEventSubscribersByToken setObject:subscriberCopy forKeyedSubscript:v12];

    objc_sync_exit(v10);
    [(_CDUserContextService *)self setToken:token forUserID:v7];
  }

  else
  {
    v13 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"com.apple.coreduetcontext.client_event_stream"];
    v14 = [v13 isEqualToString:streamName];

    if (v14)
    {
      v15 = self->_notificationEventSubscribersByToken;
      objc_sync_enter(v15);
      notificationEventSubscribersByToken = self->_notificationEventSubscribersByToken;
      v17 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:token];
      [(NSMutableDictionary *)notificationEventSubscribersByToken setObject:subscriberCopy forKeyedSubscript:v17];

      objc_sync_exit(v15);
      contextChannel = self->_notificationEventSubscribersByClientIdentifier;
      objc_sync_enter(contextChannel);
      clientIdentifier = [subscriberCopy clientIdentifier];
      v20 = [(NSMutableDictionary *)self->_notificationEventSubscribersByClientIdentifier objectForKeyedSubscript:clientIdentifier];
      if (!v20)
      {
        v20 = [MEMORY[0x1E695DFA8] setWithCapacity:1];
        [(NSMutableDictionary *)self->_notificationEventSubscribersByClientIdentifier setObject:v20 forKeyedSubscript:clientIdentifier];
      }

      [v20 addObject:subscriberCopy];

      objc_sync_exit(contextChannel);
    }

    else
    {
      contextChannel = [MEMORY[0x1E6997908] contextChannel];
      if (os_log_type_enabled(&contextChannel->super.super, OS_LOG_TYPE_ERROR))
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
    [(_CDUserContextService *)self fetchProxySourceDeviceUUIDFromSubscriber:subscriberCopy];
    [(_CDUserContextService *)self requestActivateDevicesFromSubscriber:subscriberCopy withHandler:0];
  }
}

- (void)removeSubscriberWithToken:(unint64_t)token streamName:(id)name
{
  nameCopy = name;
  v7 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"com.apple.coreduetcontext.mdcs_events"];
  v8 = [v7 isEqualToString:nameCopy];

  if (v8)
  {
    v9 = self->_mdcsEventSubscribersByToken;
    objc_sync_enter(v9);
    mdcsEventSubscribersByToken = self->_mdcsEventSubscribersByToken;
    v11 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:token];
    v12 = [(NSMutableDictionary *)mdcsEventSubscribersByToken objectForKeyedSubscript:v11];

    v13 = self->_mdcsEventSubscribersByToken;
    v14 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:token];
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
  v16 = [v15 isEqualToString:nameCopy];

  if (v16)
  {
    v17 = self->_notificationEventSubscribersByToken;
    objc_sync_enter(v17);
    notificationEventSubscribersByToken = self->_notificationEventSubscribersByToken;
    v19 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:token];
    v12 = [(NSMutableDictionary *)notificationEventSubscribersByToken objectForKeyedSubscript:v19];

    v20 = self->_notificationEventSubscribersByToken;
    v21 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:token];
    [(NSMutableDictionary *)v20 setObject:0 forKeyedSubscript:v21];

    objc_sync_exit(v17);
    if (v12)
    {
      v22 = self->_notificationEventSubscribersByClientIdentifier;
      objc_sync_enter(v22);
      clientIdentifier = [v12 clientIdentifier];
      v24 = [(NSMutableDictionary *)self->_notificationEventSubscribersByClientIdentifier objectForKeyedSubscript:clientIdentifier];
      [v24 removeObject:v12];

      objc_sync_exit(v22);
    }

    goto LABEL_7;
  }

  contextChannel = [MEMORY[0x1E6997908] contextChannel];
  if (os_log_type_enabled(contextChannel, OS_LOG_TYPE_ERROR))
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