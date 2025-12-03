@interface MRRelevantRouteDetector
- (BOOL)_isEndpointRelevant:(id)relevant;
- (BOOL)_isOutputDeviceRelevant:(id)relevant;
- (BOOL)_onQueue_relevantRouteCurrentlyDetected;
- (BOOL)isMonitoring;
- (BOOL)relevantRouteDetected;
- (MRRelevantRouteDetector)initWithInitiator:(id)initiator delegate:(id)delegate dataSource:(id)source delegateQueue:(id)queue;
- (MRRelevantRouteDetectorDataSource)dataSource;
- (MRRelevantRouteDetectorDelegate)delegate;
- (id)debugDescription;
- (id)description;
- (void)_handleEndpointDidDisconnectNotification:(id)notification;
- (void)_handleOutputDevicesDidChangeNotification:(id)notification;
- (void)_onQueue_addRelevantEndpoints:(id)endpoints withReason:(id)reason;
- (void)_onQueue_reevaluateWithReason:(id)reason;
- (void)_onQueue_startMonitoring;
- (void)_registerForNotificationsForEndpoint:(id)endpoint;
- (void)_stopMonitoring;
- (void)_unregisterForNotificationsForEndpoint:(id)endpoint;
- (void)dealloc;
- (void)startMonitoring;
- (void)stopMonitoring;
@end

@implementation MRRelevantRouteDetector

- (MRRelevantRouteDetector)initWithInitiator:(id)initiator delegate:(id)delegate dataSource:(id)source delegateQueue:(id)queue
{
  initiatorCopy = initiator;
  delegateCopy = delegate;
  sourceCopy = source;
  queueCopy = queue;
  v27.receiver = self;
  v27.super_class = MRRelevantRouteDetector;
  v15 = [(MRRelevantRouteDetector *)&v27 init];
  v16 = v15;
  if (v15)
  {
    objc_storeWeak(&v15->_delegate, delegateCopy);
    objc_storeWeak(&v16->_dataSource, sourceCopy);
    if (queueCopy)
    {
      v17 = queueCopy;
      delegateQueue = v16->_delegateQueue;
      v16->_delegateQueue = v17;
    }

    else
    {
      v19 = MEMORY[0x1E69E96A0];
      v20 = MEMORY[0x1E69E96A0];
      delegateQueue = v16->_delegateQueue;
      v16->_delegateQueue = v19;
    }

    v16->_isMonitoring = 0;
    objc_storeStrong(&v16->_initiator, initiator);
    v21 = objc_alloc_init(MEMORY[0x1E695DF70]);
    relevantEndpoints = v16->_relevantEndpoints;
    v16->_relevantEndpoints = v21;

    v23 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v24 = dispatch_queue_create("com.apple.MediaRemote.MRRelevantRouteDetector", v23);
    queue = v16->_queue;
    v16->_queue = v24;
  }

  return v16;
}

- (void)dealloc
{
  [(MRRelevantRouteDetector *)self _stopMonitoring];
  v3.receiver = self;
  v3.super_class = MRRelevantRouteDetector;
  [(MRRelevantRouteDetector *)&v3 dealloc];
}

- (id)description
{
  v3 = objc_alloc(MEMORY[0x1E696AEC0]);
  v4 = objc_opt_class();
  initiator = [(MRRelevantRouteDetector *)self initiator];
  v6 = [v3 initWithFormat:@"<%@:%p %@>", v4, self, initiator];

  return v6;
}

