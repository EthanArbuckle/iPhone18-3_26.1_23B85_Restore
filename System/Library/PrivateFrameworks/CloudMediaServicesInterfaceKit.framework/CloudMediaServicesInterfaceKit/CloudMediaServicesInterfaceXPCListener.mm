@interface CloudMediaServicesInterfaceXPCListener
- (BOOL)listener:(id)a3 shouldAcceptNewConnection:(id)a4;
- (CloudMediaServicesInterfaceProtocol)playbackCommandDelegate;
- (CloudMediaServicesInterfaceXPCListener)initWithDelegate:(id)a3;
- (void)getCloudExtensionConfigurationFor:(id)a3 homeUserID:(id)a4 endpointID:(id)a5 withCompletion:(id)a6;
- (void)handleClientDisconnection:(id)a3;
- (void)pauseSample;
- (void)playSample:(id)a3;
- (void)sendPlaybackQueueToRemoteDestination:(id)a3 withCompletion:(id)a4;
- (void)setOverrideURL:(id)a3;
- (void)setServerEnvironment:(id)a3;
- (void)stopAnalyticsWithIdentifier:(id)a3;
- (void)submitAnalyticsForType:(id)a3 andIdentifier:(id)a4 eventType:(id)a5 atTime:(id)a6 withMetadata:(id)a7;
@end

@implementation CloudMediaServicesInterfaceXPCListener

- (CloudMediaServicesInterfaceXPCListener)initWithDelegate:(id)a3
{
  v4 = a3;
  v11.receiver = self;
  v11.super_class = CloudMediaServicesInterfaceXPCListener;
  v5 = [(CloudMediaServicesInterfaceXPCListener *)&v11 init];
  if (v5)
  {
    v6 = [objc_alloc(MEMORY[0x277CCAE98]) initWithMachServiceName:@"com.apple.agora.server"];
    xpcListener = v5->_xpcListener;
    v5->_xpcListener = v6;

    [(NSXPCListener *)v5->_xpcListener setDelegate:v5];
    objc_storeWeak(&v5->_playbackCommandDelegate, v4);
    v8 = objc_opt_new();
    clients = v5->_clients;
    v5->_clients = v8;

    [(NSXPCListener *)v5->_xpcListener resume];
  }

  return v5;
}

- (BOOL)listener:(id)a3 shouldAcceptNewConnection:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [v7 valueForEntitlement:@"com.apple.agora.client"];
  v9 = [v8 BOOLValue];

  if (v9)
  {
    v10 = [CMSClient clientWithConnection:v7];
    v11 = [MEMORY[0x277CCAE90] interfaceWithProtocol:&unk_2856B3778];
    v12 = [v11 classesForSelector:sel_sendPlaybackQueueWithUserActivityDictionary_forIntentID_toDestination_withIntentData_prepareQueue_withCompletion_ argumentIndex:3 ofReply:0];
    v13 = [v12 mutableCopy];

    [v13 addObject:objc_opt_class()];
    [v11 setClasses:v13 forSelector:sel_sendPlaybackQueueWithUserActivityDictionary_forIntentID_toDestination_withIntentData_prepareQueue_withCompletion_ argumentIndex:3 ofReply:0];
    [v7 setExportedInterface:v11];
    [v7 setExportedObject:self];
    objc_initWeak(&location, self);
    v22[0] = MEMORY[0x277D85DD0];
    v22[1] = 3221225472;
    v22[2] = __77__CloudMediaServicesInterfaceXPCListener_listener_shouldAcceptNewConnection___block_invoke;
    v22[3] = &unk_278DDD288;
    objc_copyWeak(&v24, &location);
    v14 = v7;
    v23 = v14;
    [v14 setInterruptionHandler:v22];
    v19[0] = MEMORY[0x277D85DD0];
    v19[1] = 3221225472;
    v19[2] = __77__CloudMediaServicesInterfaceXPCListener_listener_shouldAcceptNewConnection___block_invoke_67;
    v19[3] = &unk_278DDD288;
    objc_copyWeak(&v21, &location);
    v15 = v14;
    v20 = v15;
    [v15 setInvalidationHandler:v19];
    v16 = [(CloudMediaServicesInterfaceXPCListener *)self clients];
    objc_sync_enter(v16);
    v17 = [(CloudMediaServicesInterfaceXPCListener *)self clients];
    [v17 addObject:v10];

    objc_sync_exit(v16);
    [v15 resume];

    objc_destroyWeak(&v21);
    objc_destroyWeak(&v24);
    objc_destroyWeak(&location);
  }

  else
  {
    v10 = _CMSILogingFacility();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      [CloudMediaServicesInterfaceXPCListener listener:v10 shouldAcceptNewConnection:?];
    }
  }

  return v9;
}

void __77__CloudMediaServicesInterfaceXPCListener_listener_shouldAcceptNewConnection___block_invoke(uint64_t a1)
{
  v2 = _CMSILogingFacility();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&dword_2439AD000, v2, OS_LOG_TYPE_DEFAULT, "Interruption Handler called", v4, 2u);
  }

  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained handleClientDisconnection:*(a1 + 32)];
}

