@interface BMComputePublisherClient
+ (id)shared;
+ (id)sharedWithQueue:(id)queue domain:(unint64_t)domain;
+ (void)_setQueue:(id)queue domain:(unint64_t)domain;
+ (void)initializeSharedClientWithQueue:(id)queue domain:(unint64_t)domain;
- (BMComputePublisherClient)initWithQueue:(id)queue configuration:(id)configuration listenerEndpoint:(id)endpoint localComputePublisher:(id)publisher;
- (BMComputePublisherClient)initWithQueue:(id)queue domain:(unint64_t)domain listenerEndpoint:(id)endpoint localComputePublisher:(id)publisher;
- (NSXPCConnection)connection;
- (id)computePublisherObjectWithErrorHandler:(id)handler;
- (unint64_t)numberOfExistingNonWakingSubscriptions;
- (void)_handleEventWithPayload:(id)payload;
- (void)_setXPCEvent:(id)event identifier:(id)identifier;
- (void)dealloc;
- (void)handleBiomeRelaunch;
- (void)receiveInputForIdentifier:(id)identifier streamIdentifier:(id)streamIdentifier storeEvent:(id)event;
- (void)registerBiomeLaunchNotification;
- (void)subscribe:(id)subscribe;
- (void)subscribeViaNSXPC:(id)c;
- (void)subscribeViaXPCEvent:(id)event;
- (void)unregisterBiomeLaunchNotification;
- (void)unsubscribeWithIdentifier:(id)identifier;
@end

@implementation BMComputePublisherClient

+ (void)_setQueue:(id)queue domain:(unint64_t)domain
{
  queueCopy = queue;
  os_unfair_lock_assert_not_owner(&_computeXPCPublisherClientLock);
  os_unfair_lock_lock(&_computeXPCPublisherClientLock);
  if (!_computeXPCPublisherClient)
  {
    [self initializeSharedClientWithQueue:queueCopy domain:domain];
  }

  os_unfair_lock_unlock(&_computeXPCPublisherClientLock);
}

+ (id)shared
{
  current = [MEMORY[0x1E698E9D8] current];
  v4 = [current isRunningInUserContext] ^ 1;

  v5 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
  v6 = dispatch_queue_create("com.apple.BMComputePublisherClient.queue", v5);

  v7 = [self sharedWithQueue:v6 domain:v4];

  return v7;
}

+ (id)sharedWithQueue:(id)queue domain:(unint64_t)domain
{
  queueCopy = queue;
  os_unfair_lock_assert_not_owner(&_computeXPCPublisherClientLock);
  os_unfair_lock_lock(&_computeXPCPublisherClientLock);
  if (!_computeXPCPublisherClient)
  {
    [self initializeSharedClientWithQueue:queueCopy domain:domain];
  }

  os_unfair_lock_unlock(&_computeXPCPublisherClientLock);
  v7 = _computeXPCPublisherClient;
  v8 = _computeXPCPublisherClient;

  return v7;
}

+ (void)initializeSharedClientWithQueue:(id)queue domain:(unint64_t)domain
{
  queueCopy = queue;
  os_unfair_lock_assert_owner(&_computeXPCPublisherClientLock);
  v6 = [[BMComputePublisherClientDomainConfiguration alloc] initWithDomain:domain];
  v7 = [objc_alloc(objc_opt_class()) initWithQueue:queueCopy configuration:v6 listenerEndpoint:0 localComputePublisher:0];
  v8 = _computeXPCPublisherClient;
  _computeXPCPublisherClient = v7;

  current = [MEMORY[0x1E698E9D8] current];
  isManagedByLaunchd = [current isManagedByLaunchd];

  if (isManagedByLaunchd)
  {
    xPCPublisherStreamName = [(BMComputePublisherClientDomainConfiguration *)v6 XPCPublisherStreamName];
    uTF8String = [xPCPublisherStreamName UTF8String];
    handler[0] = MEMORY[0x1E69E9820];
    handler[1] = 3221225472;
    handler[2] = __67__BMComputePublisherClient_initializeSharedClientWithQueue_domain___block_invoke;
    handler[3] = &unk_1E6E54698;
    v15 = xPCPublisherStreamName;
    v13 = xPCPublisherStreamName;
    xpc_set_event_stream_handler(uTF8String, queueCopy, handler);
  }
}

