@interface MTRPluginRemoteClient
+ (id)deviceFromNodeID:(id)d controllerID:(id)iD;
- (MTRPluginClient)client;
- (MTRPluginRemoteClient)initWithClient:(id)client queue:(id)queue;
- (NSString)description;
- (void)_closeRemoteServerSession;
- (void)_registerForMessages;
- (void)dealloc;
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
- (void)messageTransport:(id)transport handleControllerConfigUpdated:(id)updated;
- (void)messageTransport:(id)transport handleDeviceAttributeReport:(id)report;
- (void)messageTransport:(id)transport handleDeviceBecameActive:(id)active;
- (void)messageTransport:(id)transport handleDeviceCachePrimed:(id)primed;
- (void)messageTransport:(id)transport handleDeviceConfigurationChanged:(id)changed;
- (void)messageTransport:(id)transport handleDeviceEventReport:(id)report;
- (void)messageTransport:(id)transport handleDeviceInternalStateUpdated:(id)updated;
- (void)messageTransport:(id)transport handleDeviceStateChanged:(id)changed;
- (void)resume;
- (void)suspend;
@end

@implementation MTRPluginRemoteClient

- (MTRPluginRemoteClient)initWithClient:(id)client queue:(id)queue
{
  v23 = *MEMORY[0x277D85DE8];
  clientCopy = client;
  queueCopy = queue;
  v18.receiver = self;
  v18.super_class = MTRPluginRemoteClient;
  v8 = [(MTRPluginRemoteClient *)&v18 init];
  if (v8)
  {
    v9 = +[MTRPluginProtobufOverModernTransport sharedInstance];
    [(MTRPluginRemoteClient *)v8 setTransport:v9];

    [(MTRPluginRemoteClient *)v8 setClient:clientCopy];
    [(MTRPluginRemoteClient *)v8 setSuspended:0];
    transport = [(MTRPluginRemoteClient *)v8 transport];
    client = [(MTRPluginRemoteClient *)v8 client];
    sessionID = [client sessionID];
    [transport setDelegate:v8 delegateQueue:queueCopy forSessionID:sessionID];

    [(MTRPluginRemoteClient *)v8 _registerForMessages];
    v13 = matterPluginLog_default;
    if (os_log_type_enabled(matterPluginLog_default, OS_LOG_TYPE_DEFAULT))
    {
      v14 = v13;
      sessionID2 = [clientCopy sessionID];
      *buf = 138412546;
      v20 = v8;
      v21 = 2112;
      v22 = sessionID2;
      _os_log_impl(&dword_25830F000, v14, OS_LOG_TYPE_DEFAULT, "%@ Created remote dispatcher with session ID: %@", buf, 0x16u);
    }
  }

  v16 = *MEMORY[0x277D85DE8];
  return v8;
}

- (void)dealloc
{
  v13 = *MEMORY[0x277D85DE8];
  v3 = matterPluginLog_default;
  if (os_log_type_enabled(matterPluginLog_default, OS_LOG_TYPE_DEFAULT))
  {
    v4 = v3;
    v5 = objc_opt_class();
    v6 = NSStringFromClass(v5);
    *buf = 138412546;
    v10 = v6;
    v11 = 2048;
    selfCopy = self;
    _os_log_impl(&dword_25830F000, v4, OS_LOG_TYPE_DEFAULT, "%@ dealloc: %p", buf, 0x16u);
  }

  v8.receiver = self;
  v8.super_class = MTRPluginRemoteClient;
  [(MTRPluginRemoteClient *)&v8 dealloc];
  v7 = *MEMORY[0x277D85DE8];
}

- (NSString)description
{
  v3 = objc_autoreleasePoolPush();
  v4 = MEMORY[0x277CCACA8];
  v5 = objc_opt_class();
  v6 = NSStringFromClass(v5);
  client = [(MTRPluginRemoteClient *)self client];
  clientType = [client clientType];
  if (clientType >= 0xA)
  {
    v9 = [MEMORY[0x277CCACA8] stringWithFormat:@"(unknown: %i)", clientType];
  }

  else
  {
    v9 = off_279894070[clientType];
  }

  v10 = [v4 stringWithFormat:@"<%@: %p, clientType: %@>", v6, self, v9];

  objc_autoreleasePoolPop(v3);

  return v10;
}

- (void)invalidate
{
  v9 = *MEMORY[0x277D85DE8];
  selfCopy = self;
  objc_sync_enter(selfCopy);
  v3 = objc_autoreleasePoolPush();
  v4 = matterPluginLog_default;
  if (os_log_type_enabled(matterPluginLog_default, OS_LOG_TYPE_DEFAULT))
  {
    v7 = 138412290;
    v8 = selfCopy;
    _os_log_impl(&dword_25830F000, v4, OS_LOG_TYPE_DEFAULT, "%@ Invalidating remote client", &v7, 0xCu);
  }

  [(MTRPluginRemoteClient *)selfCopy _closeRemoteServerSession];
  transport = [(MTRPluginRemoteClient *)selfCopy transport];
  [transport removeDelegate:selfCopy];

  objc_autoreleasePoolPop(v3);
  objc_sync_exit(selfCopy);

  v6 = *MEMORY[0x277D85DE8];
}

- (void)suspend
{
  v7 = *MEMORY[0x277D85DE8];
  [(MTRPluginRemoteClient *)self setSuspended:1];
  v3 = matterPluginLog_default;
  if (os_log_type_enabled(matterPluginLog_default, OS_LOG_TYPE_DEFAULT))
  {
    v5 = 138412290;
    selfCopy = self;
    _os_log_impl(&dword_25830F000, v3, OS_LOG_TYPE_DEFAULT, "%@ Suspended remote client", &v5, 0xCu);
  }

  v4 = *MEMORY[0x277D85DE8];
}

- (void)resume
{
  v7 = *MEMORY[0x277D85DE8];
  [(MTRPluginRemoteClient *)self setSuspended:0];
  v3 = matterPluginLog_default;
  if (os_log_type_enabled(matterPluginLog_default, OS_LOG_TYPE_DEFAULT))
  {
    v5 = 138412290;
    selfCopy = self;
    _os_log_impl(&dword_25830F000, v3, OS_LOG_TYPE_DEFAULT, "%@ Resumed remote client", &v5, 0xCu);
  }

  v4 = *MEMORY[0x277D85DE8];
}

- (void)_closeRemoteServerSession
{
  v17 = *MEMORY[0x277D85DE8];
  client = [(MTRPluginRemoteClient *)self client];
  homeUUID = [client homeUUID];

  if (homeUUID)
  {
    v5 = matterPluginLog_default;
    if (os_log_type_enabled(matterPluginLog_default, OS_LOG_TYPE_DEFAULT))
    {
      v6 = v5;
      client2 = [(MTRPluginRemoteClient *)self client];
      homeUUID2 = [client2 homeUUID];
      v13 = 138412546;
      selfCopy = self;
      v15 = 2112;
      v16 = homeUUID2;
      _os_log_impl(&dword_25830F000, v6, OS_LOG_TYPE_DEFAULT, "%@ Sending session close to resident session for controller %@", &v13, 0x16u);
    }

    v9 = objc_alloc_init(MTRPluginPBMDeviceControllerMessage);
    client3 = [(MTRPluginRemoteClient *)self client];
    homeUUID3 = [client3 homeUUID];
    [(MTRPluginRemoteClient *)self sendOnewayMessageToHomeWithID:homeUUID3 messageType:8 pbCodable:v9 timeout:60.0];
  }

  v12 = *MEMORY[0x277D85DE8];
}

- (void)_registerForMessages
{
  transport = [(MTRPluginRemoteClient *)self transport];
  client = [(MTRPluginRemoteClient *)self client];
  sessionID = [client sessionID];
  [transport registerForRequestMessageWithType:&unk_28697C510 requestHandler:sel_messageTransport_handleDeviceStateChanged_ forSessionID:sessionID];

  transport2 = [(MTRPluginRemoteClient *)self transport];
  client2 = [(MTRPluginRemoteClient *)self client];
  sessionID2 = [client2 sessionID];
  [transport2 registerForRequestMessageWithType:&unk_28697C528 requestHandler:sel_messageTransport_handleDeviceAttributeReport_ forSessionID:sessionID2];

  transport3 = [(MTRPluginRemoteClient *)self transport];
  client3 = [(MTRPluginRemoteClient *)self client];
  sessionID3 = [client3 sessionID];
  [transport3 registerForRequestMessageWithType:&unk_28697C540 requestHandler:sel_messageTransport_handleDeviceEventReport_ forSessionID:sessionID3];

  transport4 = [(MTRPluginRemoteClient *)self transport];
  client4 = [(MTRPluginRemoteClient *)self client];
  sessionID4 = [client4 sessionID];
  [transport4 registerForRequestMessageWithType:&unk_28697C558 requestHandler:sel_messageTransport_handleDeviceBecameActive_ forSessionID:sessionID4];

  transport5 = [(MTRPluginRemoteClient *)self transport];
  client5 = [(MTRPluginRemoteClient *)self client];
  sessionID5 = [client5 sessionID];
  [transport5 registerForRequestMessageWithType:&unk_28697C570 requestHandler:sel_messageTransport_handleDeviceCachePrimed_ forSessionID:sessionID5];

  transport6 = [(MTRPluginRemoteClient *)self transport];
  client6 = [(MTRPluginRemoteClient *)self client];
  sessionID6 = [client6 sessionID];
  [transport6 registerForRequestMessageWithType:&unk_28697C588 requestHandler:sel_messageTransport_handleDeviceConfigurationChanged_ forSessionID:sessionID6];

  transport7 = [(MTRPluginRemoteClient *)self transport];
  client7 = [(MTRPluginRemoteClient *)self client];
  sessionID7 = [client7 sessionID];
  [transport7 registerForRequestMessageWithType:&unk_28697C5A0 requestHandler:sel_messageTransport_handleDeviceInternalStateUpdated_ forSessionID:sessionID7];

  transport8 = [(MTRPluginRemoteClient *)self transport];
  client8 = [(MTRPluginRemoteClient *)self client];
  sessionID8 = [client8 sessionID];
  [transport8 registerForRequestMessageWithType:&unk_28697C5B8 requestHandler:sel_messageTransport_handleControllerConfigUpdated_ forSessionID:sessionID8];
}

