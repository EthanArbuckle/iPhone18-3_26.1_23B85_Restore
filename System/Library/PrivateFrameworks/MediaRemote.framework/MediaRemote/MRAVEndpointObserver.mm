@interface MRAVEndpointObserver
- (MRAVEndpointObserver)initWithOutputDeviceUID:(id)a3 label:(id)a4 callback:(id)a5;
- (id)_initializeDiscoverySession;
- (id)debugDescription;
- (id)description;
- (id)endpointChangedCallback;
- (void)_endpointContainingOutputDevice:(void *)a1;
- (void)_handleEndpointsDidChange:(void *)a1;
- (void)_reevaluateEndpoint;
- (void)begin;
- (void)dealloc;
- (void)end;
- (void)setEndpointChangedCallback:(id)a3;
@end

@implementation MRAVEndpointObserver

- (void)end
{
  v9 = *MEMORY[0x1E69E9840];
  v2 = self;
  objc_sync_enter(v2);
  if (v2->_didBegin)
  {
    v3 = _MRLogForCategory(0);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      v7 = 138412290;
      v8 = v2;
      _os_log_impl(&dword_1A2860000, v3, OS_LOG_TYPE_DEFAULT, "[MRAVEndpointObserver] End Observing %@", &v7, 0xCu);
    }

    v2->_didBegin = 0;
    if (v2->_outputDeviceUID)
    {
      [(MRAVRoutingDiscoverySession *)v2->_discoverySession setDiscoveryMode:0];
    }

    v4 = [MEMORY[0x1E696AD88] defaultCenter];
    v5 = +[MRAVOutputContext sharedAudioPresentationContext];
    [v4 removeObserver:v2 name:@"kMRAVOutputContextDevicesDidChangeNotification" object:v5];
  }

  objc_sync_exit(v2);

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
        v5 = [(MRAVEndpointObserver *)obj _initializeDiscoverySession];
        v6 = obj->_discoverySession;
        obj->_discoverySession = v5;

        discoverySession = obj->_discoverySession;
      }

      [(MRAVRoutingDiscoverySession *)discoverySession setDiscoveryMode:2];
    }

    v7 = [MEMORY[0x1E696AD88] defaultCenter];
    v8 = +[MRAVOutputContext sharedAudioPresentationContext];
    [v7 addObserver:obj selector:sel__handleOutputContextDidChangeNotification name:@"kMRAVOutputContextDevicesDidChangeNotification" object:v8];

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

  if (a1)
  {
    (a1)[2](a1, a2);
  }
}

- (id)_initializeDiscoverySession
{
  if (a1)
  {
    v2 = [MRAVRoutingDiscoverySession discoverySessionWithEndpointFeatures:8];
    objc_initWeak(&location, a1);
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

- (MRAVEndpointObserver)initWithOutputDeviceUID:(id)a3 label:(id)a4 callback:(id)a5
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v18.receiver = self;
  v18.super_class = MRAVEndpointObserver;
  v12 = [(MRAVEndpointObserver *)&v18 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_outputDeviceUID, a3);
    objc_storeStrong(&v13->_label, a4);
    v14 = [v11 copy];
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
    v8 = self;
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
  v2 = self;
  objc_sync_enter(v2);
  v3 = objc_alloc(MEMORY[0x1E696AEC0]);
  v4 = objc_opt_class();
  outputDeviceUID = v2->_outputDeviceUID;
  label = v2->_label;
  if (v2->_didBegin)
  {
    v7 = @"YES";
  }

  else
  {
    v7 = @"NO";
  }

  v8 = MEMORY[0x1A58E3570](v2->_endpointChangedCallback);
  v9 = [(MRAVEndpoint *)v2->_endpoint debugName];
  v10 = MRCreateIndentedDebugDescriptionFromObject(v9);
  v11 = MRCreateIndentedDebugDescriptionFromObject(v2->_discoverySession);
  v12 = [v3 initWithFormat:@"<%@ %p {\n   outputDevice=%@\n   label=%@\n   observing=%@\n   callback=%@\n   endpoint=%@\n   discoverySession=%@\n}>\n", v4, v2, outputDeviceUID, label, v7, v8, v10, v11];

  objc_sync_exit(v2);

  return v12;
}

- (void)setEndpointChangedCallback:(id)a3
{
  v7 = a3;
  v4 = self;
  objc_sync_enter(v4);
  v5 = [v7 copy];
  endpointChangedCallback = v4->_endpointChangedCallback;
  v4->_endpointChangedCallback = v5;

  objc_sync_exit(v4);
}

- (id)endpointChangedCallback
{
  v2 = self;
  objc_sync_enter(v2);
  v3 = [v2->_endpointChangedCallback copy];
  objc_sync_exit(v2);

  v4 = MEMORY[0x1A58E3570](v3);

  return v4;
}

- (void)_handleEndpointsDidChange:(void *)a1
{
  v4 = a2;
  if (a1)
  {
    v3 = a1;
    objc_sync_enter(v3);
    -[MRAVEndpointObserver _handleEndpointsDidChange:].cold.1(v3, [v4 copy]);
  }
}

- (void)_endpointContainingOutputDevice:(void *)a1
{
  v38 = *MEMORY[0x1E69E9840];
  v3 = a2;
  if (a1)
  {
    v4 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v5 = [v4 addObjectsFromArray:a1[2]];
    a1 = OUTLINED_FUNCTION_0_15(v5, v6, v7, v8, v9, v10, v11, v12, 0, 0, 0, 0, 0, 0, 0, 0, v34, v36);
    if (a1)
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
            a1 = v15;
            goto LABEL_12;
          }

          v14 = (v14 + 1);
        }

        while (a1 != v14);
        a1 = OUTLINED_FUNCTION_0_15(v16, v17, v18, v19, v20, v21, v22, v23, v26, v27, v28, v29, v30, v31, v32, v33, v35, v37);
        if (a1)
        {
          continue;
        }

        break;
      }
    }

LABEL_12:
  }

  v24 = *MEMORY[0x1E69E9840];

  return a1;
}

- (void)_handleEndpointsDidChange:(void *)a1 .cold.1(void *a1, uint64_t a2)
{
  v3 = a1[2];
  a1[2] = a2;

  objc_sync_exit(a1);

  [(MRAVEndpointObserver *)a1 _reevaluateEndpoint];
}

@end