void __67__BMComputePublisherClient_initializeSharedClientWithQueue_domain___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = MEMORY[0x1865F7C40]();
  v5 = __biome_log_for_category();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    __67__BMComputePublisherClient_initializeSharedClientWithQueue_domain___block_invoke_cold_1(a1, v4, v5);
  }

  free(v4);
  [_computeXPCPublisherClient _handleEventWithPayload:v3];
}

- (BMComputePublisherClient)initWithQueue:(id)queue domain:(unint64_t)domain listenerEndpoint:(id)endpoint localComputePublisher:(id)publisher
{
  publisherCopy = publisher;
  endpointCopy = endpoint;
  queueCopy = queue;
  v13 = [[BMComputePublisherClientDomainConfiguration alloc] initWithDomain:domain];
  v14 = [(BMComputePublisherClient *)self initWithQueue:queueCopy configuration:v13 listenerEndpoint:endpointCopy localComputePublisher:publisherCopy];

  return v14;
}

- (BMComputePublisherClient)initWithQueue:(id)queue configuration:(id)configuration listenerEndpoint:(id)endpoint localComputePublisher:(id)publisher
{
  queueCopy = queue;
  configurationCopy = configuration;
  endpointCopy = endpoint;
  publisherCopy = publisher;
  v22.receiver = self;
  v22.super_class = BMComputePublisherClient;
  v15 = [(BMComputePublisherClient *)&v22 init];
  v16 = v15;
  if (v15)
  {
    v15->_lock._os_unfair_lock_opaque = 0;
    objc_storeStrong(&v15->_queue, queue);
    objc_storeStrong(&v16->_listenerEndpoint, endpoint);
    v17 = objc_alloc_init(MEMORY[0x1E695DF90]);
    subscriptions = v16->_subscriptions;
    v16->_subscriptions = v17;

    v19 = objc_alloc_init(MEMORY[0x1E695DF90]);
    pendingEvents = v16->_pendingEvents;
    v16->_pendingEvents = v19;

    objc_storeStrong(&v16->_configuration, configuration);
    objc_storeStrong(&v16->_localComputePublisher, publisher);
    v16->_token = -1;
  }

  return v16;
}

- (void)dealloc
{
  os_unfair_lock_assert_not_owner(&self->_lock);
  os_unfair_lock_lock(&self->_lock);
  [(BMComputePublisherClient *)self unregisterBiomeLaunchNotification];
  [(NSXPCConnection *)self->_connection invalidate];
  connection = self->_connection;
  self->_connection = 0;

  os_unfair_lock_unlock(&self->_lock);
  v4.receiver = self;
  v4.super_class = BMComputePublisherClient;
  [(BMComputePublisherClient *)&v4 dealloc];
}