void __77__CloudMediaServicesInterfaceXPCListener_listener_shouldAcceptNewConnection___block_invoke_67(uint64_t a1)
{
  v2 = _CMSILogingFacility();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&dword_2439AD000, v2, OS_LOG_TYPE_DEFAULT, "Invalidation Handler called", v4, 2u);
  }

  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained handleClientDisconnection:*(a1 + 32)];
}

- (void)handleClientDisconnection:(id)a3
{
  v4 = a3;
  v5 = [(CloudMediaServicesInterfaceXPCListener *)self clients];
  objc_sync_enter(v5);
  v6 = [(CloudMediaServicesInterfaceXPCListener *)self clients];
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __68__CloudMediaServicesInterfaceXPCListener_handleClientDisconnection___block_invoke;
  v10[3] = &unk_278DDD2B0;
  v7 = v4;
  v11 = v7;
  v8 = [v6 na_firstObjectPassingTest:v10];

  if (v8)
  {
    v9 = [(CloudMediaServicesInterfaceXPCListener *)self clients];
    [v9 removeObject:v8];
  }

  objc_sync_exit(v5);
}

uint64_t __68__CloudMediaServicesInterfaceXPCListener_handleClientDisconnection___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 connection];
  v4 = [v3 isEqual:*(a1 + 32)];

  return v4;
}

- (void)playSample:(id)a3
{
  v6 = a3;
  WeakRetained = objc_loadWeakRetained(&self->_playbackCommandDelegate);

  if (WeakRetained)
  {
    v5 = objc_loadWeakRetained(&self->_playbackCommandDelegate);
    [v5 playSample:v6];
  }
}

- (void)sendPlaybackQueueToRemoteDestination:(id)a3 withCompletion:(id)a4
{
  v9 = a3;
  v6 = a4;
  WeakRetained = objc_loadWeakRetained(&self->_playbackCommandDelegate);

  if (WeakRetained)
  {
    v8 = objc_loadWeakRetained(&self->_playbackCommandDelegate);
    [v8 sendPlaybackQueueToRemoteDestination:v9 withCompletion:v6];
  }
}

- (void)pauseSample
{
  WeakRetained = objc_loadWeakRetained(&self->_playbackCommandDelegate);

  if (WeakRetained)
  {
    v4 = objc_loadWeakRetained(&self->_playbackCommandDelegate);
    [v4 pauseSample];
  }
}

- (void)setServerEnvironment:(id)a3
{
  v6 = a3;
  WeakRetained = objc_loadWeakRetained(&self->_playbackCommandDelegate);

  if (WeakRetained)
  {
    v5 = objc_loadWeakRetained(&self->_playbackCommandDelegate);
    [v5 setServerEnvironment:v6];
  }
}

- (void)setOverrideURL:(id)a3
{
  v6 = a3;
  WeakRetained = objc_loadWeakRetained(&self->_playbackCommandDelegate);

  if (WeakRetained)
  {
    v5 = objc_loadWeakRetained(&self->_playbackCommandDelegate);
    [v5 setOverrideURL:v6];
  }
}

- (void)getCloudExtensionConfigurationFor:(id)a3 homeUserID:(id)a4 endpointID:(id)a5 withCompletion:(id)a6
{
  v15 = a3;
  v10 = a4;
  v11 = a5;
  v12 = a6;
  WeakRetained = objc_loadWeakRetained(&self->_playbackCommandDelegate);

  if (WeakRetained)
  {
    v14 = objc_loadWeakRetained(&self->_playbackCommandDelegate);
    [v14 getCloudExtensionConfigurationFor:v15 homeUserID:v10 endpointID:v11 withCompletion:v12];
  }
}

- (void)submitAnalyticsForType:(id)a3 andIdentifier:(id)a4 eventType:(id)a5 atTime:(id)a6 withMetadata:(id)a7
{
  v18 = a3;
  v12 = a4;
  v13 = a5;
  v14 = a6;
  v15 = a7;
  WeakRetained = objc_loadWeakRetained(&self->_playbackCommandDelegate);

  if (WeakRetained)
  {
    v17 = objc_loadWeakRetained(&self->_playbackCommandDelegate);
    [v17 submitAnalyticsForType:v18 andIdentifier:v12 eventType:v13 atTime:v14 withMetadata:v15];
  }
}

- (void)stopAnalyticsWithIdentifier:(id)a3
{
  v6 = a3;
  WeakRetained = objc_loadWeakRetained(&self->_playbackCommandDelegate);

  if (WeakRetained)
  {
    v5 = objc_loadWeakRetained(&self->_playbackCommandDelegate);
    [v5 stopAnalyticsWithIdentifier:v6];
  }
}

- (CloudMediaServicesInterfaceProtocol)playbackCommandDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_playbackCommandDelegate);

  return WeakRetained;
}

@end