- (id)debugDescription
{
  relevantEndpoints = [(MRRelevantRouteDetector *)self relevantEndpoints];
  v4 = [relevantEndpoints msv_map:&__block_literal_global_81];

  v5 = objc_alloc(MEMORY[0x1E696AEC0]);
  v6 = objc_opt_class();
  initiator = [(MRRelevantRouteDetector *)self initiator];
  if ([(MRRelevantRouteDetector *)self relevantRouteDetected])
  {
    v8 = @"YES";
  }

  else
  {
    v8 = @"NO";
  }

  if ([(MRRelevantRouteDetector *)self isMonitoring])
  {
    v9 = @"YES";
  }

  else
  {
    v9 = @"NO";
  }

  v10 = [v5 initWithFormat:@"<%@:%p initiator=%@, relevantRouteDetected=%@, isMonitoring=%@, relevantEndpoints=%@>", v6, self, initiator, v8, v9, v4];

  return v10;
}

- (BOOL)isMonitoring
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  queue = self->_queue;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __39__MRRelevantRouteDetector_isMonitoring__block_invoke;
  v5[3] = &unk_1E769A2A0;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(queue, v5);
  v3 = *(v7 + 24);
  _Block_object_dispose(&v6, 8);
  return v3;
}

- (BOOL)relevantRouteDetected
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  queue = self->_queue;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __48__MRRelevantRouteDetector_relevantRouteDetected__block_invoke;
  v5[3] = &unk_1E769A2A0;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(queue, v5);
  v3 = *(v7 + 24);
  _Block_object_dispose(&v6, 8);
  return v3;
}

- (void)startMonitoring
{
  v9 = *MEMORY[0x1E69E9840];
  v3 = _MRLogForCategory(0);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    selfCopy = self;
    _os_log_impl(&dword_1A2860000, v3, OS_LOG_TYPE_DEFAULT, "[MRRelevantRouteDetector] %@: Start Monitoring", buf, 0xCu);
  }

  queue = self->_queue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __42__MRRelevantRouteDetector_startMonitoring__block_invoke;
  block[3] = &unk_1E769A228;
  block[4] = self;
  dispatch_async(queue, block);
  v5 = *MEMORY[0x1E69E9840];
}

- (void)stopMonitoring
{
  v9 = *MEMORY[0x1E69E9840];
  v3 = _MRLogForCategory(0);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    selfCopy = self;
    _os_log_impl(&dword_1A2860000, v3, OS_LOG_TYPE_DEFAULT, "[MRRelevantRouteDetector] %@: Stop Monitoring", buf, 0xCu);
  }

  queue = self->_queue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __41__MRRelevantRouteDetector_stopMonitoring__block_invoke;
  block[3] = &unk_1E769A228;
  block[4] = self;
  dispatch_async(queue, block);
  v5 = *MEMORY[0x1E69E9840];
}

- (void)_handleEndpointDidDisconnectNotification:(id)notification
{
  notificationCopy = notification;
  object = [notificationCopy object];
  queue = self->_queue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __68__MRRelevantRouteDetector__handleEndpointDidDisconnectNotification___block_invoke;
  block[3] = &unk_1E769BA00;
  block[4] = self;
  v10 = object;
  v11 = notificationCopy;
  v7 = notificationCopy;
  v8 = object;
  dispatch_async(queue, block);
}

void __68__MRRelevantRouteDetector__handleEndpointDidDisconnectNotification___block_invoke(uint64_t a1)
{
  [*(a1 + 32) _unregisterForNotificationsForEndpoint:*(a1 + 40)];
  [*(*(a1 + 32) + 64) removeObject:*(a1 + 40)];
  v2 = *(a1 + 32);
  v3 = [*(a1 + 48) name];
  [v2 _onQueue_reevaluateWithReason:v3];
}

- (void)_handleOutputDevicesDidChangeNotification:(id)notification
{
  notificationCopy = notification;
  queue = self->_queue;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __69__MRRelevantRouteDetector__handleOutputDevicesDidChangeNotification___block_invoke;
  v7[3] = &unk_1E769A4A0;
  v7[4] = self;
  v8 = notificationCopy;
  v6 = notificationCopy;
  dispatch_async(queue, v7);
}