- (NSXPCConnection)connection
{
  os_unfair_lock_assert_owner(&self->_lock);
  connection = self->_connection;
  if (!connection)
  {
    if (self->_listenerEndpoint)
    {
      v4 = [objc_alloc(MEMORY[0x1E696B0B8]) initWithListenerEndpoint:self->_listenerEndpoint];
      machServiceName = self->_connection;
      self->_connection = v4;
    }

    else
    {
      [(BMComputePublisherClientDomainConfiguration *)self->_configuration domain];
      v6 = objc_alloc(MEMORY[0x1E696B0B8]);
      machServiceName = [(BMComputePublisherClientDomainConfiguration *)self->_configuration machServiceName];
      v7 = [v6 initWithMachServiceName:machServiceName options:0];
      v8 = self->_connection;
      self->_connection = v7;
    }

    v9 = self->_connection;
    queue = [(BMComputePublisherClient *)self queue];
    [(NSXPCConnection *)v9 _setQueue:queue];

    v11 = BMComputePublisherInterface();
    [(NSXPCConnection *)self->_connection setRemoteObjectInterface:v11];

    v12 = BMComputePublishingInterface();
    [(NSXPCConnection *)self->_connection setExportedInterface:v12];

    [(NSXPCConnection *)self->_connection setExportedObject:self];
    objc_initWeak(&location, self);
    objc_initWeak(&from, self->_connection);
    v13 = self->_connection;
    v19[0] = MEMORY[0x1E69E9820];
    v19[1] = 3221225472;
    v19[2] = __38__BMComputePublisherClient_connection__block_invoke;
    v19[3] = &unk_1E6E53538;
    objc_copyWeak(&v20, &from);
    [(NSXPCConnection *)v13 setInterruptionHandler:v19];
    v14 = self->_connection;
    v16[0] = MEMORY[0x1E69E9820];
    v16[1] = 3221225472;
    v16[2] = __38__BMComputePublisherClient_connection__block_invoke_34;
    v16[3] = &unk_1E6E53560;
    objc_copyWeak(&v17, &location);
    objc_copyWeak(&v18, &from);
    [(NSXPCConnection *)v14 setInvalidationHandler:v16];
    [(NSXPCConnection *)self->_connection resume];
    objc_destroyWeak(&v18);
    objc_destroyWeak(&v17);
    objc_destroyWeak(&v20);
    objc_destroyWeak(&from);
    objc_destroyWeak(&location);
    connection = self->_connection;
  }

  return connection;
}

void __38__BMComputePublisherClient_connection__block_invoke(uint64_t a1)
{
  v7 = *MEMORY[0x1E69E9840];
  v2 = __biome_log_for_category();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    WeakRetained = objc_loadWeakRetained((a1 + 32));
    v5 = 138412290;
    v6 = WeakRetained;
    _os_log_impl(&dword_1848EE000, v2, OS_LOG_TYPE_DEFAULT, "BMComputePublisherServiceClient connection %@ interrupted", &v5, 0xCu);
  }

  v4 = *MEMORY[0x1E69E9840];
}

void __38__BMComputePublisherClient_connection__block_invoke_34(uint64_t a1)
{
  v27 = *MEMORY[0x1E69E9840];
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v3 = objc_loadWeakRetained((a1 + 40));
  v4 = v3;
  if (v3)
  {
    v5 = [v3 _xpcConnection];

    if (v5)
    {
      v6 = [v4 _xpcConnection];
      v7 = xpc_connection_copy_invalidation_reason();

      if (v7)
      {
        v5 = [MEMORY[0x1E696AEC0] stringWithUTF8String:v7];
      }

      else
      {
        v5 = @"<unknown>";
      }

      free(v7);
    }
  }

  else
  {
    v5 = 0;
  }

  v8 = __biome_log_for_category();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
  {
    *buf = 138412546;
    v24 = v4;
    v25 = 2114;
    v26 = v5;
    _os_log_impl(&dword_1848EE000, v8, OS_LOG_TYPE_INFO, "BMComputePublisherServiceClient connection %@ invalidated because %{public}@", buf, 0x16u);
  }

  if (WeakRetained)
  {
    os_unfair_lock_lock(WeakRetained + 2);
    v20 = 0u;
    v21 = 0u;
    v18 = 0u;
    v19 = 0u;
    v9 = [*(WeakRetained + 8) copy];
    v10 = [v9 countByEnumeratingWithState:&v18 objects:v22 count:16];
    if (v10)
    {
      v11 = v10;
      v12 = *v19;
      do
      {
        for (i = 0; i != v11; ++i)
        {
          if (*v19 != v12)
          {
            objc_enumerationMutation(v9);
          }

          v14 = *(*(&v18 + 1) + 8 * i);
          v15 = [*(WeakRetained + 8) objectForKeyedSubscript:v14];
          if (([v15 waking] & 1) == 0)
          {
            [*(WeakRetained + 8) removeObjectForKey:v14];
          }
        }

        v11 = [v9 countByEnumeratingWithState:&v18 objects:v22 count:16];
      }

      while (v11);
    }

    v16 = *(WeakRetained + 2);
    *(WeakRetained + 2) = 0;

    os_unfair_lock_unlock(WeakRetained + 2);
  }

  v17 = *MEMORY[0x1E69E9840];
}