void __109__MTRPluginRemoteClient_sendMessageToHomeWithID_messageType_pbCodable_timeout_metrics_errorBlock_replyBlock___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v26 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  v7 = objc_autoreleasePoolPush();
  v8 = matterPluginLog_default;
  if (v5)
  {
    if (os_log_type_enabled(matterPluginLog_default, OS_LOG_TYPE_ERROR))
    {
      __109__MTRPluginRemoteClient_sendMessageToHomeWithID_messageType_pbCodable_timeout_metrics_errorBlock_replyBlock___block_invoke_cold_1(a1, v8, v5);
    }

    v9 = *(a1 + 48);
    if (v9)
    {
      v10 = *(v9 + 16);
LABEL_10:
      v10();
    }
  }

  else
  {
    if (os_log_type_enabled(matterPluginLog_default, OS_LOG_TYPE_DEFAULT))
    {
      v11 = *(a1 + 32);
      v12 = *(a1 + 64);
      v13 = v8;
      v14 = [MTRPluginPBMHeader messageTypeAsString:v12];
      v15 = *(a1 + 40);
      v18 = 138413058;
      v19 = v11;
      v20 = 1024;
      v21 = v12;
      v22 = 2112;
      v23 = v14;
      v24 = 2112;
      v25 = v15;
      _os_log_impl(&dword_25830F000, v13, OS_LOG_TYPE_DEFAULT, "%@ Response received for message type %d (%@) from homeID %@", &v18, 0x26u);
    }

    v16 = *(a1 + 56);
    if (v16)
    {
      v10 = *(v16 + 16);
      goto LABEL_10;
    }
  }

  objc_autoreleasePoolPop(v7);

  v17 = *MEMORY[0x277D85DE8];
}

- (void)deviceController:(id)controller updateControllerConfiguration:(id)configuration
{
  v26 = *MEMORY[0x277D85DE8];
  controllerCopy = controller;
  configurationCopy = configuration;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  v9 = matterPluginLog_default;
  if (os_log_type_enabled(matterPluginLog_default, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412802;
    v21 = selfCopy;
    v22 = 2112;
    v23 = controllerCopy;
    v24 = 2112;
    v25 = configurationCopy;
    _os_log_impl(&dword_25830F000, v9, OS_LOG_TYPE_DEFAULT, "%@ Forwarding remote request to updateControllerConfiguration: %@ state: %@", buf, 0x20u);
  }

  v10 = [MTRPluginUpdateControllerConfigMetric updateControllerConfigMetricForHome:controllerCopy remoteMessageID:0];
  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 3221225472;
  v17[2] = __72__MTRPluginRemoteClient_deviceController_updateControllerConfiguration___block_invoke;
  v17[3] = &unk_279893F38;
  v17[4] = selfCopy;
  v11 = controllerCopy;
  v18 = v11;
  v19 = v10;
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __72__MTRPluginRemoteClient_deviceController_updateControllerConfiguration___block_invoke_61;
  v14[3] = &unk_279893F60;
  v12 = v19;
  v15 = v12;
  v16 = selfCopy;
  [(MTRPluginRemoteClient *)selfCopy sendControllerMessageToHomeWithID:v11 controllerMessageType:9 queryRequestValue:configurationCopy metric:v12 errorBlock:v17 replyBlock:v14];

  objc_sync_exit(selfCopy);
  v13 = *MEMORY[0x277D85DE8];
}

void __72__MTRPluginRemoteClient_deviceController_updateControllerConfiguration___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if (os_log_type_enabled(matterPluginLog_default, OS_LOG_TYPE_ERROR))
  {
    __72__MTRPluginRemoteClient_deviceController_updateControllerConfiguration___block_invoke_cold_1(a1);
  }

  v4 = +[MTRPluginMetricsCollector sharedInstance];
  [v4 collectMetric:*(a1 + 48) error:v3];
}

void __72__MTRPluginRemoteClient_deviceController_updateControllerConfiguration___block_invoke_61(uint64_t a1, void *a2)
{
  v19 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = +[MTRPluginMetricsCollector sharedInstance];
  [v4 collectMetric:*(a1 + 32)];

  v5 = [MTRPluginPBMVariableValueResponseMessage variableValueFromResponsePayloadData:v3];

  v6 = [v5 object];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v7 = [v5 object];
  }

  else
  {
    v7 = 0;
  }

  v8 = matterPluginLog_default;
  if (os_log_type_enabled(matterPluginLog_default, OS_LOG_TYPE_DEFAULT))
  {
    v9 = *(a1 + 40);
    v15 = 138412546;
    v16 = v9;
    v17 = 2112;
    v18 = v7;
    _os_log_impl(&dword_25830F000, v8, OS_LOG_TYPE_DEFAULT, "%@ Received controller configuration update %@", &v15, 0x16u);
  }

  if ([v7 count])
  {
    v10 = [*(a1 + 40) client];
    v11 = [v10 clientProxy];
    v12 = [*(a1 + 40) client];
    v13 = [v12 homeUUID];
    [v11 controller:v13 controllerConfigurationUpdated:v7];
  }

  v14 = *MEMORY[0x277D85DE8];
}

- (void)deviceController:(id)controller nodeID:(id)d getStateWithReply:(id)reply
{
  v30 = *MEMORY[0x277D85DE8];
  controllerCopy = controller;
  dCopy = d;
  replyCopy = reply;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  v12 = matterPluginLog_default;
  if (os_log_type_enabled(matterPluginLog_default, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412802;
    v25 = selfCopy;
    v26 = 2112;
    v27 = dCopy;
    v28 = 2112;
    v29 = controllerCopy;
    _os_log_impl(&dword_25830F000, v12, OS_LOG_TYPE_DEFAULT, "%@ Forwarding remote request to get device state for nodeID: %@ for controllerID: %@", buf, 0x20u);
  }

  v20[0] = MEMORY[0x277D85DD0];
  v20[1] = 3221225472;
  v20[2] = __67__MTRPluginRemoteClient_deviceController_nodeID_getStateWithReply___block_invoke;
  v20[3] = &unk_279893F88;
  v20[4] = selfCopy;
  v21 = dCopy;
  v13 = controllerCopy;
  v22 = v13;
  v23 = replyCopy;
  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 3221225472;
  v17[2] = __67__MTRPluginRemoteClient_deviceController_nodeID_getStateWithReply___block_invoke_63;
  v17[3] = &unk_279893FB0;
  v17[4] = selfCopy;
  v14 = v21;
  v18 = v14;
  v15 = v23;
  v19 = v15;
  [(MTRPluginRemoteClient *)selfCopy sendDeviceMessageToNodeWithID:v14 homeID:v13 deviceNodeMessageType:1000 metric:0 errorBlock:v20 replyBlock:v17];

  objc_sync_exit(selfCopy);
  v16 = *MEMORY[0x277D85DE8];
}

uint64_t __67__MTRPluginRemoteClient_deviceController_nodeID_getStateWithReply___block_invoke(void *a1)
{
  if (os_log_type_enabled(matterPluginLog_default, OS_LOG_TYPE_ERROR))
  {
    __67__MTRPluginRemoteClient_deviceController_nodeID_getStateWithReply___block_invoke_cold_1(a1);
  }

  return (*(a1[7] + 16))();
}

uint64_t __67__MTRPluginRemoteClient_deviceController_nodeID_getStateWithReply___block_invoke_63(void *a1, uint64_t a2)
{
  v18 = *MEMORY[0x277D85DE8];
  v3 = [MTRPluginPBMVariableValueResponseMessage variableValueFromResponsePayloadData:a2];
  v4 = [v3 object];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = [v3 object];
  }

  else
  {
    v5 = 0;
  }

  v6 = [v5 unsignedIntegerValue];
  v7 = matterPluginLog_default;
  if (os_log_type_enabled(matterPluginLog_default, OS_LOG_TYPE_DEFAULT))
  {
    v8 = a1[4];
    v9 = a1[5];
    v12 = 138412802;
    v13 = v8;
    v14 = 2112;
    v15 = v9;
    v16 = 2048;
    v17 = v6;
    _os_log_impl(&dword_25830F000, v7, OS_LOG_TYPE_DEFAULT, "%@ Remote device %@ running state is %lu", &v12, 0x20u);
  }

  result = (*(a1[6] + 16))();
  v11 = *MEMORY[0x277D85DE8];
  return result;
}

- (void)deviceController:(id)controller nodeID:(id)d getDeviceCachePrimedWithReply:(id)reply
{
  v29 = *MEMORY[0x277D85DE8];
  controllerCopy = controller;
  dCopy = d;
  replyCopy = reply;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  v12 = matterPluginLog_default;
  if (os_log_type_enabled(matterPluginLog_default, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412802;
    v24 = selfCopy;
    v25 = 2112;
    v26 = dCopy;
    v27 = 2112;
    v28 = controllerCopy;
    _os_log_impl(&dword_25830F000, v12, OS_LOG_TYPE_DEFAULT, "%@ Forwarding remote request to get device is cache primed for nodeID: %@ for controllerID: %@", buf, 0x20u);
  }

  v19[0] = MEMORY[0x277D85DD0];
  v19[1] = 3221225472;
  v19[2] = __79__MTRPluginRemoteClient_deviceController_nodeID_getDeviceCachePrimedWithReply___block_invoke;
  v19[3] = &unk_279893F88;
  v19[4] = selfCopy;
  v13 = dCopy;
  v20 = v13;
  v14 = controllerCopy;
  v21 = v14;
  v22 = replyCopy;
  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 3221225472;
  v17[2] = __79__MTRPluginRemoteClient_deviceController_nodeID_getDeviceCachePrimedWithReply___block_invoke_64;
  v17[3] = &unk_279893FD8;
  v15 = v22;
  v18 = v15;
  [(MTRPluginRemoteClient *)selfCopy sendDeviceMessageToNodeWithID:v13 homeID:v14 deviceNodeMessageType:1001 metric:0 errorBlock:v19 replyBlock:v17];

  objc_sync_exit(selfCopy);
  v16 = *MEMORY[0x277D85DE8];
}

uint64_t __79__MTRPluginRemoteClient_deviceController_nodeID_getDeviceCachePrimedWithReply___block_invoke(void *a1)
{
  if (os_log_type_enabled(matterPluginLog_default, OS_LOG_TYPE_ERROR))
  {
    __79__MTRPluginRemoteClient_deviceController_nodeID_getDeviceCachePrimedWithReply___block_invoke_cold_1(a1);
  }

  return (*(a1[7] + 16))();
}

uint64_t __79__MTRPluginRemoteClient_deviceController_nodeID_getDeviceCachePrimedWithReply___block_invoke_64(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 32);
  v3 = [MTRPluginPBMVariableValueResponseMessage variableValueFromResponsePayloadData:a2];
  v4 = [v3 object];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = [v3 object];
  }

  else
  {
    v5 = 0;
  }

  v6 = [v5 BOOLValue];
  v7 = *(v2 + 16);

  return v7(v2, v6);
}

