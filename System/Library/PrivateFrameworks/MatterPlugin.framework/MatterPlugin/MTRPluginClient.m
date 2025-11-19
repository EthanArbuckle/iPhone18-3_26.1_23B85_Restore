@interface MTRPluginClient
- (BOOL)isInRemoteMode;
- (BOOL)respondsToSelector:(SEL)a3;
- (MTRPluginClient)initWithXPCConnection:(id)a3 sessionID:(id)a4 queue:(id)a5;
- (NSString)description;
- (id)_currentTarget;
- (id)forwardingTargetForSelector:(SEL)a3;
- (id)xpcClientConnectionQueue;
- (void)dealloc;
- (void)deviceController:(id)a3 deleteNodeID:(id)a4;
- (void)deviceController:(id)a3 getNodesWithStoredDataWithReply:(id)a4;
- (void)deviceController:(id)a3 nodeID:(id)a4 downloadLogOfType:(int64_t)a5 timeout:(double)a6 completion:(id)a7;
- (void)deviceController:(id)a3 nodeID:(id)a4 getDeviceCachePrimedWithReply:(id)a5;
- (void)deviceController:(id)a3 nodeID:(id)a4 getEstimatedStartTimeWithReply:(id)a5;
- (void)deviceController:(id)a3 nodeID:(id)a4 getEstimatedSubscriptionLatencyWithReply:(id)a5;
- (void)deviceController:(id)a3 nodeID:(id)a4 getStateWithReply:(id)a5;
- (void)deviceController:(id)a3 nodeID:(id)a4 invokeCommandWithEndpointID:(id)a5 clusterID:(id)a6 commandID:(id)a7 commandFields:(id)a8 expectedValues:(id)a9 expectedValueInterval:(id)a10 timedInvokeTimeout:(id)a11 serverSideProcessingTimeout:(id)a12 completion:(id)a13;
- (void)deviceController:(id)a3 nodeID:(id)a4 invokeCommands:(id)a5 completion:(id)a6;
- (void)deviceController:(id)a3 nodeID:(id)a4 readAttributePaths:(id)a5 withReply:(id)a6;
- (void)deviceController:(id)a3 nodeID:(id)a4 readAttributeWithEndpointID:(id)a5 clusterID:(id)a6 attributeID:(id)a7 params:(id)a8 withReply:(id)a9;
- (void)deviceController:(id)a3 nodeID:(id)a4 writeAttributeWithEndpointID:(id)a5 clusterID:(id)a6 attributeID:(id)a7 value:(id)a8 expectedValueInterval:(id)a9 timedWriteTimeout:(id)a10;
- (void)deviceController:(id)a3 updateControllerConfiguration:(id)a4;
- (void)invalidate;
- (void)runningModeChanged:(int64_t)a3;
@end

@implementation MTRPluginClient

