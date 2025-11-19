@interface MTRPluginClientConnection
+ (id)_interfaceForServerProtocol;
+ (id)clientConnectionQueue;
- (BOOL)_deliverMessagePayloadToPrimaryResident:(id)a3 timeout:(double)a4 responseHandler:(id)a5;
- (BOOL)_isRunning;
- (BOOL)_setupConnection;
- (NSString)description;
- (void)_assignHomeUUIDIfUnassigned:(id)a3;
- (void)deviceController:(id)a3 nodeID:(id)a4 downloadLogOfType:(int64_t)a5 timeout:(double)a6 completion:(id)a7;
- (void)deviceController:(id)a3 nodeID:(id)a4 getDeviceCachePrimedWithReply:(id)a5;
- (void)deviceController:(id)a3 nodeID:(id)a4 getEstimatedStartTimeWithReply:(id)a5;
- (void)deviceController:(id)a3 nodeID:(id)a4 getEstimatedSubscriptionLatencyWithReply:(id)a5;
- (void)deviceController:(id)a3 nodeID:(id)a4 getStateWithReply:(id)a5;
- (void)deviceController:(id)a3 nodeID:(id)a4 invokeCommandWithEndpointID:(id)a5 clusterID:(id)a6 commandID:(id)a7 commandFields:(id)a8 expectedValues:(id)a9 expectedValueInterval:(id)a10 timedInvokeTimeout:(id)a11 serverSideProcessingTimeout:(id)a12 completion:(id)a13;
- (void)deviceController:(id)a3 nodeID:(id)a4 invokeCommands:(id)a5 completion:(id)a6;
- (void)deviceController:(id)a3 nodeID:(id)a4 openCommissioningWindowWithSetupPasscode:(id)a5 discriminator:(id)a6 duration:(id)a7 completion:(id)a8;
- (void)deviceController:(id)a3 nodeID:(id)a4 readAttributePaths:(id)a5 withReply:(id)a6;
- (void)deviceController:(id)a3 nodeID:(id)a4 readAttributeWithEndpointID:(id)a5 clusterID:(id)a6 attributeID:(id)a7 params:(id)a8 withReply:(id)a9;
- (void)deviceController:(id)a3 nodeID:(id)a4 writeAttributeWithEndpointID:(id)a5 clusterID:(id)a6 attributeID:(id)a7 value:(id)a8 expectedValueInterval:(id)a9 timedWriteTimeout:(id)a10;
- (void)deviceController:(id)a3 updateControllerConfiguration:(id)a4;
- (void)interrupted;
- (void)invalidate;
- (void)invalidated;
- (void)resume;
- (void)updateControllerConfigurationForRemotePeer;
@end

@implementation MTRPluginClientConnection

+ (id)clientConnectionQueue
{
  if (clientConnectionQueue_predicateNAME != -1)
  {
    +[MTRPluginClientConnection clientConnectionQueue];
  }

  v3 = clientConnectionQueue_sSingleConnectionQueue;

  return v3;
}

void __50__MTRPluginClientConnection_clientConnectionQueue__block_invoke()
{
  v2 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
  v0 = dispatch_queue_create("MTRPluginClientQueue", v2);
  v1 = clientConnectionQueue_sSingleConnectionQueue;
  clientConnectionQueue_sSingleConnectionQueue = v0;
}

+ (id)_interfaceForServerProtocol
{
  v19 = *MEMORY[0x277D85DE8];
  v2 = [MEMORY[0x277CCAE90] interfaceWithProtocol:&unk_28697F080];
  v3 = MEMORY[0x277CBEB98];
  v8 = objc_opt_class();
  v9 = objc_opt_class();
  v10 = objc_opt_class();
  v11 = objc_opt_class();
  v12 = objc_opt_class();
  v13 = objc_opt_class();
  v14 = objc_opt_class();
  v15 = objc_opt_class();
  v16 = objc_opt_class();
  v17 = objc_opt_class();
  v18 = objc_opt_class();
  v4 = [MEMORY[0x277CBEA60] arrayWithObjects:&v8 count:11];
  v5 = [v3 setWithArray:{v4, v8, v9, v10, v11, v12, v13, v14, v15, v16, v17}];

  [v2 setClasses:v5 forSelector:sel_deviceController_nodeID_writeAttributeWithEndpointID_clusterID_attributeID_value_expectedValueInterval_timedWriteTimeout_ argumentIndex:5 ofReply:0];
  [v2 setClasses:v5 forSelector:sel_deviceController_nodeID_invokeCommandWithEndpointID_clusterID_commandID_commandFields_expectedValues_expectedValueInterval_timedInvokeTimeout_serverSideProcessingTimeout_completion_ argumentIndex:6 ofReply:0];
  [v2 setClasses:v5 forSelector:sel_deviceController_nodeID_readAttributePaths_withReply_ argumentIndex:2 ofReply:0];
  [v2 setClasses:v5 forSelector:sel_deviceController_nodeID_readAttributePaths_withReply_ argumentIndex:0 ofReply:1];
  [v2 setClasses:v5 forSelector:sel_deviceController_nodeID_invokeCommands_completion_ argumentIndex:2 ofReply:0];
  [v2 setClasses:v5 forSelector:sel_deviceController_nodeID_invokeCommands_completion_ argumentIndex:0 ofReply:1];

  v6 = *MEMORY[0x277D85DE8];

  return v2;
}

- (BOOL)_setupConnection
{
  v24 = *MEMORY[0x277D85DE8];
  v3 = +[MTRPluginClientManager sharedInstance];
  v4 = [(MTRPluginClientConnection *)self connection];
  v5 = [(MTRPluginClientConnection *)self sessionID];
  v6 = [(MTRPluginClientConnection *)self queue];
  v7 = [v3 addClientForXPCConnection:v4 sessionID:v5 queue:v6];
  [(MTRPluginClientConnection *)self setPluginClient:v7];

  v8 = +[MTRPluginClientConnection _interfaceForClientProtocol];
  v9 = [(MTRPluginClientConnection *)self connection];
  [v9 setRemoteObjectInterface:v8];

  v10 = +[MTRPluginClientConnection _interfaceForServerProtocol];
  v11 = [(MTRPluginClientConnection *)self connection];
  [v11 setExportedInterface:v10];

  v12 = [(MTRPluginClientConnection *)self connection];
  [v12 setExportedObject:self];

  v13 = matterPluginLog_default;
  if (os_log_type_enabled(matterPluginLog_default, OS_LOG_TYPE_DEFAULT))
  {
    v14 = v13;
    v15 = [(MTRPluginClientConnection *)self pluginClient];
    v20 = 138412546;
    v21 = self;
    v22 = 2112;
    v23 = v15;
    _os_log_impl(&dword_25830F000, v14, OS_LOG_TYPE_DEFAULT, "Setting up MTRPluginClientConnection: %@ pluginClient : %@", &v20, 0x16u);
  }

  v16 = [(MTRPluginClientConnection *)self pluginClient];
  v17 = v16 != 0;

  v18 = *MEMORY[0x277D85DE8];
  return v17;
}

