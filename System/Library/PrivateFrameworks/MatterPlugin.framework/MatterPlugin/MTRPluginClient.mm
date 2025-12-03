@interface MTRPluginClient
- (BOOL)isInRemoteMode;
- (BOOL)respondsToSelector:(SEL)selector;
- (MTRPluginClient)initWithXPCConnection:(id)connection sessionID:(id)d queue:(id)queue;
- (NSString)description;
- (id)_currentTarget;
- (id)forwardingTargetForSelector:(SEL)selector;
- (id)xpcClientConnectionQueue;
- (void)dealloc;
- (void)deviceController:(id)controller deleteNodeID:(id)d;
- (void)deviceController:(id)controller getNodesWithStoredDataWithReply:(id)reply;
- (void)deviceController:(id)controller nodeID:(id)d downloadLogOfType:(int64_t)type timeout:(double)timeout completion:(id)completion;
- (void)deviceController:(id)controller nodeID:(id)d getDeviceCachePrimedWithReply:(id)reply;
- (void)deviceController:(id)controller nodeID:(id)d getEstimatedStartTimeWithReply:(id)reply;
- (void)deviceController:(id)controller nodeID:(id)d getEstimatedSubscriptionLatencyWithReply:(id)reply;
- (void)deviceController:(id)controller nodeID:(id)d getStateWithReply:(id)reply;
- (void)deviceController:(id)controller nodeID:(id)d invokeCommandWithEndpointID:(id)iD clusterID:(id)clusterID commandID:(id)commandID commandFields:(id)fields expectedValues:(id)values expectedValueInterval:(id)self0 timedInvokeTimeout:(id)self1 serverSideProcessingTimeout:(id)self2 completion:(id)self3;
- (void)deviceController:(id)controller nodeID:(id)d invokeCommands:(id)commands completion:(id)completion;
- (void)deviceController:(id)controller nodeID:(id)d readAttributePaths:(id)paths withReply:(id)reply;
- (void)deviceController:(id)controller nodeID:(id)d readAttributeWithEndpointID:(id)iD clusterID:(id)clusterID attributeID:(id)attributeID params:(id)params withReply:(id)reply;
- (void)deviceController:(id)controller nodeID:(id)d writeAttributeWithEndpointID:(id)iD clusterID:(id)clusterID attributeID:(id)attributeID value:(id)value expectedValueInterval:(id)interval timedWriteTimeout:(id)self0;
- (void)deviceController:(id)controller updateControllerConfiguration:(id)configuration;
- (void)invalidate;
- (void)runningModeChanged:(int64_t)changed;
@end

@implementation MTRPluginClient