- (id)computePublisherObjectWithErrorHandler:(id)handler
{
  handlerCopy = handler;
  os_unfair_lock_assert_owner(&self->_lock);
  localComputePublisher = self->_localComputePublisher;
  if (localComputePublisher)
  {
    v6 = localComputePublisher;
  }

  else
  {
    connection = [(BMComputePublisherClient *)self connection];
    v6 = [connection synchronousRemoteObjectProxyWithErrorHandler:handlerCopy];
  }

  return v6;
}

- (void)registerBiomeLaunchNotification
{
  v18 = *MEMORY[0x1E69E9840];
  os_unfair_lock_assert_owner(&self->_lock);
  if (![(BMComputePublisherClient *)self isRegisteredForRelaunchNotification])
  {
    biomeLaunchNotification = [(BMComputePublisherClientDomainConfiguration *)self->_configuration biomeLaunchNotification];
    if (biomeLaunchNotification)
    {
      out_token = -1;
      v4 = __biome_log_for_category();
      if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
      {
        *buf = 138412290;
        v17 = biomeLaunchNotification;
        _os_log_impl(&dword_1848EE000, v4, OS_LOG_TYPE_INFO, "Registering for biome re-launch notification %@", buf, 0xCu);
      }

      objc_initWeak(&location, self);
      v5 = biomeLaunchNotification;
      uTF8String = [biomeLaunchNotification UTF8String];
      queue = [(BMComputePublisherClient *)self queue];
      handler[0] = MEMORY[0x1E69E9820];
      handler[1] = 3221225472;
      handler[2] = __59__BMComputePublisherClient_registerBiomeLaunchNotification__block_invoke;
      handler[3] = &unk_1E6E546C0;
      objc_copyWeak(&v13, &location);
      v8 = notify_register_dispatch(uTF8String, &out_token, queue, handler);

      if (v8)
      {
        v9 = __biome_log_for_category();
        if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
        {
          v10 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:v8];
          [(BMComputePublisherClient *)v10 registerBiomeLaunchNotification];
        }
      }

      else
      {
        self->_token = out_token;
      }

      objc_destroyWeak(&v13);
      objc_destroyWeak(&location);
    }
  }

  v11 = *MEMORY[0x1E69E9840];
}

void __59__BMComputePublisherClient_registerBiomeLaunchNotification__block_invoke(uint64_t a1, int a2)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v5 = WeakRetained;
    v4 = [WeakRetained queue];
    dispatch_assert_queue_V2(v4);

    WeakRetained = v5;
    if (v5[6] == a2)
    {
      [v5 handleBiomeRelaunch];
      WeakRetained = v5;
    }
  }
}

- (void)unregisterBiomeLaunchNotification
{
  os_unfair_lock_assert_owner(&self->_lock);
  if (self->_token != -1)
  {
    v3 = __biome_log_for_category();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
    {
      [(BMComputePublisherClient *)v3 unregisterBiomeLaunchNotification];
    }

    v4 = notify_cancel(self->_token);
    if (v4)
    {
      v5 = v4;
      v6 = __biome_log_for_category();
      if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
      {
        [(BMComputePublisherClient *)v5 unregisterBiomeLaunchNotification];
      }
    }

    self->_token = -1;
  }
}

- (void)handleBiomeRelaunch
{
  v24 = *MEMORY[0x1E69E9840];
  queue = [(BMComputePublisherClient *)self queue];
  dispatch_assert_queue_V2(queue);

  os_unfair_lock_assert_not_owner(&self->_lock);
  os_unfair_lock_lock(&self->_lock);
  v4 = __biome_log_for_category();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&dword_1848EE000, v4, OS_LOG_TYPE_INFO, "Handling biomed re-launch notification", buf, 2u);
  }

  subscriptions = [(BMComputePublisherClient *)self subscriptions];
  allValues = [subscriptions allValues];
  v7 = [MEMORY[0x1E696AE18] predicateWithBlock:&__block_literal_global_20];
  v8 = [allValues filteredArrayUsingPredicate:v7];

  v19 = 0u;
  v20 = 0u;
  v17 = 0u;
  v18 = 0u;
  v9 = v8;
  v10 = [v9 countByEnumeratingWithState:&v17 objects:v23 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v18;
    do
    {
      for (i = 0; i != v11; ++i)
      {
        if (*v18 != v12)
        {
          objc_enumerationMutation(v9);
        }

        v14 = *(*(&v17 + 1) + 8 * i);
        v15 = __biome_log_for_category();
        if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138412290;
          v22 = v14;
          _os_log_impl(&dword_1848EE000, v15, OS_LOG_TYPE_DEFAULT, "re-subscribing subscription after biomed re-launch %@", buf, 0xCu);
        }

        [(BMComputePublisherClient *)self subscribeViaNSXPC:v14];
      }

      v11 = [v9 countByEnumeratingWithState:&v17 objects:v23 count:16];
    }

    while (v11);
  }

  os_unfair_lock_unlock(&self->_lock);
  v16 = *MEMORY[0x1E69E9840];
}

