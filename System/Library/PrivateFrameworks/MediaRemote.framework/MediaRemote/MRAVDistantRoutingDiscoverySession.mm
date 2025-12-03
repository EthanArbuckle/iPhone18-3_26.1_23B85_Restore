@interface MRAVDistantRoutingDiscoverySession
+ (id)clientInterface;
+ (id)serviceInterface;
- (BOOL)devicePresenceDetected;
- (MRAVDistantEndpoint)distantLocalEndpoint;
- (MRAVDistantRoutingDiscoverySession)initWithConfiguration:(id)configuration;
- (MRAVLocalEndpoint)localEndpoint;
- (NSArray)distantEndpoints;
- (NSArray)distantOutputDevices;
- (NSString)debugDescription;
- (NSString)description;
- (id)_hostedRoutingConnection;
- (id)_resolveDistantEndpoints:(id)endpoints;
- (id)_resolveEndpoints:(id)endpoints;
- (id)availableEndpoints;
- (id)routingContextUID;
- (unsigned)discoveryMode;
- (void)_initializeHostedRoutingConnectionWithCompletion:(id)completion;
- (void)_notifyEndpointsChanged;
- (void)_registerForPerRoutingContextNotifications;
- (void)_reloadAvailableDistantEndpoints;
- (void)_reloadAvailableDistantEndpointsWithEndpoints:(id)endpoints;
- (void)_reloadAvailableDistantOutputDevices;
- (void)_reloadAvailableDistantOutputDevicesWithOutputDevices:(id)devices;
- (void)_reloadHostedRoutingServiceDiscoveryMode;
- (void)configurationWithCompletion:(id)completion;
- (void)dealloc;
- (void)setDiscoveryMode:(unsigned int)mode;
- (void)setHostedRoutingSessionConnection:(id)connection;
- (void)setRoutingContextUID:(id)d;
@end

@implementation MRAVDistantRoutingDiscoverySession

- (void)_registerForPerRoutingContextNotifications
{
  v43 = *MEMORY[0x1E69E9840];
  dispatch_assert_queue_V2(self->_serialQueue);
  v40 = 0u;
  v41 = 0u;
  v38 = 0u;
  v39 = 0u;
  v3 = self->_notificationTokens;
  v4 = [(NSArray *)v3 countByEnumeratingWithState:&v38 objects:v42 count:16];
  if (v4)
  {
    v5 = *v39;
    do
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v39 != v5)
        {
          objc_enumerationMutation(v3);
        }

        v7 = *(*(&v38 + 1) + 8 * i);
        defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
        [defaultCenter removeObserver:v7];
      }

      v4 = [(NSArray *)v3 countByEnumeratingWithState:&v38 objects:v42 count:16];
    }

    while (v4);
  }

  notificationTokens = self->_notificationTokens;
  self->_notificationTokens = 0;

  distantLocalEndpoint = self->_distantLocalEndpoint;
  self->_distantLocalEndpoint = 0;

  v11 = [MRAVLocalEndpoint sharedLocalEndpointForRoutingContextWithUID:self->_routingContextUID];
  localEndpoint = self->_localEndpoint;
  self->_localEndpoint = v11;

  objc_initWeak(&location, self);
  v35[0] = MEMORY[0x1E69E9820];
  v35[1] = 3221225472;
  v35[2] = __80__MRAVDistantRoutingDiscoverySession__registerForPerRoutingContextNotifications__block_invoke;
  v35[3] = &unk_1E769B178;
  objc_copyWeak(&v36, &location);
  v13 = MEMORY[0x1A58E3570](v35);
  defaultCenter2 = [MEMORY[0x1E696AD88] defaultCenter];
  v15 = self->_localEndpoint;
  v33[0] = MEMORY[0x1E69E9820];
  v33[1] = 3221225472;
  v33[2] = __80__MRAVDistantRoutingDiscoverySession__registerForPerRoutingContextNotifications__block_invoke_3;
  v33[3] = &unk_1E769E710;
  v16 = v13;
  v34 = v16;
  v17 = [defaultCenter2 addObserverForName:@"MRAVEndpointDidAddOutputDeviceNotification" object:v15 queue:0 usingBlock:v33];

  defaultCenter3 = [MEMORY[0x1E696AD88] defaultCenter];
  v19 = self->_localEndpoint;
  v31[0] = MEMORY[0x1E69E9820];
  v31[1] = 3221225472;
  v31[2] = __80__MRAVDistantRoutingDiscoverySession__registerForPerRoutingContextNotifications__block_invoke_4;
  v31[3] = &unk_1E769E710;
  v20 = v16;
  v32 = v20;
  v21 = [defaultCenter3 addObserverForName:@"MRAVEndpointDidRemoveOutputDeviceNotification" object:v19 queue:0 usingBlock:v31];

  defaultCenter4 = [MEMORY[0x1E696AD88] defaultCenter];
  v23 = self->_localEndpoint;
  v29[0] = MEMORY[0x1E69E9820];
  v29[1] = 3221225472;
  v29[2] = __80__MRAVDistantRoutingDiscoverySession__registerForPerRoutingContextNotifications__block_invoke_5;
  v29[3] = &unk_1E769E710;
  v24 = v20;
  v30 = v24;
  v25 = [defaultCenter4 addObserverForName:@"MRAVEndpointDidChangeOutputDeviceNotification" object:v23 queue:0 usingBlock:v29];

  v26 = [objc_alloc(MEMORY[0x1E695DEC8]) initWithObjects:{v17, v21, v25, 0}];
  v27 = self->_notificationTokens;
  self->_notificationTokens = v26;

  objc_destroyWeak(&v36);
  objc_destroyWeak(&location);
  v28 = *MEMORY[0x1E69E9840];
}

- (NSString)description
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x3032000000;
  v8 = __Block_byref_object_copy__17;
  v9 = __Block_byref_object_dispose__17;
  v10 = 0;
  serialQueue = self->_serialQueue;
  msv_dispatch_sync_on_queue();
  v3 = v6[5];
  _Block_object_dispose(&v5, 8);

  return v3;
}