- (MTRPluginClient)initWithXPCConnection:(id)connection sessionID:(id)d queue:(id)queue
{
  v29 = *MEMORY[0x277D85DE8];
  connectionCopy = connection;
  dCopy = d;
  queueCopy = queue;
  v22.receiver = self;
  v22.super_class = MTRPluginClient;
  v11 = [(MTRPluginClient *)&v22 init];
  v12 = v11;
  if (v11)
  {
    [(MTRPluginClient *)v11 setWorkQueue:queueCopy];
    [(MTRPluginClient *)v12 setSessionID:dCopy];
    dictionary = [MEMORY[0x277CBEB38] dictionary];
    [(MTRPluginClient *)v12 setContext:dictionary];

    [(MTRPluginClient *)v12 setXpcConnection:connectionCopy];
    [(MTRPluginClient *)v12 setClientType:MTRGetClientTypeForXPCConnection(connectionCopy)];
    dictionary2 = [MEMORY[0x277CBEB38] dictionary];
    [(MTRPluginClient *)v12 setDelegateProxies:dictionary2];

    v15 = [[MTRPluginClientXPCProxy alloc] initWithClient:v12];
    [(MTRPluginClient *)v12 setClientProxy:v15];

    v16 = [[MTRPluginLocalClient alloc] initWithPluginClient:v12];
    [(MTRPluginClient *)v12 setLocalClient:v16];

    v17 = [[MTRPluginRemoteClient alloc] initWithClient:v12 queue:queueCopy];
    [(MTRPluginClient *)v12 setRemoteClient:v17];

    v18 = matterPluginLog_default;
    if (os_log_type_enabled(matterPluginLog_default, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412802;
      v24 = v12;
      v25 = 2112;
      v26 = connectionCopy;
      v27 = 2112;
      v28 = queueCopy;
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
  defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
  [defaultCenter removeObserver:self];

  v4 = matterPluginLog_default;
  if (os_log_type_enabled(matterPluginLog_default, OS_LOG_TYPE_DEFAULT))
  {
    v5 = v4;
    v6 = objc_opt_class();
    v7 = NSStringFromClass(v6);
    *buf = 138412546;
    v11 = v7;
    v12 = 2048;
    selfCopy = self;
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
  xpcConnection = [(MTRPluginClient *)self xpcConnection];
  xpcConnection2 = [(MTRPluginClient *)self xpcConnection];
  processIdentifier = [xpcConnection2 processIdentifier];
  clientType = [(MTRPluginClient *)self clientType];
  if (clientType >= 0xA)
  {
    v11 = [MEMORY[0x277CCACA8] stringWithFormat:@"(unknown: %i)", clientType];
  }

  else
  {
    v11 = off_279894368[clientType];
  }

  localClient = [(MTRPluginClient *)self localClient];
  registeredNodeIDs = [localClient registeredNodeIDs];
  v14 = [v4 stringWithFormat:@"<%@: %p xpc %p pid: %d, clientType: %@ registeredNodeIDs: %@>", v6, self, xpcConnection, processIdentifier, v11, registeredNodeIDs];

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
    selfCopy = self;
    _os_log_impl(&dword_25830F000, v3, OS_LOG_TYPE_DEFAULT, "%@ invalidate", &v10, 0xCu);
  }

  localClient = [(MTRPluginClient *)self localClient];
  [localClient invalidate];

  [(MTRPluginClient *)self setLocalClient:0];
  remoteClient = [(MTRPluginClient *)self remoteClient];
  [remoteClient invalidate];

  [(MTRPluginClient *)self setRemoteClient:0];
  dictionary = [MEMORY[0x277CBEB38] dictionary];
  [(MTRPluginClient *)self setContext:dictionary];

  updateControllerConfigurationTimer = [(MTRPluginClient *)self updateControllerConfigurationTimer];

  if (updateControllerConfigurationTimer)
  {
    updateControllerConfigurationTimer2 = [(MTRPluginClient *)self updateControllerConfigurationTimer];
    dispatch_source_cancel(updateControllerConfigurationTimer2);

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
      selfCopy = self;
      _os_log_impl(&dword_25830F000, v3, OS_LOG_TYPE_DEFAULT, "%@ MatterPlugin is overridden to be in remote mode, forcing YES for isInRemoteMode", &v9, 0xCu);
    }

    result = 1;
  }

  else
  {
    v5 = +[MTRPluginDeviceControllerRegistry sharedInstance];
    homeUUID = [(MTRPluginClient *)self homeUUID];
    v7 = [v5 _runningModeForUUID:homeUUID];

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
  xpcConnection = [(MTRPluginClient *)self xpcConnection];
  _queue = [xpcConnection _queue];

  return _queue;
}

- (void)deviceController:(id)controller deleteNodeID:(id)d
{
  v18 = *MEMORY[0x277D85DE8];
  controllerCopy = controller;
  dCopy = d;
  controllerUUID = [(MTRPluginClient *)self controllerUUID];

  if (!controllerUUID)
  {
    [(MTRPluginClient *)self setControllerUUID:controllerCopy];
  }

  v9 = matterPluginLog_default;
  if (os_log_type_enabled(matterPluginLog_default, OS_LOG_TYPE_DEFAULT))
  {
    v12 = 138412802;
    selfCopy = self;
    v14 = 2112;
    v15 = controllerCopy;
    v16 = 2112;
    v17 = dCopy;
    _os_log_impl(&dword_25830F000, v9, OS_LOG_TYPE_DEFAULT, "%@ deviceController %@ deleteNodeID %@", &v12, 0x20u);
  }

  _localTarget = [(MTRPluginClient *)self _localTarget];
  [_localTarget deviceController:controllerCopy deleteNodeID:dCopy];

  v11 = *MEMORY[0x277D85DE8];
}

- (void)deviceController:(id)controller getNodesWithStoredDataWithReply:(id)reply
{
  v16 = *MEMORY[0x277D85DE8];
  controllerCopy = controller;
  replyCopy = reply;
  controllerUUID = [(MTRPluginClient *)self controllerUUID];

  if (!controllerUUID)
  {
    [(MTRPluginClient *)self setControllerUUID:controllerCopy];
  }

  v9 = matterPluginLog_default;
  if (os_log_type_enabled(matterPluginLog_default, OS_LOG_TYPE_DEFAULT))
  {
    v12 = 138412546;
    selfCopy = self;
    v14 = 2112;
    v15 = controllerCopy;
    _os_log_impl(&dword_25830F000, v9, OS_LOG_TYPE_DEFAULT, "%@ deviceController %@ getNodesWithStoredDataWithReply", &v12, 0x16u);
  }

  _localTarget = [(MTRPluginClient *)self _localTarget];
  [_localTarget deviceController:controllerCopy getNodesWithStoredDataWithReply:replyCopy];

  v11 = *MEMORY[0x277D85DE8];
}

- (void)deviceController:(id)controller updateControllerConfiguration:(id)configuration
{
  v30 = *MEMORY[0x277D85DE8];
  controllerCopy = controller;
  configurationCopy = configuration;
  controllerUUID = [(MTRPluginClient *)self controllerUUID];

  if (!controllerUUID)
  {
    [(MTRPluginClient *)self setControllerUUID:controllerCopy];
  }

  [(MTRPluginClient *)self setControllerConfiguration:configurationCopy];
  v9 = matterPluginLog_default;
  if (os_log_type_enabled(matterPluginLog_default, OS_LOG_TYPE_DEFAULT))
  {
    v10 = v9;
    controllerConfiguration = [(MTRPluginClient *)self controllerConfiguration];
    *buf = 138412802;
    selfCopy = self;
    v26 = 2112;
    v27 = controllerCopy;
    v28 = 2112;
    v29 = controllerConfiguration;
    _os_log_impl(&dword_25830F000, v10, OS_LOG_TYPE_DEFAULT, "%@ deviceController %@ updateControllerConfiguration %@", buf, 0x20u);
  }

  _localTarget = [(MTRPluginClient *)self _localTarget];
  controllerConfiguration2 = [(MTRPluginClient *)self controllerConfiguration];
  [_localTarget deviceController:controllerCopy updateControllerConfiguration:controllerConfiguration2];

  if ([(MTRPluginClient *)self isInRemoteMode])
  {
    updateControllerConfigurationTimer = [(MTRPluginClient *)self updateControllerConfigurationTimer];
    xpcClientConnectionQueue = [(MTRPluginClient *)self xpcClientConnectionQueue];
    v18 = MEMORY[0x277D85DD0];
    v19 = 3221225472;
    v20 = __66__MTRPluginClient_deviceController_updateControllerConfiguration___block_invoke;
    v21 = &unk_279893AC8;
    selfCopy2 = self;
    v23 = controllerCopy;
    v16 = MTRBufferedExecutionBlock(updateControllerConfigurationTimer, xpcClientConnectionQueue, &v18, 0.5);
    [(MTRPluginClient *)self setUpdateControllerConfigurationTimer:v16, v18, v19, v20, v21, selfCopy2];
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

- (void)deviceController:(id)controller nodeID:(id)d readAttributeWithEndpointID:(id)iD clusterID:(id)clusterID attributeID:(id)attributeID params:(id)params withReply:(id)reply
{
  v34 = *MEMORY[0x277D85DE8];
  controllerCopy = controller;
  dCopy = d;
  iDCopy = iD;
  clusterIDCopy = clusterID;
  attributeIDCopy = attributeID;
  paramsCopy = params;
  replyCopy = reply;
  controllerUUID = [(MTRPluginClient *)self controllerUUID];

  if (!controllerUUID)
  {
    [(MTRPluginClient *)self setControllerUUID:controllerCopy];
  }

  xpcConnection = [(MTRPluginClient *)self xpcConnection];
  v24 = [MTRPluginThirdPartyExclusions attributeReadDisallowedOverXPCWithEndpointID:iDCopy clusterID:clusterIDCopy attribute:attributeIDCopy isPrivatelyEntitled:[MTRPluginThirdPartyExclusions connectionIsPrivatelyEntitled:xpcConnection]];

  if (v24)
  {
    v25 = matterPluginLog_default;
    if (os_log_type_enabled(matterPluginLog_default, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412802;
      v29 = iDCopy;
      v30 = 2112;
      v31 = clusterIDCopy;
      v32 = 2112;
      v33 = attributeIDCopy;
      _os_log_impl(&dword_25830F000, v25, OS_LOG_TYPE_DEFAULT, "ERROR: Attribute read disallowed over XPC: EP %@, Cluster %@, Attribute %@", buf, 0x20u);
    }

    replyCopy[2](replyCopy, 0);
  }

  else
  {
    _localTarget = [(MTRPluginClient *)self _localTarget];
    [_localTarget deviceController:controllerCopy nodeID:dCopy readAttributeWithEndpointID:iDCopy clusterID:clusterIDCopy attributeID:attributeIDCopy params:paramsCopy withReply:replyCopy];
  }

  v27 = *MEMORY[0x277D85DE8];
}

- (void)deviceController:(id)controller nodeID:(id)d readAttributePaths:(id)paths withReply:(id)reply
{
  v50 = *MEMORY[0x277D85DE8];
  controllerCopy = controller;
  dCopy = d;
  pathsCopy = paths;
  replyCopy = reply;
  selfCopy = self;
  controllerUUID = [(MTRPluginClient *)self controllerUUID];

  if (!controllerUUID)
  {
    [(MTRPluginClient *)self setControllerUUID:controllerCopy];
  }

  v36 = controllerCopy;
  v41 = 0u;
  v42 = 0u;
  v39 = 0u;
  v40 = 0u;
  obj = pathsCopy;
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
        endpoint = [v17 endpoint];
        cluster = [v17 cluster];
        attribute = [v17 attribute];
        xpcConnection = [(MTRPluginClient *)selfCopy xpcConnection];
        v22 = [MTRPluginThirdPartyExclusions attributeReadDisallowedOverXPCWithEndpointID:endpoint clusterID:cluster attribute:attribute isPrivatelyEntitled:[MTRPluginThirdPartyExclusions connectionIsPrivatelyEntitled:xpcConnection]];

        if (v22)
        {
          v28 = matterPluginLog_default;
          if (os_log_type_enabled(matterPluginLog_default, OS_LOG_TYPE_DEFAULT))
          {
            v29 = v28;
            endpoint2 = [v17 endpoint];
            cluster2 = [v17 cluster];
            attribute2 = [v17 attribute];
            *buf = 138412802;
            v44 = endpoint2;
            v45 = 2112;
            v46 = cluster2;
            v47 = 2112;
            v48 = attribute2;
            _os_log_impl(&dword_25830F000, v29, OS_LOG_TYPE_DEFAULT, "ERROR: Attribute read disallowed over XPC: EP %@, Cluster %@, Attribute %@", buf, 0x20u);
          }

          v27 = replyCopy;
          (*(replyCopy + 2))(replyCopy, 0);
          v25 = v36;
          v23 = obj;
          _localTarget = obj;
          v26 = dCopy;
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

  _localTarget = [(MTRPluginClient *)selfCopy _localTarget];
  v26 = dCopy;
  v25 = v36;
  v27 = replyCopy;
  [_localTarget deviceController:v36 nodeID:dCopy readAttributePaths:obj withReply:replyCopy];
LABEL_15:

  v33 = *MEMORY[0x277D85DE8];
}

- (void)deviceController:(id)controller nodeID:(id)d getStateWithReply:(id)reply
{
  controllerCopy = controller;
  replyCopy = reply;
  dCopy = d;
  controllerUUID = [(MTRPluginClient *)self controllerUUID];

  if (!controllerUUID)
  {
    [(MTRPluginClient *)self setControllerUUID:controllerCopy];
  }

  _currentTarget = [(MTRPluginClient *)self _currentTarget];
  [_currentTarget deviceController:controllerCopy nodeID:dCopy getStateWithReply:replyCopy];
}

- (void)deviceController:(id)controller nodeID:(id)d getDeviceCachePrimedWithReply:(id)reply
{
  controllerCopy = controller;
  replyCopy = reply;
  dCopy = d;
  controllerUUID = [(MTRPluginClient *)self controllerUUID];

  if (!controllerUUID)
  {
    [(MTRPluginClient *)self setControllerUUID:controllerCopy];
  }

  _currentTarget = [(MTRPluginClient *)self _currentTarget];
  [_currentTarget deviceController:controllerCopy nodeID:dCopy getDeviceCachePrimedWithReply:replyCopy];
}

- (void)deviceController:(id)controller nodeID:(id)d getEstimatedStartTimeWithReply:(id)reply
{
  controllerCopy = controller;
  replyCopy = reply;
  dCopy = d;
  controllerUUID = [(MTRPluginClient *)self controllerUUID];

  if (!controllerUUID)
  {
    [(MTRPluginClient *)self setControllerUUID:controllerCopy];
  }

  _currentTarget = [(MTRPluginClient *)self _currentTarget];
  [_currentTarget deviceController:controllerCopy nodeID:dCopy getEstimatedStartTimeWithReply:replyCopy];
}

- (void)deviceController:(id)controller nodeID:(id)d getEstimatedSubscriptionLatencyWithReply:(id)reply
{
  controllerCopy = controller;
  replyCopy = reply;
  dCopy = d;
  controllerUUID = [(MTRPluginClient *)self controllerUUID];

  if (!controllerUUID)
  {
    [(MTRPluginClient *)self setControllerUUID:controllerCopy];
  }

  _currentTarget = [(MTRPluginClient *)self _currentTarget];
  [_currentTarget deviceController:controllerCopy nodeID:dCopy getEstimatedSubscriptionLatencyWithReply:replyCopy];
}

- (void)deviceController:(id)controller nodeID:(id)d downloadLogOfType:(int64_t)type timeout:(double)timeout completion:(id)completion
{
  controllerCopy = controller;
  completionCopy = completion;
  dCopy = d;
  controllerUUID = [(MTRPluginClient *)self controllerUUID];

  if (!controllerUUID)
  {
    [(MTRPluginClient *)self setControllerUUID:controllerCopy];
  }

  _currentTarget = [(MTRPluginClient *)self _currentTarget];
  v18[0] = MEMORY[0x277D85DD0];
  v18[1] = 3221225472;
  v18[2] = __80__MTRPluginClient_deviceController_nodeID_downloadLogOfType_timeout_completion___block_invoke;
  v18[3] = &unk_279893CF8;
  v18[4] = self;
  v19 = completionCopy;
  v17 = completionCopy;
  [_currentTarget deviceController:controllerCopy nodeID:dCopy downloadLogOfType:type timeout:v18 completion:timeout];
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

- (void)runningModeChanged:(int64_t)changed
{
  xpcClientConnectionQueue = [(MTRPluginClient *)self xpcClientConnectionQueue];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __38__MTRPluginClient_runningModeChanged___block_invoke;
  v6[3] = &unk_279893DC8;
  v6[4] = self;
  v6[5] = changed;
  dispatch_async(xpcClientConnectionQueue, v6);
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

- (BOOL)respondsToSelector:(SEL)selector
{
  if (MTRPluginCheckProtocolContainsSelector(&unk_28697F080, selector))
  {
    return 1;
  }

  v6.receiver = self;
  v6.super_class = MTRPluginClient;
  return [(MTRPluginClient *)&v6 respondsToSelector:selector];
}

- (id)forwardingTargetForSelector:(SEL)selector
{
  v20 = *MEMORY[0x277D85DE8];
  v13.receiver = self;
  v13.super_class = MTRPluginClient;
  if ([(MTRPluginClient *)&v13 respondsToSelector:?])
  {
    selfCopy = self;
  }

  else if (MTRPluginCheckProtocolContainsSelector(&unk_28697F080, selector))
  {
    v6 = matterPluginLog_default;
    if (os_log_type_enabled(matterPluginLog_default, OS_LOG_TYPE_DEFAULT))
    {
      v7 = v6;
      v8 = NSStringFromSelector(selector);
      localClient = [(MTRPluginClient *)self localClient];
      *buf = 138412802;
      selfCopy2 = self;
      v16 = 2112;
      v17 = v8;
      v18 = 2112;
      v19 = localClient;
      _os_log_impl(&dword_25830F000, v7, OS_LOG_TYPE_DEFAULT, "%@ forwardingTargetForSelector %@ to: %@", buf, 0x20u);
    }

    selfCopy = [(MTRPluginClient *)self _currentTarget];
  }

  else
  {
    v12.receiver = self;
    v12.super_class = MTRPluginClient;
    selfCopy = [(MTRPluginClient *)&v12 forwardingTargetForSelector:selector];
  }

  v10 = *MEMORY[0x277D85DE8];

  return selfCopy;
}

- (void)deviceController:(id)controller nodeID:(id)d writeAttributeWithEndpointID:(id)iD clusterID:(id)clusterID attributeID:(id)attributeID value:(id)value expectedValueInterval:(id)interval timedWriteTimeout:(id)self0
{
  v37 = *MEMORY[0x277D85DE8];
  controllerCopy = controller;
  dCopy = d;
  iDCopy = iD;
  clusterIDCopy = clusterID;
  attributeIDCopy = attributeID;
  valueCopy = value;
  intervalCopy = interval;
  timeoutCopy = timeout;
  controllerUUID = [(MTRPluginClient *)self controllerUUID];

  if (!controllerUUID)
  {
    [(MTRPluginClient *)self setControllerUUID:controllerCopy];
  }

  xpcConnection = [(MTRPluginClient *)self xpcConnection];
  v25 = [MTRPluginThirdPartyExclusions attributeWriteDisallowedOverXPCWithEndpointID:iDCopy clusterID:clusterIDCopy attribute:attributeIDCopy isPrivatelyEntitled:[MTRPluginThirdPartyExclusions connectionIsPrivatelyEntitled:xpcConnection]];

  if (v25)
  {
    v26 = matterPluginLog_default;
    v27 = controllerCopy;
    if (os_log_type_enabled(matterPluginLog_default, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412802;
      v32 = iDCopy;
      v33 = 2112;
      v34 = clusterIDCopy;
      v35 = 2112;
      v36 = attributeIDCopy;
      _os_log_impl(&dword_25830F000, v26, OS_LOG_TYPE_DEFAULT, "ERROR: Attribute write disallowed over XPC: EP %@, Cluster %@, Attribute %@", buf, 0x20u);
    }
  }

  else
  {
    _currentTarget = [(MTRPluginClient *)self _currentTarget];
    v27 = controllerCopy;
    [_currentTarget deviceController:controllerCopy nodeID:dCopy writeAttributeWithEndpointID:iDCopy clusterID:clusterIDCopy attributeID:attributeIDCopy value:valueCopy expectedValueInterval:intervalCopy timedWriteTimeout:timeoutCopy];
  }

  v29 = *MEMORY[0x277D85DE8];
}

- (void)deviceController:(id)controller nodeID:(id)d invokeCommandWithEndpointID:(id)iD clusterID:(id)clusterID commandID:(id)commandID commandFields:(id)fields expectedValues:(id)values expectedValueInterval:(id)self0 timedInvokeTimeout:(id)self1 serverSideProcessingTimeout:(id)self2 completion:(id)self3
{
  v44 = *MEMORY[0x277D85DE8];
  controllerCopy = controller;
  dCopy = d;
  iDCopy = iD;
  clusterIDCopy = clusterID;
  commandIDCopy = commandID;
  fieldsCopy = fields;
  valuesCopy = values;
  intervalCopy = interval;
  timeoutCopy = timeout;
  processingTimeoutCopy = processingTimeout;
  completionCopy = completion;
  controllerUUID = [(MTRPluginClient *)self controllerUUID];

  if (!controllerUUID)
  {
    [(MTRPluginClient *)self setControllerUUID:controllerCopy];
  }

  xpcConnection = [(MTRPluginClient *)self xpcConnection];
  v28 = [MTRPluginThirdPartyExclusions commandDisallowedOverXPCWithEndpointID:iDCopy clusterID:clusterIDCopy commandID:commandIDCopy isPrivatelyEntitled:[MTRPluginThirdPartyExclusions connectionIsPrivatelyEntitled:xpcConnection]];

  if (!v28)
  {
    _currentTarget = [(MTRPluginClient *)self _currentTarget];
    v31 = controllerCopy;
    v30 = dCopy;
    [_currentTarget deviceController:controllerCopy nodeID:dCopy invokeCommandWithEndpointID:iDCopy clusterID:clusterIDCopy commandID:commandIDCopy commandFields:fieldsCopy expectedValues:valuesCopy expectedValueInterval:intervalCopy timedInvokeTimeout:timeoutCopy serverSideProcessingTimeout:processingTimeoutCopy completion:completionCopy];
    goto LABEL_9;
  }

  v29 = matterPluginLog_default;
  v30 = dCopy;
  if (os_log_type_enabled(matterPluginLog_default, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412802;
    v39 = iDCopy;
    v40 = 2112;
    v41 = clusterIDCopy;
    v42 = 2112;
    v43 = commandIDCopy;
    _os_log_impl(&dword_25830F000, v29, OS_LOG_TYPE_DEFAULT, "ERROR: Command disallowed over XPC: EP %@, Cluster %@, Command %@", buf, 0x20u);
  }

  v31 = controllerCopy;
  if (completionCopy)
  {
    _currentTarget = [MEMORY[0x277CCA9B8] errorWithDomain:@"kMTRPluginErrorDomain" code:-1009 userInfo:0];
    completionCopy[2](completionCopy, 0, _currentTarget);
LABEL_9:
  }

  v33 = *MEMORY[0x277D85DE8];
}

- (void)deviceController:(id)controller nodeID:(id)d invokeCommands:(id)commands completion:(id)completion
{
  v57 = *MEMORY[0x277D85DE8];
  controllerCopy = controller;
  dCopy = d;
  commandsCopy = commands;
  completionCopy = completion;
  controllerUUID = [(MTRPluginClient *)self controllerUUID];

  if (!controllerUUID)
  {
    [(MTRPluginClient *)self setControllerUUID:controllerCopy];
  }

  v41 = controllerCopy;
  v48 = 0u;
  v49 = 0u;
  v46 = 0u;
  v47 = 0u;
  v13 = commandsCopy;
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
        path = [v17 path];
        endpoint = [path endpoint];
        path2 = [v17 path];
        cluster = [path2 cluster];
        path3 = [v17 path];
        command = [path3 command];
        xpcConnection = [(MTRPluginClient *)self xpcConnection];
        v24 = [MTRPluginThirdPartyExclusions commandDisallowedOverXPCWithEndpointID:endpoint clusterID:cluster commandID:command isPrivatelyEntitled:[MTRPluginThirdPartyExclusions connectionIsPrivatelyEntitled:xpcConnection]];

        if (v24)
        {
          v29 = matterPluginLog_default;
          if (os_log_type_enabled(matterPluginLog_default, OS_LOG_TYPE_DEFAULT))
          {
            v30 = v29;
            path4 = [v17 path];
            endpoint2 = [path4 endpoint];
            path5 = [v17 path];
            cluster2 = [path5 cluster];
            path6 = [v17 path];
            command2 = [path6 command];
            *buf = 138412802;
            v51 = endpoint2;
            v52 = 2112;
            v53 = cluster2;
            v54 = 2112;
            v55 = command2;
            _os_log_impl(&dword_25830F000, v30, OS_LOG_TYPE_DEFAULT, "ERROR: Command disallowed over XPC: EP %@, Cluster %@, Command %@", buf, 0x20u);
          }

          v28 = completionCopy;
          if (completionCopy)
          {
            v37 = [MEMORY[0x277CCA9B8] errorWithDomain:@"kMTRPluginErrorDomain" code:-1009 userInfo:0];
            (*(completionCopy + 2))(completionCopy, 0, v37);
          }

          v26 = v41;
          v13 = obj;
          _currentTarget = obj;
          v27 = dCopy;
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

  _currentTarget = [(MTRPluginClient *)self _currentTarget];
  v27 = dCopy;
  v26 = v41;
  v28 = completionCopy;
  [_currentTarget deviceController:v41 nodeID:dCopy invokeCommands:v13 completion:completionCopy];
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