- (void)subscribe:(id)subscribe
{
  v22 = *MEMORY[0x1E69E9840];
  subscribeCopy = subscribe;
  os_unfair_lock_assert_not_owner(&self->_lock);
  v5 = __biome_log_for_category();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    machServiceName = [(BMComputePublisherClientDomainConfiguration *)self->_configuration machServiceName];
    xPCPublisherStreamName = [(BMComputePublisherClientDomainConfiguration *)self->_configuration XPCPublisherStreamName];
    localComputePublisher = self->_localComputePublisher;
    v14 = 138413058;
    v15 = machServiceName;
    v16 = 2112;
    v17 = xPCPublisherStreamName;
    v18 = 2112;
    v19 = localComputePublisher;
    v20 = 2112;
    v21 = subscribeCopy;
    _os_log_impl(&dword_1848EE000, v5, OS_LOG_TYPE_INFO, "BMComputePublisherClient subscribe with connection name: %@, publisher stream name: %@, localPublisher: %@, subscription: %@", &v14, 0x2Au);
  }

  if (subscribeCopy)
  {
    identifier = [subscribeCopy identifier];
    v10 = identifier == 0;

    if (!v10)
    {
      os_unfair_lock_lock(&self->_lock);
      if (!-[BMComputePublisherClient numberOfExistingNonWakingSubscriptions](self, "numberOfExistingNonWakingSubscriptions") && ([subscribeCopy waking] & 1) == 0)
      {
        [(BMComputePublisherClient *)self registerBiomeLaunchNotification];
      }

      subscriptions = [(BMComputePublisherClient *)self subscriptions];
      identifier2 = [subscribeCopy identifier];
      [subscriptions setObject:subscribeCopy forKeyedSubscript:identifier2];

      if ([subscribeCopy waking])
      {
        [(BMComputePublisherClient *)self subscribeViaXPCEvent:subscribeCopy];
      }

      else
      {
        [(BMComputePublisherClient *)self subscribeViaNSXPC:subscribeCopy];
      }

      os_unfair_lock_unlock(&self->_lock);
    }
  }

  v13 = *MEMORY[0x1E69E9840];
}

- (void)subscribeViaXPCEvent:(id)event
{
  eventCopy = event;
  os_unfair_lock_assert_owner(&self->_lock);
  if (([eventCopy waking] & 1) == 0)
  {
    [(BMComputePublisherClient *)a2 subscribeViaXPCEvent:?];
  }

  pendingEvents = [(BMComputePublisherClient *)self pendingEvents];
  identifier = [eventCopy identifier];
  v8 = [pendingEvents objectForKeyedSubscript:identifier];

  pendingEvents2 = [(BMComputePublisherClient *)self pendingEvents];
  identifier2 = [eventCopy identifier];
  [pendingEvents2 removeObjectForKey:identifier2];

  if (v8)
  {
    queue = [(BMComputePublisherClient *)self queue];
    v14 = MEMORY[0x1E69E9820];
    v15 = 3221225472;
    v16 = __49__BMComputePublisherClient_subscribeViaXPCEvent___block_invoke;
    v17 = &unk_1E6E529D0;
    selfCopy = self;
    v19 = v8;
    dispatch_async(queue, &v14);
  }

  xPCEvent = [eventCopy XPCEvent];
  identifier3 = [eventCopy identifier];
  [(BMComputePublisherClient *)self _setXPCEvent:xPCEvent identifier:identifier3];
}