void __49__MRAVDistantRoutingDiscoverySession_description__block_invoke(uint64_t a1)
{
  v2 = MEMORY[0x1E696AEC0];
  v3 = *(a1 + 32);
  v4 = objc_opt_class();
  v5 = *(a1 + 32);
  v10 = MRMediaRemoteEndpointFeaturesDescription(*(v5 + 144));
  v6 = MRMediaRemoteCopyRouteDiscoveryModeDescription(*(*(a1 + 32) + 148));
  v7 = [v2 stringWithFormat:@"<%@: %p> (%@ - %@)", v4, v5, v10, v6];
  v8 = *(*(a1 + 40) + 8);
  v9 = *(v8 + 40);
  *(v8 + 40) = v7;
}

- (id)availableEndpoints
{
  distantEndpoints = [(MRAVDistantRoutingDiscoverySession *)self distantEndpoints];
  v4 = [(MRAVDistantRoutingDiscoverySession *)self _resolveEndpoints:distantEndpoints];

  return v4;
}

- (NSArray)distantEndpoints
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x3032000000;
  v10 = __Block_byref_object_copy__17;
  v11 = __Block_byref_object_dispose__17;
  v12 = 0;
  serialQueue = self->_serialQueue;
  v6 = MEMORY[0x1E69E9820];
  msv_dispatch_sync_on_queue();
  v4 = [(MRAVDistantRoutingDiscoverySession *)self _resolveDistantEndpoints:v8[5], v6, 3221225472, __54__MRAVDistantRoutingDiscoverySession_distantEndpoints__block_invoke, &unk_1E769A2A0, self, &v7];
  _Block_object_dispose(&v7, 8);

  return v4;
}

void __54__MRAVDistantRoutingDiscoverySession_distantEndpoints__block_invoke(uint64_t a1)
{
  v2 = [*(*(a1 + 32) + 160) copy];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;
}

- (NSArray)distantOutputDevices
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x3032000000;
  v9 = __Block_byref_object_copy__17;
  v10 = __Block_byref_object_dispose__17;
  v11 = 0;
  serialQueue = self->_serialQueue;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __58__MRAVDistantRoutingDiscoverySession_distantOutputDevices__block_invoke;
  v5[3] = &unk_1E769A2A0;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(serialQueue, v5);
  v3 = v7[5];
  _Block_object_dispose(&v6, 8);

  return v3;
}

void __58__MRAVDistantRoutingDiscoverySession_distantOutputDevices__block_invoke(uint64_t a1)
{
  v2 = [*(*(a1 + 32) + 168) copy];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;
}

- (void)_reloadHostedRoutingServiceDiscoveryMode
{
  _hostedRoutingConnection = [(MRAVDistantRoutingDiscoverySession *)self _hostedRoutingConnection];
  remoteObjectProxy = [_hostedRoutingConnection remoteObjectProxy];
  [remoteObjectProxy setDiscoveryMode:-[MRAVDistantRoutingDiscoverySession discoveryMode](self withCompletion:{"discoveryMode"), &__block_literal_global_121}];
}

- (id)_hostedRoutingConnection
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x3032000000;
  v9 = __Block_byref_object_copy__17;
  v10 = __Block_byref_object_dispose__17;
  v11 = 0;
  serialQueue = self->_serialQueue;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __62__MRAVDistantRoutingDiscoverySession__hostedRoutingConnection__block_invoke;
  v5[3] = &unk_1E769A4C8;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(serialQueue, v5);
  v3 = v7[5];
  _Block_object_dispose(&v6, 8);

  return v3;
}

+ (id)serviceInterface
{
  v2 = [MEMORY[0x1E696B0D0] interfaceWithProtocol:&unk_1F15C4050];
  v3 = MEMORY[0x1E695DFD8];
  v4 = objc_opt_class();
  v5 = [v3 setWithObjects:{v4, objc_opt_class(), 0}];
  [v2 setClasses:v5 forSelector:sel_getAvailableEndpointsWithCompletion_ argumentIndex:0 ofReply:1];
  v6 = MEMORY[0x1E695DFD8];
  v7 = objc_opt_class();
  v8 = [v6 setWithObjects:{v7, objc_opt_class(), 0}];
  [v2 setClasses:v8 forSelector:sel_getAvailableOutputDevicesWithCompletion_ argumentIndex:0 ofReply:1];

  return v2;
}

+ (id)clientInterface
{
  v2 = [MEMORY[0x1E696B0D0] interfaceWithProtocol:&unk_1F159A8D0];
  v3 = MEMORY[0x1E695DFD8];
  v4 = objc_opt_class();
  v5 = [v3 setWithObjects:{v4, objc_opt_class(), 0}];
  [v2 setClasses:v5 forSelector:sel_availableEndpointsDidChange_ argumentIndex:0 ofReply:0];
  v6 = MEMORY[0x1E695DFD8];
  v7 = objc_opt_class();
  v8 = [v6 setWithObjects:{v7, objc_opt_class(), 0}];
  [v2 setClasses:v8 forSelector:sel_availableOutputDevicesDidChange_ argumentIndex:0 ofReply:0];
  v9 = [MEMORY[0x1E695DFD8] setWithObjects:{objc_opt_class(), 0}];
  [v2 setClasses:v9 forSelector:sel_configurationWithCompletion_ argumentIndex:0 ofReply:1];

  return v2;
}

- (void)_reloadAvailableDistantEndpoints
{
  objc_initWeak(&location, self);
  _hostedRoutingConnection = [(MRAVDistantRoutingDiscoverySession *)self _hostedRoutingConnection];
  remoteObjectProxy = [_hostedRoutingConnection remoteObjectProxy];
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __70__MRAVDistantRoutingDiscoverySession__reloadAvailableDistantEndpoints__block_invoke;
  v5[3] = &unk_1E769E828;
  objc_copyWeak(&v6, &location);
  [remoteObjectProxy getAvailableEndpointsWithCompletion:v5];

  objc_destroyWeak(&v6);
  objc_destroyWeak(&location);
}

- (void)_reloadAvailableDistantOutputDevices
{
  objc_initWeak(&location, self);
  _hostedRoutingConnection = [(MRAVDistantRoutingDiscoverySession *)self _hostedRoutingConnection];
  remoteObjectProxy = [_hostedRoutingConnection remoteObjectProxy];
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __74__MRAVDistantRoutingDiscoverySession__reloadAvailableDistantOutputDevices__block_invoke;
  v5[3] = &unk_1E769E828;
  objc_copyWeak(&v6, &location);
  [remoteObjectProxy getAvailableOutputDevicesWithCompletion:v5];

  objc_destroyWeak(&v6);
  objc_destroyWeak(&location);
}

