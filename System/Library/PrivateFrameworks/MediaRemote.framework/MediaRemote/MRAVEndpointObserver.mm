@interface MRAVEndpointObserver
- (MRAVEndpointObserver)initWithOutputDeviceUID:(id)d label:(id)label callback:(id)callback;
- (id)_initializeDiscoverySession;
- (id)debugDescription;
- (id)description;
- (id)endpointChangedCallback;
- (void)_endpointContainingOutputDevice:(void *)device;
- (void)_handleEndpointsDidChange:(void *)change;
- (void)_reevaluateEndpoint;
- (void)begin;
- (void)dealloc;
- (void)end;
- (void)setEndpointChangedCallback:(id)callback;
@end

@implementation MRAVEndpointObserver

- (void)end
{
  v9 = *MEMORY[0x1E69E9840];
  selfCopy = self;
  objc_sync_enter(selfCopy);
  if (selfCopy->_didBegin)
  {
    v3 = _MRLogForCategory(0);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      v7 = 138412290;
      v8 = selfCopy;
      _os_log_impl(&dword_1A2860000, v3, OS_LOG_TYPE_DEFAULT, "[MRAVEndpointObserver] End Observing %@", &v7, 0xCu);
    }

    selfCopy->_didBegin = 0;
    if (selfCopy->_outputDeviceUID)
    {
      [(MRAVRoutingDiscoverySession *)selfCopy->_discoverySession setDiscoveryMode:0];
    }

    defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
    v5 = +[MRAVOutputContext sharedAudioPresentationContext];
    [defaultCenter removeObserver:selfCopy name:@"kMRAVOutputContextDevicesDidChangeNotification" object:v5];
  }

  objc_sync_exit(selfCopy);

  v6 = *MEMORY[0x1E69E9840];
}

- (void)begin
{
  v13 = *MEMORY[0x1E69E9840];
  obj = self;
  objc_sync_enter(obj);
  if (obj->_didBegin)
  {
    objc_sync_exit(obj);
    v2 = *MEMORY[0x1E69E9840];
  }

  else
  {
    v3 = _MRLogForCategory(0);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v12 = obj;
      _os_log_impl(&dword_1A2860000, v3, OS_LOG_TYPE_DEFAULT, "[MRAVEndpointObserver] Begin Observing %@", buf, 0xCu);
    }

    obj->_didBegin = 1;
    if (obj->_outputDeviceUID)
    {
      discoverySession = obj->_discoverySession;
      if (!discoverySession)
      {
        _initializeDiscoverySession = [(MRAVEndpointObserver *)obj _initializeDiscoverySession];
        v6 = obj->_discoverySession;
        obj->_discoverySession = _initializeDiscoverySession;

        discoverySession = obj->_discoverySession;
      }

      [(MRAVRoutingDiscoverySession *)discoverySession setDiscoveryMode:2];
    }

    defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
    v8 = +[MRAVOutputContext sharedAudioPresentationContext];
    [defaultCenter addObserver:obj selector:sel__handleOutputContextDidChangeNotification name:@"kMRAVOutputContextDevicesDidChangeNotification" object:v8];

    objc_sync_exit(obj);
    [(MRAVEndpointObserver *)obj _reevaluateEndpoint];
    v9 = *MEMORY[0x1E69E9840];
  }
}

- (id)description
{
  v3 = objc_alloc(MEMORY[0x1E696AEC0]);
  v4 = objc_opt_class();
  if (self->_didBegin)
  {
    v5 = &stru_1F1513E38;
  }

  else
  {
    v5 = @"NOT ";
  }

  v6 = [v3 initWithFormat:@"<%@ %p %@:%@ %@Observing>", v4, self, self->_outputDeviceUID, self->_label, v5];

  return v6;
}

- (void)_reevaluateEndpoint
{
  objc_sync_exit(obj);

  if (self)
  {
    (self)[2](self, a2);
  }
}