- (void)deviceController:(id)controller nodeID:(id)d getEstimatedStartTimeWithReply:(id)reply
{
  v29 = *MEMORY[0x277D85DE8];
  controllerCopy = controller;
  dCopy = d;
  replyCopy = reply;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  v12 = matterPluginLog_default;
  if (os_log_type_enabled(matterPluginLog_default, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412802;
    v24 = selfCopy;
    v25 = 2112;
    v26 = dCopy;
    v27 = 2112;
    v28 = controllerCopy;
    _os_log_impl(&dword_25830F000, v12, OS_LOG_TYPE_DEFAULT, "%@ Forwarding remote request to get device estimatedStartTime for nodeID: %@ for controllerID: %@", buf, 0x20u);
  }

  v19[0] = MEMORY[0x277D85DD0];
  v19[1] = 3221225472;
  v19[2] = __80__MTRPluginRemoteClient_deviceController_nodeID_getEstimatedStartTimeWithReply___block_invoke;
  v19[3] = &unk_279893F88;
  v19[4] = selfCopy;
  v13 = dCopy;
  v20 = v13;
  v14 = controllerCopy;
  v21 = v14;
  v22 = replyCopy;
  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 3221225472;
  v17[2] = __80__MTRPluginRemoteClient_deviceController_nodeID_getEstimatedStartTimeWithReply___block_invoke_65;
  v17[3] = &unk_279893FD8;
  v15 = v22;
  v18 = v15;
  [(MTRPluginRemoteClient *)selfCopy sendDeviceMessageToNodeWithID:v13 homeID:v14 deviceNodeMessageType:1003 metric:0 errorBlock:v19 replyBlock:v17];

  objc_sync_exit(selfCopy);
  v16 = *MEMORY[0x277D85DE8];
}

uint64_t __80__MTRPluginRemoteClient_deviceController_nodeID_getEstimatedStartTimeWithReply___block_invoke(void *a1)
{
  if (os_log_type_enabled(matterPluginLog_default, OS_LOG_TYPE_ERROR))
  {
    __80__MTRPluginRemoteClient_deviceController_nodeID_getEstimatedStartTimeWithReply___block_invoke_cold_1(a1);
  }

  return (*(a1[7] + 16))();
}

void __80__MTRPluginRemoteClient_deviceController_nodeID_getEstimatedStartTimeWithReply___block_invoke_65(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 32);
  v3 = [MTRPluginPBMVariableValueResponseMessage variableValueFromResponsePayloadData:a2];
  v4 = [v3 object];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = [v3 object];
  }

  else
  {
    v5 = 0;
  }

  (*(v2 + 16))(v2, v5);
}

- (void)deviceController:(id)controller nodeID:(id)d getEstimatedSubscriptionLatencyWithReply:(id)reply
{
  v29 = *MEMORY[0x277D85DE8];
  controllerCopy = controller;
  dCopy = d;
  replyCopy = reply;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  v12 = matterPluginLog_default;
  if (os_log_type_enabled(matterPluginLog_default, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412802;
    v24 = selfCopy;
    v25 = 2112;
    v26 = dCopy;
    v27 = 2112;
    v28 = controllerCopy;
    _os_log_impl(&dword_25830F000, v12, OS_LOG_TYPE_DEFAULT, "%@ Forwarding remote request to get device estimatedSubscriptionLatency for nodeID: %@ for controllerID: %@", buf, 0x20u);
  }

  v19[0] = MEMORY[0x277D85DD0];
  v19[1] = 3221225472;
  v19[2] = __90__MTRPluginRemoteClient_deviceController_nodeID_getEstimatedSubscriptionLatencyWithReply___block_invoke;
  v19[3] = &unk_279893F88;
  v19[4] = selfCopy;
  v13 = dCopy;
  v20 = v13;
  v14 = controllerCopy;
  v21 = v14;
  v22 = replyCopy;
  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 3221225472;
  v17[2] = __90__MTRPluginRemoteClient_deviceController_nodeID_getEstimatedSubscriptionLatencyWithReply___block_invoke_66;
  v17[3] = &unk_279893FD8;
  v15 = v22;
  v18 = v15;
  [(MTRPluginRemoteClient *)selfCopy sendDeviceMessageToNodeWithID:v13 homeID:v14 deviceNodeMessageType:1004 metric:0 errorBlock:v19 replyBlock:v17];

  objc_sync_exit(selfCopy);
  v16 = *MEMORY[0x277D85DE8];
}

uint64_t __90__MTRPluginRemoteClient_deviceController_nodeID_getEstimatedSubscriptionLatencyWithReply___block_invoke(void *a1)
{
  if (os_log_type_enabled(matterPluginLog_default, OS_LOG_TYPE_ERROR))
  {
    __90__MTRPluginRemoteClient_deviceController_nodeID_getEstimatedSubscriptionLatencyWithReply___block_invoke_cold_1(a1);
  }

  return (*(a1[7] + 16))();
}

void __90__MTRPluginRemoteClient_deviceController_nodeID_getEstimatedSubscriptionLatencyWithReply___block_invoke_66(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 32);
  v3 = [MTRPluginPBMVariableValueResponseMessage variableValueFromResponsePayloadData:a2];
  v4 = [v3 object];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = [v3 object];
  }

  else
  {
    v5 = 0;
  }

  (*(v2 + 16))(v2, v5);
}

- (void)deviceController:(id)controller nodeID:(id)d readAttributeWithEndpointID:(id)iD clusterID:(id)clusterID attributeID:(id)attributeID params:(id)params withReply:(id)reply
{
  v45 = *MEMORY[0x277D85DE8];
  controllerCopy = controller;
  dCopy = d;
  iDCopy = iD;
  clusterIDCopy = clusterID;
  attributeIDCopy = attributeID;
  paramsCopy = params;
  replyCopy = reply;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  v23 = matterPluginLog_default;
  if (os_log_type_enabled(matterPluginLog_default, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138413826;
    v32 = selfCopy;
    v33 = 2112;
    v34 = iDCopy;
    v35 = 2112;
    v36 = clusterIDCopy;
    v37 = 2112;
    v38 = attributeIDCopy;
    v39 = 2112;
    v40 = paramsCopy;
    v41 = 2112;
    v42 = dCopy;
    v43 = 2112;
    v44 = controllerCopy;
    _os_log_impl(&dword_25830F000, v23, OS_LOG_TYPE_DEFAULT, "%@ Forwarding remote request to readAttribute: endpointID (%@), clusterID (%@), attributeID (%@), readParams (%@) from device nodeID (%@) for controllerID %@", buf, 0x48u);
  }

  v24 = [MTRPluginPBMDeviceNodeReadAttributeMessage deviceNodeReadAttributeMessageWithNodeID:dCopy endpointID:iDCopy clusterID:clusterIDCopy attributeID:attributeIDCopy readParams:paramsCopy];
  v29[0] = MEMORY[0x277D85DD0];
  v29[1] = 3221225472;
  v29[2] = __116__MTRPluginRemoteClient_deviceController_nodeID_readAttributeWithEndpointID_clusterID_attributeID_params_withReply___block_invoke;
  v29[3] = &unk_279894000;
  v29[4] = selfCopy;
  v30 = replyCopy;
  v27[0] = MEMORY[0x277D85DD0];
  v27[1] = 3221225472;
  v27[2] = __116__MTRPluginRemoteClient_deviceController_nodeID_readAttributeWithEndpointID_clusterID_attributeID_params_withReply___block_invoke_68;
  v27[3] = &unk_279894028;
  v27[4] = selfCopy;
  v25 = v30;
  v28 = v25;
  [(MTRPluginRemoteClient *)selfCopy sendMessageToHomeWithID:controllerCopy messageType:1005 pbCodable:v24 timeout:0 metrics:v29 errorBlock:v27 replyBlock:60.0];

  objc_sync_exit(selfCopy);
  v26 = *MEMORY[0x277D85DE8];
}

void __116__MTRPluginRemoteClient_deviceController_nodeID_readAttributeWithEndpointID_clusterID_attributeID_params_withReply___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if (os_log_type_enabled(matterPluginLog_default, OS_LOG_TYPE_ERROR))
  {
    __116__MTRPluginRemoteClient_deviceController_nodeID_readAttributeWithEndpointID_clusterID_attributeID_params_withReply___block_invoke_cold_1(a1);
  }

  (*(*(a1 + 40) + 16))();
}