void __62__MRAVDistantRoutingDiscoverySession__hostedRoutingConnection__block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (*(v1 + 188) == 1)
  {
    objc_storeStrong((*(*(a1 + 40) + 8) + 40), *(v1 + 216));
  }
}

- (unsigned)discoveryMode
{
  selfCopy = self;
  v5[0] = 0;
  v5[1] = v5;
  v5[2] = 0x2020000000;
  v6 = 0;
  serialQueue = self->_serialQueue;
  msv_dispatch_sync_on_queue();
  LODWORD(selfCopy) = selfCopy->_discoveryMode;
  _Block_object_dispose(v5, 8);
  return selfCopy;
}

- (MRAVDistantEndpoint)distantLocalEndpoint
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x3032000000;
  v8 = __Block_byref_object_copy__17;
  v9 = __Block_byref_object_dispose__17;
  v10 = 0;
  serialQueue = self->_serialQueue;
  msv_dispatch_sync_on_queue();
  v3 = v6[5];
  _Block_object_dispose(&v5, 8);

  return v3;
}

void __58__MRAVDistantRoutingDiscoverySession_distantLocalEndpoint__block_invoke(uint64_t a1)
{
  v2 = *(*(a1 + 32) + 232);
  if (!v2)
  {
    v3 = [MRAVDistantEndpoint alloc];
    v4 = [*(*(a1 + 32) + 224) descriptor];
    v5 = [(MRAVDistantEndpoint *)v3 initWithDescriptor:v4];
    v6 = *(a1 + 32);
    v7 = *(v6 + 232);
    *(v6 + 232) = v5;

    v2 = *(*(a1 + 32) + 232);
  }

  v8 = (*(*(a1 + 40) + 8) + 40);

  objc_storeStrong(v8, v2);
}

- (MRAVLocalEndpoint)localEndpoint
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x3032000000;
  v8 = __Block_byref_object_copy__17;
  v9 = __Block_byref_object_dispose__17;
  v10 = 0;
  serialQueue = self->_serialQueue;
  msv_dispatch_sync_on_queue();
  v3 = v6[5];
  _Block_object_dispose(&v5, 8);

  return v3;
}

void __70__MRAVDistantRoutingDiscoverySession__reloadAvailableDistantEndpoints__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (v5)
  {
    WeakRetained = objc_loadWeakRetained((a1 + 32));
    v8 = WeakRetained;
    if (WeakRetained)
    {
      [WeakRetained _reloadAvailableDistantEndpointsWithEndpoints:v5];
    }
  }

  else
  {
    v8 = _MRLogForCategory(0);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      __70__MRAVDistantRoutingDiscoverySession__reloadAvailableDistantEndpoints__block_invoke_cold_1();
    }
  }
}

- (void)_notifyEndpointsChanged
{
  v11 = 0;
  v12 = &v11;
  v13 = 0x3032000000;
  v14 = __Block_byref_object_copy__17;
  v15 = __Block_byref_object_dispose__17;
  v16 = 0;
  v5 = 0;
  v6 = &v5;
  v7 = 0x3032000000;
  v8 = __Block_byref_object_copy__17;
  serialQueue = self->_serialQueue;
  v9 = __Block_byref_object_dispose__17;
  v10 = 0;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __61__MRAVDistantRoutingDiscoverySession__notifyEndpointsChanged__block_invoke;
  block[3] = &unk_1E769E800;
  block[4] = self;
  block[5] = &v11;
  block[6] = &v5;
  dispatch_sync(serialQueue, block);
  [(MRAVRoutingDiscoverySession *)self notifyAvailableEndpointsChanged:v12[5] discoveredEndpoints:v6[5]];
  _Block_object_dispose(&v5, 8);

  _Block_object_dispose(&v11, 8);
}

void __78__MRAVDistantRoutingDiscoverySession__reloadHostedRoutingServiceDiscoveryMode__block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  if (v2)
  {
    v3 = _MRLogForCategory(0);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      __78__MRAVDistantRoutingDiscoverySession__reloadHostedRoutingServiceDiscoveryMode__block_invoke_cold_1();
    }
  }
}

void __74__MRAVDistantRoutingDiscoverySession__reloadAvailableDistantOutputDevices__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (v5)
  {
    WeakRetained = objc_loadWeakRetained((a1 + 32));
    v8 = WeakRetained;
    if (WeakRetained)
    {
      [WeakRetained _reloadAvailableDistantOutputDevicesWithOutputDevices:v5];
    }
  }

  else
  {
    v8 = _MRLogForCategory(0);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      __74__MRAVDistantRoutingDiscoverySession__reloadAvailableDistantOutputDevices__block_invoke_cold_1();
    }
  }
}

void __61__MRAVDistantRoutingDiscoverySession__notifyEndpointsChanged__block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) availableEndpoints];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  v5 = [*(a1 + 32) distantEndpoints];
  v6 = *(*(a1 + 48) + 8);
  v7 = *(v6 + 40);
  *(v6 + 40) = v5;
}