uint64_t __49__BMComputePublisherClient_subscribeViaXPCEvent___block_invoke(uint64_t a1)
{
  v2 = __biome_log_for_category();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
  {
    __49__BMComputePublisherClient_subscribeViaXPCEvent___block_invoke_cold_1(a1, v2);
  }

  return [*(a1 + 32) _handleEventWithPayload:*(a1 + 40)];
}

- (void)subscribeViaNSXPC:(id)c
{
  cCopy = c;
  os_unfair_lock_assert_owner(&self->_lock);
  if ([cCopy waking])
  {
    [(BMComputePublisherClient *)a2 subscribeViaNSXPC:?];
  }

  objc_initWeak(&location, self);
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __46__BMComputePublisherClient_subscribeViaNSXPC___block_invoke;
  v8[3] = &unk_1E6E54708;
  objc_copyWeak(&v10, &location);
  v6 = cCopy;
  v9 = v6;
  v7 = [(BMComputePublisherClient *)self computePublisherObjectWithErrorHandler:v8];
  [v7 subscribe:v6];

  objc_destroyWeak(&v10);
  objc_destroyWeak(&location);
}

void __46__BMComputePublisherClient_subscribeViaNSXPC___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v5 = __biome_log_for_category();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
  {
    __46__BMComputePublisherClient_subscribeViaNSXPC___block_invoke_cold_1(a1);
  }

  if (WeakRetained)
  {
    os_unfair_lock_lock(WeakRetained + 2);
    v6 = *&WeakRetained[16]._os_unfair_lock_opaque;
    v7 = [*(a1 + 32) identifier];
    [v6 setObject:0 forKeyedSubscript:v7];

    os_unfair_lock_unlock(WeakRetained + 2);
  }
}

- (void)unsubscribeWithIdentifier:(id)identifier
{
  v27 = *MEMORY[0x1E69E9840];
  identifierCopy = identifier;
  os_unfair_lock_assert_not_owner(&self->_lock);
  os_unfair_lock_lock(&self->_lock);
  v5 = __biome_log_for_category();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    machServiceName = [(BMComputePublisherClientDomainConfiguration *)self->_configuration machServiceName];
    xPCPublisherStreamName = [(BMComputePublisherClientDomainConfiguration *)self->_configuration XPCPublisherStreamName];
    localComputePublisher = self->_localComputePublisher;
    *buf = 138413058;
    v20 = machServiceName;
    v21 = 2112;
    v22 = xPCPublisherStreamName;
    v23 = 2112;
    v24 = localComputePublisher;
    v25 = 2112;
    v26 = identifierCopy;
    _os_log_impl(&dword_1848EE000, v5, OS_LOG_TYPE_INFO, "BMComputePublisherClient unsubscribe with connection name: %@, publisher stream name: %@, localPublisher: %@, identifier: %@", buf, 0x2Au);
  }

  subscriptions = [(BMComputePublisherClient *)self subscriptions];
  v10 = [subscriptions objectForKeyedSubscript:identifierCopy];

  if (!v10)
  {
    v13 = __biome_log_for_category();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
    {
      [BMComputePublisherClient unsubscribeWithIdentifier:];
    }

    goto LABEL_11;
  }

  subscriptions2 = [(BMComputePublisherClient *)self subscriptions];
  [subscriptions2 removeObjectForKey:identifierCopy];

  if (![v10 waking])
  {
    if (![(BMComputePublisherClient *)self numberOfExistingNonWakingSubscriptions])
    {
      [(BMComputePublisherClient *)self unregisterBiomeLaunchNotification];
    }

    v17[0] = MEMORY[0x1E69E9820];
    v17[1] = 3221225472;
    v17[2] = __54__BMComputePublisherClient_unsubscribeWithIdentifier___block_invoke;
    v17[3] = &unk_1E6E53620;
    v14 = identifierCopy;
    v18 = v14;
    v15 = [(BMComputePublisherClient *)self computePublisherObjectWithErrorHandler:v17];
    [v15 unsubscribeWithIdentifier:v14];

    v13 = v18;
LABEL_11:

    goto LABEL_12;
  }

  pendingEvents = [(BMComputePublisherClient *)self pendingEvents];
  [pendingEvents removeObjectForKey:identifierCopy];

  [(BMComputePublisherClient *)self _setXPCEvent:0 identifier:identifierCopy];