- (BOOL)_deliverMessagePayloadToPrimaryResident:(id)a3 timeout:(double)a4 responseHandler:(id)a5
{
  v34 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a5;
  v10 = matterPluginLog_default;
  if (os_log_type_enabled(matterPluginLog_default, OS_LOG_TYPE_DEFAULT))
  {
    v11 = v10;
    v12 = [(MTRPluginClientConnection *)self delegate];
    *buf = 138412546;
    v31 = self;
    v32 = 2112;
    v33 = v12;
    _os_log_impl(&dword_25830F000, v11, OS_LOG_TYPE_DEFAULT, "%@ <= Sending message to delegate %@ to deliver to home hub", buf, 0x16u);
  }

  v13 = [(MTRPluginClientConnection *)self delegate];
  v14 = objc_opt_respondsToSelector();

  if (v14)
  {
    v15 = [(MTRPluginClientConnection *)self delegateQueue];
    v27[0] = MEMORY[0x277D85DD0];
    v27[1] = 3221225472;
    v27[2] = __93__MTRPluginClientConnection__deliverMessagePayloadToPrimaryResident_timeout_responseHandler___block_invoke;
    v27[3] = &unk_279894158;
    v27[4] = self;
    v16 = &v28;
    v28 = v8;
    v17 = v29;
    v29[0] = v9;
    *&v29[1] = a4;
    v18 = v27;
  }

  else
  {
    v19 = [(MTRPluginClientConnection *)self delegate];
    v20 = objc_opt_respondsToSelector();

    if ((v20 & 1) == 0)
    {
      v21 = 0;
      goto LABEL_9;
    }

    v15 = [(MTRPluginClientConnection *)self delegateQueue];
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __93__MTRPluginClientConnection__deliverMessagePayloadToPrimaryResident_timeout_responseHandler___block_invoke_141;
    block[3] = &unk_279893D70;
    block[4] = self;
    v16 = &v25;
    v25 = v8;
    v17 = &v26;
    v26 = v9;
    v18 = block;
  }

  dispatch_async(v15, v18);

  v21 = 1;
LABEL_9:

  v22 = *MEMORY[0x277D85DE8];
  return v21;
}

void __93__MTRPluginClientConnection__deliverMessagePayloadToPrimaryResident_timeout_responseHandler___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) delegate];
  v3 = *(a1 + 32);
  v4 = *(a1 + 40);
  v5 = *(a1 + 48);
  v6 = *(a1 + 56);
  v11 = 0;
  v7 = [v2 connection:v3 sendMessagePayloadToPrimaryResident:v4 responseHandler:v5 timeout:&v11 error:v6];
  v8 = v11;

  if (v7)
  {
    v9 = v8 == 0;
  }

  else
  {
    v9 = 0;
  }

  if (!v9)
  {
    v10 = matterPluginLog_default;
    if (os_log_type_enabled(matterPluginLog_default, OS_LOG_TYPE_ERROR))
    {
      __93__MTRPluginClientConnection__deliverMessagePayloadToPrimaryResident_timeout_responseHandler___block_invoke_cold_1(v8, v10);
    }
  }
}

void __93__MTRPluginClientConnection__deliverMessagePayloadToPrimaryResident_timeout_responseHandler___block_invoke_141(uint64_t a1)
{
  v2 = [*(a1 + 32) delegate];
  v3 = *(a1 + 32);
  v4 = *(a1 + 40);
  v5 = *(a1 + 48);
  v10 = 0;
  v6 = [v2 connection:v3 sendMessagePayloadToPrimaryResident:v4 responseHandler:v5 error:&v10];
  v7 = v10;

  if (v6)
  {
    v8 = v7 == 0;
  }

  else
  {
    v8 = 0;
  }

  if (!v8)
  {
    v9 = matterPluginLog_default;
    if (os_log_type_enabled(matterPluginLog_default, OS_LOG_TYPE_ERROR))
    {
      __93__MTRPluginClientConnection__deliverMessagePayloadToPrimaryResident_timeout_responseHandler___block_invoke_cold_1(v7, v9);
    }
  }
}

- (void)_assignHomeUUIDIfUnassigned:(id)a3
{
  v21 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(MTRPluginClientConnection *)self homeUUID];

  if (!v5)
  {
    [(MTRPluginClientConnection *)self setHomeUUID:v4];
    v6 = matterPluginLog_default;
    if (os_log_type_enabled(matterPluginLog_default, OS_LOG_TYPE_DEFAULT))
    {
      v7 = v6;
      v8 = [(MTRPluginClientConnection *)self homeUUID];
      v15 = 138412802;
      v16 = v8;
      v17 = 2112;
      v18 = self;
      v19 = 2112;
      v20 = v4;
      _os_log_impl(&dword_25830F000, v7, OS_LOG_TYPE_DEFAULT, " => Assigning home UUID: %@ to connection: %@   controllerID: %@", &v15, 0x20u);
    }

    v9 = [(MTRPluginClientConnection *)self homeUUID];
    v10 = [(MTRPluginClientConnection *)self pluginClient];
    [v10 setHomeUUID:v9];

    v11 = +[MTRPluginServer sharedInstance];
    v12 = [v11 _unsafeQueryRunningModeFromDelegateForHomeUUID:v4];

    v13 = +[MTRPluginDeviceControllerRegistry sharedInstance];
    [v13 _updateRunningMode:v12 forceUpdateControllerConfiguration:1 forHomeUUID:v4];
  }

  v14 = *MEMORY[0x277D85DE8];
}

- (BOOL)_isRunning
{
  v2 = [(MTRPluginClientConnection *)self connection];
  v3 = v2 != 0;

  return v3;
}

- (void)resume
{
  v8 = *MEMORY[0x277D85DE8];
  v3 = matterPluginLog_default;
  if (os_log_type_enabled(matterPluginLog_default, OS_LOG_TYPE_DEFAULT))
  {
    v6 = 138412290;
    v7 = self;
    _os_log_impl(&dword_25830F000, v3, OS_LOG_TYPE_DEFAULT, "Resuming MTRPluginClientConnection: %@", &v6, 0xCu);
  }

  v4 = [(MTRPluginClientConnection *)self connection];
  [v4 resume];

  v5 = *MEMORY[0x277D85DE8];
}

- (void)invalidate
{
  v8 = *MEMORY[0x277D85DE8];
  v3 = matterPluginLog_default;
  if (os_log_type_enabled(matterPluginLog_default, OS_LOG_TYPE_DEFAULT))
  {
    v6 = 138412290;
    v7 = self;
    _os_log_impl(&dword_25830F000, v3, OS_LOG_TYPE_DEFAULT, "Invalidating MTRPluginClientConnection: %@", &v6, 0xCu);
  }

  v4 = [(MTRPluginClientConnection *)self connection];
  [v4 invalidate];

  v5 = *MEMORY[0x277D85DE8];
}