void __116__MTRPluginRemoteClient_deviceController_nodeID_readAttributeWithEndpointID_clusterID_attributeID_params_withReply___block_invoke_68(uint64_t a1, uint64_t a2)
{
  v13 = *MEMORY[0x277D85DE8];
  v3 = [MTRPluginPBMVariableValueResponseMessage variableValueFromResponsePayloadData:a2];
  v4 = [v3 object];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = [v3 object];
  }

  else
  {
    v5 = 0;
  }

  v6 = matterPluginLog_default;
  if (os_log_type_enabled(matterPluginLog_default, OS_LOG_TYPE_DEFAULT))
  {
    v7 = *(a1 + 32);
    v9 = 138412546;
    v10 = v7;
    v11 = 2112;
    v12 = v5;
    _os_log_impl(&dword_25830F000, v6, OS_LOG_TYPE_DEFAULT, "%@ Successfully finished readAttribute with value: %@", &v9, 0x16u);
  }

  (*(*(a1 + 40) + 16))();

  v8 = *MEMORY[0x277D85DE8];
}

- (void)deviceController:(id)controller nodeID:(id)d readAttributePaths:(id)paths withReply:(id)reply
{
  v39 = *MEMORY[0x277D85DE8];
  controllerCopy = controller;
  dCopy = d;
  pathsCopy = paths;
  replyCopy = reply;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  v15 = matterPluginLog_default;
  if (os_log_type_enabled(matterPluginLog_default, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138413058;
    v32 = selfCopy;
    v33 = 2112;
    v34 = pathsCopy;
    v35 = 2112;
    v36 = dCopy;
    v37 = 2112;
    v38 = controllerCopy;
    _os_log_impl(&dword_25830F000, v15, OS_LOG_TYPE_DEFAULT, "%@ Forwarding remote request to read multiple attributes: %@ from device nodeID (%@) for controllerID %@", buf, 0x2Au);
  }

  v16 = [MTRPluginPBMDeviceNodeReadMultipleAttributesMessage deviceNodeReadMultipleAttributesMessageWithNodeID:dCopy readAttributePaths:pathsCopy];
  v17 = [MTRPluginRemoteClient deviceFromNodeID:dCopy controllerID:controllerCopy];
  v18 = [MTRPluginBulkReadAttributeMetric bulkReadAttributeMetricForDevice:v17 homeID:controllerCopy remoteMessageID:0];

  if (v18)
  {
    v30 = v18;
    v19 = [MEMORY[0x277CBEA60] arrayWithObjects:&v30 count:1];
  }

  else
  {
    v19 = 0;
  }

  v27[0] = MEMORY[0x277D85DD0];
  v27[1] = 3221225472;
  v27[2] = __78__MTRPluginRemoteClient_deviceController_nodeID_readAttributePaths_withReply___block_invoke;
  v27[3] = &unk_279894050;
  v27[4] = selfCopy;
  v28 = v18;
  v29 = replyCopy;
  v23[0] = MEMORY[0x277D85DD0];
  v23[1] = 3221225472;
  v23[2] = __78__MTRPluginRemoteClient_deviceController_nodeID_readAttributePaths_withReply___block_invoke_72;
  v23[3] = &unk_279893FB0;
  v20 = v28;
  v24 = v20;
  v25 = selfCopy;
  v21 = v29;
  v26 = v21;
  [(MTRPluginRemoteClient *)selfCopy sendMessageToHomeWithID:controllerCopy messageType:1015 pbCodable:v16 timeout:v19 metrics:v27 errorBlock:v23 replyBlock:60.0];
  if (v18)
  {
  }

  objc_sync_exit(selfCopy);
  v22 = *MEMORY[0x277D85DE8];
}

void __78__MTRPluginRemoteClient_deviceController_nodeID_readAttributePaths_withReply___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if (os_log_type_enabled(matterPluginLog_default, OS_LOG_TYPE_ERROR))
  {
    __78__MTRPluginRemoteClient_deviceController_nodeID_readAttributePaths_withReply___block_invoke_cold_1(a1);
  }

  v4 = +[MTRPluginMetricsCollector sharedInstance];
  [v4 collectMetric:*(a1 + 40) error:v3];

  (*(*(a1 + 48) + 16))();
}

void __78__MTRPluginRemoteClient_deviceController_nodeID_readAttributePaths_withReply___block_invoke_72(void *a1, void *a2)
{
  v15 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = +[MTRPluginMetricsCollector sharedInstance];
  [v4 collectMetric:a1[4]];

  v5 = [MTRPluginPBMVariableValueResponseMessage variableValueFromResponsePayloadData:v3];

  v6 = [v5 object];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v7 = [v5 object];
  }

  else
  {
    v7 = 0;
  }

  v8 = matterPluginLog_default;
  if (os_log_type_enabled(matterPluginLog_default, OS_LOG_TYPE_DEFAULT))
  {
    v9 = a1[5];
    v11 = 138412546;
    v12 = v9;
    v13 = 2112;
    v14 = v7;
    _os_log_impl(&dword_25830F000, v8, OS_LOG_TYPE_DEFAULT, "%@ Successfully finished readMultipleAttributes with value: %@", &v11, 0x16u);
  }

  (*(a1[6] + 16))();

  v10 = *MEMORY[0x277D85DE8];
}