void __69__MRRelevantRouteDetector__handleOutputDevicesDidChangeNotification___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = [*(a1 + 40) name];
  [v1 _onQueue_reevaluateWithReason:v2];
}

- (void)_unregisterForNotificationsForEndpoint:(id)endpoint
{
  v4 = MEMORY[0x1E696AD88];
  endpointCopy = endpoint;
  defaultCenter = [v4 defaultCenter];
  [defaultCenter removeObserver:self name:@"MRAVEndpointDidDisconnectNotification" object:endpointCopy];

  defaultCenter2 = [MEMORY[0x1E696AD88] defaultCenter];
  [defaultCenter2 removeObserver:self name:@"MRAVEndpointDidAddOutputDeviceNotification" object:endpointCopy];

  defaultCenter3 = [MEMORY[0x1E696AD88] defaultCenter];
  [defaultCenter3 removeObserver:self name:@"MRAVEndpointDidRemoveOutputDeviceNotification" object:endpointCopy];
}

- (void)_registerForNotificationsForEndpoint:(id)endpoint
{
  v4 = MEMORY[0x1E696AD88];
  endpointCopy = endpoint;
  defaultCenter = [v4 defaultCenter];
  [defaultCenter addObserver:self selector:sel__handleEndpointDidDisconnectNotification_ name:@"MRAVEndpointDidDisconnectNotification" object:endpointCopy];

  defaultCenter2 = [MEMORY[0x1E696AD88] defaultCenter];
  [defaultCenter2 addObserver:self selector:sel__handleOutputDevicesDidChangeNotification_ name:@"MRAVEndpointDidAddOutputDeviceNotification" object:endpointCopy];

  defaultCenter3 = [MEMORY[0x1E696AD88] defaultCenter];
  [defaultCenter3 addObserver:self selector:sel__handleOutputDevicesDidChangeNotification_ name:@"MRAVEndpointDidRemoveOutputDeviceNotification" object:endpointCopy];
}

- (void)_onQueue_startMonitoring
{
  v15[1] = *MEMORY[0x1E69E9840];
  dispatch_assert_queue_V2(self->_queue);
  if (!self->_isMonitoring)
  {
    self->_isMonitoring = 1;
    v3 = +[MRAVLocalEndpoint sharedLocalEndpoint];
    if ([(MRRelevantRouteDetector *)self _isEndpointRelevant:v3])
    {
      [(MRRelevantRouteDetector *)self _registerForNotificationsForEndpoint:v3];
      v15[0] = v3;
      v4 = [MEMORY[0x1E695DEC8] arrayWithObjects:v15 count:1];
      [(MRRelevantRouteDetector *)self _onQueue_addRelevantEndpoints:v4 withReason:@"localEndpoint"];
    }

    objc_initWeak(&location, self);
    v5 = [[MRAVRoutingDiscoverySessionConfiguration alloc] initWithEndpointFeatures:8];
    [(MRAVRoutingDiscoverySessionConfiguration *)v5 setAlwaysAllowUpdates:1];
    v6 = [MRAVRoutingDiscoverySession discoverySessionWithConfiguration:v5];
    discoverySession = self->_discoverySession;
    p_discoverySession = &self->_discoverySession;
    *p_discoverySession = v6;

    v9 = *p_discoverySession;
    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 3221225472;
    v12[2] = __51__MRRelevantRouteDetector__onQueue_startMonitoring__block_invoke;
    v12[3] = &unk_1E769B720;
    objc_copyWeak(&v13, &location);
    v10 = [(MRAVRoutingDiscoverySession *)v9 addEndpointsAddedCallback:v12];
    objc_destroyWeak(&v13);

    objc_destroyWeak(&location);
  }

  v11 = *MEMORY[0x1E69E9840];
}