- (MRAVDistantRoutingDiscoverySession)initWithConfiguration:(id)configuration
{
  configurationCopy = configuration;
  v33.receiver = self;
  v33.super_class = MRAVDistantRoutingDiscoverySession;
  v5 = [(MRAVRoutingDiscoverySession *)&v33 initWithConfiguration:configurationCopy];
  if (v5)
  {
    v6 = objc_opt_class();
    Name = class_getName(v6);
    v8 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v9 = dispatch_queue_create(Name, v8);
    serialQueue = v5->_serialQueue;
    v5->_serialQueue = v9;

    v5->_discoveryMode = 0;
    routingContextUID = [configurationCopy routingContextUID];
    routingContextUID = v5->_routingContextUID;
    v5->_routingContextUID = routingContextUID;

    v5->_endpointFeatures = [configurationCopy features];
    v13 = objc_alloc(MEMORY[0x1E696AEC0]);
    v14 = MRMediaRemoteEndpointFeaturesDescription([configurationCopy features]);
    v15 = [v13 initWithFormat:@"Distant.%@", v14];

    v16 = [MRRollingWindowActivityTracker alloc];
    v17 = +[MRUserSettings currentSettings];
    [v17 persistantDiscoveryModeDetectionDuration];
    v19 = v18;
    v20 = +[MRUserSettings currentSettings];
    [v20 persistantDiscoveryModeDetectionWindowDuration];
    v22 = v21;
    v31[0] = MEMORY[0x1E69E9820];
    v31[1] = 3221225472;
    v31[2] = __60__MRAVDistantRoutingDiscoverySession_initWithConfiguration___block_invoke;
    v31[3] = &unk_1E769A228;
    v32 = v15;
    v23 = v15;
    v24 = [(MRRollingWindowActivityTracker *)v16 initWithActivityName:v23 maxAllowedTime:v31 windowDuration:v19 handler:v22];
    discoveryTracker = v5->_discoveryTracker;
    v5->_discoveryTracker = v24;

    v26 = v5->_serialQueue;
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __60__MRAVDistantRoutingDiscoverySession_initWithConfiguration___block_invoke_2;
    block[3] = &unk_1E769A228;
    v27 = v5;
    v30 = v27;
    dispatch_sync(v26, block);
    [(MRAVDistantRoutingDiscoverySession *)v27 _initializeHostedRoutingConnectionWithCompletion:0];
  }

  return v5;
}

void __60__MRAVDistantRoutingDiscoverySession_initWithConfiguration___block_invoke(uint64_t a1)
{
  v1 = MEMORY[0x1E69B13D8];
  v2 = *MEMORY[0x1E69B1348];
  v3 = *(a1 + 32);
  v5 = [MEMORY[0x1E696AAE8] mainBundle];
  v4 = [v5 bundleIdentifier];
  [v1 snapshotWithDomain:v2 type:@"Discovery" subType:v3 context:v4 triggerThresholdValues:0 events:0 completion:0];
}

void __80__MRAVDistantRoutingDiscoverySession__registerForPerRoutingContextNotifications__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = WeakRetained;
  if (WeakRetained)
  {
    v3 = WeakRetained[17];
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __80__MRAVDistantRoutingDiscoverySession__registerForPerRoutingContextNotifications__block_invoke_2;
    block[3] = &unk_1E769A228;
    block[4] = v2;
    dispatch_sync(v3, block);
    [v2 _notifyEndpointsChanged];
  }
}

void __80__MRAVDistantRoutingDiscoverySession__registerForPerRoutingContextNotifications__block_invoke_2(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(v1 + 232);
  *(v1 + 232) = 0;
}

- (void)dealloc
{
  [(NSXPCConnection *)self->_hostedRoutingSessionConnection invalidate];
  notify_cancel(self->_serviceResetNotifyToken);
  v3.receiver = self;
  v3.super_class = MRAVDistantRoutingDiscoverySession;
  [(MRAVDistantRoutingDiscoverySession *)&v3 dealloc];
}

- (void)setDiscoveryMode:(unsigned int)mode
{
  v16 = 0;
  v17 = &v16;
  v18 = 0x2020000000;
  v19 = 0;
  v12 = 0;
  v13 = &v12;
  v14 = 0x2020000000;
  v15 = 0;
  serialQueue = self->_serialQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __55__MRAVDistantRoutingDiscoverySession_setDiscoveryMode___block_invoke;
  block[3] = &unk_1E769E738;
  modeCopy = mode;
  block[4] = self;
  block[5] = &v12;
  block[6] = &v16;
  dispatch_sync(serialQueue, block);
  if (*(v17 + 24) == 1)
  {
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 3221225472;
    v8[2] = __55__MRAVDistantRoutingDiscoverySession_setDiscoveryMode___block_invoke_91;
    v8[3] = &unk_1E769E760;
    v8[4] = self;
    modeCopy2 = mode;
    v6 = MEMORY[0x1A58E3570](v8);
    v7 = v6;
    if (*(v13 + 24) == 1)
    {
      (*(v6 + 16))(v6);
    }

    else
    {
      [(MRAVDistantRoutingDiscoverySession *)self _initializeHostedRoutingConnectionWithCompletion:v6];
    }
  }

  _Block_object_dispose(&v12, 8);
  _Block_object_dispose(&v16, 8);
}

void __55__MRAVDistantRoutingDiscoverySession_setDiscoveryMode___block_invoke(uint64_t a1)
{
  v21 = *MEMORY[0x1E69E9840];
  v1 = *(a1 + 32);
  if (*(v1 + 148) == *(a1 + 56))
  {
    goto LABEL_12;
  }

  v3 = *(v1 + 152);
  v4 = _MRLogForCategory(0);
  v5 = os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT);
  if (v3)
  {
    if (v5)
    {
      v6 = *(a1 + 32);
      v7 = MRMediaRemoteCopyRouteDiscoveryModeDescription(*(a1 + 56));
      [*(*(a1 + 32) + 152) timeIntervalSinceNow];
      *v19 = 138412802;
      *&v19[4] = v6;
      *&v19[12] = 2112;
      *&v19[14] = v7;
      *&v19[22] = 2048;
      v20 = -v8;
      v9 = "[DistantDiscoverySession] %@ - Discovery mode changed to: %@ after %lf seconds";
      v10 = v4;
      v11 = 32;
LABEL_7:
      _os_log_impl(&dword_1A2860000, v10, OS_LOG_TYPE_DEFAULT, v9, v19, v11);
    }
  }

  else if (v5)
  {
    v12 = *(a1 + 32);
    v13 = MRMediaRemoteCopyRouteDiscoveryModeDescription(*(a1 + 56));
    *v19 = 138412546;
    *&v19[4] = v12;
    *&v19[12] = 2112;
    *&v19[14] = v13;
    v9 = "[DistantDiscoverySession] %@ - Discovery mode changed to: %@";
    v10 = v4;
    v11 = 22;
    goto LABEL_7;
  }

  v14 = *(*(a1 + 32) + 208);
  if (*(a1 + 56))
  {
    [v14 startActivityTracking];
  }

  else
  {
    [v14 stopActivityTracking];
  }

  *(*(a1 + 32) + 148) = *(a1 + 56);
  v15 = [MEMORY[0x1E695DF00] now];
  v16 = *(a1 + 32);
  v17 = *(v16 + 152);
  *(v16 + 152) = v15;

  *(*(*(a1 + 40) + 8) + 24) = *(*(a1 + 32) + 188);
  *(*(*(a1 + 48) + 8) + 24) = 1;
