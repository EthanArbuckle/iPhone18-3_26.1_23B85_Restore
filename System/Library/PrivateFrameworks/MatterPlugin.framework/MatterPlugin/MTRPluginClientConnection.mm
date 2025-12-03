@interface MTRPluginClientConnection
+ (id)_interfaceForServerProtocol;
+ (id)clientConnectionQueue;
- (BOOL)_deliverMessagePayloadToPrimaryResident:(id)resident timeout:(double)timeout responseHandler:(id)handler;
- (BOOL)_isRunning;
- (BOOL)_setupConnection;
- (NSString)description;
- (void)_assignHomeUUIDIfUnassigned:(id)unassigned;
- (void)deviceController:(id)controller nodeID:(id)d downloadLogOfType:(int64_t)type timeout:(double)timeout completion:(id)completion;
- (void)deviceController:(id)controller nodeID:(id)d getDeviceCachePrimedWithReply:(id)reply;
- (void)deviceController:(id)controller nodeID:(id)d getEstimatedStartTimeWithReply:(id)reply;
- (void)deviceController:(id)controller nodeID:(id)d getEstimatedSubscriptionLatencyWithReply:(id)reply;
- (void)deviceController:(id)controller nodeID:(id)d getStateWithReply:(id)reply;
- (void)deviceController:(id)controller nodeID:(id)d invokeCommandWithEndpointID:(id)iD clusterID:(id)clusterID commandID:(id)commandID commandFields:(id)fields expectedValues:(id)values expectedValueInterval:(id)self0 timedInvokeTimeout:(id)self1 serverSideProcessingTimeout:(id)self2 completion:(id)self3;
- (void)deviceController:(id)controller nodeID:(id)d invokeCommands:(id)commands completion:(id)completion;
- (void)deviceController:(id)controller nodeID:(id)d openCommissioningWindowWithSetupPasscode:(id)passcode discriminator:(id)discriminator duration:(id)duration completion:(id)completion;
- (void)deviceController:(id)controller nodeID:(id)d readAttributePaths:(id)paths withReply:(id)reply;
- (void)deviceController:(id)controller nodeID:(id)d readAttributeWithEndpointID:(id)iD clusterID:(id)clusterID attributeID:(id)attributeID params:(id)params withReply:(id)reply;
- (void)deviceController:(id)controller nodeID:(id)d writeAttributeWithEndpointID:(id)iD clusterID:(id)clusterID attributeID:(id)attributeID value:(id)value expectedValueInterval:(id)interval timedWriteTimeout:(id)self0;
- (void)deviceController:(id)controller updateControllerConfiguration:(id)configuration;
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
  connection = [(MTRPluginClientConnection *)self connection];
  sessionID = [(MTRPluginClientConnection *)self sessionID];
  queue = [(MTRPluginClientConnection *)self queue];
  v7 = [v3 addClientForXPCConnection:connection sessionID:sessionID queue:queue];
  [(MTRPluginClientConnection *)self setPluginClient:v7];

  v8 = +[MTRPluginClientConnection _interfaceForClientProtocol];
  connection2 = [(MTRPluginClientConnection *)self connection];
  [connection2 setRemoteObjectInterface:v8];

  v10 = +[MTRPluginClientConnection _interfaceForServerProtocol];
  connection3 = [(MTRPluginClientConnection *)self connection];
  [connection3 setExportedInterface:v10];

  connection4 = [(MTRPluginClientConnection *)self connection];
  [connection4 setExportedObject:self];

  v13 = matterPluginLog_default;
  if (os_log_type_enabled(matterPluginLog_default, OS_LOG_TYPE_DEFAULT))
  {
    v14 = v13;
    pluginClient = [(MTRPluginClientConnection *)self pluginClient];
    v20 = 138412546;
    selfCopy = self;
    v22 = 2112;
    v23 = pluginClient;
    _os_log_impl(&dword_25830F000, v14, OS_LOG_TYPE_DEFAULT, "Setting up MTRPluginClientConnection: %@ pluginClient : %@", &v20, 0x16u);
  }

  pluginClient2 = [(MTRPluginClientConnection *)self pluginClient];
  v17 = pluginClient2 != 0;

  v18 = *MEMORY[0x277D85DE8];
  return v17;
}