void __51__MRRelevantRouteDetector__onQueue_startMonitoring__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v5 = WeakRetained;
  if (WeakRetained)
  {
    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 3221225472;
    v11[2] = __51__MRRelevantRouteDetector__onQueue_startMonitoring__block_invoke_2;
    v11[3] = &unk_1E769B680;
    v11[4] = WeakRetained;
    v6 = [v3 msv_filter:v11];
    v7 = v5[6];
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __51__MRRelevantRouteDetector__onQueue_startMonitoring__block_invoke_3;
    block[3] = &unk_1E769A4A0;
    block[4] = v5;
    v10 = v6;
    v8 = v6;
    dispatch_async(v7, block);
  }
}

uint64_t __51__MRRelevantRouteDetector__onQueue_startMonitoring__block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  if ([v3 isLocalEndpoint])
  {
    v4 = 0;
  }

  else
  {
    v4 = [*(a1 + 32) _isEndpointRelevant:v3];
  }

  return v4;
}

- (void)_stopMonitoring
{
  v15 = *MEMORY[0x1E69E9840];
  if (self->_isMonitoring)
  {
    self->_isMonitoring = 0;
    discoverySession = self->_discoverySession;
    self->_discoverySession = 0;

    v12 = 0u;
    v13 = 0u;
    v10 = 0u;
    v11 = 0u;
    v4 = self->_relevantEndpoints;
    v5 = [(NSMutableArray *)v4 countByEnumeratingWithState:&v10 objects:v14 count:16];
    if (v5)
    {
      v6 = v5;
      v7 = *v11;
      do
      {
        v8 = 0;
        do
        {
          if (*v11 != v7)
          {
            objc_enumerationMutation(v4);
          }

          [(MRRelevantRouteDetector *)self _unregisterForNotificationsForEndpoint:*(*(&v10 + 1) + 8 * v8++), v10];
        }

        while (v6 != v8);
        v6 = [(NSMutableArray *)v4 countByEnumeratingWithState:&v10 objects:v14 count:16];
      }

      while (v6);
    }

    [(NSMutableArray *)self->_relevantEndpoints removeAllObjects];
  }

  v9 = *MEMORY[0x1E69E9840];
}

- (void)_onQueue_addRelevantEndpoints:(id)endpoints withReason:(id)reason
{
  v32 = *MEMORY[0x1E69E9840];
  endpointsCopy = endpoints;
  reasonCopy = reason;
  dispatch_assert_queue_V2(self->_queue);
  v7 = [MRRequestDetails alloc];
  initiator = [(MRRelevantRouteDetector *)self initiator];
  v9 = [(MRRequestDetails *)v7 initWithInitiator:initiator requestID:0 reason:@"connectToRelevantEndpoints"];

  v25 = 0u;
  v26 = 0u;
  v23 = 0u;
  v24 = 0u;
  v10 = endpointsCopy;
  v11 = [v10 countByEnumeratingWithState:&v23 objects:v31 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = *v24;
    do
    {
      for (i = 0; i != v12; ++i)
      {
        if (*v24 != v13)
        {
          objc_enumerationMutation(v10);
        }

        v15 = *(*(&v23 + 1) + 8 * i);
        [(MRRelevantRouteDetector *)self _registerForNotificationsForEndpoint:v15];
        v16 = _MRLogForCategory(0);
        if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
        {
          debugName = [v15 debugName];
          *buf = 138412546;
          selfCopy2 = self;
          v29 = 2112;
          v30 = debugName;
          _os_log_impl(&dword_1A2860000, v16, OS_LOG_TYPE_DEFAULT, "[MRRelevantRouteDetector] %@: Adding endpoint=%@", buf, 0x16u);
        }

        if (([v15 isConnected] & 1) == 0)
        {
          v18 = _MRLogForCategory(0);
          if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
          {
            debugName2 = [v15 debugName];
            *buf = 138412546;
            selfCopy2 = self;
            v29 = 2112;
            v30 = debugName2;
            _os_log_impl(&dword_1A2860000, v18, OS_LOG_TYPE_DEFAULT, "[MRRelevantRouteDetector] %@: Connecting endpoint=%@", buf, 0x16u);
          }

          v22[0] = MEMORY[0x1E69E9820];
          v22[1] = 3221225472;
          v22[2] = __68__MRRelevantRouteDetector__onQueue_addRelevantEndpoints_withReason___block_invoke;
          v22[3] = &unk_1E769B6D0;
          v22[4] = self;
          v22[5] = v15;
          [v15 connectToExternalDeviceWithOptions:0 details:v9 completion:v22];
        }
      }

      v12 = [v10 countByEnumeratingWithState:&v23 objects:v31 count:16];
    }

    while (v12);
  }

  [(NSMutableArray *)self->_relevantEndpoints addObjectsFromArray:v10];
  [(MRRelevantRouteDetector *)self _onQueue_reevaluateWithReason:reasonCopy];

  v20 = *MEMORY[0x1E69E9840];
}