- (void)invalidated
{
  v9 = *MEMORY[0x277D85DE8];
  v3 = matterPluginLog_default;
  if (os_log_type_enabled(matterPluginLog_default, OS_LOG_TYPE_DEFAULT))
  {
    v7 = 138412290;
    v8 = self;
    _os_log_impl(&dword_25830F000, v3, OS_LOG_TYPE_DEFAULT, " => Invalidated MTRPluginClientConnection: %@", &v7, 0xCu);
  }

  v4 = +[MTRPluginClientManager sharedInstance];
  v5 = [(MTRPluginClientConnection *)self connection];
  [v4 removeClientForXPCConnection:v5];

  [(MTRPluginClientConnection *)self setConnection:0];
  v6 = *MEMORY[0x277D85DE8];
}

- (void)interrupted
{
  v9 = *MEMORY[0x277D85DE8];
  v3 = matterPluginLog_default;
  if (os_log_type_enabled(matterPluginLog_default, OS_LOG_TYPE_DEFAULT))
  {
    v7 = 138412290;
    v8 = self;
    _os_log_impl(&dword_25830F000, v3, OS_LOG_TYPE_DEFAULT, " => Interrupted MTRPluginClientConnection: %@", &v7, 0xCu);
  }

  v4 = +[MTRPluginClientManager sharedInstance];
  v5 = [(MTRPluginClientConnection *)self connection];
  [v4 removeClientForXPCConnection:v5];

  [(MTRPluginClientConnection *)self setConnection:0];
  v6 = *MEMORY[0x277D85DE8];
}

- (void)updateControllerConfigurationForRemotePeer
{
  v3 = objc_autoreleasePoolPush();
  v4 = [(MTRPluginClientConnection *)self pluginClient];
  v5 = [(MTRPluginClientConnection *)self homeUUID];
  v6 = [(MTRPluginClientConnection *)self pluginClient];
  v7 = [v6 controllerConfiguration];
  [v4 deviceController:v5 updateControllerConfiguration:v7];

  objc_autoreleasePoolPop(v3);
}

- (NSString)description
{
  v3 = objc_autoreleasePoolPush();
  v4 = MEMORY[0x277CCACA8];
  v5 = objc_opt_class();
  v6 = NSStringFromClass(v5);
  v7 = [(MTRPluginClientConnection *)self connection];
  v8 = [(MTRPluginClientConnection *)self pid];
  v9 = [(MTRPluginClientConnection *)self sessionID];
  v10 = [(MTRPluginClientConnection *)self homeUUID];
  v11 = [(MTRPluginClientConnection *)self _isRunning];
  v12 = @"NO";
  if (v11)
  {
    v12 = @"YES";
  }

  v13 = [v4 stringWithFormat:@"<%@: %p xpc %p pid: %d sessionID: %@ Home: %@ Running: %@>", v6, self, v7, v8, v9, v10, v12];

  objc_autoreleasePoolPop(v3);

  return v13;
}

- (void)deviceController:(id)a3 nodeID:(id)a4 getStateWithReply:(id)a5
{
  v27 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  [(MTRPluginClientConnection *)self _assignHomeUUIDIfUnassigned:v8];
  v23 = 0;
  v24 = &v23;
  v25 = 0x2020000000;
  v26 = 0;
  v11 = [(MTRPluginClientConnection *)self delegateQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __71__MTRPluginClientConnection_deviceController_nodeID_getStateWithReply___block_invoke;
  block[3] = &unk_279893DF0;
  v22 = &v23;
  block[4] = self;
  v12 = v9;
  v21 = v12;
  dispatch_sync(v11, block);

  if (v24[3])
  {
    v13 = objc_autoreleasePoolPush();
    v14 = [(MTRPluginClientConnection *)self pluginClient];
    [v14 deviceController:v8 nodeID:v12 getStateWithReply:v10];

    objc_autoreleasePoolPop(v13);
  }

  else
  {
    v15 = matterPluginLog_default;
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      [(MTRPluginClientConnection *)self pluginClient];
      objc_claimAutoreleasedReturnValue();
      [MTRPluginClientConnection deviceController:nodeID:getStateWithReply:];
    }

    v19 = v10;
    v16 = v19;
    v18 = v16;
    if (v16)
    {
      (*(v16 + 2))(v16, 0);
    }
  }

  _Block_object_dispose(&v23, 8);
  v17 = *MEMORY[0x277D85DE8];
}

void __71__MTRPluginClientConnection_deviceController_nodeID_getStateWithReply___block_invoke(uint64_t a1)
{
  v4 = [*(a1 + 32) delegate];
  v2 = *(a1 + 32);
  v3 = [v2 homeUUID];
  *(*(*(a1 + 48) + 8) + 24) = [v4 connection:v2 allowsOperationWithHome:v3 operationType:3 nodeId:*(a1 + 40) commandId:0 endpointId:0 clusterId:0 attributeId:0];
}

uint64_t __71__MTRPluginClientConnection_deviceController_nodeID_getStateWithReply___block_invoke_153(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))(result, 0);
  }

  return result;
}

uint64_t __71__MTRPluginClientConnection_deviceController_nodeID_getStateWithReply___block_invoke_2(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))(result, 0);
  }

  return result;
}

- (void)deviceController:(id)a3 nodeID:(id)a4 getDeviceCachePrimedWithReply:(id)a5
{
  v27 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  [(MTRPluginClientConnection *)self _assignHomeUUIDIfUnassigned:v8];
  v23 = 0;
  v24 = &v23;
  v25 = 0x2020000000;
  v26 = 0;
  v11 = [(MTRPluginClientConnection *)self delegateQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __83__MTRPluginClientConnection_deviceController_nodeID_getDeviceCachePrimedWithReply___block_invoke;
  block[3] = &unk_279893DF0;
  v22 = &v23;
  block[4] = self;
  v12 = v9;
  v21 = v12;
  dispatch_sync(v11, block);

  if (v24[3])
  {
    v13 = objc_autoreleasePoolPush();
    v14 = [(MTRPluginClientConnection *)self pluginClient];
    [v14 deviceController:v8 nodeID:v12 getDeviceCachePrimedWithReply:v10];

    objc_autoreleasePoolPop(v13);
  }

  else
  {
    v15 = matterPluginLog_default;
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      [(MTRPluginClientConnection *)self pluginClient];
      objc_claimAutoreleasedReturnValue();
      [MTRPluginClientConnection deviceController:nodeID:getStateWithReply:];
    }

    v19 = v10;
    v16 = v19;
    v18 = v16;
    if (v16)
    {
      (*(v16 + 2))(v16, 0);
    }
  }

  _Block_object_dispose(&v23, 8);
  v17 = *MEMORY[0x277D85DE8];
}

void __83__MTRPluginClientConnection_deviceController_nodeID_getDeviceCachePrimedWithReply___block_invoke(uint64_t a1)
{
  v4 = [*(a1 + 32) delegate];
  v2 = *(a1 + 32);
  v3 = [v2 homeUUID];
  *(*(*(a1 + 48) + 8) + 24) = [v4 connection:v2 allowsOperationWithHome:v3 operationType:3 nodeId:*(a1 + 40) commandId:0 endpointId:0 clusterId:0 attributeId:0];
}