LABEL_12:
  v18 = *MEMORY[0x1E69E9840];
}

uint64_t __55__MRAVDistantRoutingDiscoverySession_setDiscoveryMode___block_invoke_91(uint64_t a1)
{
  result = [*(a1 + 32) _reloadHostedRoutingServiceDiscoveryMode];
  if (*(a1 + 40))
  {
    [*(a1 + 32) _reloadAvailableDistantEndpoints];
    v3 = *(a1 + 32);

    return [v3 _reloadAvailableDistantOutputDevices];
  }

  return result;
}

- (BOOL)devicePresenceDetected
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  _hostedRoutingConnection = [(MRAVDistantRoutingDiscoverySession *)self _hostedRoutingConnection];
  v3 = [_hostedRoutingConnection synchronousRemoteObjectProxyWithErrorHandler:&__block_literal_global_42];
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __60__MRAVDistantRoutingDiscoverySession_devicePresenceDetected__block_invoke_93;
  v5[3] = &unk_1E769E788;
  v5[4] = &v6;
  [v3 getDevicePresenceDetectedWithCompletion:v5];

  LOBYTE(_hostedRoutingConnection) = *(v7 + 24);
  _Block_object_dispose(&v6, 8);
  return _hostedRoutingConnection;
}

void __60__MRAVDistantRoutingDiscoverySession_devicePresenceDetected__block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  if (v2)
  {
    v3 = _MRLogForCategory(0);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      __60__MRAVDistantRoutingDiscoverySession_devicePresenceDetected__block_invoke_cold_1();
    }
  }
}

void __60__MRAVDistantRoutingDiscoverySession_devicePresenceDetected__block_invoke_93(uint64_t a1, char a2, void *a3)
{
  v5 = a3;
  if (v5)
  {
    v6 = _MRLogForCategory(0);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      __60__MRAVDistantRoutingDiscoverySession_devicePresenceDetected__block_invoke_cold_1();
    }
  }

  *(*(*(a1 + 32) + 8) + 24) = a2;
}

- (id)routingContextUID
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x3032000000;
  v9 = __Block_byref_object_copy__17;
  v10 = __Block_byref_object_dispose__17;
  v11 = 0;
  serialQueue = self->_serialQueue;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __55__MRAVDistantRoutingDiscoverySession_routingContextUID__block_invoke;
  v5[3] = &unk_1E769A2A0;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(serialQueue, v5);
  v3 = v7[5];
  _Block_object_dispose(&v6, 8);

  return v3;
}

void __55__MRAVDistantRoutingDiscoverySession_routingContextUID__block_invoke(uint64_t a1)
{
  v2 = [*(*(a1 + 32) + 176) copy];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;
}

- (void)setRoutingContextUID:(id)d
{
  dCopy = d;
  serialQueue = self->_serialQueue;
  v7 = MEMORY[0x1E69E9820];
  v8 = 3221225472;
  v9 = __59__MRAVDistantRoutingDiscoverySession_setRoutingContextUID___block_invoke;
  v10 = &unk_1E769A4A0;
  selfCopy = self;
  v12 = dCopy;
  v6 = dCopy;
  dispatch_sync(serialQueue, &v7);
  [(MRAVDistantRoutingDiscoverySession *)self _reloadAvailableDistantEndpoints:v7];
}

uint64_t __59__MRAVDistantRoutingDiscoverySession_setRoutingContextUID___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (v2[22] != *(a1 + 40))
  {
    v3 = [*(a1 + 40) copy];
    v4 = *(a1 + 32);
    v5 = *(v4 + 176);
    *(v4 + 176) = v3;

    v2 = *(a1 + 32);
  }

  return [v2 _registerForPerRoutingContextNotifications];
}

- (void)setHostedRoutingSessionConnection:(id)connection
{
  connectionCopy = connection;
  serialQueue = self->_serialQueue;
  v7 = MEMORY[0x1E69E9820];
  v8 = 3221225472;
  v9 = __72__MRAVDistantRoutingDiscoverySession_setHostedRoutingSessionConnection___block_invoke;
  v10 = &unk_1E769A4A0;
  selfCopy = self;
  v12 = connectionCopy;
  v6 = connectionCopy;
  dispatch_sync(serialQueue, &v7);
  [(MRAVDistantRoutingDiscoverySession *)self _reloadHostedRoutingServiceDiscoveryMode:v7];
  [(MRAVDistantRoutingDiscoverySession *)self _reloadAvailableDistantEndpoints];
  [(MRAVDistantRoutingDiscoverySession *)self _reloadAvailableDistantOutputDevices];
}

void __72__MRAVDistantRoutingDiscoverySession_setHostedRoutingSessionConnection___block_invoke(uint64_t a1)
{
  v46 = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 40);
  v3 = *(*(a1 + 32) + 216);
  if (v3 != v2)
  {
    [v3 invalidate];
    v4 = *(*(a1 + 32) + 192) == 0;
    v5 = _MRLogForCategory(0);
    v6 = os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT);
    if (v4)
    {
      if (!v6)
      {
        goto LABEL_8;
      }

      v14 = *(a1 + 32);
      v15 = *(a1 + 40);
      *buf = 138412546;
      v39 = v14;
      v40 = 2112;
      v41 = v15;
      v11 = "[DistantDiscoverySession] %@ Hosted routing connection set to %@";
      v12 = v5;
      v13 = 22;
    }

    else
    {
      if (!v6)
      {
        goto LABEL_8;
      }

      v7 = *(a1 + 32);
      v8 = *(a1 + 40);
      v9 = *(v7 + 216);
      [*(v7 + 192) timeIntervalSinceNow];
      *buf = 138413058;
      v39 = v7;
      v40 = 2112;
      v41 = v9;
      v42 = 2112;
      v43 = v8;
      v44 = 2048;
      v45 = -v10;
      v11 = "[DistantDiscoverySession] %@ Hosted routing connection set from %@ to %@ after %lf seconds";
      v12 = v5;
      v13 = 42;
    }

    _os_log_impl(&dword_1A2860000, v12, OS_LOG_TYPE_DEFAULT, v11, buf, v13);