void __68__MRRelevantRouteDetector__onQueue_addRelevantEndpoints_withReason___block_invoke(uint64_t a1, void *a2)
{
  v22 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = _MRLogForCategory(0);
  v5 = os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT);
  if (v3)
  {
    if (v5)
    {
      v6 = *(a1 + 32);
      v7 = [*(a1 + 40) debugName];
      *buf = 138412802;
      v17 = v6;
      v18 = 2112;
      v19 = v7;
      v20 = 2112;
      v21 = v3;
      v8 = "[MRRelevantRouteDetector] %@: Error connecting endpoint=%@, error=%@";
      v9 = v4;
      v10 = 32;
LABEL_6:
      _os_log_impl(&dword_1A2860000, v9, OS_LOG_TYPE_DEFAULT, v8, buf, v10);
    }
  }

  else if (v5)
  {
    v11 = *(a1 + 32);
    v7 = [*(a1 + 40) debugName];
    *buf = 138412546;
    v17 = v11;
    v18 = 2112;
    v19 = v7;
    v8 = "[MRRelevantRouteDetector] %@: Connected endpoint=%@";
    v9 = v4;
    v10 = 22;
    goto LABEL_6;
  }

  v12 = *(a1 + 32);
  v13 = *(v12 + 48);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __68__MRRelevantRouteDetector__onQueue_addRelevantEndpoints_withReason___block_invoke_43;
  block[3] = &unk_1E769A228;
  block[4] = v12;
  dispatch_async(v13, block);

  v14 = *MEMORY[0x1E69E9840];
}

- (BOOL)_onQueue_relevantRouteCurrentlyDetected
{
  selfCopy = self;
  dispatch_assert_queue_V2(self->_queue);
  relevantEndpoints = selfCopy->_relevantEndpoints;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __66__MRRelevantRouteDetector__onQueue_relevantRouteCurrentlyDetected__block_invoke;
  v6[3] = &unk_1E769B680;
  v6[4] = selfCopy;
  v4 = [(NSMutableArray *)relevantEndpoints msv_firstWhere:v6];
  LOBYTE(selfCopy) = v4 != 0;

  return selfCopy;
}

BOOL __66__MRRelevantRouteDetector__onQueue_relevantRouteCurrentlyDetected__block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 resolvedOutputDevices];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __66__MRRelevantRouteDetector__onQueue_relevantRouteCurrentlyDetected__block_invoke_2;
  v7[3] = &unk_1E769CDC0;
  v7[4] = *(a1 + 32);
  v4 = [v3 msv_firstWhere:v7];
  v5 = v4 != 0;

  return v5;
}