- (BOOL)_deliverMessagePayloadToPrimaryResident:(id)resident timeout:(double)timeout responseHandler:(id)handler
{
  v34 = *MEMORY[0x277D85DE8];
  residentCopy = resident;
  handlerCopy = handler;
  v10 = matterPluginLog_default;
  if (os_log_type_enabled(matterPluginLog_default, OS_LOG_TYPE_DEFAULT))
  {
    v11 = v10;
    delegate = [(MTRPluginClientConnection *)self delegate];
    *buf = 138412546;
    selfCopy = self;
    v32 = 2112;
    v33 = delegate;
    _os_log_impl(&dword_25830F000, v11, OS_LOG_TYPE_DEFAULT, "%@ <= Sending message to delegate %@ to deliver to home hub", buf, 0x16u);
  }

  delegate2 = [(MTRPluginClientConnection *)self delegate];
  v14 = objc_opt_respondsToSelector();

  if (v14)
  {
    delegateQueue = [(MTRPluginClientConnection *)self delegateQueue];
    v27[0] = MEMORY[0x277D85DD0];
    v27[1] = 3221225472;
    v27[2] = __93__MTRPluginClientConnection__deliverMessagePayloadToPrimaryResident_timeout_responseHandler___block_invoke;
    v27[3] = &unk_279894158;
    v27[4] = self;
    v16 = &v28;
    v28 = residentCopy;
    v17 = v29;
    v29[0] = handlerCopy;
    *&v29[1] = timeout;
    v18 = v27;
  }

  else
  {
    delegate3 = [(MTRPluginClientConnection *)self delegate];
    v20 = objc_opt_respondsToSelector();

    if ((v20 & 1) == 0)
    {
      v21 = 0;
      goto LABEL_9;
    }

    delegateQueue = [(MTRPluginClientConnection *)self delegateQueue];
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __93__MTRPluginClientConnection__deliverMessagePayloadToPrimaryResident_timeout_responseHandler___block_invoke_141;
    block[3] = &unk_279893D70;
    block[4] = self;
    v16 = &v25;
    v25 = residentCopy;
    v17 = &v26;
    v26 = handlerCopy;
    v18 = block;
  }

  dispatch_async(delegateQueue, v18);

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

- (void)_assignHomeUUIDIfUnassigned:(id)unassigned
{
  v21 = *MEMORY[0x277D85DE8];
  unassignedCopy = unassigned;
  homeUUID = [(MTRPluginClientConnection *)self homeUUID];

  if (!homeUUID)
  {
    [(MTRPluginClientConnection *)self setHomeUUID:unassignedCopy];
    v6 = matterPluginLog_default;
    if (os_log_type_enabled(matterPluginLog_default, OS_LOG_TYPE_DEFAULT))
    {
      v7 = v6;
      homeUUID2 = [(MTRPluginClientConnection *)self homeUUID];
      v15 = 138412802;
      v16 = homeUUID2;
      v17 = 2112;
      selfCopy = self;
      v19 = 2112;
      v20 = unassignedCopy;
      _os_log_impl(&dword_25830F000, v7, OS_LOG_TYPE_DEFAULT, " => Assigning home UUID: %@ to connection: %@   controllerID: %@", &v15, 0x20u);
    }

    homeUUID3 = [(MTRPluginClientConnection *)self homeUUID];
    pluginClient = [(MTRPluginClientConnection *)self pluginClient];
    [pluginClient setHomeUUID:homeUUID3];

    v11 = +[MTRPluginServer sharedInstance];
    v12 = [v11 _unsafeQueryRunningModeFromDelegateForHomeUUID:unassignedCopy];

    v13 = +[MTRPluginDeviceControllerRegistry sharedInstance];
    [v13 _updateRunningMode:v12 forceUpdateControllerConfiguration:1 forHomeUUID:unassignedCopy];
  }

  v14 = *MEMORY[0x277D85DE8];
}

- (BOOL)_isRunning
{
  connection = [(MTRPluginClientConnection *)self connection];
  v3 = connection != 0;

  return v3;
}

- (void)resume
{
  v8 = *MEMORY[0x277D85DE8];
  v3 = matterPluginLog_default;
  if (os_log_type_enabled(matterPluginLog_default, OS_LOG_TYPE_DEFAULT))
  {
    v6 = 138412290;
    selfCopy = self;
    _os_log_impl(&dword_25830F000, v3, OS_LOG_TYPE_DEFAULT, "Resuming MTRPluginClientConnection: %@", &v6, 0xCu);
  }

  connection = [(MTRPluginClientConnection *)self connection];
  [connection resume];

  v5 = *MEMORY[0x277D85DE8];
}

- (void)invalidate
{
  v8 = *MEMORY[0x277D85DE8];
  v3 = matterPluginLog_default;
  if (os_log_type_enabled(matterPluginLog_default, OS_LOG_TYPE_DEFAULT))
  {
    v6 = 138412290;
    selfCopy = self;
    _os_log_impl(&dword_25830F000, v3, OS_LOG_TYPE_DEFAULT, "Invalidating MTRPluginClientConnection: %@", &v6, 0xCu);
  }

  connection = [(MTRPluginClientConnection *)self connection];
  [connection invalidate];

  v5 = *MEMORY[0x277D85DE8];
}

- (void)invalidated
{
  v9 = *MEMORY[0x277D85DE8];
  v3 = matterPluginLog_default;
  if (os_log_type_enabled(matterPluginLog_default, OS_LOG_TYPE_DEFAULT))
  {
    v7 = 138412290;
    selfCopy = self;
    _os_log_impl(&dword_25830F000, v3, OS_LOG_TYPE_DEFAULT, " => Invalidated MTRPluginClientConnection: %@", &v7, 0xCu);
  }

  v4 = +[MTRPluginClientManager sharedInstance];
  connection = [(MTRPluginClientConnection *)self connection];
  [v4 removeClientForXPCConnection:connection];

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
    selfCopy = self;
    _os_log_impl(&dword_25830F000, v3, OS_LOG_TYPE_DEFAULT, " => Interrupted MTRPluginClientConnection: %@", &v7, 0xCu);
  }

  v4 = +[MTRPluginClientManager sharedInstance];
  connection = [(MTRPluginClientConnection *)self connection];
  [v4 removeClientForXPCConnection:connection];

  [(MTRPluginClientConnection *)self setConnection:0];
  v6 = *MEMORY[0x277D85DE8];
}