LABEL_8:

    objc_storeStrong((*(a1 + 32) + 216), *(a1 + 40));
    v16 = [MEMORY[0x1E695DF00] now];
    v17 = *(*(a1 + 32) + 192);
    *(*(a1 + 32) + 192) = v16;

    v18 = *(a1 + 32);
    if (*(v18 + 216))
    {
      objc_initWeak(buf, v18);
      v19 = *(*(a1 + 32) + 216);
      v36[0] = MEMORY[0x1E69E9820];
      v36[1] = 3221225472;
      v36[2] = __72__MRAVDistantRoutingDiscoverySession_setHostedRoutingSessionConnection___block_invoke_95;
      v36[3] = &unk_1E769E7B0;
      objc_copyWeak(v37, buf);
      v37[1] = v19;
      v20 = MEMORY[0x1A58E3570](v36);
      v31 = MEMORY[0x1E69E9820];
      v32 = 3221225472;
      v33 = __72__MRAVDistantRoutingDiscoverySession_setHostedRoutingSessionConnection___block_invoke_2_97;
      v34 = &unk_1E769E7B0;
      objc_copyWeak(v35, buf);
      v35[1] = v19;
      v21 = MEMORY[0x1A58E3570](&v31);
      v22 = *(a1 + 32);
      v23 = [objc_opt_class() serviceInterface];
      [*(*(a1 + 32) + 216) setRemoteObjectInterface:v23];

      v24 = *(a1 + 32);
      v25 = [objc_opt_class() clientInterface];
      [*(*(a1 + 32) + 216) setExportedInterface:v25];

      v26 = *(a1 + 32);
      v27 = [*(v26 + 216) exportedInterface];
      v28 = [v27 protocol];
      v29 = [MRWeakProxy weakProxyWithObject:v26 protocol:v28];
      [*(*(a1 + 32) + 216) setExportedObject:v29];

      [*(*(a1 + 32) + 216) setInvalidationHandler:v20];
      [*(*(a1 + 32) + 216) setInterruptionHandler:v21];
      [*(*(a1 + 32) + 216) resume];
      *(*(a1 + 32) + 188) = 1;

      objc_destroyWeak(v35);
      objc_destroyWeak(v37);
      objc_destroyWeak(buf);
    }

    else
    {
      *(v18 + 188) = 0;
    }
  }

  v30 = *MEMORY[0x1E69E9840];
}

void __72__MRAVDistantRoutingDiscoverySession_setHostedRoutingSessionConnection___block_invoke_95(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v3 = WeakRetained;
  if (WeakRetained)
  {
    v4 = WeakRetained[17];
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = __72__MRAVDistantRoutingDiscoverySession_setHostedRoutingSessionConnection___block_invoke_2;
    v7[3] = &unk_1E769C018;
    v5 = WeakRetained;
    v6 = *(a1 + 40);
    v8 = v5;
    v9 = v6;
    dispatch_sync(v4, v7);
  }
}

uint64_t __72__MRAVDistantRoutingDiscoverySession_setHostedRoutingSessionConnection___block_invoke_2(uint64_t result)
{
  v1 = (result + 32);
  if (*(*(result + 32) + 216) == *(result + 40))
  {
    v2 = _MRLogForCategory(0);
    if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
    {
      __72__MRAVDistantRoutingDiscoverySession_setHostedRoutingSessionConnection___block_invoke_2_cold_1(v1);
    }

    v3 = *(*v1 + 216);
    *(*v1 + 216) = 0;

    *(*v1 + 188) = 0;
    if (*(*v1 + 148) || ([*v1 configuration], v4 = objc_claimAutoreleasedReturnValue(), v5 = objc_msgSend(v4, "alwaysAllowUpdates"), v4, v5))
    {
      v6 = _MRLogForCategory(0);
      if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
      {
        __72__MRAVDistantRoutingDiscoverySession_setHostedRoutingSessionConnection___block_invoke_2_cold_2(v1);
      }

      v7 = dispatch_time(0, 1000000000);
      v8 = qos_class_self();
      v9 = dispatch_get_global_queue(v8, 0);
      block[0] = MEMORY[0x1E69E9820];
      block[1] = 3221225472;
      block[2] = __72__MRAVDistantRoutingDiscoverySession_setHostedRoutingSessionConnection___block_invoke_96;
      block[3] = &unk_1E769A228;
      v14 = *v1;
      dispatch_after(v7, v9, block);
    }

    v10 = *(*v1 + 160);
    *(*v1 + 160) = 0;

    v11 = *(*v1 + 168);
    *(*v1 + 168) = 0;

    v12 = MEMORY[0x1E695E0F0];
    [*v1 notifyEndpointsChanged:MEMORY[0x1E695E0F0]];
    return [*v1 notifyOutputDevicesChanged:v12];
  }

  return result;
}

void __72__MRAVDistantRoutingDiscoverySession_setHostedRoutingSessionConnection___block_invoke_2_97(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v3 = WeakRetained;
  if (WeakRetained)
  {
    v4 = WeakRetained[17];
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = __72__MRAVDistantRoutingDiscoverySession_setHostedRoutingSessionConnection___block_invoke_3;
    v7[3] = &unk_1E769C018;
    v5 = WeakRetained;
    v6 = *(a1 + 40);
    v8 = v5;
    v9 = v6;
    dispatch_async(v4, v7);
  }
}

uint64_t __72__MRAVDistantRoutingDiscoverySession_setHostedRoutingSessionConnection___block_invoke_3(uint64_t result)
{
  v1 = (result + 32);
  if (*(*(result + 32) + 216) == *(result + 40))
  {
    v2 = _MRLogForCategory(0);
    if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
    {
      __72__MRAVDistantRoutingDiscoverySession_setHostedRoutingSessionConnection___block_invoke_3_cold_1(v1);
    }

    return [*(*v1 + 216) invalidate];
  }

  return result;
}

- (NSString)debugDescription
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x3032000000;
  v8 = __Block_byref_object_copy__17;
  v9 = __Block_byref_object_dispose__17;
  v10 = 0;
  serialQueue = self->_serialQueue;
  msv_dispatch_sync_on_queue();
  v3 = v6[5];
  _Block_object_dispose(&v5, 8);

  return v3;
}