- (void)_onQueue_reevaluateWithReason:(id)reason
{
  v19 = *MEMORY[0x1E69E9840];
  reasonCopy = reason;
  dispatch_assert_queue_V2(self->_queue);
  v5 = _MRLogForCategory(0);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    [(MRRelevantRouteDetector *)self _onQueue_reevaluateWithReason:reasonCopy, v5];
  }

  _onQueue_relevantRouteCurrentlyDetected = [(MRRelevantRouteDetector *)self _onQueue_relevantRouteCurrentlyDetected];
  if (self->_relevantRouteDetected != _onQueue_relevantRouteCurrentlyDetected)
  {
    v7 = _onQueue_relevantRouteCurrentlyDetected;
    v8 = _MRLogForCategory(0);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412802;
      selfCopy = self;
      v15 = 2112;
      v16 = reasonCopy;
      v17 = 1024;
      v18 = v7;
      _os_log_impl(&dword_1A2860000, v8, OS_LOG_TYPE_DEFAULT, "[MRRelevantRouteDetector] %@: reason=%@, didDetectRelevantRoute -> %{BOOL}u", buf, 0x1Cu);
    }

    self->_relevantRouteDetected = v7;
    delegateQueue = [(MRRelevantRouteDetector *)self delegateQueue];
    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 3221225472;
    v11[2] = __57__MRRelevantRouteDetector__onQueue_reevaluateWithReason___block_invoke;
    v11[3] = &unk_1E769BBE0;
    v11[4] = self;
    v12 = v7;
    dispatch_async(delegateQueue, v11);
  }

  v10 = *MEMORY[0x1E69E9840];
}

void __57__MRRelevantRouteDetector__onQueue_reevaluateWithReason___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) delegate];
  v3 = objc_opt_respondsToSelector();

  if (v3)
  {
    v4 = [*(a1 + 32) delegate];
    [v4 relevantRouteDetector:*(a1 + 32) didDetectRelevantRoute:*(a1 + 40)];
  }
}

- (BOOL)_isEndpointRelevant:(id)relevant
{
  v22 = *MEMORY[0x1E69E9840];
  relevantCopy = relevant;
  v5 = _MRLogForCategory(0);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    [(MRRelevantRouteDetector *)self _isEndpointRelevant:relevantCopy];
  }

  dataSource = [(MRRelevantRouteDetector *)self dataSource];
  v7 = objc_opt_respondsToSelector();

  if (v7)
  {
    dataSource2 = [(MRRelevantRouteDetector *)self dataSource];
    LODWORD(v9) = [dataSource2 relevantRouteDetector:self isEndpointRelevant:relevantCopy];

    v10 = _MRLogForCategory(0);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
    {
      debugName = [relevantCopy debugName];
      v14 = debugName;
      v15 = @"not relevant";
      v16 = 138412802;
      selfCopy = self;
      v18 = 2112;
      if (v9)
      {
        v15 = @"relevant";
      }

      v19 = debugName;
      v20 = 2112;
      v21 = v15;
      _os_log_debug_impl(&dword_1A2860000, v10, OS_LOG_TYPE_DEBUG, "[MRRelevantRouteDetector] %@: DataSource says endpoint %@ is %@", &v16, 0x20u);
    }
  }

  else
  {
    v9 = _MRLogForCategory(0);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
    {
      [(MRRelevantRouteDetector *)self _isEndpointRelevant:v9];
    }

    LOBYTE(v9) = [relevantCopy isLocalEndpoint];
  }

  v11 = *MEMORY[0x1E69E9840];
  return v9;
}