- (void)deviceController:(id)controller nodeID:(id)d writeAttributeWithEndpointID:(id)iD clusterID:(id)clusterID attributeID:(id)attributeID value:(id)value expectedValueInterval:(id)interval timedWriteTimeout:(id)self0
{
  v55 = *MEMORY[0x277D85DE8];
  controllerCopy = controller;
  dCopy = d;
  iDCopy = iD;
  clusterIDCopy = clusterID;
  attributeIDCopy = attributeID;
  valueCopy = value;
  intervalCopy = interval;
  timeoutCopy = timeout;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  v24 = matterPluginLog_default;
  if (os_log_type_enabled(matterPluginLog_default, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138413826;
    v42 = selfCopy;
    v43 = 2112;
    v44 = iDCopy;
    v45 = 2112;
    v46 = clusterIDCopy;
    v47 = 2112;
    v48 = attributeIDCopy;
    v49 = 2112;
    v50 = valueCopy;
    v51 = 2112;
    v52 = dCopy;
    v53 = 2112;
    v54 = controllerCopy;
    _os_log_impl(&dword_25830F000, v24, OS_LOG_TYPE_DEFAULT, "%@ Forwarding remote request to writeAttribute: endpointID (%@), clusterID (%@), attributeID (%@), value (%@) from device nodeID (%@) for controllerID %@", buf, 0x48u);
  }

  v25 = iDCopy;
  v38 = valueCopy;
  v26 = [MTRPluginPBMDeviceNodeWriteAttributeMessage deviceNodeWriteAttributeMessageWithNodeID:dCopy endpointID:iDCopy clusterID:clusterIDCopy attributeID:attributeIDCopy value:valueCopy expectedValueInterval:intervalCopy timedWriteTimeout:timeoutCopy];
  v37 = dCopy;
  v27 = dCopy;
  v28 = controllerCopy;
  v29 = [MTRPluginRemoteClient deviceFromNodeID:v27 controllerID:controllerCopy];
  v30 = v25;
  client = [(MTRPluginRemoteClient *)selfCopy client];
  LOBYTE(v36) = timeoutCopy != 0;
  v32 = +[MTRPluginWriteAttributeMetric writeAttributeMetricForDevice:homeID:clientType:endpointID:clusterID:attributeID:timedWrite:remoteMessageID:](MTRPluginWriteAttributeMetric, "writeAttributeMetricForDevice:homeID:clientType:endpointID:clusterID:attributeID:timedWrite:remoteMessageID:", v29, v28, [client clientType], v30, clusterIDCopy, attributeIDCopy, v36, 0);

  if (v32)
  {
    v40 = v32;
    v33 = [MEMORY[0x277CBEA60] arrayWithObjects:&v40 count:1];
  }

  else
  {
    v33 = 0;
  }

  [(MTRPluginRemoteClient *)selfCopy sendMessageToHomeWithID:v28 messageType:1006 pbCodable:v26 timeout:v33 metrics:0 errorBlock:0 replyBlock:60.0];
  if (v32)
  {
  }

  v34 = +[MTRPluginMetricsCollector sharedInstance];
  [v34 collectMetric:v32];

  objc_sync_exit(selfCopy);
  v35 = *MEMORY[0x277D85DE8];
}

+ (id)deviceFromNodeID:(id)d controllerID:(id)iD
{
  dCopy = d;
  iDCopy = iD;
  v7 = +[MTRPluginDeviceControllerRegistry sharedInstance];
  v8 = [v7 deviceControllerForUUID:iDCopy];

  if (v8)
  {
    v9 = [MEMORY[0x277CD5310] deviceWithNodeID:dCopy controller:v8];
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (void)deviceController:(id)controller nodeID:(id)d invokeCommandWithEndpointID:(id)iD clusterID:(id)clusterID commandID:(id)commandID commandFields:(id)fields expectedValues:(id)values expectedValueInterval:(id)self0 timedInvokeTimeout:(id)self1 serverSideProcessingTimeout:(id)self2 completion:(id)self3
{
  v79 = *MEMORY[0x277D85DE8];
  controllerCopy = controller;
  dCopy = d;
  iDCopy = iD;
  clusterIDCopy = clusterID;
  commandIDCopy = commandID;
  fieldsCopy = fields;
  valuesCopy = values;
  intervalCopy = interval;
  v24 = commandIDCopy;
  timeoutCopy = timeout;
  processingTimeoutCopy = processingTimeout;
  completionCopy = completion;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  v28 = matterPluginLog_default;
  if (os_log_type_enabled(matterPluginLog_default, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138414850;
    v58 = selfCopy;
    v59 = 2112;
    v60 = iDCopy;
    v61 = 2112;
    v62 = clusterIDCopy;
    v63 = 2112;
    v64 = v24;
    v65 = 2112;
    v66 = fieldsCopy;
    v67 = 2112;
    v68 = valuesCopy;
    v69 = 2112;
    v70 = intervalCopy;
    v71 = 2112;
    v72 = timeoutCopy;
    v73 = 2112;
    v74 = processingTimeoutCopy;
    v75 = 2112;
    v76 = dCopy;
    v77 = 2112;
    v78 = controllerCopy;
    _os_log_impl(&dword_25830F000, v28, OS_LOG_TYPE_DEFAULT, "%@ Forwarding remote request to invokeCommand: endpointID (%@), clusterID (%@), commandID (%@), commandFields (%@), expectedValues (%@),                expectedValueInterval (%@), timedInvokeTimeout (%@), serverSideProcessingTimeout (%@), from device nodeID (%@) for controllerID %@", buf, 0x70u);
  }

  v45 = intervalCopy;
  v46 = timeoutCopy;
  v44 = valuesCopy;
  v48 = [MTRPluginPBMDeviceNodeInvokeCommmandMessage deviceNodeInvokeCommandMessageWithNodeID:dCopy invokeCommandWithEndpointID:iDCopy clusterID:clusterIDCopy commandID:v24 commandFields:fieldsCopy expectedValues:valuesCopy expectedValueInterval:intervalCopy timedInvokeTimeout:timeoutCopy serverSideProcessingTimeout:processingTimeoutCopy];
  v29 = clusterIDCopy;
  v30 = [MTRPluginRemoteClient deviceFromNodeID:dCopy controllerID:controllerCopy];
  client = [(MTRPluginRemoteClient *)selfCopy client];
  LOBYTE(v40) = v46 != 0;
  v32 = +[MTRPluginInvokeCommandMetric invokeCommandMetricForDevice:homeID:clientType:endpointID:clusterID:commandID:commandFields:expectedValues:expectedValueInterval:timedInvoke:remoteMessageID:](MTRPluginInvokeCommandMetric, "invokeCommandMetricForDevice:homeID:clientType:endpointID:clusterID:commandID:commandFields:expectedValues:expectedValueInterval:timedInvoke:remoteMessageID:", v30, controllerCopy, [client clientType], iDCopy, v29, v24, fieldsCopy, valuesCopy, v45, v40, 0);

  v41 = fieldsCopy;
  if (v32)
  {
    v56 = v32;
    v33 = [MEMORY[0x277CBEA60] arrayWithObjects:&v56 count:1];
    v34 = v24;
    v35 = iDCopy;
    v36 = dCopy;
  }

  else
  {
    v34 = v24;
    v35 = iDCopy;
    v36 = dCopy;
    v33 = 0;
  }

  v53[0] = MEMORY[0x277D85DD0];
  v53[1] = 3221225472;
  v53[2] = __206__MTRPluginRemoteClient_deviceController_nodeID_invokeCommandWithEndpointID_clusterID_commandID_commandFields_expectedValues_expectedValueInterval_timedInvokeTimeout_serverSideProcessingTimeout_completion___block_invoke;
  v53[3] = &unk_279894050;
  v53[4] = selfCopy;
  v54 = v32;
  v55 = completionCopy;
  v50[0] = MEMORY[0x277D85DD0];
  v50[1] = 3221225472;
  v50[2] = __206__MTRPluginRemoteClient_deviceController_nodeID_invokeCommandWithEndpointID_clusterID_commandID_commandFields_expectedValues_expectedValueInterval_timedInvokeTimeout_serverSideProcessingTimeout_completion___block_invoke_79;
  v50[3] = &unk_279893FB0;
  v50[4] = selfCopy;
  v37 = v54;
  v51 = v37;
  v38 = v55;
  v52 = v38;
  [(MTRPluginRemoteClient *)selfCopy sendMessageToHomeWithID:controllerCopy messageType:1007 pbCodable:v48 timeout:v33 metrics:v53 errorBlock:v50 replyBlock:60.0];
  if (v32)
  {
  }

  objc_sync_exit(selfCopy);
  v39 = *MEMORY[0x277D85DE8];
}

void __206__MTRPluginRemoteClient_deviceController_nodeID_invokeCommandWithEndpointID_clusterID_commandID_commandFields_expectedValues_expectedValueInterval_timedInvokeTimeout_serverSideProcessingTimeout_completion___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if (os_log_type_enabled(matterPluginLog_default, OS_LOG_TYPE_ERROR))
  {
    __206__MTRPluginRemoteClient_deviceController_nodeID_invokeCommandWithEndpointID_clusterID_commandID_commandFields_expectedValues_expectedValueInterval_timedInvokeTimeout_serverSideProcessingTimeout_completion___block_invoke_cold_1(a1);
  }

  v4 = +[MTRPluginMetricsCollector sharedInstance];
  [v4 collectMetric:*(a1 + 40) error:v3];

  (*(*(a1 + 48) + 16))();
}

void __206__MTRPluginRemoteClient_deviceController_nodeID_invokeCommandWithEndpointID_clusterID_commandID_commandFields_expectedValues_expectedValueInterval_timedInvokeTimeout_serverSideProcessingTimeout_completion___block_invoke_79(void *a1, uint64_t a2)
{
  v14 = *MEMORY[0x277D85DE8];
  v3 = [MTRPluginPBMVariableValueResponseMessage variableValueFromResponsePayloadData:a2];
  v4 = [v3 object];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = [v3 object];
  }

  else
  {
    v5 = 0;
  }

  v6 = matterPluginLog_default;
  if (os_log_type_enabled(matterPluginLog_default, OS_LOG_TYPE_DEFAULT))
  {
    v7 = a1[4];
    v10 = 138412546;
    v11 = v7;
    v12 = 2112;
    v13 = v5;
    _os_log_impl(&dword_25830F000, v6, OS_LOG_TYPE_DEFAULT, "%@ Successfully completed invokeCommand with response: %@", &v10, 0x16u);
  }

  v8 = +[MTRPluginMetricsCollector sharedInstance];
  [v8 collectMetric:a1[5]];

  (*(a1[6] + 16))();
  v9 = *MEMORY[0x277D85DE8];
}

- (void)deviceController:(id)controller nodeID:(id)d invokeCommands:(id)commands completion:(id)completion
{
  v66 = *MEMORY[0x277D85DE8];
  controllerCopy = controller;
  dCopy = d;
  commandsCopy = commands;
  completionCopy = completion;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  v12 = matterPluginLog_default;
  if (os_log_type_enabled(matterPluginLog_default, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138413058;
    v59 = selfCopy;
    v60 = 2112;
    v61 = commandsCopy;
    v62 = 2112;
    v63 = dCopy;
    v64 = 2112;
    v65 = controllerCopy;
    _os_log_impl(&dword_25830F000, v12, OS_LOG_TYPE_DEFAULT, "%@ Forwarding remote request to invokeBatchCommand: commands (%@), from device nodeID (%@) for controllerID %@", buf, 0x2Au);
  }

  v39 = dCopy;
  v32 = [MTRPluginPBMDeviceNodeInvokeBatchCommmandMessage deviceNodeInvokeBatchCommandMessageWithNodeID:dCopy commands:commandsCopy];
  array = [MEMORY[0x277CBEB18] array];
  v54 = 0u;
  v55 = 0u;
  v52 = 0u;
  v53 = 0u;
  obj = commandsCopy;
  v35 = [obj countByEnumeratingWithState:&v52 objects:v57 count:16];
  if (v35)
  {
    v34 = *v53;
    do
    {
      v36 = 0;
      do
      {
        if (*v53 != v34)
        {
          objc_enumerationMutation(obj);
        }

        v13 = *(*(&v52 + 1) + 8 * v36);
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v14 = v13;
        }

        else
        {
          v14 = 0;
        }

        v15 = v14;
        v48 = 0u;
        v49 = 0u;
        v50 = 0u;
        v51 = 0u;
        v37 = v15;
        v16 = [v37 countByEnumeratingWithState:&v48 objects:v56 count:16];
        if (v16)
        {
          v17 = *v49;
          do
          {
            v18 = 0;
            do
            {
              if (*v49 != v17)
              {
                objc_enumerationMutation(v37);
              }

              v19 = *(*(&v48 + 1) + 8 * v18);
              objc_opt_class();
              if (objc_opt_isKindOfClass())
              {
                v20 = v19;
              }

              else
              {
                v20 = 0;
              }

              v21 = v20;
              if (v21)
              {
                v22 = [MTRPluginRemoteClient deviceFromNodeID:v39 controllerID:controllerCopy];
                client = [(MTRPluginRemoteClient *)selfCopy client];
                clientType = [client clientType];
                path = [v21 path];
                commandFields = [v21 commandFields];
                v27 = [MTRPluginInvokeCommandMetric invokeBatchCommandMetricForDevice:v22 homeID:controllerCopy clientType:clientType commandPath:path commandFields:commandFields remoteMessageID:0];

                [array addObject:v27];
              }

              ++v18;
            }

            while (v16 != v18);
            v16 = [v37 countByEnumeratingWithState:&v48 objects:v56 count:16];
          }

          while (v16);
        }

        ++v36;
      }

      while (v36 != v35);
      v35 = [obj countByEnumeratingWithState:&v52 objects:v57 count:16];
    }

    while (v35);
  }

  v45[0] = MEMORY[0x277D85DD0];
  v45[1] = 3221225472;
  v45[2] = __75__MTRPluginRemoteClient_deviceController_nodeID_invokeCommands_completion___block_invoke;
  v45[3] = &unk_279894050;
  v45[4] = selfCopy;
  v46 = array;
  v47 = completionCopy;
  v42[0] = MEMORY[0x277D85DD0];
  v42[1] = 3221225472;
  v42[2] = __75__MTRPluginRemoteClient_deviceController_nodeID_invokeCommands_completion___block_invoke_83;
  v42[3] = &unk_279893FB0;
  v42[4] = selfCopy;
  v28 = v46;
  v43 = v28;
  v29 = v47;
  v44 = v29;
  [(MTRPluginRemoteClient *)selfCopy sendMessageToHomeWithID:controllerCopy messageType:1017 pbCodable:v32 timeout:v28 metrics:v45 errorBlock:v42 replyBlock:60.0];

  objc_sync_exit(selfCopy);
  v30 = *MEMORY[0x277D85DE8];
}

void __75__MTRPluginRemoteClient_deviceController_nodeID_invokeCommands_completion___block_invoke(uint64_t a1, void *a2)
{
  v17 = *MEMORY[0x277D85DE8];
  v3 = a2;
  if (os_log_type_enabled(matterPluginLog_default, OS_LOG_TYPE_ERROR))
  {
    __75__MTRPluginRemoteClient_deviceController_nodeID_invokeCommands_completion___block_invoke_cold_1(a1);
  }

  v14 = 0u;
  v15 = 0u;
  v12 = 0u;
  v13 = 0u;
  v4 = *(a1 + 40);
  v5 = [v4 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v13;
    do
    {
      v8 = 0;
      do
      {
        if (*v13 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v12 + 1) + 8 * v8);
        v10 = +[MTRPluginMetricsCollector sharedInstance];
        [v10 collectMetric:v9 error:v3];

        ++v8;
      }

      while (v6 != v8);
      v6 = [v4 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v6);
  }

  (*(*(a1 + 48) + 16))();
  v11 = *MEMORY[0x277D85DE8];
}

void __75__MTRPluginRemoteClient_deviceController_nodeID_invokeCommands_completion___block_invoke_83(uint64_t a1, uint64_t a2)
{
  v25 = *MEMORY[0x277D85DE8];
  v3 = [MTRPluginPBMVariableValueResponseMessage variableValueFromResponsePayloadData:a2];
  v4 = [v3 object];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = [v3 object];
  }

  else
  {
    v5 = 0;
  }

  v6 = matterPluginLog_default;
  if (os_log_type_enabled(matterPluginLog_default, OS_LOG_TYPE_DEFAULT))
  {
    v7 = *(a1 + 32);
    *buf = 138412546;
    v22 = v7;
    v23 = 2112;
    v24 = v5;
    _os_log_impl(&dword_25830F000, v6, OS_LOG_TYPE_DEFAULT, "%@ Successfully completed invokeBatchCommand with response: %@", buf, 0x16u);
  }

  v18 = 0u;
  v19 = 0u;
  v16 = 0u;
  v17 = 0u;
  v8 = *(a1 + 40);
  v9 = [v8 countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v17;
    do
    {
      v12 = 0;
      do
      {
        if (*v17 != v11)
        {
          objc_enumerationMutation(v8);
        }

        v13 = *(*(&v16 + 1) + 8 * v12);
        v14 = +[MTRPluginMetricsCollector sharedInstance];
        [v14 collectMetric:v13];

        ++v12;
      }

      while (v10 != v12);
      v10 = [v8 countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v10);
  }

  (*(*(a1 + 48) + 16))();
  v15 = *MEMORY[0x277D85DE8];
}

- (void)deviceController:(id)controller nodeID:(id)d downloadLogOfType:(int64_t)type timeout:(double)timeout completion:(id)completion
{
  v45 = *MEMORY[0x277D85DE8];
  controllerCopy = controller;
  dCopy = d;
  completionCopy = completion;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  v15 = matterPluginLog_default;
  if (os_log_type_enabled(matterPluginLog_default, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138413314;
    v36 = selfCopy;
    v37 = 1024;
    typeCopy = type;
    v39 = 2048;
    timeoutCopy = timeout;
    v41 = 2112;
    v42 = dCopy;
    v43 = 2112;
    v44 = controllerCopy;
    _os_log_impl(&dword_25830F000, v15, OS_LOG_TYPE_DEFAULT, "%@ Forwarding remote request to downloadLogOfType: (%d), timeout (%lf), from device nodeID (%@) for controllerID %@", buf, 0x30u);
  }

  completionCopy = [MTRPluginPBMDeviceNodeDownloadDiagnosticLog deviceNodeDownloadDiagnosticLogOfType:type timeout:dCopy nodeID:timeout, completionCopy];
  v17 = [MTRPluginRemoteClient deviceFromNodeID:dCopy controllerID:controllerCopy];
  client = [(MTRPluginRemoteClient *)selfCopy client];
  homeUUID = [client homeUUID];
  client2 = [(MTRPluginRemoteClient *)selfCopy client];
  v21 = +[MTRPluginDownloadDiagnosticLogMetric downloadDiagnosticMetricForDevice:homeID:clientType:logType:remoteMessageID:](MTRPluginDownloadDiagnosticLogMetric, "downloadDiagnosticMetricForDevice:homeID:clientType:logType:remoteMessageID:", v17, homeUUID, [client2 clientType], type, 0);

  if (v21)
  {
    v34 = v21;
    v22 = [MEMORY[0x277CBEA60] arrayWithObjects:&v34 count:1];
  }

  else
  {
    v22 = 0;
  }

  v31[0] = MEMORY[0x277D85DD0];
  v31[1] = 3221225472;
  v31[2] = __86__MTRPluginRemoteClient_deviceController_nodeID_downloadLogOfType_timeout_completion___block_invoke;
  v31[3] = &unk_279894050;
  v31[4] = selfCopy;
  v32 = v21;
  v33 = v27;
  v28[0] = MEMORY[0x277D85DD0];
  v28[1] = 3221225472;
  v28[2] = __86__MTRPluginRemoteClient_deviceController_nodeID_downloadLogOfType_timeout_completion___block_invoke_86;
  v28[3] = &unk_279893FB0;
  v28[4] = selfCopy;
  v23 = v32;
  v29 = v23;
  v24 = v33;
  v30 = v24;
  [(MTRPluginRemoteClient *)selfCopy sendMessageToHomeWithID:controllerCopy messageType:1016 pbCodable:completionCopy timeout:v22 metrics:v31 errorBlock:v28 replyBlock:timeout];
  if (v21)
  {
  }

  objc_sync_exit(selfCopy);
  v25 = *MEMORY[0x277D85DE8];
}

void __86__MTRPluginRemoteClient_deviceController_nodeID_downloadLogOfType_timeout_completion___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if (os_log_type_enabled(matterPluginLog_default, OS_LOG_TYPE_ERROR))
  {
    __86__MTRPluginRemoteClient_deviceController_nodeID_downloadLogOfType_timeout_completion___block_invoke_cold_1(a1);
  }

  v4 = +[MTRPluginMetricsCollector sharedInstance];
  [v4 collectMetric:*(a1 + 40) error:v3];

  (*(*(a1 + 48) + 16))();
}

void __86__MTRPluginRemoteClient_deviceController_nodeID_downloadLogOfType_timeout_completion___block_invoke_86(void *a1, uint64_t a2)
{
  v16 = *MEMORY[0x277D85DE8];
  v9 = 0;
  v3 = [MTRPluginPBMDeviceNodeDownloadDiagnosticLog urlFromResponsePayload:a2 error:&v9];
  v4 = v9;
  v5 = matterPluginLog_default;
  if (os_log_type_enabled(matterPluginLog_default, OS_LOG_TYPE_DEFAULT))
  {
    v6 = a1[4];
    *buf = 138412802;
    v11 = v6;
    v12 = 2112;
    v13 = v3;
    v14 = 2112;
    v15 = v4;
    _os_log_impl(&dword_25830F000, v5, OS_LOG_TYPE_DEFAULT, "%@ URL (%@) from response diagnostic log, error: %@", buf, 0x20u);
  }

  v7 = +[MTRPluginMetricsCollector sharedInstance];
  [v7 collectMetric:a1[5] error:v4];

  (*(a1[6] + 16))();
  v8 = *MEMORY[0x277D85DE8];
}

- (void)messageTransport:(id)transport handleDeviceStateChanged:(id)changed
{
  v31 = *MEMORY[0x277D85DE8];
  transportCopy = transport;
  changedCopy = changed;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  v9 = [MTRPluginPBMDeviceNodeMessage alloc];
  messageData = [changedCopy messageData];
  v11 = [(MTRPluginPBMDeviceNodeMessage *)v9 initWithData:messageData];

  if (!v11 && os_log_type_enabled(matterPluginLog_default, OS_LOG_TYPE_ERROR))
  {
    [MTRPluginRemoteClient messageTransport:handleDeviceStateChanged:];
  }

  v12 = MEMORY[0x277CCABB0];
  node = [(MTRPluginPBMDeviceNodeMessage *)v11 node];
  v14 = [v12 numberWithUnsignedLongLong:{objc_msgSend(node, "nodeID")}];

  value = [(MTRPluginPBMDeviceNodeMessage *)v11 value];
  object = [value object];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    value2 = [(MTRPluginPBMDeviceNodeMessage *)v11 value];
    object2 = [value2 object];
  }

  else
  {
    object2 = 0;
  }

  v19 = matterPluginLog_default;
  if (os_log_type_enabled(matterPluginLog_default, OS_LOG_TYPE_DEFAULT))
  {
    v25 = 138412802;
    v26 = selfCopy;
    v27 = 2112;
    v28 = v14;
    v29 = 2112;
    v30 = object2;
    _os_log_impl(&dword_25830F000, v19, OS_LOG_TYPE_DEFAULT, "%@ Received state changed for node ID: %@, state: %@", &v25, 0x20u);
  }

  if (v14)
  {
    client = [(MTRPluginRemoteClient *)selfCopy client];
    clientProxy = [client clientProxy];
    [clientProxy device:v14 stateChanged:{objc_msgSend(object2, "unsignedIntegerValue")}];
  }

  responseHandler = [changedCopy responseHandler];

  if (responseHandler)
  {
    responseHandler2 = [changedCopy responseHandler];
    responseHandler2[2](responseHandler2, 0, 0);
  }

  objc_sync_exit(selfCopy);
  v24 = *MEMORY[0x277D85DE8];
}

- (void)messageTransport:(id)transport handleDeviceAttributeReport:(id)report
{
  v34 = *MEMORY[0x277D85DE8];
  transportCopy = transport;
  reportCopy = report;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  v9 = [MTRPluginPBMDeviceNodeMessage alloc];
  messageData = [reportCopy messageData];
  v11 = [(MTRPluginPBMDeviceNodeMessage *)v9 initWithData:messageData];

  if (!v11 && os_log_type_enabled(matterPluginLog_default, OS_LOG_TYPE_ERROR))
  {
    [MTRPluginRemoteClient messageTransport:handleDeviceAttributeReport:];
  }

  v12 = MEMORY[0x277CCABB0];
  node = [(MTRPluginPBMDeviceNodeMessage *)v11 node];
  v14 = [v12 numberWithUnsignedLongLong:{objc_msgSend(node, "nodeID")}];

  value = [(MTRPluginPBMDeviceNodeMessage *)v11 value];
  object = [value object];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    value2 = [(MTRPluginPBMDeviceNodeMessage *)v11 value];
    object2 = [value2 object];
  }

  else
  {
    object2 = 0;
  }

  v19 = matterPluginLog_default;
  if (os_log_type_enabled(matterPluginLog_default, OS_LOG_TYPE_DEFAULT))
  {
    v28 = 138412802;
    v29 = selfCopy;
    v30 = 2112;
    v31 = v14;
    v32 = 2112;
    v33 = object2;
    _os_log_impl(&dword_25830F000, v19, OS_LOG_TYPE_DEFAULT, "%@ Received attribute report for node ID: %@, report: %@", &v28, 0x20u);
  }

  if (v14)
  {
    v20 = objc_autoreleasePoolPush();
    client = [(MTRPluginRemoteClient *)selfCopy client];
    localClient = [client localClient];
    [localClient device:v14 injectAttributeReport:object2];

    client2 = [(MTRPluginRemoteClient *)selfCopy client];
    clientProxy = [client2 clientProxy];
    [clientProxy device:v14 receivedAttributeReport:object2];

    objc_autoreleasePoolPop(v20);
  }

  responseHandler = [reportCopy responseHandler];

  if (responseHandler)
  {
    responseHandler2 = [reportCopy responseHandler];
    responseHandler2[2](responseHandler2, 0, 0);
  }

  objc_sync_exit(selfCopy);
  v27 = *MEMORY[0x277D85DE8];
}