void __54__MRAVDistantRoutingDiscoverySession_debugDescription__block_invoke(uint64_t a1)
{
  v23 = [*(*(a1 + 32) + 160) msv_map:&__block_literal_global_104];
  v22 = MEMORY[0x1E696AEC0];
  v2 = *(a1 + 32);
  v21 = objc_opt_class();
  v3 = *(a1 + 32);
  v4 = MRMediaRemoteEndpointFeaturesDescription(*(v3 + 144));
  v5 = MRMediaRemoteCopyRouteDiscoveryModeDescription(*(*(a1 + 32) + 148));
  [*(*(a1 + 32) + 152) timeIntervalSinceNow];
  v7 = -v6;
  v8 = *(a1 + 32);
  v9 = *(v8 + 176);
  v10 = [*(v8 + 168) mr_formattedDebugDescription];
  v11 = [v23 mr_formattedDebugDescription];
  v12 = *(a1 + 32);
  if (*(v12 + 188))
  {
    v13 = @"YES";
  }

  else
  {
    v13 = @"NO";
  }

  v14 = MRCreateIndentedDebugDescriptionFromObject(*(v12 + 208));
  v15 = *(a1 + 32);
  v16 = *(v15 + 216);
  [*(v15 + 192) timeIntervalSinceNow];
  v18 = [v22 stringWithFormat:@"<%@: %p> (%@)\n  discoveryMode = %@ (%lf seconds ago)\n  routingContext = %@\n  outputDevices = %@\n  endpoints = %@\n  hostedRoutingConnectionDidInitialize = %@\n  discoveryTracker = %@\n  connection = %@ (%lf seconds ago)\n}>", v21, v3, v4, v5, *&v7, v9, v10, v11, v13, v14, v16, -v17];
  v19 = *(*(a1 + 40) + 8);
  v20 = *(v19 + 40);
  *(v19 + 40) = v18;
}

id __54__MRAVDistantRoutingDiscoverySession_debugDescription__block_invoke_2(uint64_t a1, void *a2)
{
  v2 = MEMORY[0x1E696AEC0];
  v3 = a2;
  v4 = [v2 alloc];
  v5 = [v3 debugName];

  v6 = [v4 initWithFormat:@"%@", v5];

  return v6;
}

- (void)configurationWithCompletion:(id)completion
{
  completionCopy = completion;
  configuration = [(MRAVRoutingDiscoverySession *)self configuration];
  (*(completion + 2))(completionCopy, configuration);
}

- (void)_initializeHostedRoutingConnectionWithCompletion:(id)completion
{
  completionCopy = completion;
  objc_initWeak(&location, self);
  v5 = MRGetSharedService();
  endpointFeatures = self->_endpointFeatures;
  v7 = qos_class_self();
  v8 = dispatch_get_global_queue(v7, 0);
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __87__MRAVDistantRoutingDiscoverySession__initializeHostedRoutingConnectionWithCompletion___block_invoke;
  v10[3] = &unk_1E769E7D8;
  objc_copyWeak(&v12, &location);
  v9 = completionCopy;
  v10[4] = self;
  v11 = v9;
  MRMediaRemoteServiceGetHostedRoutingXPCEndpoint(v5, endpointFeatures, v8, v10);

  objc_destroyWeak(&v12);
  objc_destroyWeak(&location);
}

void __87__MRAVDistantRoutingDiscoverySession__initializeHostedRoutingConnectionWithCompletion___block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v7 = WeakRetained;
  if (v5 && WeakRetained)
  {
    v8 = objc_alloc_init(MEMORY[0x1E696B0E0]);
    [v8 _setEndpoint:v5];
    v9 = [objc_alloc(MEMORY[0x1E696B0B8]) initWithListenerEndpoint:v8];
    [v7 setHostedRoutingSessionConnection:v9];
    v10 = *(a1 + 40);
    if (v10)
    {
      (*(v10 + 16))();
    }

    goto LABEL_18;
  }

  v11 = _MRLogForCategory(0);
  v12 = os_log_type_enabled(v11, OS_LOG_TYPE_ERROR);
  if (a3 && v7)
  {
    if (v12)
    {
      __87__MRAVDistantRoutingDiscoverySession__initializeHostedRoutingConnectionWithCompletion___block_invoke_cold_3(a1);
    }

LABEL_16:

    v14 = *(a1 + 40);
    if (v14)
    {
      (*(v14 + 16))();
    }

    goto LABEL_18;
  }

  if (!v7)
  {
    if (v12)
    {
      __87__MRAVDistantRoutingDiscoverySession__initializeHostedRoutingConnectionWithCompletion___block_invoke_cold_1();
    }

    goto LABEL_16;
  }

  if (v12)
  {
    __87__MRAVDistantRoutingDiscoverySession__initializeHostedRoutingConnectionWithCompletion___block_invoke_cold_2(a1);
  }

  v13 = MEMORY[0x1E695E0F0];
  [v7 _reloadAvailableDistantEndpointsWithEndpoints:MEMORY[0x1E695E0F0]];
  [v7 _reloadAvailableDistantOutputDevicesWithOutputDevices:v13];
  [v7 _initializeHostedRoutingConnectionWithCompletion:*(a1 + 40)];
LABEL_18:
}

- (void)_reloadAvailableDistantEndpointsWithEndpoints:(id)endpoints
{
  endpointsCopy = endpoints;
  serialQueue = self->_serialQueue;
  v7 = MEMORY[0x1E69E9820];
  v8 = 3221225472;
  v9 = __84__MRAVDistantRoutingDiscoverySession__reloadAvailableDistantEndpointsWithEndpoints___block_invoke;
  v10 = &unk_1E769A4A0;
  selfCopy = self;
  v12 = endpointsCopy;
  v6 = endpointsCopy;
  dispatch_sync(serialQueue, &v7);
  [(MRAVDistantRoutingDiscoverySession *)self _notifyEndpointsChanged:v7];
}