- (id)_initializeDiscoverySession
{
  if (self)
  {
    v2 = [MRAVRoutingDiscoverySession discoverySessionWithEndpointFeatures:8];
    objc_initWeak(&location, self);
    v5[0] = MEMORY[0x1E69E9820];
    v5[1] = 3221225472;
    v5[2] = __51__MRAVEndpointObserver__initializeDiscoverySession__block_invoke;
    v5[3] = &unk_1E769B720;
    objc_copyWeak(&v6, &location);
    v3 = [v2 addEndpointsChangedCallback:v5];
    objc_destroyWeak(&v6);
    objc_destroyWeak(&location);
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

void __51__MRAVEndpointObserver__initializeDiscoverySession__block_invoke(uint64_t a1, void *a2)
{
  v5 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v4 = WeakRetained;
  if (WeakRetained)
  {
    [(MRAVEndpointObserver *)WeakRetained _handleEndpointsDidChange:v5];
  }
}

- (MRAVEndpointObserver)initWithOutputDeviceUID:(id)d label:(id)label callback:(id)callback
{
  dCopy = d;
  labelCopy = label;
  callbackCopy = callback;
  v18.receiver = self;
  v18.super_class = MRAVEndpointObserver;
  v12 = [(MRAVEndpointObserver *)&v18 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_outputDeviceUID, d);
    objc_storeStrong(&v13->_label, label);
    v14 = [callbackCopy copy];
    endpointChangedCallback = v13->_endpointChangedCallback;
    v13->_endpointChangedCallback = v14;

    v16 = +[MRMediaRemoteServiceClient sharedServiceClient];
    [v16 addEndpointObserver:v13];
  }

  return v13;
}

- (void)dealloc
{
  v9 = *MEMORY[0x1E69E9840];
  v3 = _MRLogForCategory(0);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    selfCopy = self;
    _os_log_impl(&dword_1A2860000, v3, OS_LOG_TYPE_DEFAULT, "[MRAVEndpointObserver] Dealloc %@", buf, 0xCu);
  }

  v4 = +[MRMediaRemoteServiceClient sharedServiceClient];
  [v4 removeEndpointObserver:self];

  v6.receiver = self;
  v6.super_class = MRAVEndpointObserver;
  [(MRAVEndpointObserver *)&v6 dealloc];
  v5 = *MEMORY[0x1E69E9840];
}

- (id)debugDescription
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  v3 = objc_alloc(MEMORY[0x1E696AEC0]);
  v4 = objc_opt_class();
  outputDeviceUID = selfCopy->_outputDeviceUID;
  label = selfCopy->_label;
  if (selfCopy->_didBegin)
  {
    v7 = @"YES";
  }

  else
  {
    v7 = @"NO";
  }

  v8 = MEMORY[0x1A58E3570](selfCopy->_endpointChangedCallback);
  debugName = [(MRAVEndpoint *)selfCopy->_endpoint debugName];
  v10 = MRCreateIndentedDebugDescriptionFromObject(debugName);
  v11 = MRCreateIndentedDebugDescriptionFromObject(selfCopy->_discoverySession);
  v12 = [v3 initWithFormat:@"<%@ %p {\n   outputDevice=%@\n   label=%@\n   observing=%@\n   callback=%@\n   endpoint=%@\n   discoverySession=%@\n}>\n", v4, selfCopy, outputDeviceUID, label, v7, v8, v10, v11];

  objc_sync_exit(selfCopy);

  return v12;
}

- (void)setEndpointChangedCallback:(id)callback
{
  callbackCopy = callback;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  v5 = [callbackCopy copy];
  endpointChangedCallback = selfCopy->_endpointChangedCallback;
  selfCopy->_endpointChangedCallback = v5;

  objc_sync_exit(selfCopy);
}

- (id)endpointChangedCallback
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  v3 = [selfCopy->_endpointChangedCallback copy];
  objc_sync_exit(selfCopy);

  v4 = MEMORY[0x1A58E3570](v3);

  return v4;
}

- (void)_handleEndpointsDidChange:(void *)change
{
  v4 = a2;
  if (change)
  {
    changeCopy = change;
    objc_sync_enter(changeCopy);
    -[MRAVEndpointObserver _handleEndpointsDidChange:].cold.1(changeCopy, [v4 copy]);
  }
}

- (void)_endpointContainingOutputDevice:(void *)device
{
  v38 = *MEMORY[0x1E69E9840];
  v3 = a2;
  if (device)
  {
    v4 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v5 = [v4 addObjectsFromArray:device[2]];
    device = OUTLINED_FUNCTION_0_15(v5, v6, v7, v8, v9, v10, v11, v12, 0, 0, 0, 0, 0, 0, 0, 0, v34, v36);
    if (device)
    {
      v13 = *v28;
      while (2)
      {
        v14 = 0;
        do
        {
          if (*v28 != v13)
          {
            objc_enumerationMutation(v4);
          }

          v15 = *(v27 + 8 * v14);
          v16 = [v15 containsOutputDeviceWithUID:v3];
          if (v16)
          {
            device = v15;
            goto LABEL_12;
          }

          v14 = (v14 + 1);
        }

        while (device != v14);
        device = OUTLINED_FUNCTION_0_15(v16, v17, v18, v19, v20, v21, v22, v23, v26, v27, v28, v29, v30, v31, v32, v33, v35, v37);
        if (device)
        {
          continue;
        }

        break;
      }
    }

LABEL_12:
  }

  v24 = *MEMORY[0x1E69E9840];

  return device;
}

- (void)_handleEndpointsDidChange:(void *)a1 .cold.1(void *a1, uint64_t a2)
{
  v3 = a1[2];
  a1[2] = a2;

  objc_sync_exit(a1);

  [(MRAVEndpointObserver *)a1 _reevaluateEndpoint];
}

@end