- (void)messageTransport:(id)transport handleDeviceEventReport:(id)report
{
  v34 = *MEMORY[0x277D85DE8];
  transportCopy = transport;
  reportCopy = report;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  v9 = [MTRPluginPBMDeviceNodeMessage alloc];
  messageData = [reportCopy messageData];
  v11 = [(MTRPluginPBMDeviceNodeMessage *)v9 initWithData:messageData];

  if (!v11 && os_log_type_enabled(matterPluginLog_default, OS_LOG_TYPE_ERROR))
  {
    [MTRPluginRemoteClient messageTransport:handleDeviceEventReport:];
  }

  v12 = MEMORY[0x277CCABB0];
  node = [(MTRPluginPBMDeviceNodeMessage *)v11 node];
  v14 = [v12 numberWithUnsignedLongLong:{objc_msgSend(node, "nodeID")}];

  value = [(MTRPluginPBMDeviceNodeMessage *)v11 value];
  object = [value object];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    value2 = [(MTRPluginPBMDeviceNodeMessage *)v11 value];
    object2 = [value2 object];
  }

  else
  {
    object2 = 0;
  }

  v19 = matterPluginLog_default;
  if (os_log_type_enabled(matterPluginLog_default, OS_LOG_TYPE_DEFAULT))
  {
    v28 = 138412802;
    v29 = selfCopy;
    v30 = 2112;
    v31 = v14;
    v32 = 2112;
    v33 = object2;
    _os_log_impl(&dword_25830F000, v19, OS_LOG_TYPE_DEFAULT, "%@ Received event report for node ID: %@, report: %@", &v28, 0x20u);
  }

  if (v14)
  {
    v20 = objc_autoreleasePoolPush();
    client = [(MTRPluginRemoteClient *)selfCopy client];
    localClient = [client localClient];
    [localClient device:v14 injectEventReport:object2];

    client2 = [(MTRPluginRemoteClient *)selfCopy client];
    clientProxy = [client2 clientProxy];
    [clientProxy device:v14 receivedEventReport:object2];

    objc_autoreleasePoolPop(v20);
  }

  responseHandler = [reportCopy responseHandler];

  if (responseHandler)
  {
    responseHandler2 = [reportCopy responseHandler];
    responseHandler2[2](responseHandler2, 0, 0);
  }

  objc_sync_exit(selfCopy);
  v27 = *MEMORY[0x277D85DE8];
}