- (MTRPluginClient)initWithXPCConnection:(id)a3 sessionID:(id)a4 queue:(id)a5
{
  v29 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v22.receiver = self;
  v22.super_class = MTRPluginClient;
  v11 = [(MTRPluginClient *)&v22 init];
  v12 = v11;
  if (v11)
  {
    [(MTRPluginClient *)v11 setWorkQueue:v10];
    [(MTRPluginClient *)v12 setSessionID:v9];
    v13 = [MEMORY[0x277CBEB38] dictionary];
    [(MTRPluginClient *)v12 setContext:v13];

    [(MTRPluginClient *)v12 setXpcConnection:v8];
    [(MTRPluginClient *)v12 setClientType:MTRGetClientTypeForXPCConnection(v8)];
    v14 = [MEMORY[0x277CBEB38] dictionary];
    [(MTRPluginClient *)v12 setDelegateProxies:v14];

    v15 = [[MTRPluginClientXPCProxy alloc] initWithClient:v12];
    [(MTRPluginClient *)v12 setClientProxy:v15];

    v16 = [[MTRPluginLocalClient alloc] initWithPluginClient:v12];
    [(MTRPluginClient *)v12 setLocalClient:v16];

    v17 = [[MTRPluginRemoteClient alloc] initWithClient:v12 queue:v10];
    [(MTRPluginClient *)v12 setRemoteClient:v17];

    v18 = matterPluginLog_default;
    if (os_log_type_enabled(matterPluginLog_default, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412802;
      v24 = v12;
      v25 = 2112;
      v26 = v8;
      v27 = 2112;
      v28 = v10;
      _os_log_impl(&dword_25830F000, v18, OS_LOG_TYPE_DEFAULT, "%@ initialized with xpcConnection %@ queue: %@", buf, 0x20u);
    }

    v19 = v12;
  }

  v20 = *MEMORY[0x277D85DE8];
  return v12;
}

- (void)dealloc
{
  v14 = *MEMORY[0x277D85DE8];
  v3 = [MEMORY[0x277CCAB98] defaultCenter];
  [v3 removeObserver:self];

  v4 = matterPluginLog_default;
  if (os_log_type_enabled(matterPluginLog_default, OS_LOG_TYPE_DEFAULT))
  {
    v5 = v4;
    v6 = objc_opt_class();
    v7 = NSStringFromClass(v6);
    *buf = 138412546;
    v11 = v7;
    v12 = 2048;
    v13 = self;
    _os_log_impl(&dword_25830F000, v5, OS_LOG_TYPE_DEFAULT, "%@ dealloc: %p", buf, 0x16u);
  }

  v9.receiver = self;
  v9.super_class = MTRPluginClient;
  [(MTRPluginClient *)&v9 dealloc];
  v8 = *MEMORY[0x277D85DE8];
}

- (NSString)description
{
  v3 = objc_autoreleasePoolPush();
  v4 = MEMORY[0x277CCACA8];
  v5 = objc_opt_class();
  v6 = NSStringFromClass(v5);
  v7 = [(MTRPluginClient *)self xpcConnection];
  v8 = [(MTRPluginClient *)self xpcConnection];
  v9 = [v8 processIdentifier];
  v10 = [(MTRPluginClient *)self clientType];
  if (v10 >= 0xA)
  {
    v11 = [MEMORY[0x277CCACA8] stringWithFormat:@"(unknown: %i)", v10];
  }

  else
  {
    v11 = off_279894368[v10];
  }

  v12 = [(MTRPluginClient *)self localClient];
  v13 = [v12 registeredNodeIDs];
  v14 = [v4 stringWithFormat:@"<%@: %p xpc %p pid: %d, clientType: %@ registeredNodeIDs: %@>", v6, self, v7, v9, v11, v13];

  objc_autoreleasePoolPop(v3);

  return v14;
}

- (void)invalidate
{
  v12 = *MEMORY[0x277D85DE8];
  v3 = matterPluginLog_default;
  if (os_log_type_enabled(matterPluginLog_default, OS_LOG_TYPE_DEFAULT))
  {
    v10 = 138412290;
    v11 = self;
    _os_log_impl(&dword_25830F000, v3, OS_LOG_TYPE_DEFAULT, "%@ invalidate", &v10, 0xCu);
  }

  v4 = [(MTRPluginClient *)self localClient];
  [v4 invalidate];

  [(MTRPluginClient *)self setLocalClient:0];
  v5 = [(MTRPluginClient *)self remoteClient];
  [v5 invalidate];

  [(MTRPluginClient *)self setRemoteClient:0];
  v6 = [MEMORY[0x277CBEB38] dictionary];
  [(MTRPluginClient *)self setContext:v6];

  v7 = [(MTRPluginClient *)self updateControllerConfigurationTimer];

  if (v7)
  {
    v8 = [(MTRPluginClient *)self updateControllerConfigurationTimer];
    dispatch_source_cancel(v8);

    [(MTRPluginClient *)self setUpdateControllerConfigurationTimer:0];
  }

  v9 = *MEMORY[0x277D85DE8];
}

- (BOOL)isInRemoteMode
{
  v11 = *MEMORY[0x277D85DE8];
  if (MTRPluginForceRemoteControl())
  {
    v3 = matterPluginLog_default;
    if (os_log_type_enabled(matterPluginLog_default, OS_LOG_TYPE_DEFAULT))
    {
      v9 = 138412290;
      v10 = self;
      _os_log_impl(&dword_25830F000, v3, OS_LOG_TYPE_DEFAULT, "%@ MatterPlugin is overridden to be in remote mode, forcing YES for isInRemoteMode", &v9, 0xCu);
    }

    result = 1;
  }

  else
  {
    v5 = +[MTRPluginDeviceControllerRegistry sharedInstance];
    v6 = [(MTRPluginClient *)self homeUUID];
    v7 = [v5 _runningModeForUUID:v6];

    result = (v7 == 1) & ~MTRIsPotentiallyPairing();
  }

  v8 = *MEMORY[0x277D85DE8];
  return result;
}

- (id)_currentTarget
{
  if ([(MTRPluginClient *)self isInRemoteMode])
  {
    [(MTRPluginClient *)self _remoteTarget];
  }

  else
  {
    [(MTRPluginClient *)self _localTarget];
  }
  v3 = ;

  return v3;
}

- (id)xpcClientConnectionQueue
{
  v2 = [(MTRPluginClient *)self xpcConnection];
  v3 = [v2 _queue];

  return v3;
}

- (void)deviceController:(id)a3 deleteNodeID:(id)a4
{
  v18 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = [(MTRPluginClient *)self controllerUUID];

  if (!v8)
  {
    [(MTRPluginClient *)self setControllerUUID:v6];
  }

  v9 = matterPluginLog_default;
  if (os_log_type_enabled(matterPluginLog_default, OS_LOG_TYPE_DEFAULT))
  {
    v12 = 138412802;
    v13 = self;
    v14 = 2112;
    v15 = v6;
    v16 = 2112;
    v17 = v7;
    _os_log_impl(&dword_25830F000, v9, OS_LOG_TYPE_DEFAULT, "%@ deviceController %@ deleteNodeID %@", &v12, 0x20u);
  }

  v10 = [(MTRPluginClient *)self _localTarget];
  [v10 deviceController:v6 deleteNodeID:v7];

  v11 = *MEMORY[0x277D85DE8];
}

- (void)deviceController:(id)a3 getNodesWithStoredDataWithReply:(id)a4
{
  v16 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = [(MTRPluginClient *)self controllerUUID];

  if (!v8)
  {
    [(MTRPluginClient *)self setControllerUUID:v6];
  }

  v9 = matterPluginLog_default;
  if (os_log_type_enabled(matterPluginLog_default, OS_LOG_TYPE_DEFAULT))
  {
    v12 = 138412546;
    v13 = self;
    v14 = 2112;
    v15 = v6;
    _os_log_impl(&dword_25830F000, v9, OS_LOG_TYPE_DEFAULT, "%@ deviceController %@ getNodesWithStoredDataWithReply", &v12, 0x16u);
  }

  v10 = [(MTRPluginClient *)self _localTarget];
  [v10 deviceController:v6 getNodesWithStoredDataWithReply:v7];

  v11 = *MEMORY[0x277D85DE8];
}

- (void)deviceController:(id)a3 updateControllerConfiguration:(id)a4
{
  v30 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = [(MTRPluginClient *)self controllerUUID];

  if (!v8)
  {
    [(MTRPluginClient *)self setControllerUUID:v6];
  }

  [(MTRPluginClient *)self setControllerConfiguration:v7];
  v9 = matterPluginLog_default;
  if (os_log_type_enabled(matterPluginLog_default, OS_LOG_TYPE_DEFAULT))
  {
    v10 = v9;
    v11 = [(MTRPluginClient *)self controllerConfiguration];
    *buf = 138412802;
    v25 = self;
    v26 = 2112;
    v27 = v6;
    v28 = 2112;
    v29 = v11;
    _os_log_impl(&dword_25830F000, v10, OS_LOG_TYPE_DEFAULT, "%@ deviceController %@ updateControllerConfiguration %@", buf, 0x20u);
  }

  v12 = [(MTRPluginClient *)self _localTarget];
  v13 = [(MTRPluginClient *)self controllerConfiguration];
  [v12 deviceController:v6 updateControllerConfiguration:v13];

  if ([(MTRPluginClient *)self isInRemoteMode])
  {
    v14 = [(MTRPluginClient *)self updateControllerConfigurationTimer];
    v15 = [(MTRPluginClient *)self xpcClientConnectionQueue];
    v18 = MEMORY[0x277D85DD0];
    v19 = 3221225472;
    v20 = __66__MTRPluginClient_deviceController_updateControllerConfiguration___block_invoke;
    v21 = &unk_279893AC8;
    v22 = self;
    v23 = v6;
    v16 = MTRBufferedExecutionBlock(v14, v15, &v18, 0.5);
    [(MTRPluginClient *)self setUpdateControllerConfigurationTimer:v16, v18, v19, v20, v21, v22];
  }

  v17 = *MEMORY[0x277D85DE8];
}

void __66__MTRPluginClient_deviceController_updateControllerConfiguration___block_invoke(uint64_t a1)
{
  v17 = *MEMORY[0x277D85DE8];
  v2 = matterPluginLog_default;
  if (os_log_type_enabled(matterPluginLog_default, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    v4 = *(a1 + 40);
    v5 = v2;
    v6 = [v3 controllerConfiguration];
    v11 = 138412802;
    v12 = v3;
    v13 = 2112;
    v14 = v4;
    v15 = 2112;
    v16 = v6;
    _os_log_impl(&dword_25830F000, v5, OS_LOG_TYPE_DEFAULT, "%@ deviceController %@ (buffered) updateControllerConfiguration %@", &v11, 0x20u);
  }

  v7 = [*(a1 + 32) _remoteTarget];
  v8 = *(a1 + 40);
  v9 = [*(a1 + 32) controllerConfiguration];
  [v7 deviceController:v8 updateControllerConfiguration:v9];

  v10 = *MEMORY[0x277D85DE8];
}

- (void)deviceController:(id)a3 nodeID:(id)a4 readAttributeWithEndpointID:(id)a5 clusterID:(id)a6 attributeID:(id)a7 params:(id)a8 withReply:(id)a9
{
  v34 = *MEMORY[0x277D85DE8];
  v15 = a3;
  v16 = a4;
  v17 = a5;
  v18 = a6;
  v19 = a7;
  v20 = a8;
  v21 = a9;
  v22 = [(MTRPluginClient *)self controllerUUID];

  if (!v22)
  {
    [(MTRPluginClient *)self setControllerUUID:v15];
  }

  v23 = [(MTRPluginClient *)self xpcConnection];
  v24 = [MTRPluginThirdPartyExclusions attributeReadDisallowedOverXPCWithEndpointID:v17 clusterID:v18 attribute:v19 isPrivatelyEntitled:[MTRPluginThirdPartyExclusions connectionIsPrivatelyEntitled:v23]];

  if (v24)
  {
    v25 = matterPluginLog_default;
    if (os_log_type_enabled(matterPluginLog_default, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412802;
      v29 = v17;
      v30 = 2112;
      v31 = v18;
      v32 = 2112;
      v33 = v19;
      _os_log_impl(&dword_25830F000, v25, OS_LOG_TYPE_DEFAULT, "ERROR: Attribute read disallowed over XPC: EP %@, Cluster %@, Attribute %@", buf, 0x20u);
    }

    v21[2](v21, 0);
  }

  else
  {
    v26 = [(MTRPluginClient *)self _localTarget];
    [v26 deviceController:v15 nodeID:v16 readAttributeWithEndpointID:v17 clusterID:v18 attributeID:v19 params:v20 withReply:v21];
  }

  v27 = *MEMORY[0x277D85DE8];
}

- (void)deviceController:(id)a3 nodeID:(id)a4 readAttributePaths:(id)a5 withReply:(id)a6
{
  v50 = *MEMORY[0x277D85DE8];
  v10 = a3;
  v35 = a4;
  v11 = a5;
  v34 = a6;
  v38 = self;
  v12 = [(MTRPluginClient *)self controllerUUID];

  if (!v12)
  {
    [(MTRPluginClient *)self setControllerUUID:v10];
  }

  v36 = v10;
  v41 = 0u;
  v42 = 0u;
  v39 = 0u;
  v40 = 0u;
  obj = v11;
  v13 = [obj countByEnumeratingWithState:&v39 objects:v49 count:16];
  if (v13)
  {
    v14 = v13;
    v15 = *v40;
    while (2)
    {
      for (i = 0; i != v14; ++i)
      {
        if (*v40 != v15)
        {
          objc_enumerationMutation(obj);
        }

        v17 = *(*(&v39 + 1) + 8 * i);
        v18 = [v17 endpoint];
        v19 = [v17 cluster];
        v20 = [v17 attribute];
        v21 = [(MTRPluginClient *)v38 xpcConnection];
        v22 = [MTRPluginThirdPartyExclusions attributeReadDisallowedOverXPCWithEndpointID:v18 clusterID:v19 attribute:v20 isPrivatelyEntitled:[MTRPluginThirdPartyExclusions connectionIsPrivatelyEntitled:v21]];

        if (v22)
        {
          v28 = matterPluginLog_default;
          if (os_log_type_enabled(matterPluginLog_default, OS_LOG_TYPE_DEFAULT))
          {
            v29 = v28;
            v30 = [v17 endpoint];
            v31 = [v17 cluster];
            v32 = [v17 attribute];
            *buf = 138412802;
            v44 = v30;
            v45 = 2112;
            v46 = v31;
            v47 = 2112;
            v48 = v32;
            _os_log_impl(&dword_25830F000, v29, OS_LOG_TYPE_DEFAULT, "ERROR: Attribute read disallowed over XPC: EP %@, Cluster %@, Attribute %@", buf, 0x20u);
          }

          v27 = v34;
          (*(v34 + 2))(v34, 0);
          v25 = v36;
          v23 = obj;
          v24 = obj;
          v26 = v35;
          goto LABEL_15;
        }
      }

      v14 = [obj countByEnumeratingWithState:&v39 objects:v49 count:16];
      if (v14)
      {
        continue;
      }

      break;
    }
  }

  v23 = obj;

  v24 = [(MTRPluginClient *)v38 _localTarget];
  v26 = v35;
  v25 = v36;
  v27 = v34;
  [v24 deviceController:v36 nodeID:v35 readAttributePaths:obj withReply:v34];
LABEL_15:

  v33 = *MEMORY[0x277D85DE8];
}

- (void)deviceController:(id)a3 nodeID:(id)a4 getStateWithReply:(id)a5
{
  v12 = a3;
  v8 = a5;
  v9 = a4;
  v10 = [(MTRPluginClient *)self controllerUUID];

  if (!v10)
  {
    [(MTRPluginClient *)self setControllerUUID:v12];
  }

  v11 = [(MTRPluginClient *)self _currentTarget];
  [v11 deviceController:v12 nodeID:v9 getStateWithReply:v8];
}

- (void)deviceController:(id)a3 nodeID:(id)a4 getDeviceCachePrimedWithReply:(id)a5
{
  v12 = a3;
  v8 = a5;
  v9 = a4;
  v10 = [(MTRPluginClient *)self controllerUUID];

  if (!v10)
  {
    [(MTRPluginClient *)self setControllerUUID:v12];
  }

  v11 = [(MTRPluginClient *)self _currentTarget];
  [v11 deviceController:v12 nodeID:v9 getDeviceCachePrimedWithReply:v8];
}

- (void)deviceController:(id)a3 nodeID:(id)a4 getEstimatedStartTimeWithReply:(id)a5
{
  v12 = a3;
  v8 = a5;
  v9 = a4;
  v10 = [(MTRPluginClient *)self controllerUUID];

  if (!v10)
  {
    [(MTRPluginClient *)self setControllerUUID:v12];
  }

  v11 = [(MTRPluginClient *)self _currentTarget];
  [v11 deviceController:v12 nodeID:v9 getEstimatedStartTimeWithReply:v8];
}

- (void)deviceController:(id)a3 nodeID:(id)a4 getEstimatedSubscriptionLatencyWithReply:(id)a5
{
  v12 = a3;
  v8 = a5;
  v9 = a4;
  v10 = [(MTRPluginClient *)self controllerUUID];

  if (!v10)
  {
    [(MTRPluginClient *)self setControllerUUID:v12];
  }

  v11 = [(MTRPluginClient *)self _currentTarget];
  [v11 deviceController:v12 nodeID:v9 getEstimatedSubscriptionLatencyWithReply:v8];
}

- (void)deviceController:(id)a3 nodeID:(id)a4 downloadLogOfType:(int64_t)a5 timeout:(double)a6 completion:(id)a7
{
  v12 = a3;
  v13 = a7;
  v14 = a4;
  v15 = [(MTRPluginClient *)self controllerUUID];

  if (!v15)
  {
    [(MTRPluginClient *)self setControllerUUID:v12];
  }

  v16 = [(MTRPluginClient *)self _currentTarget];
  v18[0] = MEMORY[0x277D85DD0];
  v18[1] = 3221225472;
  v18[2] = __80__MTRPluginClient_deviceController_nodeID_downloadLogOfType_timeout_completion___block_invoke;
  v18[3] = &unk_279893CF8;
  v18[4] = self;
  v19 = v13;
  v17 = v13;
  [v16 deviceController:v12 nodeID:v14 downloadLogOfType:a5 timeout:v18 completion:a6];
}

void __80__MTRPluginClient_deviceController_nodeID_downloadLogOfType_timeout_completion___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v37 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  v7 = matterPluginLog_default;
  if (os_log_type_enabled(matterPluginLog_default, OS_LOG_TYPE_DEFAULT))
  {
    v8 = *(a1 + 32);
    *buf = 138412802;
    v30 = v8;
    v31 = 2112;
    v32 = v5;
    v33 = 2112;
    v34 = v6;
    _os_log_impl(&dword_25830F000, v7, OS_LOG_TYPE_DEFAULT, "%@ Log download complete with url: %@ error: %@", buf, 0x20u);
  }

  if (!v5 || v6)
  {
    v20 = matterPluginLog_default;
    if (os_log_type_enabled(matterPluginLog_default, OS_LOG_TYPE_ERROR))
    {
      v26 = *(a1 + 32);
      *buf = 138412802;
      v30 = v26;
      v31 = 2112;
      v32 = v5;
      v33 = 2112;
      v34 = v6;
      _os_log_error_impl(&dword_25830F000, v20, OS_LOG_TYPE_ERROR, "%@ ERROR: Calling back log download complete with url: %@ error: %@", buf, 0x20u);
    }

    (*(*(a1 + 40) + 16))();
  }

  else
  {
    v9 = [MEMORY[0x277CCAA00] defaultManager];
    v28 = 0;
    v10 = [v9 URLForDirectory:13 inDomain:1 appropriateForURL:v5 create:0 error:&v28];
    v6 = v28;

    v11 = [v5 lastPathComponent];
    if ([v11 length])
    {
      if (v10)
      {
        v12 = [v10 URLByAppendingPathComponent:@"com.apple.homed"];
        v13 = [v12 URLByAppendingPathComponent:@"DiagnosticLogs"];

        v14 = [MEMORY[0x277CCAA00] defaultManager];
        [v14 createDirectoryAtURL:v13 withIntermediateDirectories:1 attributes:0 error:0];

        v15 = [v13 URLByAppendingPathComponent:v11];
        v16 = [MEMORY[0x277CCAA00] defaultManager];
        v27 = 0;
        [v16 moveItemAtURL:v5 toURL:v15 error:&v27];
        v17 = v27;

        v18 = matterPluginLog_default;
        if (os_log_type_enabled(matterPluginLog_default, OS_LOG_TYPE_DEFAULT))
        {
          v19 = *(a1 + 32);
          *buf = 138413058;
          v30 = v19;
          v31 = 2112;
          v32 = v5;
          v33 = 2112;
          v34 = v15;
          v35 = 2112;
          v36 = v17;
          _os_log_impl(&dword_25830F000, v18, OS_LOG_TYPE_DEFAULT, "%@ Moved %@ to: %@ (error: %@)", buf, 0x2Au);
        }

        v10 = v13;
      }

      else
      {
        v22 = matterPluginLog_default;
        if (os_log_type_enabled(matterPluginLog_default, OS_LOG_TYPE_ERROR))
        {
          __80__MTRPluginClient_deviceController_nodeID_downloadLogOfType_timeout_completion___block_invoke_cold_1(v6, v22);
        }

        v17 = [MEMORY[0x277CCA9B8] errorWithDomain:@"kMTRPluginErrorDomain" code:-1012 userInfo:0];
        v15 = 0;
        v10 = 0;
      }
    }

    else
    {
      v21 = matterPluginLog_default;
      if (os_log_type_enabled(matterPluginLog_default, OS_LOG_TYPE_ERROR))
      {
        __80__MTRPluginClient_deviceController_nodeID_downloadLogOfType_timeout_completion___block_invoke_cold_2(v5, v11, v21);
      }

      v17 = [MEMORY[0x277CCA9B8] errorWithDomain:@"kMTRPluginErrorDomain" code:-1012 userInfo:0];
      v15 = 0;
    }

    if (v17)
    {
      v23 = 0;
    }

    else
    {
      v23 = v15;
    }

    if (v17)
    {
      v24 = v17;
    }

    else
    {
      v24 = v6;
    }

    (*(*(a1 + 40) + 16))(*(a1 + 40), v23, v24);
  }

  v25 = *MEMORY[0x277D85DE8];
}

- (void)runningModeChanged:(int64_t)a3
{
  v5 = [(MTRPluginClient *)self xpcClientConnectionQueue];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __38__MTRPluginClient_runningModeChanged___block_invoke;
  v6[3] = &unk_279893DC8;
  v6[4] = self;
  v6[5] = a3;
  dispatch_async(v5, v6);
}

void __38__MTRPluginClient_runningModeChanged___block_invoke(uint64_t a1)
{
  v31 = *MEMORY[0x277D85DE8];
  v2 = objc_autoreleasePoolPush();
  v3 = *(a1 + 40);
  v4 = matterPluginLog_default;
  v5 = os_log_type_enabled(matterPluginLog_default, OS_LOG_TYPE_DEFAULT);
  if (v3 == 1)
  {
    if (v5)
    {
      v6 = *(a1 + 32);
      v7 = v4;
      v8 = [v6 homeUUID];
      v23 = 138412546;
      v24 = v6;
      v25 = 2112;
      v26 = v8;
      _os_log_impl(&dword_25830F000, v7, OS_LOG_TYPE_DEFAULT, "%@ resuming remote server session for home %@ since running mode is remote", &v23, 0x16u);
    }

    v9 = [*(a1 + 32) remoteClient];
    [v9 resume];
  }

  else
  {
    if (v5)
    {
      v10 = *(a1 + 32);
      v11 = v4;
      v12 = [v10 homeUUID];
      v23 = 138412546;
      v24 = v10;
      v25 = 2112;
      v26 = v12;
      _os_log_impl(&dword_25830F000, v11, OS_LOG_TYPE_DEFAULT, "%@ suspending remote server session for home %@ since running mode is local", &v23, 0x16u);
    }

    v9 = [*(a1 + 32) remoteClient];
    [v9 suspend];
  }

  v13 = matterPluginLog_default;
  if (os_log_type_enabled(matterPluginLog_default, OS_LOG_TYPE_DEFAULT))
  {
    v14 = *(a1 + 32);
    v15 = v13;
    v16 = [v14 homeUUID];
    v17 = MTRPluginHomeRunnningModeAsString(*(a1 + 40));
    v18 = [*(a1 + 32) controllerConfiguration];
    v23 = 138413058;
    v24 = v14;
    v25 = 2112;
    v26 = v16;
    v27 = 2112;
    v28 = v17;
    v29 = 2112;
    v30 = v18;
    _os_log_impl(&dword_25830F000, v15, OS_LOG_TYPE_DEFAULT, "%@ Updating a controller configuration for home %@ update for running mode '%@' so the new endpoint has context: %@", &v23, 0x2Au);
  }

  v19 = *(a1 + 32);
  v20 = [v19 controllerUUID];
  v21 = [*(a1 + 32) controllerConfiguration];
  [v19 deviceController:v20 updateControllerConfiguration:v21];

  objc_autoreleasePoolPop(v2);
  v22 = *MEMORY[0x277D85DE8];
}

- (BOOL)respondsToSelector:(SEL)a3
{
  if (MTRPluginCheckProtocolContainsSelector(&unk_28697F080, a3))
  {
    return 1;
  }

  v6.receiver = self;
  v6.super_class = MTRPluginClient;
  return [(MTRPluginClient *)&v6 respondsToSelector:a3];
}

- (id)forwardingTargetForSelector:(SEL)a3
{
  v20 = *MEMORY[0x277D85DE8];
  v13.receiver = self;
  v13.super_class = MTRPluginClient;
  if ([(MTRPluginClient *)&v13 respondsToSelector:?])
  {
    v5 = self;
  }

  else if (MTRPluginCheckProtocolContainsSelector(&unk_28697F080, a3))
  {
    v6 = matterPluginLog_default;
    if (os_log_type_enabled(matterPluginLog_default, OS_LOG_TYPE_DEFAULT))
    {
      v7 = v6;
      v8 = NSStringFromSelector(a3);
      v9 = [(MTRPluginClient *)self localClient];
      *buf = 138412802;
      v15 = self;
      v16 = 2112;
      v17 = v8;
      v18 = 2112;
      v19 = v9;
      _os_log_impl(&dword_25830F000, v7, OS_LOG_TYPE_DEFAULT, "%@ forwardingTargetForSelector %@ to: %@", buf, 0x20u);
    }

    v5 = [(MTRPluginClient *)self _currentTarget];
  }

  else
  {
    v12.receiver = self;
    v12.super_class = MTRPluginClient;
    v5 = [(MTRPluginClient *)&v12 forwardingTargetForSelector:a3];
  }

  v10 = *MEMORY[0x277D85DE8];

  return v5;
}

- (void)deviceController:(id)a3 nodeID:(id)a4 writeAttributeWithEndpointID:(id)a5 clusterID:(id)a6 attributeID:(id)a7 value:(id)a8 expectedValueInterval:(id)a9 timedWriteTimeout:(id)a10
{
  v37 = *MEMORY[0x277D85DE8];
  v30 = a3;
  v16 = a4;
  v17 = a5;
  v18 = a6;
  v19 = a7;
  v20 = a8;
  v21 = a9;
  v22 = a10;
  v23 = [(MTRPluginClient *)self controllerUUID];

  if (!v23)
  {
    [(MTRPluginClient *)self setControllerUUID:v30];
  }

  v24 = [(MTRPluginClient *)self xpcConnection];
  v25 = [MTRPluginThirdPartyExclusions attributeWriteDisallowedOverXPCWithEndpointID:v17 clusterID:v18 attribute:v19 isPrivatelyEntitled:[MTRPluginThirdPartyExclusions connectionIsPrivatelyEntitled:v24]];

  if (v25)
  {
    v26 = matterPluginLog_default;
    v27 = v30;
    if (os_log_type_enabled(matterPluginLog_default, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412802;
      v32 = v17;
      v33 = 2112;
      v34 = v18;
      v35 = 2112;
      v36 = v19;
      _os_log_impl(&dword_25830F000, v26, OS_LOG_TYPE_DEFAULT, "ERROR: Attribute write disallowed over XPC: EP %@, Cluster %@, Attribute %@", buf, 0x20u);
    }
  }

  else
  {
    v28 = [(MTRPluginClient *)self _currentTarget];
    v27 = v30;
    [v28 deviceController:v30 nodeID:v16 writeAttributeWithEndpointID:v17 clusterID:v18 attributeID:v19 value:v20 expectedValueInterval:v21 timedWriteTimeout:v22];
  }

  v29 = *MEMORY[0x277D85DE8];
}

- (void)deviceController:(id)a3 nodeID:(id)a4 invokeCommandWithEndpointID:(id)a5 clusterID:(id)a6 commandID:(id)a7 commandFields:(id)a8 expectedValues:(id)a9 expectedValueInterval:(id)a10 timedInvokeTimeout:(id)a11 serverSideProcessingTimeout:(id)a12 completion:(id)a13
{
  v44 = *MEMORY[0x277D85DE8];
  v35 = a3;
  v34 = a4;
  v19 = a5;
  v20 = a6;
  v21 = a7;
  v37 = a8;
  v36 = a9;
  v22 = a10;
  v23 = a11;
  v24 = a12;
  v25 = a13;
  v26 = [(MTRPluginClient *)self controllerUUID];

  if (!v26)
  {
    [(MTRPluginClient *)self setControllerUUID:v35];
  }

  v27 = [(MTRPluginClient *)self xpcConnection];
  v28 = [MTRPluginThirdPartyExclusions commandDisallowedOverXPCWithEndpointID:v19 clusterID:v20 commandID:v21 isPrivatelyEntitled:[MTRPluginThirdPartyExclusions connectionIsPrivatelyEntitled:v27]];

  if (!v28)
  {
    v32 = [(MTRPluginClient *)self _currentTarget];
    v31 = v35;
    v30 = v34;
    [v32 deviceController:v35 nodeID:v34 invokeCommandWithEndpointID:v19 clusterID:v20 commandID:v21 commandFields:v37 expectedValues:v36 expectedValueInterval:v22 timedInvokeTimeout:v23 serverSideProcessingTimeout:v24 completion:v25];
    goto LABEL_9;
  }

  v29 = matterPluginLog_default;
  v30 = v34;
  if (os_log_type_enabled(matterPluginLog_default, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412802;
    v39 = v19;
    v40 = 2112;
    v41 = v20;
    v42 = 2112;
    v43 = v21;
    _os_log_impl(&dword_25830F000, v29, OS_LOG_TYPE_DEFAULT, "ERROR: Command disallowed over XPC: EP %@, Cluster %@, Command %@", buf, 0x20u);
  }

  v31 = v35;
  if (v25)
  {
    v32 = [MEMORY[0x277CCA9B8] errorWithDomain:@"kMTRPluginErrorDomain" code:-1009 userInfo:0];
    v25[2](v25, 0, v32);
LABEL_9:
  }

  v33 = *MEMORY[0x277D85DE8];
}

- (void)deviceController:(id)a3 nodeID:(id)a4 invokeCommands:(id)a5 completion:(id)a6
{
  v57 = *MEMORY[0x277D85DE8];
  v10 = a3;
  v40 = a4;
  v11 = a5;
  v39 = a6;
  v12 = [(MTRPluginClient *)self controllerUUID];

  if (!v12)
  {
    [(MTRPluginClient *)self setControllerUUID:v10];
  }

  v41 = v10;
  v48 = 0u;
  v49 = 0u;
  v46 = 0u;
  v47 = 0u;
  v13 = v11;
  v44 = [v13 countByEnumeratingWithState:&v46 objects:v56 count:16];
  if (v44)
  {
    obj = v13;
    v43 = *v47;
    while (2)
    {
      for (i = 0; i != v44; ++i)
      {
        if (*v47 != v43)
        {
          objc_enumerationMutation(obj);
        }

        v15 = *(*(&v46 + 1) + 8 * i);
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v16 = v15;
        }

        else
        {
          v16 = 0;
        }

        v17 = v16;
        v45 = [v17 path];
        v18 = [v45 endpoint];
        v19 = [v17 path];
        v20 = [v19 cluster];
        v21 = [v17 path];
        v22 = [v21 command];
        v23 = [(MTRPluginClient *)self xpcConnection];
        v24 = [MTRPluginThirdPartyExclusions commandDisallowedOverXPCWithEndpointID:v18 clusterID:v20 commandID:v22 isPrivatelyEntitled:[MTRPluginThirdPartyExclusions connectionIsPrivatelyEntitled:v23]];

        if (v24)
        {
          v29 = matterPluginLog_default;
          if (os_log_type_enabled(matterPluginLog_default, OS_LOG_TYPE_DEFAULT))
          {
            v30 = v29;
            v31 = [v17 path];
            v32 = [v31 endpoint];
            v33 = [v17 path];
            v34 = [v33 cluster];
            v35 = [v17 path];
            v36 = [v35 command];
            *buf = 138412802;
            v51 = v32;
            v52 = 2112;
            v53 = v34;
            v54 = 2112;
            v55 = v36;
            _os_log_impl(&dword_25830F000, v30, OS_LOG_TYPE_DEFAULT, "ERROR: Command disallowed over XPC: EP %@, Cluster %@, Command %@", buf, 0x20u);
          }

          v28 = v39;
          if (v39)
          {
            v37 = [MEMORY[0x277CCA9B8] errorWithDomain:@"kMTRPluginErrorDomain" code:-1009 userInfo:0];
            (*(v39 + 2))(v39, 0, v37);
          }

          v26 = v41;
          v13 = obj;
          v25 = obj;
          v27 = v40;
          goto LABEL_20;
        }
      }

      v13 = obj;
      v44 = [obj countByEnumeratingWithState:&v46 objects:v56 count:16];
      if (v44)
      {
        continue;
      }

      break;
    }
  }

  v25 = [(MTRPluginClient *)self _currentTarget];
  v27 = v40;
  v26 = v41;
  v28 = v39;
  [v25 deviceController:v41 nodeID:v40 invokeCommands:v13 completion:v39];
LABEL_20:

  v38 = *MEMORY[0x277D85DE8];
}

void __80__MTRPluginClient_deviceController_nodeID_downloadLogOfType_timeout_completion___block_invoke_cold_1(uint64_t a1, NSObject *a2)
{
  v5 = *MEMORY[0x277D85DE8];
  v3 = 138412290;
  v4 = a1;
  _os_log_error_impl(&dword_25830F000, a2, OS_LOG_TYPE_ERROR, "Could not find home app library path: %@", &v3, 0xCu);
  v2 = *MEMORY[0x277D85DE8];
}

void __80__MTRPluginClient_deviceController_nodeID_downloadLogOfType_timeout_completion___block_invoke_cold_2(uint64_t a1, uint64_t a2, os_log_t log)
{
  v8 = *MEMORY[0x277D85DE8];
  v4 = 138412546;
  v5 = a1;
  v6 = 2112;
  v7 = a2;
  _os_log_error_impl(&dword_25830F000, log, OS_LOG_TYPE_ERROR, "URL %@ has nil lastPathComponent: %@", &v4, 0x16u);
  v3 = *MEMORY[0x277D85DE8];
}

@end