LABEL_12:

  os_unfair_lock_unlock(&self->_lock);
  v16 = *MEMORY[0x1E69E9840];
}

void __54__BMComputePublisherClient_unsubscribeWithIdentifier___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = __biome_log_for_category();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    __54__BMComputePublisherClient_unsubscribeWithIdentifier___block_invoke_cold_1(a1);
  }
}

- (void)receiveInputForIdentifier:(id)identifier streamIdentifier:(id)streamIdentifier storeEvent:(id)event
{
  identifierCopy = identifier;
  streamIdentifierCopy = streamIdentifier;
  eventCopy = event;
  queue = [(BMComputePublisherClient *)self queue];
  dispatch_assert_queue_V2(queue);

  os_unfair_lock_assert_not_owner(&self->_lock);
  v12 = __biome_log_for_category();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
  {
    [BMComputePublisherClient receiveInputForIdentifier:identifierCopy streamIdentifier:v12 storeEvent:?];
  }

  if (identifierCopy)
  {
    os_unfair_lock_lock(&self->_lock);
    subscriptions = [(BMComputePublisherClient *)self subscriptions];
    v14 = [subscriptions objectForKeyedSubscript:identifierCopy];

    os_unfair_lock_unlock(&self->_lock);
    if (v14)
    {
      block = [v14 block];
      (block)[2](block, v14, streamIdentifierCopy, eventCopy);
    }
  }

  else
  {
    v14 = __biome_log_for_category();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      [BMComputePublisherClient receiveInputForIdentifier:v14 streamIdentifier:? storeEvent:?];
    }
  }
}

- (unint64_t)numberOfExistingNonWakingSubscriptions
{
  subscriptions = [(BMComputePublisherClient *)self subscriptions];
  allValues = [subscriptions allValues];
  v4 = [MEMORY[0x1E696AE18] predicateWithBlock:&__block_literal_global_56];
  v5 = [allValues filteredArrayUsingPredicate:v4];
  v6 = [v5 count];

  return v6;
}

- (void)_handleEventWithPayload:(id)payload
{
  v35 = *MEMORY[0x1E69E9840];
  payloadCopy = payload;
  queue = [(BMComputePublisherClient *)self queue];
  dispatch_assert_queue_V2(queue);

  os_unfair_lock_assert_not_owner(&self->_lock);
  os_unfair_lock_lock(&self->_lock);
  v6 = [MEMORY[0x1E696AEC0] stringWithUTF8String:{xpc_dictionary_get_string(payloadCopy, "identifier")}];
  v7 = __biome_log_for_category();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    *buf = 138412290;
    v30 = v6;
    _os_log_impl(&dword_1848EE000, v7, OS_LOG_TYPE_INFO, "BMComputePublisherClient handle event for subscription with identifier %@", buf, 0xCu);
  }

  subscriptions = [(BMComputePublisherClient *)self subscriptions];
  v9 = [subscriptions objectForKeyedSubscript:v6];

  if (v9)
  {
    string = xpc_dictionary_get_string(payloadCopy, "stream");
    if (string)
    {
      string = [objc_alloc(MEMORY[0x1E696AEC0]) initWithUTF8String:string];
    }

    length = 0;
    data = xpc_dictionary_get_data(payloadCopy, "event", &length);
    if (data)
    {
      v12 = objc_alloc(MEMORY[0x1E695DEF0]);
      v13 = [v12 initWithBytes:data length:length];
      v27 = 0;
      data = [MEMORY[0x1E696ACD0] unarchivedObjectOfClass:objc_opt_class() fromData:v13 error:&v27];
      v14 = v27;
      if (v14)
      {
        v15 = MEMORY[0x1865F7C40](payloadCopy);
        v16 = __biome_log_for_category();
        if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
        {
          [BMComputePublisherClient _handleEventWithPayload:];
        }

        free(v15);
      }

      else
      {
        v18 = __biome_log_for_category();
        if (os_log_type_enabled(v18, OS_LOG_TYPE_INFO))
        {
          v19 = MEMORY[0x1E696AD98];
          [data timestamp];
          v26 = [v19 numberWithDouble:?];
          eventBody = [data eventBody];
          *buf = 138412802;
          v30 = data;
          v31 = 2112;
          v32 = v26;
          v33 = 2112;
          v34 = eventBody;
          v21 = eventBody;
          _os_log_impl(&dword_1848EE000, v18, OS_LOG_TYPE_INFO, "Handling store event from xpc_event publisher %@ %@ %@", buf, 0x20u);
        }
      }
    }

    v22 = [MEMORY[0x1E695DF00] dateWithTimeIntervalSinceReferenceDate:{xpc_dictionary_get_double(payloadCopy, "timestamp")}];
    os_unfair_lock_unlock(&self->_lock);
    if (v22)
    {
      v23 = [v22 dateByAddingTimeInterval:-0.000001];
      [v9 setInitialBookmarkTimestamp:v23];
    }

    block = [v9 block];
    (block)[2](block, v9, string, data);
  }

  else
  {
    pendingEvents = [(BMComputePublisherClient *)self pendingEvents];
    [pendingEvents setObject:payloadCopy forKeyedSubscript:v6];

    os_unfair_lock_unlock(&self->_lock);
  }

  v25 = *MEMORY[0x1E69E9840];
}