- (void)messageTransport:(id)transport handleDeviceBecameActive:(id)active
{
  v25 = *MEMORY[0x277D85DE8];
  transportCopy = transport;
  activeCopy = active;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  v9 = [MTRPluginPBMDeviceNodeMessage alloc];
  messageData = [activeCopy messageData];
  v11 = [(MTRPluginPBMDeviceNodeMessage *)v9 initWithData:messageData];

  if (!v11 && os_log_type_enabled(matterPluginLog_default, OS_LOG_TYPE_ERROR))
  {
    [MTRPluginRemoteClient messageTransport:handleDeviceBecameActive:];
  }

  v12 = MEMORY[0x277CCABB0];
  node = [(MTRPluginPBMDeviceNodeMessage *)v11 node];
  v14 = [v12 numberWithUnsignedLongLong:{objc_msgSend(node, "nodeID")}];

  v15 = matterPluginLog_default;
  if (os_log_type_enabled(matterPluginLog_default, OS_LOG_TYPE_DEFAULT))
  {
    v21 = 138412546;
    v22 = selfCopy;
    v23 = 2112;
    v24 = v14;
    _os_log_impl(&dword_25830F000, v15, OS_LOG_TYPE_DEFAULT, "%@ Received device became active for node ID: %@", &v21, 0x16u);
  }

  if (v14)
  {
    client = [(MTRPluginRemoteClient *)selfCopy client];
    clientProxy = [client clientProxy];
    [clientProxy deviceBecameActive:v14];
  }

  responseHandler = [activeCopy responseHandler];

  if (responseHandler)
  {
    responseHandler2 = [activeCopy responseHandler];
    responseHandler2[2](responseHandler2, 0, 0);
  }

  objc_sync_exit(selfCopy);
  v20 = *MEMORY[0x277D85DE8];
}

- (void)messageTransport:(id)transport handleDeviceCachePrimed:(id)primed
{
  v25 = *MEMORY[0x277D85DE8];
  transportCopy = transport;
  primedCopy = primed;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  v9 = [MTRPluginPBMDeviceNodeMessage alloc];
  messageData = [primedCopy messageData];
  v11 = [(MTRPluginPBMDeviceNodeMessage *)v9 initWithData:messageData];

  if (!v11 && os_log_type_enabled(matterPluginLog_default, OS_LOG_TYPE_ERROR))
  {
    [MTRPluginRemoteClient messageTransport:handleDeviceCachePrimed:];
  }

  v12 = MEMORY[0x277CCABB0];
  node = [(MTRPluginPBMDeviceNodeMessage *)v11 node];
  v14 = [v12 numberWithUnsignedLongLong:{objc_msgSend(node, "nodeID")}];

  v15 = matterPluginLog_default;
  if (os_log_type_enabled(matterPluginLog_default, OS_LOG_TYPE_DEFAULT))
  {
    v21 = 138412546;
    v22 = selfCopy;
    v23 = 2112;
    v24 = v14;
    _os_log_impl(&dword_25830F000, v15, OS_LOG_TYPE_DEFAULT, "%@ Received device cache primed for node ID: %@", &v21, 0x16u);
  }

  if (v14)
  {
    client = [(MTRPluginRemoteClient *)selfCopy client];
    clientProxy = [client clientProxy];
    [clientProxy deviceCachePrimed:v14];
  }

  responseHandler = [primedCopy responseHandler];

  if (responseHandler)
  {
    responseHandler2 = [primedCopy responseHandler];
    responseHandler2[2](responseHandler2, 0, 0);
  }

  objc_sync_exit(selfCopy);
  v20 = *MEMORY[0x277D85DE8];
}

- (void)messageTransport:(id)transport handleDeviceConfigurationChanged:(id)changed
{
  v25 = *MEMORY[0x277D85DE8];
  transportCopy = transport;
  changedCopy = changed;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  v9 = [MTRPluginPBMDeviceNodeMessage alloc];
  messageData = [changedCopy messageData];
  v11 = [(MTRPluginPBMDeviceNodeMessage *)v9 initWithData:messageData];

  if (!v11 && os_log_type_enabled(matterPluginLog_default, OS_LOG_TYPE_ERROR))
  {
    [MTRPluginRemoteClient messageTransport:handleDeviceConfigurationChanged:];
  }

  v12 = MEMORY[0x277CCABB0];
  node = [(MTRPluginPBMDeviceNodeMessage *)v11 node];
  v14 = [v12 numberWithUnsignedLongLong:{objc_msgSend(node, "nodeID")}];

  v15 = matterPluginLog_default;
  if (os_log_type_enabled(matterPluginLog_default, OS_LOG_TYPE_DEFAULT))
  {
    v21 = 138412546;
    v22 = selfCopy;
    v23 = 2112;
    v24 = v14;
    _os_log_impl(&dword_25830F000, v15, OS_LOG_TYPE_DEFAULT, "%@ Received device configChanged for node ID: %@", &v21, 0x16u);
  }

  if (v14)
  {
    client = [(MTRPluginRemoteClient *)selfCopy client];
    clientProxy = [client clientProxy];
    [clientProxy deviceConfigurationChanged:v14];
  }

  responseHandler = [changedCopy responseHandler];

  if (responseHandler)
  {
    responseHandler2 = [changedCopy responseHandler];
    responseHandler2[2](responseHandler2, 0, 0);
  }

  objc_sync_exit(selfCopy);
  v20 = *MEMORY[0x277D85DE8];
}