- (void)_reloadAvailableDistantOutputDevicesWithOutputDevices:(id)devices
{
  devicesCopy = devices;
  serialQueue = self->_serialQueue;
  v7 = MEMORY[0x1E69E9820];
  v8 = 3221225472;
  v9 = __92__MRAVDistantRoutingDiscoverySession__reloadAvailableDistantOutputDevicesWithOutputDevices___block_invoke;
  v10 = &unk_1E769A4A0;
  selfCopy = self;
  v12 = devicesCopy;
  v6 = devicesCopy;
  dispatch_async(serialQueue, &v7);
  [(MRAVRoutingDiscoverySession *)self notifyOutputDevicesChanged:v6, v7, v8, v9, v10, selfCopy];
}

void __92__MRAVDistantRoutingDiscoverySession__reloadAvailableDistantOutputDevicesWithOutputDevices___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 40) copy];
  v3 = *(a1 + 32);
  v4 = *(v3 + 168);
  *(v3 + 168) = v2;
}

- (id)_resolveDistantEndpoints:(id)endpoints
{
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __63__MRAVDistantRoutingDiscoverySession__resolveDistantEndpoints___block_invoke;
  v5[3] = &unk_1E769E850;
  v5[4] = self;
  v3 = [endpoints msv_compactMap:v5];

  return v3;
}

id __63__MRAVDistantRoutingDiscoverySession__resolveDistantEndpoints___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if ([v3 connectionType] == 1)
  {
    v4 = [*(a1 + 32) distantLocalEndpoint];
  }

  else
  {
    v4 = v3;
  }

  v5 = v4;

  return v5;
}

- (id)_resolveEndpoints:(id)endpoints
{
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __56__MRAVDistantRoutingDiscoverySession__resolveEndpoints___block_invoke;
  v5[3] = &unk_1E769E850;
  v5[4] = self;
  v3 = [endpoints msv_compactMap:v5];

  return v3;
}

id __56__MRAVDistantRoutingDiscoverySession__resolveEndpoints___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if ([v3 connectionType] == 1)
  {
    v4 = [*(a1 + 32) localEndpoint];
  }

  else
  {
    v4 = v3;
  }

  v5 = v4;

  return v5;
}

void __60__MRAVDistantRoutingDiscoverySession_devicePresenceDetected__block_invoke_cold_1()
{
  v8 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_1_14();
  OUTLINED_FUNCTION_5(&dword_1A2860000, v0, v1, "[DistantDiscoverySession] Failed to retrieve endpoint availability state: %{public}@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x1E69E9840];
}

void __72__MRAVDistantRoutingDiscoverySession_setHostedRoutingSessionConnection___block_invoke_2_cold_1(uint64_t *a1)
{
  v10 = *MEMORY[0x1E69E9840];
  v1 = *a1;
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_5(&dword_1A2860000, v2, v3, "[DistantDiscoverySession] %@ Hosted routing connection invalidated...", v4, v5, v6, v7, v9);
  v8 = *MEMORY[0x1E69E9840];
}

void __72__MRAVDistantRoutingDiscoverySession_setHostedRoutingSessionConnection___block_invoke_2_cold_2(uint64_t *a1)
{
  v10 = *MEMORY[0x1E69E9840];
  v1 = *a1;
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_5(&dword_1A2860000, v2, v3, "[DistantDiscoverySession] %@ Hosted routing connection invalidated, attemping to reconnect...", v4, v5, v6, v7, v9);
  v8 = *MEMORY[0x1E69E9840];
}

void __72__MRAVDistantRoutingDiscoverySession_setHostedRoutingSessionConnection___block_invoke_3_cold_1(uint64_t *a1)
{
  v10 = *MEMORY[0x1E69E9840];
  v1 = *a1;
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_5(&dword_1A2860000, v2, v3, "[DistantDiscoverySession] %@ Hosted routing connection interrupted, invalidating...", v4, v5, v6, v7, v9);
  v8 = *MEMORY[0x1E69E9840];
}

void __87__MRAVDistantRoutingDiscoverySession__initializeHostedRoutingConnectionWithCompletion___block_invoke_cold_1()
{
  v8 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_1_14();
  OUTLINED_FUNCTION_5(&dword_1A2860000, v0, v1, "[DistantDiscoverySession] ERROR: Failed to fetch hosted routing XPC endpoint. Will not retry since routing discovery session went away. %{public}@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x1E69E9840];
}

void __87__MRAVDistantRoutingDiscoverySession__initializeHostedRoutingConnectionWithCompletion___block_invoke_cold_2(uint64_t a1)
{
  v5 = *MEMORY[0x1E69E9840];
  v1 = *(a1 + 32);
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_3_0(&dword_1A2860000, v2, v3, "[DistantDiscoverySession] %@ ERROR: Failed to fetch hosted routing XPC endpoint. Will retry. %{public}@");
  v4 = *MEMORY[0x1E69E9840];
}

void __87__MRAVDistantRoutingDiscoverySession__initializeHostedRoutingConnectionWithCompletion___block_invoke_cold_3(uint64_t a1)
{
  v5 = *MEMORY[0x1E69E9840];
  v1 = *(a1 + 32);
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_3_0(&dword_1A2860000, v2, v3, "[DistantDiscoverySession] %@ ERROR: Failed to fetch hosted routing XPC endpoint. %{public}@");
  v4 = *MEMORY[0x1E69E9840];
}

void __78__MRAVDistantRoutingDiscoverySession__reloadHostedRoutingServiceDiscoveryMode__block_invoke_cold_1()
{
  v8 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_1_14();
  OUTLINED_FUNCTION_5(&dword_1A2860000, v0, v1, "[DistantDiscoverySession] Error setting discovery mode on hosted routing session. %{public}@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x1E69E9840];
}

void __70__MRAVDistantRoutingDiscoverySession__reloadAvailableDistantEndpoints__block_invoke_cold_1()
{
  v8 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_1_14();
  OUTLINED_FUNCTION_5(&dword_1A2860000, v0, v1, "[DistantDiscoverySession] Error fetching distant endpoints from hosted routing session: %{public}@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x1E69E9840];
}

void __74__MRAVDistantRoutingDiscoverySession__reloadAvailableDistantOutputDevices__block_invoke_cold_1()
{
  v8 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_1_14();
  OUTLINED_FUNCTION_5(&dword_1A2860000, v0, v1, "[DistantDiscoverySession] Error fetching distant output devices from hosted routing session: %{public}@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x1E69E9840];
}

@end