uint64_t __83__MTRPluginClientConnection_deviceController_nodeID_getDeviceCachePrimedWithReply___block_invoke_154(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))(result, 0);
  }

  return result;
}

uint64_t __83__MTRPluginClientConnection_deviceController_nodeID_getDeviceCachePrimedWithReply___block_invoke_2(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))(result, 0);
  }

  return result;
}

- (void)deviceController:(id)a3 nodeID:(id)a4 getEstimatedStartTimeWithReply:(id)a5
{
  v27 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  [(MTRPluginClientConnection *)self _assignHomeUUIDIfUnassigned:v8];
  v23 = 0;
  v24 = &v23;
  v25 = 0x2020000000;
  v26 = 0;
  v11 = [(MTRPluginClientConnection *)self delegateQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __84__MTRPluginClientConnection_deviceController_nodeID_getEstimatedStartTimeWithReply___block_invoke;
  block[3] = &unk_279893DF0;
  v22 = &v23;
  block[4] = self;
  v12 = v9;
  v21 = v12;
  dispatch_sync(v11, block);

  if (v24[3])
  {
    v13 = objc_autoreleasePoolPush();
    v14 = [(MTRPluginClientConnection *)self pluginClient];
    [v14 deviceController:v8 nodeID:v12 getEstimatedStartTimeWithReply:v10];

    objc_autoreleasePoolPop(v13);
  }

  else
  {
    v15 = matterPluginLog_default;
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      [(MTRPluginClientConnection *)self pluginClient];
      objc_claimAutoreleasedReturnValue();
      [MTRPluginClientConnection deviceController:nodeID:getStateWithReply:];
    }

    v19 = v10;
    v16 = v19;
    v18 = v16;
    if (v16)
    {
      (*(v16 + 2))(v16, 0);
    }
  }

  _Block_object_dispose(&v23, 8);
  v17 = *MEMORY[0x277D85DE8];
}

void __84__MTRPluginClientConnection_deviceController_nodeID_getEstimatedStartTimeWithReply___block_invoke(uint64_t a1)
{
  v4 = [*(a1 + 32) delegate];
  v2 = *(a1 + 32);
  v3 = [v2 homeUUID];
  *(*(*(a1 + 48) + 8) + 24) = [v4 connection:v2 allowsOperationWithHome:v3 operationType:3 nodeId:*(a1 + 40) commandId:0 endpointId:0 clusterId:0 attributeId:0];
}

uint64_t __84__MTRPluginClientConnection_deviceController_nodeID_getEstimatedStartTimeWithReply___block_invoke_155(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))(result, 0);
  }

  return result;
}

uint64_t __84__MTRPluginClientConnection_deviceController_nodeID_getEstimatedStartTimeWithReply___block_invoke_2(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))(result, 0);
  }

  return result;
}

- (void)deviceController:(id)a3 nodeID:(id)a4 getEstimatedSubscriptionLatencyWithReply:(id)a5
{
  v27 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  [(MTRPluginClientConnection *)self _assignHomeUUIDIfUnassigned:v8];
  v23 = 0;
  v24 = &v23;
  v25 = 0x2020000000;
  v26 = 0;
  v11 = [(MTRPluginClientConnection *)self delegateQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __94__MTRPluginClientConnection_deviceController_nodeID_getEstimatedSubscriptionLatencyWithReply___block_invoke;
  block[3] = &unk_279893DF0;
  v22 = &v23;
  block[4] = self;
  v12 = v9;
  v21 = v12;
  dispatch_sync(v11, block);

  if (v24[3])
  {
    v13 = objc_autoreleasePoolPush();
    v14 = [(MTRPluginClientConnection *)self pluginClient];
    [v14 deviceController:v8 nodeID:v12 getEstimatedSubscriptionLatencyWithReply:v10];

    objc_autoreleasePoolPop(v13);
  }

  else
  {
    v15 = matterPluginLog_default;
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      [(MTRPluginClientConnection *)self pluginClient];
      objc_claimAutoreleasedReturnValue();
      [MTRPluginClientConnection deviceController:nodeID:getStateWithReply:];
    }

    v19 = v10;
    v16 = v19;
    v18 = v16;
    if (v16)
    {
      (*(v16 + 2))(v16, 0);
    }
  }

  _Block_object_dispose(&v23, 8);
  v17 = *MEMORY[0x277D85DE8];
}

void __94__MTRPluginClientConnection_deviceController_nodeID_getEstimatedSubscriptionLatencyWithReply___block_invoke(uint64_t a1)
{
  v4 = [*(a1 + 32) delegate];
  v2 = *(a1 + 32);
  v3 = [v2 homeUUID];
  *(*(*(a1 + 48) + 8) + 24) = [v4 connection:v2 allowsOperationWithHome:v3 operationType:3 nodeId:*(a1 + 40) commandId:0 endpointId:0 clusterId:0 attributeId:0];
}

uint64_t __94__MTRPluginClientConnection_deviceController_nodeID_getEstimatedSubscriptionLatencyWithReply___block_invoke_156(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))(result, 0);
  }

  return result;
}

uint64_t __94__MTRPluginClientConnection_deviceController_nodeID_getEstimatedSubscriptionLatencyWithReply___block_invoke_2(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))(result, 0);
  }

  return result;
}

- (void)deviceController:(id)a3 nodeID:(id)a4 readAttributeWithEndpointID:(id)a5 clusterID:(id)a6 attributeID:(id)a7 params:(id)a8 withReply:(id)a9
{
  v44 = *MEMORY[0x277D85DE8];
  v15 = a3;
  v16 = a4;
  v17 = a5;
  v18 = a6;
  v19 = a7;
  v20 = a8;
  v21 = a9;
  [(MTRPluginClientConnection *)self _assignHomeUUIDIfUnassigned:v15];
  v40 = 0;
  v41 = &v40;
  v42 = 0x2020000000;
  v43 = 0;
  v22 = [(MTRPluginClientConnection *)self delegateQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __120__MTRPluginClientConnection_deviceController_nodeID_readAttributeWithEndpointID_clusterID_attributeID_params_withReply___block_invoke;
  block[3] = &unk_2798941A8;
  v39 = &v40;
  block[4] = self;
  v23 = v16;
  v35 = v23;
  v24 = v17;
  v36 = v24;
  v25 = v18;
  v37 = v25;
  v26 = v19;
  v38 = v26;
  dispatch_sync(v22, block);

  if (v41[3])
  {
    v27 = objc_autoreleasePoolPush();
    v28 = [(MTRPluginClientConnection *)self pluginClient];
    [v28 deviceController:v15 nodeID:v23 readAttributeWithEndpointID:v24 clusterID:v25 attributeID:v26 params:v20 withReply:v21];

    objc_autoreleasePoolPop(v27);
  }

  else
  {
    v29 = matterPluginLog_default;
    if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
    {
      [(MTRPluginClientConnection *)self pluginClient];
      objc_claimAutoreleasedReturnValue();
      [MTRPluginClientConnection deviceController:nodeID:readAttributeWithEndpointID:clusterID:attributeID:params:withReply:];
    }

    v33 = v21;
    v30 = v33;
    v32 = v30;
    if (v30)
    {
      (*(v30 + 2))(v30, 0);
    }
  }

  _Block_object_dispose(&v40, 8);
  v31 = *MEMORY[0x277D85DE8];
}

void __120__MTRPluginClientConnection_deviceController_nodeID_readAttributeWithEndpointID_clusterID_attributeID_params_withReply___block_invoke(uint64_t a1)
{
  v4 = [*(a1 + 32) delegate];
  v2 = *(a1 + 32);
  v3 = [v2 homeUUID];
  *(*(*(a1 + 72) + 8) + 24) = [v4 connection:v2 allowsOperationWithHome:v3 operationType:4 nodeId:*(a1 + 40) commandId:0 endpointId:*(a1 + 48) clusterId:*(a1 + 56) attributeId:*(a1 + 64)];
}

uint64_t __120__MTRPluginClientConnection_deviceController_nodeID_readAttributeWithEndpointID_clusterID_attributeID_params_withReply___block_invoke_157(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))(result, 0);
  }

  return result;
}