- (void)updateControllerConfigurationForRemotePeer
{
  v3 = objc_autoreleasePoolPush();
  pluginClient = [(MTRPluginClientConnection *)self pluginClient];
  homeUUID = [(MTRPluginClientConnection *)self homeUUID];
  pluginClient2 = [(MTRPluginClientConnection *)self pluginClient];
  controllerConfiguration = [pluginClient2 controllerConfiguration];
  [pluginClient deviceController:homeUUID updateControllerConfiguration:controllerConfiguration];

  objc_autoreleasePoolPop(v3);
}

- (NSString)description
{
  v3 = objc_autoreleasePoolPush();
  v4 = MEMORY[0x277CCACA8];
  v5 = objc_opt_class();
  v6 = NSStringFromClass(v5);
  connection = [(MTRPluginClientConnection *)self connection];
  v8 = [(MTRPluginClientConnection *)self pid];
  sessionID = [(MTRPluginClientConnection *)self sessionID];
  homeUUID = [(MTRPluginClientConnection *)self homeUUID];
  _isRunning = [(MTRPluginClientConnection *)self _isRunning];
  v12 = @"NO";
  if (_isRunning)
  {
    v12 = @"YES";
  }

  v13 = [v4 stringWithFormat:@"<%@: %p xpc %p pid: %d sessionID: %@ Home: %@ Running: %@>", v6, self, connection, v8, sessionID, homeUUID, v12];

  objc_autoreleasePoolPop(v3);

  return v13;
}