- (void)_setXPCEvent:(id)event identifier:(id)identifier
{
  v26 = *MEMORY[0x1E69E9840];
  eventCopy = event;
  identifierCopy = identifier;
  os_unfair_lock_assert_owner(&self->_lock);
  if (!eventCopy)
  {
    goto LABEL_12;
  }

  if ([(BMComputePublisherClientDomainConfiguration *)self->_configuration domain]== 1)
  {
    v8 = +[BMDaemon userComputePublisherStreamName];
  }

  else
  {
    if ([(BMComputePublisherClientDomainConfiguration *)self->_configuration domain])
    {
      goto LABEL_12;
    }

    v8 = +[BMDaemon systemComputePublisherStreamName];
  }

  v9 = v8;
  if (v8)
  {
    [v8 UTF8String];
    [identifierCopy UTF8String];
    v10 = xpc_copy_event();
    if (v10)
    {
      [v9 UTF8String];
      [identifierCopy UTF8String];
      xpc_set_event();
      v11 = __biome_log_for_category();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
      {
        xPCPublisherStreamName = [(BMComputePublisherClientDomainConfiguration *)self->_configuration XPCPublisherStreamName];
        v20 = 138412802;
        v21 = identifierCopy;
        v22 = 2112;
        v23 = v9;
        v24 = 2112;
        v25 = xPCPublisherStreamName;
        _os_log_impl(&dword_1848EE000, v11, OS_LOG_TYPE_DEFAULT, "Cancelled existing xpc event subscription: %@ to stream: %@ because of new subscription to stream: %@", &v20, 0x20u);
      }
    }
  }

LABEL_12:
  xPCPublisherStreamName2 = [(BMComputePublisherClientDomainConfiguration *)self->_configuration XPCPublisherStreamName];
  [xPCPublisherStreamName2 UTF8String];
  [identifierCopy UTF8String];
  v14 = xpc_copy_event();

  if (eventCopy)
  {
    v15 = v14 == 0;
  }

  else
  {
    v15 = 1;
  }

  v16 = v15;
  if (eventCopy && v14 && !xpc_equal(eventCopy, v14))
  {
    v17 = __biome_log_for_category();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      [BMComputePublisherClient _setXPCEvent:identifier:];
    }
  }

  if (v16)
  {
    xPCPublisherStreamName3 = [(BMComputePublisherClientDomainConfiguration *)self->_configuration XPCPublisherStreamName];
    [xPCPublisherStreamName3 UTF8String];
    [identifierCopy UTF8String];
    xpc_set_event();
  }

  v19 = *MEMORY[0x1E69E9840];
}

@end