uint64_t __120__MTRPluginClientConnection_deviceController_nodeID_readAttributeWithEndpointID_clusterID_attributeID_params_withReply___block_invoke_2(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))(result, 0);
  }

  return result;
}

- (void)deviceController:(id)a3 nodeID:(id)a4 readAttributePaths:(id)a5 withReply:(id)a6
{
  v34 = *MEMORY[0x277D85DE8];
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  [(MTRPluginClientConnection *)self _assignHomeUUIDIfUnassigned:v10];
  v30 = 0;
  v31 = &v30;
  v32 = 0x2020000000;
  v33 = 0;
  v14 = [(MTRPluginClientConnection *)self delegateQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __82__MTRPluginClientConnection_deviceController_nodeID_readAttributePaths_withReply___block_invoke;
  block[3] = &unk_279893DF0;
  v29 = &v30;
  block[4] = self;
  v15 = v11;
  v28 = v15;
  dispatch_sync(v14, block);

  if (v31[3])
  {
    v16 = objc_autoreleasePoolPush();
    v17 = [(MTRPluginClientConnection *)self pluginClient];
    [v17 deviceController:v10 nodeID:v15 readAttributePaths:v12 withReply:v13];

    objc_autoreleasePoolPop(v16);
  }

  else
  {
    v18 = matterPluginLog_default;
    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      [(MTRPluginClientConnection *)self pluginClient];
      objc_claimAutoreleasedReturnValue();
      [MTRPluginClientConnection deviceController:nodeID:readAttributeWithEndpointID:clusterID:attributeID:params:withReply:];
    }

    v22 = MEMORY[0x277D85DD0];
    v23 = 3221225472;
    v24 = __82__MTRPluginClientConnection_deviceController_nodeID_readAttributePaths_withReply___block_invoke_158;
    v25 = &unk_279894180;
    v26 = v13;
    v20[0] = MEMORY[0x277D85DD0];
    v20[1] = 3221225472;
    v20[2] = __82__MTRPluginClientConnection_deviceController_nodeID_readAttributePaths_withReply___block_invoke_2;
    v20[3] = &unk_279894180;
    v21 = v26;
    __82__MTRPluginClientConnection_deviceController_nodeID_readAttributePaths_withReply___block_invoke_2(v20);
  }

  _Block_object_dispose(&v30, 8);
  v19 = *MEMORY[0x277D85DE8];
}

void __82__MTRPluginClientConnection_deviceController_nodeID_readAttributePaths_withReply___block_invoke(uint64_t a1)
{
  v4 = [*(a1 + 32) delegate];
  v2 = *(a1 + 32);
  v3 = [v2 homeUUID];
  *(*(*(a1 + 48) + 8) + 24) = [v4 connection:v2 allowsOperationWithHome:v3 operationType:4 nodeId:*(a1 + 40) commandId:0 endpointId:0 clusterId:0 attributeId:0];
}

void __82__MTRPluginClientConnection_deviceController_nodeID_readAttributePaths_withReply___block_invoke_158(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (v1)
  {
    v2 = [MEMORY[0x277CBEA60] array];
    (*(v1 + 16))(v1, v2);
  }
}

void __82__MTRPluginClientConnection_deviceController_nodeID_readAttributePaths_withReply___block_invoke_2(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (v1)
  {
    v2 = [MEMORY[0x277CBEA60] array];
    (*(v1 + 16))(v1, v2);
  }
}