- (void)messageTransport:(id)transport handleDeviceInternalStateUpdated:(id)updated
{
  v29 = *MEMORY[0x277D85DE8];
  transportCopy = transport;
  updatedCopy = updated;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  v9 = [MTRPluginPBMDeviceNodeMessage alloc];
  messageData = [updatedCopy messageData];
  v11 = [(MTRPluginPBMDeviceNodeMessage *)v9 initWithData:messageData];

  if (!v11 && os_log_type_enabled(matterPluginLog_default, OS_LOG_TYPE_ERROR))
  {
    [MTRPluginRemoteClient messageTransport:handleDeviceInternalStateUpdated:];
  }

  v12 = MEMORY[0x277CCABB0];
  node = [(MTRPluginPBMDeviceNodeMessage *)v11 node];
  v14 = [v12 numberWithUnsignedLongLong:{objc_msgSend(node, "nodeID")}];

  value = [(MTRPluginPBMDeviceNodeMessage *)v11 value];
  object = [value object];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    value2 = [(MTRPluginPBMDeviceNodeMessage *)v11 value];
    object2 = [value2 object];
  }

  else
  {
    object2 = 0;
  }

  v19 = matterPluginLog_default;
  if (os_log_type_enabled(matterPluginLog_default, OS_LOG_TYPE_DEFAULT))
  {
    v25 = 138412546;
    v26 = selfCopy;
    v27 = 2112;
    v28 = v14;
    _os_log_impl(&dword_25830F000, v19, OS_LOG_TYPE_DEFAULT, "%@ Received device internal state changed for node ID: %@", &v25, 0x16u);
  }

  if (v14)
  {
    client = [(MTRPluginRemoteClient *)selfCopy client];
    clientProxy = [client clientProxy];
    [clientProxy device:v14 internalStateUpdated:object2];
  }

  responseHandler = [updatedCopy responseHandler];

  if (responseHandler)
  {
    responseHandler2 = [updatedCopy responseHandler];
    responseHandler2[2](responseHandler2, 0, 0);
  }

  objc_sync_exit(selfCopy);
  v24 = *MEMORY[0x277D85DE8];
}

- (void)messageTransport:(id)transport handleControllerConfigUpdated:(id)updated
{
  v28 = *MEMORY[0x277D85DE8];
  transportCopy = transport;
  updatedCopy = updated;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  v9 = [MTRPluginPBMDeviceControllerMessage alloc];
  messageData = [updatedCopy messageData];
  v11 = [(MTRPluginPBMDeviceControllerMessage *)v9 initWithData:messageData];

  if (v11)
  {
    value = [(MTRPluginPBMDeviceControllerMessage *)v11 value];
    object = [value object];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      value2 = [(MTRPluginPBMDeviceControllerMessage *)v11 value];
      object2 = [value2 object];
    }

    else
    {
      object2 = 0;
    }

    v16 = matterPluginLog_default;
    if (os_log_type_enabled(matterPluginLog_default, OS_LOG_TYPE_DEFAULT))
    {
      v24 = 138412546;
      v25 = selfCopy;
      v26 = 2112;
      v27 = object2;
      _os_log_impl(&dword_25830F000, v16, OS_LOG_TYPE_DEFAULT, "%@ Received controller configuration update %@", &v24, 0x16u);
    }

    if ([object2 count])
    {
      client = [(MTRPluginRemoteClient *)selfCopy client];
      clientProxy = [client clientProxy];
      client2 = [(MTRPluginRemoteClient *)selfCopy client];
      homeUUID = [client2 homeUUID];
      [clientProxy controller:homeUUID controllerConfigurationUpdated:object2];
    }

    responseHandler = [updatedCopy responseHandler];

    if (responseHandler)
    {
      responseHandler2 = [updatedCopy responseHandler];
      responseHandler2[2](responseHandler2, 0, 0);
    }
  }

  else if (os_log_type_enabled(matterPluginLog_default, OS_LOG_TYPE_ERROR))
  {
    [MTRPluginRemoteClient messageTransport:handleDeviceInternalStateUpdated:];
  }

  objc_sync_exit(selfCopy);
  v23 = *MEMORY[0x277D85DE8];
}

- (MTRPluginClient)client
{
  WeakRetained = objc_loadWeakRetained(&self->_client);

  return WeakRetained;
}

void __109__MTRPluginRemoteClient_sendMessageToHomeWithID_messageType_pbCodable_timeout_metrics_errorBlock_replyBlock___block_invoke_cold_1(uint64_t a1, void *a2, uint64_t a3)
{
  v21 = *MEMORY[0x277D85DE8];
  v5 = *(a1 + 32);
  v6 = *(a1 + 64);
  v7 = a2;
  v8 = [MTRPluginPBMHeader messageTypeAsString:v6];
  v9 = *(a1 + 40);
  v11 = 138413314;
  v12 = v5;
  v13 = 1024;
  v14 = v6;
  v15 = 2112;
  v16 = v8;
  v17 = 2112;
  v18 = v9;
  v19 = 2112;
  v20 = a3;
  _os_log_error_impl(&dword_25830F000, v7, OS_LOG_TYPE_ERROR, "%@ Response received for message type %d (%@) from homeID %@ with error: %@", &v11, 0x30u);

  v10 = *MEMORY[0x277D85DE8];
}

void __72__MTRPluginRemoteClient_deviceController_updateControllerConfiguration___block_invoke_cold_1(uint64_t a1)
{
  v9 = *MEMORY[0x277D85DE8];
  v1 = *(a1 + 32);
  v2 = *(a1 + 40);
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_2_0();
  _os_log_error_impl(v3, v4, v5, v6, v7, 0x20u);
  v8 = *MEMORY[0x277D85DE8];
}

void __67__MTRPluginRemoteClient_deviceController_nodeID_getStateWithReply___block_invoke_cold_1(void *a1)
{
  OUTLINED_FUNCTION_3_0(a1, *MEMORY[0x277D85DE8]);
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_4_0();
  OUTLINED_FUNCTION_5_0(&dword_25830F000, v1, v2, "%@ Failed to get state of device %@ from controller %@", v3, v4, v5, v6, v8);
  v7 = *MEMORY[0x277D85DE8];
}

void __79__MTRPluginRemoteClient_deviceController_nodeID_getDeviceCachePrimedWithReply___block_invoke_cold_1(void *a1)
{
  OUTLINED_FUNCTION_3_0(a1, *MEMORY[0x277D85DE8]);
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_4_0();
  OUTLINED_FUNCTION_5_0(&dword_25830F000, v1, v2, "%@ Failed to get cachePrimed of device %@ from controller %@", v3, v4, v5, v6, v8);
  v7 = *MEMORY[0x277D85DE8];
}

void __80__MTRPluginRemoteClient_deviceController_nodeID_getEstimatedStartTimeWithReply___block_invoke_cold_1(void *a1)
{
  OUTLINED_FUNCTION_3_0(a1, *MEMORY[0x277D85DE8]);
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_4_0();
  OUTLINED_FUNCTION_5_0(&dword_25830F000, v1, v2, "%@ Failed to getEstimatedStartTime of device %@ from controller %@", v3, v4, v5, v6, v8);
  v7 = *MEMORY[0x277D85DE8];
}

void __90__MTRPluginRemoteClient_deviceController_nodeID_getEstimatedSubscriptionLatencyWithReply___block_invoke_cold_1(void *a1)
{
  OUTLINED_FUNCTION_3_0(a1, *MEMORY[0x277D85DE8]);
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_4_0();
  OUTLINED_FUNCTION_5_0(&dword_25830F000, v1, v2, "%@ Failed to getEstimatedSubscriptionLatency of device %@ from controller %@", v3, v4, v5, v6, v8);
  v7 = *MEMORY[0x277D85DE8];
}

void __116__MTRPluginRemoteClient_deviceController_nodeID_readAttributeWithEndpointID_clusterID_attributeID_params_withReply___block_invoke_cold_1(uint64_t a1)
{
  OUTLINED_FUNCTION_4(a1, *MEMORY[0x277D85DE8]);
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_2_0();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0x16u);
  v6 = *MEMORY[0x277D85DE8];
}

void __78__MTRPluginRemoteClient_deviceController_nodeID_readAttributePaths_withReply___block_invoke_cold_1(uint64_t a1)
{
  OUTLINED_FUNCTION_4(a1, *MEMORY[0x277D85DE8]);
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_2_0();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0x16u);
  v6 = *MEMORY[0x277D85DE8];
}

void __206__MTRPluginRemoteClient_deviceController_nodeID_invokeCommandWithEndpointID_clusterID_commandID_commandFields_expectedValues_expectedValueInterval_timedInvokeTimeout_serverSideProcessingTimeout_completion___block_invoke_cold_1(uint64_t a1)
{
  OUTLINED_FUNCTION_4(a1, *MEMORY[0x277D85DE8]);
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_2_0();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0x16u);
  v6 = *MEMORY[0x277D85DE8];
}

void __75__MTRPluginRemoteClient_deviceController_nodeID_invokeCommands_completion___block_invoke_cold_1(uint64_t a1)
{
  OUTLINED_FUNCTION_4(a1, *MEMORY[0x277D85DE8]);
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_2_0();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0x16u);
  v6 = *MEMORY[0x277D85DE8];
}

void __86__MTRPluginRemoteClient_deviceController_nodeID_downloadLogOfType_timeout_completion___block_invoke_cold_1(uint64_t a1)
{
  OUTLINED_FUNCTION_4(a1, *MEMORY[0x277D85DE8]);
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_2_0();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0x16u);
  v6 = *MEMORY[0x277D85DE8];
}

- (void)messageTransport:handleDeviceStateChanged:.cold.1()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_2_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
  v5 = *MEMORY[0x277D85DE8];
}

- (void)messageTransport:handleDeviceAttributeReport:.cold.1()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_2_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
  v5 = *MEMORY[0x277D85DE8];
}

- (void)messageTransport:handleDeviceEventReport:.cold.1()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_2_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
  v5 = *MEMORY[0x277D85DE8];
}

- (void)messageTransport:handleDeviceBecameActive:.cold.1()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_2_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
  v5 = *MEMORY[0x277D85DE8];
}

- (void)messageTransport:handleDeviceCachePrimed:.cold.1()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_2_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
  v5 = *MEMORY[0x277D85DE8];
}

- (void)messageTransport:handleDeviceConfigurationChanged:.cold.1()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_2_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
  v5 = *MEMORY[0x277D85DE8];
}

- (void)messageTransport:handleDeviceInternalStateUpdated:.cold.1()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_2_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
  v5 = *MEMORY[0x277D85DE8];
}

@end