- (BOOL)_isOutputDeviceRelevant:(id)relevant
{
  v22 = *MEMORY[0x1E69E9840];
  relevantCopy = relevant;
  v5 = _MRLogForCategory(0);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    [(MRRelevantRouteDetector *)self _isOutputDeviceRelevant:relevantCopy];
  }

  dataSource = [(MRRelevantRouteDetector *)self dataSource];
  v7 = objc_opt_respondsToSelector();

  if (v7)
  {
    dataSource2 = [(MRRelevantRouteDetector *)self dataSource];
    v9 = [dataSource2 relevantRouteDetector:self isOutputDeviceRelevant:relevantCopy];

    v10 = _MRLogForCategory(0);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
    {
      debugName = [relevantCopy debugName];
      v12 = debugName;
      v13 = @"not relevant";
      v16 = 138412802;
      selfCopy = self;
      v18 = 2112;
      if (v9)
      {
        v13 = @"relevant";
      }

      v19 = debugName;
      v20 = 2112;
      v21 = v13;
      _os_log_debug_impl(&dword_1A2860000, v10, OS_LOG_TYPE_DEBUG, "[MRRelevantRouteDetector] %@: DataSource says output device %@ is %@", &v16, 0x20u);
    }
  }

  else
  {
    v10 = _MRLogForCategory(0);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
    {
      [(MRRelevantRouteDetector *)self _isOutputDeviceRelevant:v10];
    }

    LOBYTE(v9) = 0;
  }

  v14 = *MEMORY[0x1E69E9840];
  return v9;
}

- (MRRelevantRouteDetectorDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (MRRelevantRouteDetectorDataSource)dataSource
{
  WeakRetained = objc_loadWeakRetained(&self->_dataSource);

  return WeakRetained;
}

- (void)_onQueue_reevaluateWithReason:(os_log_t)log .cold.1(uint64_t a1, uint64_t a2, os_log_t log)
{
  v8 = *MEMORY[0x1E69E9840];
  v4 = 138412546;
  v5 = a1;
  v6 = 2112;
  v7 = a2;
  _os_log_debug_impl(&dword_1A2860000, log, OS_LOG_TYPE_DEBUG, "[MRRelevantRouteDetector] %@: Reevaluate reason=%@", &v4, 0x16u);
  v3 = *MEMORY[0x1E69E9840];
}

- (void)_isEndpointRelevant:(uint64_t)a1 .cold.1(uint64_t a1, void *a2)
{
  v11 = *MEMORY[0x1E69E9840];
  v2 = [a2 debugName];
  OUTLINED_FUNCTION_0_14();
  OUTLINED_FUNCTION_1_21(&dword_1A2860000, v3, v4, "[MRRelevantRouteDetector] %@: Querying endpoint relevance for %@", v5, v6, v7, v8, v10);

  v9 = *MEMORY[0x1E69E9840];
}

- (void)_isEndpointRelevant:(uint64_t)a1 .cold.2(uint64_t a1, NSObject *a2)
{
  v5 = *MEMORY[0x1E69E9840];
  v3 = 138412290;
  v4 = a1;
  _os_log_debug_impl(&dword_1A2860000, a2, OS_LOG_TYPE_DEBUG, "[MRRelevantRouteDetector] %@: DataSource doesn't implement isEndpointRelevant, defaulting to YES for local endpoint only", &v3, 0xCu);
  v2 = *MEMORY[0x1E69E9840];
}

- (void)_isOutputDeviceRelevant:(uint64_t)a1 .cold.1(uint64_t a1, void *a2)
{
  v11 = *MEMORY[0x1E69E9840];
  v2 = [a2 debugName];
  OUTLINED_FUNCTION_0_14();
  OUTLINED_FUNCTION_1_21(&dword_1A2860000, v3, v4, "[MRRelevantRouteDetector] %@: Querying output device relevance for %@", v5, v6, v7, v8, v10);

  v9 = *MEMORY[0x1E69E9840];
}

- (void)_isOutputDeviceRelevant:(uint64_t)a1 .cold.2(uint64_t a1, NSObject *a2)
{
  v5 = *MEMORY[0x1E69E9840];
  v3 = 138412290;
  v4 = a1;
  _os_log_debug_impl(&dword_1A2860000, a2, OS_LOG_TYPE_DEBUG, "[MRRelevantRouteDetector] %@: DataSource doesn't implement isOutputDeviceRelevant, defaulting to NO", &v3, 0xCu);
  v2 = *MEMORY[0x1E69E9840];
}

@end