- (void)deviceController:(id)a3 nodeID:(id)a4 writeAttributeWithEndpointID:(id)a5 clusterID:(id)a6 attributeID:(id)a7 value:(id)a8 expectedValueInterval:(id)a9 timedWriteTimeout:(id)a10
{
  v43 = *MEMORY[0x277D85DE8];
  v16 = a3;
  v17 = a4;
  v18 = a5;
  v19 = a6;
  v20 = a7;
  v31 = a8;
  v32 = a9;
  v21 = a10;
  [(MTRPluginClientConnection *)self _assignHomeUUIDIfUnassigned:v16];
  v39 = 0;
  v40 = &v39;
  v41 = 0x2020000000;
  v42 = 0;
  v22 = [(MTRPluginClientConnection *)self delegateQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __150__MTRPluginClientConnection_deviceController_nodeID_writeAttributeWithEndpointID_clusterID_attributeID_value_expectedValueInterval_timedWriteTimeout___block_invoke;
  block[3] = &unk_2798941A8;
  v38 = &v39;
  block[4] = self;
  v23 = v17;
  v34 = v23;
  v24 = v18;
  v35 = v24;
  v25 = v19;
  v36 = v25;
  v26 = v20;
  v37 = v26;
  dispatch_sync(v22, block);

  if (v40[3])
  {
    v27 = objc_autoreleasePoolPush();
    v28 = [(MTRPluginClientConnection *)self pluginClient];
    [v28 deviceController:v16 nodeID:v23 writeAttributeWithEndpointID:v24 clusterID:v25 attributeID:v26 value:v31 expectedValueInterval:v32 timedWriteTimeout:v21];

    objc_autoreleasePoolPop(v27);
  }

  else
  {
    v29 = matterPluginLog_default;
    if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
    {
      [(MTRPluginClientConnection *)self pluginClient];
      objc_claimAutoreleasedReturnValue();
      [MTRPluginClientConnection deviceController:nodeID:writeAttributeWithEndpointID:clusterID:attributeID:value:expectedValueInterval:timedWriteTimeout:];
    }
  }

  _Block_object_dispose(&v39, 8);
  v30 = *MEMORY[0x277D85DE8];
}

void __150__MTRPluginClientConnection_deviceController_nodeID_writeAttributeWithEndpointID_clusterID_attributeID_value_expectedValueInterval_timedWriteTimeout___block_invoke(uint64_t a1)
{
  v4 = [*(a1 + 32) delegate];
  v2 = *(a1 + 32);
  v3 = [v2 homeUUID];
  *(*(*(a1 + 72) + 8) + 24) = [v4 connection:v2 allowsOperationWithHome:v3 operationType:5 nodeId:*(a1 + 40) commandId:0 endpointId:*(a1 + 48) clusterId:*(a1 + 56) attributeId:*(a1 + 64)];
}

- (void)deviceController:(id)a3 nodeID:(id)a4 invokeCommandWithEndpointID:(id)a5 clusterID:(id)a6 commandID:(id)a7 commandFields:(id)a8 expectedValues:(id)a9 expectedValueInterval:(id)a10 timedInvokeTimeout:(id)a11 serverSideProcessingTimeout:(id)a12 completion:(id)a13
{
  v52 = *MEMORY[0x277D85DE8];
  v19 = a3;
  v20 = a4;
  v21 = a5;
  v22 = a6;
  v23 = a7;
  v24 = a8;
  v37 = a9;
  v38 = a10;
  v39 = a11;
  v40 = a12;
  v41 = a13;
  v36 = v19;
  v25 = v19;
  v26 = v24;
  [(MTRPluginClientConnection *)self _assignHomeUUIDIfUnassigned:v25];
  v48 = 0;
  v49 = &v48;
  v50 = 0x2020000000;
  v51 = 0;
  v27 = [(MTRPluginClientConnection *)self delegateQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __210__MTRPluginClientConnection_deviceController_nodeID_invokeCommandWithEndpointID_clusterID_commandID_commandFields_expectedValues_expectedValueInterval_timedInvokeTimeout_serverSideProcessingTimeout_completion___block_invoke;
  block[3] = &unk_2798941A8;
  v47 = &v48;
  block[4] = self;
  v28 = v20;
  v43 = v28;
  v29 = v23;
  v44 = v29;
  v30 = v21;
  v45 = v30;
  v31 = v22;
  v46 = v31;
  dispatch_sync(v27, block);

  if (v49[3])
  {
    v32 = objc_autoreleasePoolPush();
    v33 = [(MTRPluginClientConnection *)self pluginClient];
    [v33 deviceController:v36 nodeID:v28 invokeCommandWithEndpointID:v30 clusterID:v31 commandID:v29 commandFields:v26 expectedValues:v37 expectedValueInterval:v38 timedInvokeTimeout:v39 serverSideProcessingTimeout:v40 completion:v41];

    objc_autoreleasePoolPop(v32);
  }

  else
  {
    v34 = matterPluginLog_default;
    if (os_log_type_enabled(v34, OS_LOG_TYPE_ERROR))
    {
      [(MTRPluginClientConnection *)self pluginClient];
      objc_claimAutoreleasedReturnValue();
      [MTRPluginClientConnection deviceController:nodeID:invokeCommandWithEndpointID:clusterID:commandID:commandFields:expectedValues:expectedValueInterval:timedInvokeTimeout:serverSideProcessingTimeout:completion:];
    }
  }

  _Block_object_dispose(&v48, 8);
  v35 = *MEMORY[0x277D85DE8];
}

void __210__MTRPluginClientConnection_deviceController_nodeID_invokeCommandWithEndpointID_clusterID_commandID_commandFields_expectedValues_expectedValueInterval_timedInvokeTimeout_serverSideProcessingTimeout_completion___block_invoke(uint64_t a1)
{
  v4 = [*(a1 + 32) delegate];
  v2 = *(a1 + 32);
  v3 = [v2 homeUUID];
  *(*(*(a1 + 72) + 8) + 24) = [v4 connection:v2 allowsOperationWithHome:v3 operationType:6 nodeId:*(a1 + 40) commandId:*(a1 + 48) endpointId:*(a1 + 56) clusterId:*(a1 + 64) attributeId:0];
}

- (void)deviceController:(id)a3 nodeID:(id)a4 openCommissioningWindowWithSetupPasscode:(id)a5 discriminator:(id)a6 duration:(id)a7 completion:(id)a8
{
  v40 = *MEMORY[0x277D85DE8];
  v14 = a3;
  v15 = a4;
  v16 = a5;
  v17 = a6;
  v18 = a7;
  v19 = a8;
  [(MTRPluginClientConnection *)self _assignHomeUUIDIfUnassigned:v14];
  v36 = 0;
  v37 = &v36;
  v38 = 0x2020000000;
  v39 = 0;
  v20 = [(MTRPluginClientConnection *)self delegateQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __128__MTRPluginClientConnection_deviceController_nodeID_openCommissioningWindowWithSetupPasscode_discriminator_duration_completion___block_invoke;
  block[3] = &unk_279893DF0;
  v35 = &v36;
  block[4] = self;
  v21 = v15;
  v34 = v21;
  dispatch_sync(v20, block);

  if (v37[3])
  {
    v22 = objc_autoreleasePoolPush();
    v23 = [(MTRPluginClientConnection *)self pluginClient];
    [v23 deviceController:v14 nodeID:v21 openCommissioningWindowWithSetupPasscode:v16 discriminator:v17 duration:v18 completion:v19];

    objc_autoreleasePoolPop(v22);
  }

  else
  {
    v24 = matterPluginLog_default;
    if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
    {
      [(MTRPluginClientConnection *)self pluginClient];
      objc_claimAutoreleasedReturnValue();
      [MTRPluginClientConnection deviceController:nodeID:openCommissioningWindowWithSetupPasscode:discriminator:duration:completion:];
    }

    v28 = MEMORY[0x277D85DD0];
    v29 = 3221225472;
    v30 = __128__MTRPluginClientConnection_deviceController_nodeID_openCommissioningWindowWithSetupPasscode_discriminator_duration_completion___block_invoke_169;
    v31 = &unk_279894180;
    v32 = v19;
    v26[0] = MEMORY[0x277D85DD0];
    v26[1] = 3221225472;
    v26[2] = __128__MTRPluginClientConnection_deviceController_nodeID_openCommissioningWindowWithSetupPasscode_discriminator_duration_completion___block_invoke_2;
    v26[3] = &unk_279894180;
    v27 = v32;
    __128__MTRPluginClientConnection_deviceController_nodeID_openCommissioningWindowWithSetupPasscode_discriminator_duration_completion___block_invoke_2(v26);
  }

  _Block_object_dispose(&v36, 8);
  v25 = *MEMORY[0x277D85DE8];
}

void __128__MTRPluginClientConnection_deviceController_nodeID_openCommissioningWindowWithSetupPasscode_discriminator_duration_completion___block_invoke(uint64_t a1)
{
  v4 = [*(a1 + 32) delegate];
  v2 = *(a1 + 32);
  v3 = [v2 homeUUID];
  *(*(*(a1 + 48) + 8) + 24) = [v4 connection:v2 allowsOperationWithHome:v3 operationType:7 nodeId:*(a1 + 40) commandId:0 endpointId:0 clusterId:0 attributeId:0];
}

void __128__MTRPluginClientConnection_deviceController_nodeID_openCommissioningWindowWithSetupPasscode_discriminator_duration_completion___block_invoke_169(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (v1)
  {
    v2 = [MEMORY[0x277CCA9B8] errorWithDomain:@"kMTRPluginErrorDomain" code:-1009 userInfo:0];
    (*(v1 + 16))(v1, 0, v2);
  }
}

void __128__MTRPluginClientConnection_deviceController_nodeID_openCommissioningWindowWithSetupPasscode_discriminator_duration_completion___block_invoke_2(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (v1)
  {
    v2 = [MEMORY[0x277CCA9B8] errorWithDomain:@"kMTRPluginErrorDomain" code:-1009 userInfo:0];
    (*(v1 + 16))(v1, 0, v2);
  }
}

- (void)deviceController:(id)a3 nodeID:(id)a4 downloadLogOfType:(int64_t)a5 timeout:(double)a6 completion:(id)a7
{
  v35 = *MEMORY[0x277D85DE8];
  v12 = a3;
  v13 = a4;
  v14 = a7;
  [(MTRPluginClientConnection *)self _assignHomeUUIDIfUnassigned:v12];
  v31 = 0;
  v32 = &v31;
  v33 = 0x2020000000;
  v34 = 0;
  v15 = [(MTRPluginClientConnection *)self delegateQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __90__MTRPluginClientConnection_deviceController_nodeID_downloadLogOfType_timeout_completion___block_invoke;
  block[3] = &unk_279893DF0;
  v30 = &v31;
  block[4] = self;
  v16 = v13;
  v29 = v16;
  dispatch_sync(v15, block);

  if (v32[3])
  {
    v17 = objc_autoreleasePoolPush();
    v18 = [(MTRPluginClientConnection *)self pluginClient];
    [v18 deviceController:v12 nodeID:v16 downloadLogOfType:a5 timeout:v14 completion:a6];

    objc_autoreleasePoolPop(v17);
  }

  else
  {
    v19 = matterPluginLog_default;
    if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
    {
      [(MTRPluginClientConnection *)self pluginClient];
      objc_claimAutoreleasedReturnValue();
      [MTRPluginClientConnection deviceController:nodeID:downloadLogOfType:timeout:completion:];
    }

    v23 = MEMORY[0x277D85DD0];
    v24 = 3221225472;
    v25 = __90__MTRPluginClientConnection_deviceController_nodeID_downloadLogOfType_timeout_completion___block_invoke_170;
    v26 = &unk_279894180;
    v27 = v14;
    v21[0] = MEMORY[0x277D85DD0];
    v21[1] = 3221225472;
    v21[2] = __90__MTRPluginClientConnection_deviceController_nodeID_downloadLogOfType_timeout_completion___block_invoke_2;
    v21[3] = &unk_279894180;
    v22 = v27;
    __90__MTRPluginClientConnection_deviceController_nodeID_downloadLogOfType_timeout_completion___block_invoke_2(v21);
  }

  _Block_object_dispose(&v31, 8);
  v20 = *MEMORY[0x277D85DE8];
}

void __90__MTRPluginClientConnection_deviceController_nodeID_downloadLogOfType_timeout_completion___block_invoke(uint64_t a1)
{
  v4 = [*(a1 + 32) delegate];
  v2 = *(a1 + 32);
  v3 = [v2 homeUUID];
  *(*(*(a1 + 48) + 8) + 24) = [v4 connection:v2 allowsOperationWithHome:v3 operationType:9 nodeId:*(a1 + 40) commandId:0 endpointId:0 clusterId:0 attributeId:0];
}

void __90__MTRPluginClientConnection_deviceController_nodeID_downloadLogOfType_timeout_completion___block_invoke_170(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (v1)
  {
    v2 = [MEMORY[0x277CCA9B8] errorWithDomain:@"kMTRPluginErrorDomain" code:-1009 userInfo:0];
    (*(v1 + 16))(v1, 0, v2);
  }
}

void __90__MTRPluginClientConnection_deviceController_nodeID_downloadLogOfType_timeout_completion___block_invoke_2(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (v1)
  {
    v2 = [MEMORY[0x277CCA9B8] errorWithDomain:@"kMTRPluginErrorDomain" code:-1009 userInfo:0];
    (*(v1 + 16))(v1, 0, v2);
  }
}

- (void)deviceController:(id)a3 nodeID:(id)a4 invokeCommands:(id)a5 completion:(id)a6
{
  v55 = *MEMORY[0x277D85DE8];
  v10 = a3;
  v36 = a4;
  v11 = a5;
  v33 = a6;
  [(MTRPluginClientConnection *)self _assignHomeUUIDIfUnassigned:v10];
  v51 = 0u;
  v52 = 0u;
  v49 = 0u;
  v50 = 0u;
  obj = v11;
  v34 = [obj countByEnumeratingWithState:&v49 objects:v54 count:16];
  if (v34)
  {
    v12 = *v50;
    v31 = *v50;
    do
    {
      v13 = 0;
      do
      {
        if (*v50 != v12)
        {
          v14 = v13;
          objc_enumerationMutation(obj);
          v13 = v14;
        }

        v32 = v13;
        v15 = *(*(&v49 + 1) + 8 * v13);
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
        v45 = 0u;
        v46 = 0u;
        v47 = 0u;
        v48 = 0u;
        v18 = v17;
        v19 = [v18 countByEnumeratingWithState:&v45 objects:v53 count:16];
        if (v19)
        {
          v20 = *v46;
          while (2)
          {
            for (i = 0; i != v19; ++i)
            {
              if (*v46 != v20)
              {
                objc_enumerationMutation(v18);
              }

              v22 = *(*(&v45 + 1) + 8 * i);
              objc_opt_class();
              if (objc_opt_isKindOfClass())
              {
                v23 = v22;
              }

              else
              {
                v23 = 0;
              }

              v24 = v23;
              if (v24)
              {
                v41 = 0;
                v42 = &v41;
                v43 = 0x2020000000;
                v44 = 0;
                v25 = [(MTRPluginClientConnection *)self delegateQueue];
                block[0] = MEMORY[0x277D85DD0];
                block[1] = 3221225472;
                block[2] = __79__MTRPluginClientConnection_deviceController_nodeID_invokeCommands_completion___block_invoke;
                block[3] = &unk_2798941D0;
                v40 = &v41;
                block[4] = self;
                v38 = v36;
                v26 = v24;
                v39 = v26;
                dispatch_sync(v25, block);

                if ((v42[3] & 1) == 0)
                {
                  v29 = matterPluginLog_default;
                  if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
                  {
                    [(MTRPluginClientConnection *)self pluginClient];
                    objc_claimAutoreleasedReturnValue();
                    [MTRPluginClientConnection deviceController:nodeID:invokeCommandWithEndpointID:clusterID:commandID:commandFields:expectedValues:expectedValueInterval:timedInvokeTimeout:serverSideProcessingTimeout:completion:];
                  }

                  _Block_object_dispose(&v41, 8);
                  goto LABEL_28;
                }

                _Block_object_dispose(&v41, 8);
              }
            }

            v19 = [v18 countByEnumeratingWithState:&v45 objects:v53 count:16];
            if (v19)
            {
              continue;
            }

            break;
          }
        }

        v12 = v31;
        v13 = v32 + 1;
      }

      while (v32 + 1 != v34);
      v34 = [obj countByEnumeratingWithState:&v49 objects:v54 count:16];
      v12 = v31;
    }

    while (v34);
  }

  v27 = objc_autoreleasePoolPush();
  v28 = [(MTRPluginClientConnection *)self pluginClient];
  [v28 deviceController:v10 nodeID:v36 invokeCommands:obj completion:v33];

  objc_autoreleasePoolPop(v27);
LABEL_28:

  v30 = *MEMORY[0x277D85DE8];
}

void __79__MTRPluginClientConnection_deviceController_nodeID_invokeCommands_completion___block_invoke(uint64_t a1)
{
  v11 = [*(a1 + 32) delegate];
  v2 = *(a1 + 32);
  v3 = [v2 homeUUID];
  v4 = *(a1 + 40);
  v5 = [*(a1 + 48) path];
  v6 = [v5 command];
  v7 = [*(a1 + 48) path];
  v8 = [v7 endpoint];
  v9 = [*(a1 + 48) path];
  v10 = [v9 cluster];
  *(*(*(a1 + 56) + 8) + 24) = [v11 connection:v2 allowsOperationWithHome:v3 operationType:6 nodeId:v4 commandId:v6 endpointId:v8 clusterId:v10 attributeId:0];
}

- (void)deviceController:(id)a3 updateControllerConfiguration:(id)a4
{
  v18 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  [(MTRPluginClientConnection *)self _assignHomeUUIDIfUnassigned:v6];
  v14 = 0;
  v15 = &v14;
  v16 = 0x2020000000;
  v17 = 0;
  v8 = [(MTRPluginClientConnection *)self delegateQueue];
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __76__MTRPluginClientConnection_deviceController_updateControllerConfiguration___block_invoke;
  v13[3] = &unk_2798941F8;
  v13[4] = self;
  v13[5] = &v14;
  dispatch_sync(v8, v13);

  if (v15[3])
  {
    v9 = objc_autoreleasePoolPush();
    v10 = [(MTRPluginClientConnection *)self pluginClient];
    [v10 deviceController:v6 updateControllerConfiguration:v7];

    objc_autoreleasePoolPop(v9);
  }

  else
  {
    v11 = matterPluginLog_default;
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      [(MTRPluginClientConnection *)self pluginClient];
      objc_claimAutoreleasedReturnValue();
      [MTRPluginClientConnection deviceController:updateControllerConfiguration:];
    }
  }

  _Block_object_dispose(&v14, 8);

  v12 = *MEMORY[0x277D85DE8];
}

void __76__MTRPluginClientConnection_deviceController_updateControllerConfiguration___block_invoke(uint64_t a1)
{
  v4 = [*(a1 + 32) delegate];
  v2 = *(a1 + 32);
  v3 = [v2 homeUUID];
  *(*(*(a1 + 40) + 8) + 24) = [v4 connection:v2 allowsOperationWithHome:v3 operationType:1 nodeId:0 commandId:0 endpointId:0 clusterId:0 attributeId:0];
}

void __93__MTRPluginClientConnection__deliverMessagePayloadToPrimaryResident_timeout_responseHandler___block_invoke_cold_1(uint64_t a1, NSObject *a2)
{
  v5 = *MEMORY[0x277D85DE8];
  v3 = 138412290;
  v4 = a1;
  _os_log_error_impl(&dword_25830F000, a2, OS_LOG_TYPE_ERROR, " *** Failed to sendMessage to primary home hub with error: %@", &v3, 0xCu);
  v2 = *MEMORY[0x277D85DE8];
}

- (void)deviceController:nodeID:getStateWithReply:.cold.1()
{
  OUTLINED_FUNCTION_2_1();
  v4 = OUTLINED_FUNCTION_0_0(v1, 5.7781e-34, v2, v3);
  OUTLINED_FUNCTION_1_1(v4, v5, v6);
  OUTLINED_FUNCTION_3_1(&dword_25830F000, "%@ delegate denied access for operation: %ld for %@", v7, v8);
}

- (void)deviceController:nodeID:readAttributeWithEndpointID:clusterID:attributeID:params:withReply:.cold.1()
{
  OUTLINED_FUNCTION_2_1();
  v4 = OUTLINED_FUNCTION_0_0(v1, 5.7781e-34, v2, v3);
  OUTLINED_FUNCTION_1_1(v4, v5, v6);
  OUTLINED_FUNCTION_3_1(&dword_25830F000, "%@ delegate denied access for operation: %ld for %@", v7, v8);
}

- (void)deviceController:nodeID:writeAttributeWithEndpointID:clusterID:attributeID:value:expectedValueInterval:timedWriteTimeout:.cold.1()
{
  OUTLINED_FUNCTION_2_1();
  v4 = OUTLINED_FUNCTION_0_0(v1, 5.7781e-34, v2, v3);
  OUTLINED_FUNCTION_1_1(v4, v5, v6);
  OUTLINED_FUNCTION_3_1(&dword_25830F000, "%@ delegate denied access for operation: %ld for %@", v7, v8);
}

- (void)deviceController:nodeID:invokeCommandWithEndpointID:clusterID:commandID:commandFields:expectedValues:expectedValueInterval:timedInvokeTimeout:serverSideProcessingTimeout:completion:.cold.1()
{
  OUTLINED_FUNCTION_2_1();
  v4 = OUTLINED_FUNCTION_0_0(v1, 5.7781e-34, v2, v3);
  OUTLINED_FUNCTION_1_1(v4, v5, v6);
  OUTLINED_FUNCTION_3_1(&dword_25830F000, "%@ delegate denied access for operation: %ld for %@", v7, v8);
}

- (void)deviceController:nodeID:openCommissioningWindowWithSetupPasscode:discriminator:duration:completion:.cold.1()
{
  OUTLINED_FUNCTION_2_1();
  v4 = OUTLINED_FUNCTION_0_0(v1, 5.7781e-34, v2, v3);
  OUTLINED_FUNCTION_1_1(v4, v5, v6);
  OUTLINED_FUNCTION_3_1(&dword_25830F000, "%@ delegate denied access for operation: %ld for %@", v7, v8);
}

- (void)deviceController:nodeID:downloadLogOfType:timeout:completion:.cold.1()
{
  OUTLINED_FUNCTION_2_1();
  v4 = OUTLINED_FUNCTION_0_0(v1, 5.7781e-34, v2, v3);
  OUTLINED_FUNCTION_1_1(v4, v5, v6);
  OUTLINED_FUNCTION_3_1(&dword_25830F000, "%@ delegate denied access for operation: %ld for %@", v7, v8);
}

- (void)deviceController:updateControllerConfiguration:.cold.1()
{
  OUTLINED_FUNCTION_2_1();
  v4 = OUTLINED_FUNCTION_0_0(v1, 5.7781e-34, v2, v3);
  OUTLINED_FUNCTION_1_1(v4, v5, v6);
  OUTLINED_FUNCTION_3_1(&dword_25830F000, "%@ delegate denied access for operation: %ld for %@", v7, v8);
}

@end