- (void)deviceController:(id)controller nodeID:(id)d getStateWithReply:(id)reply
{
  v27 = *MEMORY[0x277D85DE8];
  controllerCopy = controller;
  dCopy = d;
  replyCopy = reply;
  [(MTRPluginClientConnection *)self _assignHomeUUIDIfUnassigned:controllerCopy];
  v23 = 0;
  v24 = &v23;
  v25 = 0x2020000000;
  v26 = 0;
  delegateQueue = [(MTRPluginClientConnection *)self delegateQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __71__MTRPluginClientConnection_deviceController_nodeID_getStateWithReply___block_invoke;
  block[3] = &unk_279893DF0;
  v22 = &v23;
  block[4] = self;
  v12 = dCopy;
  v21 = v12;
  dispatch_sync(delegateQueue, block);

  if (v24[3])
  {
    v13 = objc_autoreleasePoolPush();
    pluginClient = [(MTRPluginClientConnection *)self pluginClient];
    [pluginClient deviceController:controllerCopy nodeID:v12 getStateWithReply:replyCopy];

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

    v19 = replyCopy;
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

- (void)deviceController:(id)controller nodeID:(id)d getDeviceCachePrimedWithReply:(id)reply
{
  v27 = *MEMORY[0x277D85DE8];
  controllerCopy = controller;
  dCopy = d;
  replyCopy = reply;
  [(MTRPluginClientConnection *)self _assignHomeUUIDIfUnassigned:controllerCopy];
  v23 = 0;
  v24 = &v23;
  v25 = 0x2020000000;
  v26 = 0;
  delegateQueue = [(MTRPluginClientConnection *)self delegateQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __83__MTRPluginClientConnection_deviceController_nodeID_getDeviceCachePrimedWithReply___block_invoke;
  block[3] = &unk_279893DF0;
  v22 = &v23;
  block[4] = self;
  v12 = dCopy;
  v21 = v12;
  dispatch_sync(delegateQueue, block);

  if (v24[3])
  {
    v13 = objc_autoreleasePoolPush();
    pluginClient = [(MTRPluginClientConnection *)self pluginClient];
    [pluginClient deviceController:controllerCopy nodeID:v12 getDeviceCachePrimedWithReply:replyCopy];

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

    v19 = replyCopy;
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

- (void)deviceController:(id)controller nodeID:(id)d getEstimatedStartTimeWithReply:(id)reply
{
  v27 = *MEMORY[0x277D85DE8];
  controllerCopy = controller;
  dCopy = d;
  replyCopy = reply;
  [(MTRPluginClientConnection *)self _assignHomeUUIDIfUnassigned:controllerCopy];
  v23 = 0;
  v24 = &v23;
  v25 = 0x2020000000;
  v26 = 0;
  delegateQueue = [(MTRPluginClientConnection *)self delegateQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __84__MTRPluginClientConnection_deviceController_nodeID_getEstimatedStartTimeWithReply___block_invoke;
  block[3] = &unk_279893DF0;
  v22 = &v23;
  block[4] = self;
  v12 = dCopy;
  v21 = v12;
  dispatch_sync(delegateQueue, block);

  if (v24[3])
  {
    v13 = objc_autoreleasePoolPush();
    pluginClient = [(MTRPluginClientConnection *)self pluginClient];
    [pluginClient deviceController:controllerCopy nodeID:v12 getEstimatedStartTimeWithReply:replyCopy];

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

    v19 = replyCopy;
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

- (void)deviceController:(id)controller nodeID:(id)d getEstimatedSubscriptionLatencyWithReply:(id)reply
{
  v27 = *MEMORY[0x277D85DE8];
  controllerCopy = controller;
  dCopy = d;
  replyCopy = reply;
  [(MTRPluginClientConnection *)self _assignHomeUUIDIfUnassigned:controllerCopy];
  v23 = 0;
  v24 = &v23;
  v25 = 0x2020000000;
  v26 = 0;
  delegateQueue = [(MTRPluginClientConnection *)self delegateQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __94__MTRPluginClientConnection_deviceController_nodeID_getEstimatedSubscriptionLatencyWithReply___block_invoke;
  block[3] = &unk_279893DF0;
  v22 = &v23;
  block[4] = self;
  v12 = dCopy;
  v21 = v12;
  dispatch_sync(delegateQueue, block);

  if (v24[3])
  {
    v13 = objc_autoreleasePoolPush();
    pluginClient = [(MTRPluginClientConnection *)self pluginClient];
    [pluginClient deviceController:controllerCopy nodeID:v12 getEstimatedSubscriptionLatencyWithReply:replyCopy];

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

    v19 = replyCopy;
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

- (void)deviceController:(id)controller nodeID:(id)d readAttributeWithEndpointID:(id)iD clusterID:(id)clusterID attributeID:(id)attributeID params:(id)params withReply:(id)reply
{
  v44 = *MEMORY[0x277D85DE8];
  controllerCopy = controller;
  dCopy = d;
  iDCopy = iD;
  clusterIDCopy = clusterID;
  attributeIDCopy = attributeID;
  paramsCopy = params;
  replyCopy = reply;
  [(MTRPluginClientConnection *)self _assignHomeUUIDIfUnassigned:controllerCopy];
  v40 = 0;
  v41 = &v40;
  v42 = 0x2020000000;
  v43 = 0;
  delegateQueue = [(MTRPluginClientConnection *)self delegateQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __120__MTRPluginClientConnection_deviceController_nodeID_readAttributeWithEndpointID_clusterID_attributeID_params_withReply___block_invoke;
  block[3] = &unk_2798941A8;
  v39 = &v40;
  block[4] = self;
  v23 = dCopy;
  v35 = v23;
  v24 = iDCopy;
  v36 = v24;
  v25 = clusterIDCopy;
  v37 = v25;
  v26 = attributeIDCopy;
  v38 = v26;
  dispatch_sync(delegateQueue, block);

  if (v41[3])
  {
    v27 = objc_autoreleasePoolPush();
    pluginClient = [(MTRPluginClientConnection *)self pluginClient];
    [pluginClient deviceController:controllerCopy nodeID:v23 readAttributeWithEndpointID:v24 clusterID:v25 attributeID:v26 params:paramsCopy withReply:replyCopy];

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

    v33 = replyCopy;
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

- (void)deviceController:(id)controller nodeID:(id)d readAttributePaths:(id)paths withReply:(id)reply
{
  v34 = *MEMORY[0x277D85DE8];
  controllerCopy = controller;
  dCopy = d;
  pathsCopy = paths;
  replyCopy = reply;
  [(MTRPluginClientConnection *)self _assignHomeUUIDIfUnassigned:controllerCopy];
  v30 = 0;
  v31 = &v30;
  v32 = 0x2020000000;
  v33 = 0;
  delegateQueue = [(MTRPluginClientConnection *)self delegateQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __82__MTRPluginClientConnection_deviceController_nodeID_readAttributePaths_withReply___block_invoke;
  block[3] = &unk_279893DF0;
  v29 = &v30;
  block[4] = self;
  v15 = dCopy;
  v28 = v15;
  dispatch_sync(delegateQueue, block);

  if (v31[3])
  {
    v16 = objc_autoreleasePoolPush();
    pluginClient = [(MTRPluginClientConnection *)self pluginClient];
    [pluginClient deviceController:controllerCopy nodeID:v15 readAttributePaths:pathsCopy withReply:replyCopy];

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
    v26 = replyCopy;
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

- (void)deviceController:(id)controller nodeID:(id)d writeAttributeWithEndpointID:(id)iD clusterID:(id)clusterID attributeID:(id)attributeID value:(id)value expectedValueInterval:(id)interval timedWriteTimeout:(id)self0
{
  v43 = *MEMORY[0x277D85DE8];
  controllerCopy = controller;
  dCopy = d;
  iDCopy = iD;
  clusterIDCopy = clusterID;
  attributeIDCopy = attributeID;
  valueCopy = value;
  intervalCopy = interval;
  timeoutCopy = timeout;
  [(MTRPluginClientConnection *)self _assignHomeUUIDIfUnassigned:controllerCopy];
  v39 = 0;
  v40 = &v39;
  v41 = 0x2020000000;
  v42 = 0;
  delegateQueue = [(MTRPluginClientConnection *)self delegateQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __150__MTRPluginClientConnection_deviceController_nodeID_writeAttributeWithEndpointID_clusterID_attributeID_value_expectedValueInterval_timedWriteTimeout___block_invoke;
  block[3] = &unk_2798941A8;
  v38 = &v39;
  block[4] = self;
  v23 = dCopy;
  v34 = v23;
  v24 = iDCopy;
  v35 = v24;
  v25 = clusterIDCopy;
  v36 = v25;
  v26 = attributeIDCopy;
  v37 = v26;
  dispatch_sync(delegateQueue, block);

  if (v40[3])
  {
    v27 = objc_autoreleasePoolPush();
    pluginClient = [(MTRPluginClientConnection *)self pluginClient];
    [pluginClient deviceController:controllerCopy nodeID:v23 writeAttributeWithEndpointID:v24 clusterID:v25 attributeID:v26 value:valueCopy expectedValueInterval:intervalCopy timedWriteTimeout:timeoutCopy];

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

- (void)deviceController:(id)controller nodeID:(id)d invokeCommandWithEndpointID:(id)iD clusterID:(id)clusterID commandID:(id)commandID commandFields:(id)fields expectedValues:(id)values expectedValueInterval:(id)self0 timedInvokeTimeout:(id)self1 serverSideProcessingTimeout:(id)self2 completion:(id)self3
{
  v52 = *MEMORY[0x277D85DE8];
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
  v36 = controllerCopy;
  v25 = controllerCopy;
  v26 = fieldsCopy;
  [(MTRPluginClientConnection *)self _assignHomeUUIDIfUnassigned:v25];
  v48 = 0;
  v49 = &v48;
  v50 = 0x2020000000;
  v51 = 0;
  delegateQueue = [(MTRPluginClientConnection *)self delegateQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __210__MTRPluginClientConnection_deviceController_nodeID_invokeCommandWithEndpointID_clusterID_commandID_commandFields_expectedValues_expectedValueInterval_timedInvokeTimeout_serverSideProcessingTimeout_completion___block_invoke;
  block[3] = &unk_2798941A8;
  v47 = &v48;
  block[4] = self;
  v28 = dCopy;
  v43 = v28;
  v29 = commandIDCopy;
  v44 = v29;
  v30 = iDCopy;
  v45 = v30;
  v31 = clusterIDCopy;
  v46 = v31;
  dispatch_sync(delegateQueue, block);

  if (v49[3])
  {
    v32 = objc_autoreleasePoolPush();
    pluginClient = [(MTRPluginClientConnection *)self pluginClient];
    [pluginClient deviceController:v36 nodeID:v28 invokeCommandWithEndpointID:v30 clusterID:v31 commandID:v29 commandFields:v26 expectedValues:valuesCopy expectedValueInterval:intervalCopy timedInvokeTimeout:timeoutCopy serverSideProcessingTimeout:processingTimeoutCopy completion:completionCopy];

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

- (void)deviceController:(id)controller nodeID:(id)d openCommissioningWindowWithSetupPasscode:(id)passcode discriminator:(id)discriminator duration:(id)duration completion:(id)completion
{
  v40 = *MEMORY[0x277D85DE8];
  controllerCopy = controller;
  dCopy = d;
  passcodeCopy = passcode;
  discriminatorCopy = discriminator;
  durationCopy = duration;
  completionCopy = completion;
  [(MTRPluginClientConnection *)self _assignHomeUUIDIfUnassigned:controllerCopy];
  v36 = 0;
  v37 = &v36;
  v38 = 0x2020000000;
  v39 = 0;
  delegateQueue = [(MTRPluginClientConnection *)self delegateQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __128__MTRPluginClientConnection_deviceController_nodeID_openCommissioningWindowWithSetupPasscode_discriminator_duration_completion___block_invoke;
  block[3] = &unk_279893DF0;
  v35 = &v36;
  block[4] = self;
  v21 = dCopy;
  v34 = v21;
  dispatch_sync(delegateQueue, block);

  if (v37[3])
  {
    v22 = objc_autoreleasePoolPush();
    pluginClient = [(MTRPluginClientConnection *)self pluginClient];
    [pluginClient deviceController:controllerCopy nodeID:v21 openCommissioningWindowWithSetupPasscode:passcodeCopy discriminator:discriminatorCopy duration:durationCopy completion:completionCopy];

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
    v32 = completionCopy;
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

- (void)deviceController:(id)controller nodeID:(id)d downloadLogOfType:(int64_t)type timeout:(double)timeout completion:(id)completion
{
  v35 = *MEMORY[0x277D85DE8];
  controllerCopy = controller;
  dCopy = d;
  completionCopy = completion;
  [(MTRPluginClientConnection *)self _assignHomeUUIDIfUnassigned:controllerCopy];
  v31 = 0;
  v32 = &v31;
  v33 = 0x2020000000;
  v34 = 0;
  delegateQueue = [(MTRPluginClientConnection *)self delegateQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __90__MTRPluginClientConnection_deviceController_nodeID_downloadLogOfType_timeout_completion___block_invoke;
  block[3] = &unk_279893DF0;
  v30 = &v31;
  block[4] = self;
  v16 = dCopy;
  v29 = v16;
  dispatch_sync(delegateQueue, block);

  if (v32[3])
  {
    v17 = objc_autoreleasePoolPush();
    pluginClient = [(MTRPluginClientConnection *)self pluginClient];
    [pluginClient deviceController:controllerCopy nodeID:v16 downloadLogOfType:type timeout:completionCopy completion:timeout];

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
    v27 = completionCopy;
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

- (void)deviceController:(id)controller nodeID:(id)d invokeCommands:(id)commands completion:(id)completion
{
  v55 = *MEMORY[0x277D85DE8];
  controllerCopy = controller;
  dCopy = d;
  commandsCopy = commands;
  completionCopy = completion;
  [(MTRPluginClientConnection *)self _assignHomeUUIDIfUnassigned:controllerCopy];
  v51 = 0u;
  v52 = 0u;
  v49 = 0u;
  v50 = 0u;
  obj = commandsCopy;
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
                delegateQueue = [(MTRPluginClientConnection *)self delegateQueue];
                block[0] = MEMORY[0x277D85DD0];
                block[1] = 3221225472;
                block[2] = __79__MTRPluginClientConnection_deviceController_nodeID_invokeCommands_completion___block_invoke;
                block[3] = &unk_2798941D0;
                v40 = &v41;
                block[4] = self;
                v38 = dCopy;
                v26 = v24;
                v39 = v26;
                dispatch_sync(delegateQueue, block);

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
  pluginClient = [(MTRPluginClientConnection *)self pluginClient];
  [pluginClient deviceController:controllerCopy nodeID:dCopy invokeCommands:obj completion:completionCopy];

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

- (void)deviceController:(id)controller updateControllerConfiguration:(id)configuration
{
  v18 = *MEMORY[0x277D85DE8];
  controllerCopy = controller;
  configurationCopy = configuration;
  [(MTRPluginClientConnection *)self _assignHomeUUIDIfUnassigned:controllerCopy];
  v14 = 0;
  v15 = &v14;
  v16 = 0x2020000000;
  v17 = 0;
  delegateQueue = [(MTRPluginClientConnection *)self delegateQueue];
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __76__MTRPluginClientConnection_deviceController_updateControllerConfiguration___block_invoke;
  v13[3] = &unk_2798941F8;
  v13[4] = self;
  v13[5] = &v14;
  dispatch_sync(delegateQueue, v13);

  if (v15[3])
  {
    v9 = objc_autoreleasePoolPush();
    pluginClient = [(MTRPluginClientConnection *)self pluginClient];
    [pluginClient deviceController:controllerCopy updateControllerConfiguration:configurationCopy];

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