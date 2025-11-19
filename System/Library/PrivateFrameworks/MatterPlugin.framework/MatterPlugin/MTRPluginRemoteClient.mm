@interface MTRPluginRemoteClient
+ (id)deviceFromNodeID:(id)a3 controllerID:(id)a4;
- (MTRPluginClient)client;
- (MTRPluginRemoteClient)initWithClient:(id)a3 queue:(id)a4;
- (NSString)description;
- (void)_closeRemoteServerSession;
- (void)_registerForMessages;
- (void)dealloc;
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
- (void)messageTransport:(id)a3 handleControllerConfigUpdated:(id)a4;
- (void)messageTransport:(id)a3 handleDeviceAttributeReport:(id)a4;
- (void)messageTransport:(id)a3 handleDeviceBecameActive:(id)a4;
- (void)messageTransport:(id)a3 handleDeviceCachePrimed:(id)a4;
- (void)messageTransport:(id)a3 handleDeviceConfigurationChanged:(id)a4;
- (void)messageTransport:(id)a3 handleDeviceEventReport:(id)a4;
- (void)messageTransport:(id)a3 handleDeviceInternalStateUpdated:(id)a4;
- (void)messageTransport:(id)a3 handleDeviceStateChanged:(id)a4;
- (void)resume;
- (void)suspend;
@end

@implementation MTRPluginRemoteClient

- (MTRPluginRemoteClient)initWithClient:(id)a3 queue:(id)a4
{
  v23 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v18.receiver = self;
  v18.super_class = MTRPluginRemoteClient;
  v8 = [(MTRPluginRemoteClient *)&v18 init];
  if (v8)
  {
    v9 = +[MTRPluginProtobufOverModernTransport sharedInstance];
    [(MTRPluginRemoteClient *)v8 setTransport:v9];

    [(MTRPluginRemoteClient *)v8 setClient:v6];
    [(MTRPluginRemoteClient *)v8 setSuspended:0];
    v10 = [(MTRPluginRemoteClient *)v8 transport];
    v11 = [(MTRPluginRemoteClient *)v8 client];
    v12 = [v11 sessionID];
    [v10 setDelegate:v8 delegateQueue:v7 forSessionID:v12];

    [(MTRPluginRemoteClient *)v8 _registerForMessages];
    v13 = matterPluginLog_default;
    if (os_log_type_enabled(matterPluginLog_default, OS_LOG_TYPE_DEFAULT))
    {
      v14 = v13;
      v15 = [v6 sessionID];
      *buf = 138412546;
      v20 = v8;
      v21 = 2112;
      v22 = v15;
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
    v12 = self;
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
  v7 = [(MTRPluginRemoteClient *)self client];
  v8 = [v7 clientType];
  if (v8 >= 0xA)
  {
    v9 = [MEMORY[0x277CCACA8] stringWithFormat:@"(unknown: %i)", v8];
  }

  else
  {
    v9 = off_279894070[v8];
  }

  v10 = [v4 stringWithFormat:@"<%@: %p, clientType: %@>", v6, self, v9];

  objc_autoreleasePoolPop(v3);

  return v10;
}

- (void)invalidate
{
  v9 = *MEMORY[0x277D85DE8];
  v2 = self;
  objc_sync_enter(v2);
  v3 = objc_autoreleasePoolPush();
  v4 = matterPluginLog_default;
  if (os_log_type_enabled(matterPluginLog_default, OS_LOG_TYPE_DEFAULT))
  {
    v7 = 138412290;
    v8 = v2;
    _os_log_impl(&dword_25830F000, v4, OS_LOG_TYPE_DEFAULT, "%@ Invalidating remote client", &v7, 0xCu);
  }

  [(MTRPluginRemoteClient *)v2 _closeRemoteServerSession];
  v5 = [(MTRPluginRemoteClient *)v2 transport];
  [v5 removeDelegate:v2];

  objc_autoreleasePoolPop(v3);
  objc_sync_exit(v2);

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
    v6 = self;
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
    v6 = self;
    _os_log_impl(&dword_25830F000, v3, OS_LOG_TYPE_DEFAULT, "%@ Resumed remote client", &v5, 0xCu);
  }

  v4 = *MEMORY[0x277D85DE8];
}

- (void)_closeRemoteServerSession
{
  v17 = *MEMORY[0x277D85DE8];
  v3 = [(MTRPluginRemoteClient *)self client];
  v4 = [v3 homeUUID];

  if (v4)
  {
    v5 = matterPluginLog_default;
    if (os_log_type_enabled(matterPluginLog_default, OS_LOG_TYPE_DEFAULT))
    {
      v6 = v5;
      v7 = [(MTRPluginRemoteClient *)self client];
      v8 = [v7 homeUUID];
      v13 = 138412546;
      v14 = self;
      v15 = 2112;
      v16 = v8;
      _os_log_impl(&dword_25830F000, v6, OS_LOG_TYPE_DEFAULT, "%@ Sending session close to resident session for controller %@", &v13, 0x16u);
    }

    v9 = objc_alloc_init(MTRPluginPBMDeviceControllerMessage);
    v10 = [(MTRPluginRemoteClient *)self client];
    v11 = [v10 homeUUID];
    [(MTRPluginRemoteClient *)self sendOnewayMessageToHomeWithID:v11 messageType:8 pbCodable:v9 timeout:60.0];
  }

  v12 = *MEMORY[0x277D85DE8];
}

- (void)_registerForMessages
{
  v3 = [(MTRPluginRemoteClient *)self transport];
  v4 = [(MTRPluginRemoteClient *)self client];
  v5 = [v4 sessionID];
  [v3 registerForRequestMessageWithType:&unk_28697C510 requestHandler:sel_messageTransport_handleDeviceStateChanged_ forSessionID:v5];

  v6 = [(MTRPluginRemoteClient *)self transport];
  v7 = [(MTRPluginRemoteClient *)self client];
  v8 = [v7 sessionID];
  [v6 registerForRequestMessageWithType:&unk_28697C528 requestHandler:sel_messageTransport_handleDeviceAttributeReport_ forSessionID:v8];

  v9 = [(MTRPluginRemoteClient *)self transport];
  v10 = [(MTRPluginRemoteClient *)self client];
  v11 = [v10 sessionID];
  [v9 registerForRequestMessageWithType:&unk_28697C540 requestHandler:sel_messageTransport_handleDeviceEventReport_ forSessionID:v11];

  v12 = [(MTRPluginRemoteClient *)self transport];
  v13 = [(MTRPluginRemoteClient *)self client];
  v14 = [v13 sessionID];
  [v12 registerForRequestMessageWithType:&unk_28697C558 requestHandler:sel_messageTransport_handleDeviceBecameActive_ forSessionID:v14];

  v15 = [(MTRPluginRemoteClient *)self transport];
  v16 = [(MTRPluginRemoteClient *)self client];
  v17 = [v16 sessionID];
  [v15 registerForRequestMessageWithType:&unk_28697C570 requestHandler:sel_messageTransport_handleDeviceCachePrimed_ forSessionID:v17];

  v18 = [(MTRPluginRemoteClient *)self transport];
  v19 = [(MTRPluginRemoteClient *)self client];
  v20 = [v19 sessionID];
  [v18 registerForRequestMessageWithType:&unk_28697C588 requestHandler:sel_messageTransport_handleDeviceConfigurationChanged_ forSessionID:v20];

  v21 = [(MTRPluginRemoteClient *)self transport];
  v22 = [(MTRPluginRemoteClient *)self client];
  v23 = [v22 sessionID];
  [v21 registerForRequestMessageWithType:&unk_28697C5A0 requestHandler:sel_messageTransport_handleDeviceInternalStateUpdated_ forSessionID:v23];

  v26 = [(MTRPluginRemoteClient *)self transport];
  v24 = [(MTRPluginRemoteClient *)self client];
  v25 = [v24 sessionID];
  [v26 registerForRequestMessageWithType:&unk_28697C5B8 requestHandler:sel_messageTransport_handleControllerConfigUpdated_ forSessionID:v25];
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

- (void)deviceController:(id)a3 updateControllerConfiguration:(id)a4
{
  v26 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = self;
  objc_sync_enter(v8);
  v9 = matterPluginLog_default;
  if (os_log_type_enabled(matterPluginLog_default, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412802;
    v21 = v8;
    v22 = 2112;
    v23 = v6;
    v24 = 2112;
    v25 = v7;
    _os_log_impl(&dword_25830F000, v9, OS_LOG_TYPE_DEFAULT, "%@ Forwarding remote request to updateControllerConfiguration: %@ state: %@", buf, 0x20u);
  }

  v10 = [MTRPluginUpdateControllerConfigMetric updateControllerConfigMetricForHome:v6 remoteMessageID:0];
  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 3221225472;
  v17[2] = __72__MTRPluginRemoteClient_deviceController_updateControllerConfiguration___block_invoke;
  v17[3] = &unk_279893F38;
  v17[4] = v8;
  v11 = v6;
  v18 = v11;
  v19 = v10;
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __72__MTRPluginRemoteClient_deviceController_updateControllerConfiguration___block_invoke_61;
  v14[3] = &unk_279893F60;
  v12 = v19;
  v15 = v12;
  v16 = v8;
  [(MTRPluginRemoteClient *)v8 sendControllerMessageToHomeWithID:v11 controllerMessageType:9 queryRequestValue:v7 metric:v12 errorBlock:v17 replyBlock:v14];

  objc_sync_exit(v8);
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

- (void)deviceController:(id)a3 nodeID:(id)a4 getStateWithReply:(id)a5
{
  v30 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = self;
  objc_sync_enter(v11);
  v12 = matterPluginLog_default;
  if (os_log_type_enabled(matterPluginLog_default, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412802;
    v25 = v11;
    v26 = 2112;
    v27 = v9;
    v28 = 2112;
    v29 = v8;
    _os_log_impl(&dword_25830F000, v12, OS_LOG_TYPE_DEFAULT, "%@ Forwarding remote request to get device state for nodeID: %@ for controllerID: %@", buf, 0x20u);
  }

  v20[0] = MEMORY[0x277D85DD0];
  v20[1] = 3221225472;
  v20[2] = __67__MTRPluginRemoteClient_deviceController_nodeID_getStateWithReply___block_invoke;
  v20[3] = &unk_279893F88;
  v20[4] = v11;
  v21 = v9;
  v13 = v8;
  v22 = v13;
  v23 = v10;
  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 3221225472;
  v17[2] = __67__MTRPluginRemoteClient_deviceController_nodeID_getStateWithReply___block_invoke_63;
  v17[3] = &unk_279893FB0;
  v17[4] = v11;
  v14 = v21;
  v18 = v14;
  v15 = v23;
  v19 = v15;
  [(MTRPluginRemoteClient *)v11 sendDeviceMessageToNodeWithID:v14 homeID:v13 deviceNodeMessageType:1000 metric:0 errorBlock:v20 replyBlock:v17];

  objc_sync_exit(v11);
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

- (void)deviceController:(id)a3 nodeID:(id)a4 getDeviceCachePrimedWithReply:(id)a5
{
  v29 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = self;
  objc_sync_enter(v11);
  v12 = matterPluginLog_default;
  if (os_log_type_enabled(matterPluginLog_default, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412802;
    v24 = v11;
    v25 = 2112;
    v26 = v9;
    v27 = 2112;
    v28 = v8;
    _os_log_impl(&dword_25830F000, v12, OS_LOG_TYPE_DEFAULT, "%@ Forwarding remote request to get device is cache primed for nodeID: %@ for controllerID: %@", buf, 0x20u);
  }

  v19[0] = MEMORY[0x277D85DD0];
  v19[1] = 3221225472;
  v19[2] = __79__MTRPluginRemoteClient_deviceController_nodeID_getDeviceCachePrimedWithReply___block_invoke;
  v19[3] = &unk_279893F88;
  v19[4] = v11;
  v13 = v9;
  v20 = v13;
  v14 = v8;
  v21 = v14;
  v22 = v10;
  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 3221225472;
  v17[2] = __79__MTRPluginRemoteClient_deviceController_nodeID_getDeviceCachePrimedWithReply___block_invoke_64;
  v17[3] = &unk_279893FD8;
  v15 = v22;
  v18 = v15;
  [(MTRPluginRemoteClient *)v11 sendDeviceMessageToNodeWithID:v13 homeID:v14 deviceNodeMessageType:1001 metric:0 errorBlock:v19 replyBlock:v17];

  objc_sync_exit(v11);
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

- (void)deviceController:(id)a3 nodeID:(id)a4 getEstimatedStartTimeWithReply:(id)a5
{
  v29 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = self;
  objc_sync_enter(v11);
  v12 = matterPluginLog_default;
  if (os_log_type_enabled(matterPluginLog_default, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412802;
    v24 = v11;
    v25 = 2112;
    v26 = v9;
    v27 = 2112;
    v28 = v8;
    _os_log_impl(&dword_25830F000, v12, OS_LOG_TYPE_DEFAULT, "%@ Forwarding remote request to get device estimatedStartTime for nodeID: %@ for controllerID: %@", buf, 0x20u);
  }

  v19[0] = MEMORY[0x277D85DD0];
  v19[1] = 3221225472;
  v19[2] = __80__MTRPluginRemoteClient_deviceController_nodeID_getEstimatedStartTimeWithReply___block_invoke;
  v19[3] = &unk_279893F88;
  v19[4] = v11;
  v13 = v9;
  v20 = v13;
  v14 = v8;
  v21 = v14;
  v22 = v10;
  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 3221225472;
  v17[2] = __80__MTRPluginRemoteClient_deviceController_nodeID_getEstimatedStartTimeWithReply___block_invoke_65;
  v17[3] = &unk_279893FD8;
  v15 = v22;
  v18 = v15;
  [(MTRPluginRemoteClient *)v11 sendDeviceMessageToNodeWithID:v13 homeID:v14 deviceNodeMessageType:1003 metric:0 errorBlock:v19 replyBlock:v17];

  objc_sync_exit(v11);
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

- (void)deviceController:(id)a3 nodeID:(id)a4 getEstimatedSubscriptionLatencyWithReply:(id)a5
{
  v29 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = self;
  objc_sync_enter(v11);
  v12 = matterPluginLog_default;
  if (os_log_type_enabled(matterPluginLog_default, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412802;
    v24 = v11;
    v25 = 2112;
    v26 = v9;
    v27 = 2112;
    v28 = v8;
    _os_log_impl(&dword_25830F000, v12, OS_LOG_TYPE_DEFAULT, "%@ Forwarding remote request to get device estimatedSubscriptionLatency for nodeID: %@ for controllerID: %@", buf, 0x20u);
  }

  v19[0] = MEMORY[0x277D85DD0];
  v19[1] = 3221225472;
  v19[2] = __90__MTRPluginRemoteClient_deviceController_nodeID_getEstimatedSubscriptionLatencyWithReply___block_invoke;
  v19[3] = &unk_279893F88;
  v19[4] = v11;
  v13 = v9;
  v20 = v13;
  v14 = v8;
  v21 = v14;
  v22 = v10;
  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 3221225472;
  v17[2] = __90__MTRPluginRemoteClient_deviceController_nodeID_getEstimatedSubscriptionLatencyWithReply___block_invoke_66;
  v17[3] = &unk_279893FD8;
  v15 = v22;
  v18 = v15;
  [(MTRPluginRemoteClient *)v11 sendDeviceMessageToNodeWithID:v13 homeID:v14 deviceNodeMessageType:1004 metric:0 errorBlock:v19 replyBlock:v17];

  objc_sync_exit(v11);
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

- (void)deviceController:(id)a3 nodeID:(id)a4 readAttributeWithEndpointID:(id)a5 clusterID:(id)a6 attributeID:(id)a7 params:(id)a8 withReply:(id)a9
{
  v45 = *MEMORY[0x277D85DE8];
  v15 = a3;
  v16 = a4;
  v17 = a5;
  v18 = a6;
  v19 = a7;
  v20 = a8;
  v21 = a9;
  v22 = self;
  objc_sync_enter(v22);
  v23 = matterPluginLog_default;
  if (os_log_type_enabled(matterPluginLog_default, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138413826;
    v32 = v22;
    v33 = 2112;
    v34 = v17;
    v35 = 2112;
    v36 = v18;
    v37 = 2112;
    v38 = v19;
    v39 = 2112;
    v40 = v20;
    v41 = 2112;
    v42 = v16;
    v43 = 2112;
    v44 = v15;
    _os_log_impl(&dword_25830F000, v23, OS_LOG_TYPE_DEFAULT, "%@ Forwarding remote request to readAttribute: endpointID (%@), clusterID (%@), attributeID (%@), readParams (%@) from device nodeID (%@) for controllerID %@", buf, 0x48u);
  }

  v24 = [MTRPluginPBMDeviceNodeReadAttributeMessage deviceNodeReadAttributeMessageWithNodeID:v16 endpointID:v17 clusterID:v18 attributeID:v19 readParams:v20];
  v29[0] = MEMORY[0x277D85DD0];
  v29[1] = 3221225472;
  v29[2] = __116__MTRPluginRemoteClient_deviceController_nodeID_readAttributeWithEndpointID_clusterID_attributeID_params_withReply___block_invoke;
  v29[3] = &unk_279894000;
  v29[4] = v22;
  v30 = v21;
  v27[0] = MEMORY[0x277D85DD0];
  v27[1] = 3221225472;
  v27[2] = __116__MTRPluginRemoteClient_deviceController_nodeID_readAttributeWithEndpointID_clusterID_attributeID_params_withReply___block_invoke_68;
  v27[3] = &unk_279894028;
  v27[4] = v22;
  v25 = v30;
  v28 = v25;
  [(MTRPluginRemoteClient *)v22 sendMessageToHomeWithID:v15 messageType:1005 pbCodable:v24 timeout:0 metrics:v29 errorBlock:v27 replyBlock:60.0];

  objc_sync_exit(v22);
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

- (void)deviceController:(id)a3 nodeID:(id)a4 readAttributePaths:(id)a5 withReply:(id)a6
{
  v39 = *MEMORY[0x277D85DE8];
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  v14 = self;
  objc_sync_enter(v14);
  v15 = matterPluginLog_default;
  if (os_log_type_enabled(matterPluginLog_default, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138413058;
    v32 = v14;
    v33 = 2112;
    v34 = v12;
    v35 = 2112;
    v36 = v11;
    v37 = 2112;
    v38 = v10;
    _os_log_impl(&dword_25830F000, v15, OS_LOG_TYPE_DEFAULT, "%@ Forwarding remote request to read multiple attributes: %@ from device nodeID (%@) for controllerID %@", buf, 0x2Au);
  }

  v16 = [MTRPluginPBMDeviceNodeReadMultipleAttributesMessage deviceNodeReadMultipleAttributesMessageWithNodeID:v11 readAttributePaths:v12];
  v17 = [MTRPluginRemoteClient deviceFromNodeID:v11 controllerID:v10];
  v18 = [MTRPluginBulkReadAttributeMetric bulkReadAttributeMetricForDevice:v17 homeID:v10 remoteMessageID:0];

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
  v27[4] = v14;
  v28 = v18;
  v29 = v13;
  v23[0] = MEMORY[0x277D85DD0];
  v23[1] = 3221225472;
  v23[2] = __78__MTRPluginRemoteClient_deviceController_nodeID_readAttributePaths_withReply___block_invoke_72;
  v23[3] = &unk_279893FB0;
  v20 = v28;
  v24 = v20;
  v25 = v14;
  v21 = v29;
  v26 = v21;
  [(MTRPluginRemoteClient *)v14 sendMessageToHomeWithID:v10 messageType:1015 pbCodable:v16 timeout:v19 metrics:v27 errorBlock:v23 replyBlock:60.0];
  if (v18)
  {
  }

  objc_sync_exit(v14);
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

- (void)deviceController:(id)a3 nodeID:(id)a4 writeAttributeWithEndpointID:(id)a5 clusterID:(id)a6 attributeID:(id)a7 value:(id)a8 expectedValueInterval:(id)a9 timedWriteTimeout:(id)a10
{
  v55 = *MEMORY[0x277D85DE8];
  v16 = a3;
  v17 = a4;
  v18 = a5;
  v19 = a6;
  v20 = a7;
  v21 = a8;
  v39 = a9;
  v22 = a10;
  v23 = self;
  objc_sync_enter(v23);
  v24 = matterPluginLog_default;
  if (os_log_type_enabled(matterPluginLog_default, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138413826;
    v42 = v23;
    v43 = 2112;
    v44 = v18;
    v45 = 2112;
    v46 = v19;
    v47 = 2112;
    v48 = v20;
    v49 = 2112;
    v50 = v21;
    v51 = 2112;
    v52 = v17;
    v53 = 2112;
    v54 = v16;
    _os_log_impl(&dword_25830F000, v24, OS_LOG_TYPE_DEFAULT, "%@ Forwarding remote request to writeAttribute: endpointID (%@), clusterID (%@), attributeID (%@), value (%@) from device nodeID (%@) for controllerID %@", buf, 0x48u);
  }

  v25 = v18;
  v38 = v21;
  v26 = [MTRPluginPBMDeviceNodeWriteAttributeMessage deviceNodeWriteAttributeMessageWithNodeID:v17 endpointID:v18 clusterID:v19 attributeID:v20 value:v21 expectedValueInterval:v39 timedWriteTimeout:v22];
  v37 = v17;
  v27 = v17;
  v28 = v16;
  v29 = [MTRPluginRemoteClient deviceFromNodeID:v27 controllerID:v16];
  v30 = v25;
  v31 = [(MTRPluginRemoteClient *)v23 client];
  LOBYTE(v36) = v22 != 0;
  v32 = +[MTRPluginWriteAttributeMetric writeAttributeMetricForDevice:homeID:clientType:endpointID:clusterID:attributeID:timedWrite:remoteMessageID:](MTRPluginWriteAttributeMetric, "writeAttributeMetricForDevice:homeID:clientType:endpointID:clusterID:attributeID:timedWrite:remoteMessageID:", v29, v28, [v31 clientType], v30, v19, v20, v36, 0);

  if (v32)
  {
    v40 = v32;
    v33 = [MEMORY[0x277CBEA60] arrayWithObjects:&v40 count:1];
  }

  else
  {
    v33 = 0;
  }

  [(MTRPluginRemoteClient *)v23 sendMessageToHomeWithID:v28 messageType:1006 pbCodable:v26 timeout:v33 metrics:0 errorBlock:0 replyBlock:60.0];
  if (v32)
  {
  }

  v34 = +[MTRPluginMetricsCollector sharedInstance];
  [v34 collectMetric:v32];

  objc_sync_exit(v23);
  v35 = *MEMORY[0x277D85DE8];
}

+ (id)deviceFromNodeID:(id)a3 controllerID:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = +[MTRPluginDeviceControllerRegistry sharedInstance];
  v8 = [v7 deviceControllerForUUID:v6];

  if (v8)
  {
    v9 = [MEMORY[0x277CD5310] deviceWithNodeID:v5 controller:v8];
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (void)deviceController:(id)a3 nodeID:(id)a4 invokeCommandWithEndpointID:(id)a5 clusterID:(id)a6 commandID:(id)a7 commandFields:(id)a8 expectedValues:(id)a9 expectedValueInterval:(id)a10 timedInvokeTimeout:(id)a11 serverSideProcessingTimeout:(id)a12 completion:(id)a13
{
  v79 = *MEMORY[0x277D85DE8];
  v49 = a3;
  v43 = a4;
  v18 = a5;
  v19 = a6;
  v20 = a7;
  v21 = a8;
  v22 = a9;
  v23 = a10;
  v24 = v20;
  v25 = a11;
  v26 = a12;
  v42 = a13;
  v27 = self;
  objc_sync_enter(v27);
  v28 = matterPluginLog_default;
  if (os_log_type_enabled(matterPluginLog_default, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138414850;
    v58 = v27;
    v59 = 2112;
    v60 = v18;
    v61 = 2112;
    v62 = v19;
    v63 = 2112;
    v64 = v24;
    v65 = 2112;
    v66 = v21;
    v67 = 2112;
    v68 = v22;
    v69 = 2112;
    v70 = v23;
    v71 = 2112;
    v72 = v25;
    v73 = 2112;
    v74 = v26;
    v75 = 2112;
    v76 = v43;
    v77 = 2112;
    v78 = v49;
    _os_log_impl(&dword_25830F000, v28, OS_LOG_TYPE_DEFAULT, "%@ Forwarding remote request to invokeCommand: endpointID (%@), clusterID (%@), commandID (%@), commandFields (%@), expectedValues (%@),                expectedValueInterval (%@), timedInvokeTimeout (%@), serverSideProcessingTimeout (%@), from device nodeID (%@) for controllerID %@", buf, 0x70u);
  }

  v45 = v23;
  v46 = v25;
  v44 = v22;
  v48 = [MTRPluginPBMDeviceNodeInvokeCommmandMessage deviceNodeInvokeCommandMessageWithNodeID:v43 invokeCommandWithEndpointID:v18 clusterID:v19 commandID:v24 commandFields:v21 expectedValues:v22 expectedValueInterval:v23 timedInvokeTimeout:v25 serverSideProcessingTimeout:v26];
  v29 = v19;
  v30 = [MTRPluginRemoteClient deviceFromNodeID:v43 controllerID:v49];
  v31 = [(MTRPluginRemoteClient *)v27 client];
  LOBYTE(v40) = v46 != 0;
  v32 = +[MTRPluginInvokeCommandMetric invokeCommandMetricForDevice:homeID:clientType:endpointID:clusterID:commandID:commandFields:expectedValues:expectedValueInterval:timedInvoke:remoteMessageID:](MTRPluginInvokeCommandMetric, "invokeCommandMetricForDevice:homeID:clientType:endpointID:clusterID:commandID:commandFields:expectedValues:expectedValueInterval:timedInvoke:remoteMessageID:", v30, v49, [v31 clientType], v18, v29, v24, v21, v22, v45, v40, 0);

  v41 = v21;
  if (v32)
  {
    v56 = v32;
    v33 = [MEMORY[0x277CBEA60] arrayWithObjects:&v56 count:1];
    v34 = v24;
    v35 = v18;
    v36 = v43;
  }

  else
  {
    v34 = v24;
    v35 = v18;
    v36 = v43;
    v33 = 0;
  }

  v53[0] = MEMORY[0x277D85DD0];
  v53[1] = 3221225472;
  v53[2] = __206__MTRPluginRemoteClient_deviceController_nodeID_invokeCommandWithEndpointID_clusterID_commandID_commandFields_expectedValues_expectedValueInterval_timedInvokeTimeout_serverSideProcessingTimeout_completion___block_invoke;
  v53[3] = &unk_279894050;
  v53[4] = v27;
  v54 = v32;
  v55 = v42;
  v50[0] = MEMORY[0x277D85DD0];
  v50[1] = 3221225472;
  v50[2] = __206__MTRPluginRemoteClient_deviceController_nodeID_invokeCommandWithEndpointID_clusterID_commandID_commandFields_expectedValues_expectedValueInterval_timedInvokeTimeout_serverSideProcessingTimeout_completion___block_invoke_79;
  v50[3] = &unk_279893FB0;
  v50[4] = v27;
  v37 = v54;
  v51 = v37;
  v38 = v55;
  v52 = v38;
  [(MTRPluginRemoteClient *)v27 sendMessageToHomeWithID:v49 messageType:1007 pbCodable:v48 timeout:v33 metrics:v53 errorBlock:v50 replyBlock:60.0];
  if (v32)
  {
  }

  objc_sync_exit(v27);
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

- (void)deviceController:(id)a3 nodeID:(id)a4 invokeCommands:(id)a5 completion:(id)a6
{
  v66 = *MEMORY[0x277D85DE8];
  v41 = a3;
  v10 = a4;
  v11 = a5;
  v31 = a6;
  v40 = self;
  objc_sync_enter(v40);
  v12 = matterPluginLog_default;
  if (os_log_type_enabled(matterPluginLog_default, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138413058;
    v59 = v40;
    v60 = 2112;
    v61 = v11;
    v62 = 2112;
    v63 = v10;
    v64 = 2112;
    v65 = v41;
    _os_log_impl(&dword_25830F000, v12, OS_LOG_TYPE_DEFAULT, "%@ Forwarding remote request to invokeBatchCommand: commands (%@), from device nodeID (%@) for controllerID %@", buf, 0x2Au);
  }

  v39 = v10;
  v32 = [MTRPluginPBMDeviceNodeInvokeBatchCommmandMessage deviceNodeInvokeBatchCommandMessageWithNodeID:v10 commands:v11];
  v38 = [MEMORY[0x277CBEB18] array];
  v54 = 0u;
  v55 = 0u;
  v52 = 0u;
  v53 = 0u;
  obj = v11;
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
                v22 = [MTRPluginRemoteClient deviceFromNodeID:v39 controllerID:v41];
                v23 = [(MTRPluginRemoteClient *)v40 client];
                v24 = [v23 clientType];
                v25 = [v21 path];
                v26 = [v21 commandFields];
                v27 = [MTRPluginInvokeCommandMetric invokeBatchCommandMetricForDevice:v22 homeID:v41 clientType:v24 commandPath:v25 commandFields:v26 remoteMessageID:0];

                [v38 addObject:v27];
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
  v45[4] = v40;
  v46 = v38;
  v47 = v31;
  v42[0] = MEMORY[0x277D85DD0];
  v42[1] = 3221225472;
  v42[2] = __75__MTRPluginRemoteClient_deviceController_nodeID_invokeCommands_completion___block_invoke_83;
  v42[3] = &unk_279893FB0;
  v42[4] = v40;
  v28 = v46;
  v43 = v28;
  v29 = v47;
  v44 = v29;
  [(MTRPluginRemoteClient *)v40 sendMessageToHomeWithID:v41 messageType:1017 pbCodable:v32 timeout:v28 metrics:v45 errorBlock:v42 replyBlock:60.0];

  objc_sync_exit(v40);
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

- (void)deviceController:(id)a3 nodeID:(id)a4 downloadLogOfType:(int64_t)a5 timeout:(double)a6 completion:(id)a7
{
  v45 = *MEMORY[0x277D85DE8];
  v12 = a3;
  v13 = a4;
  v26 = a7;
  v14 = self;
  objc_sync_enter(v14);
  v15 = matterPluginLog_default;
  if (os_log_type_enabled(matterPluginLog_default, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138413314;
    v36 = v14;
    v37 = 1024;
    v38 = a5;
    v39 = 2048;
    v40 = a6;
    v41 = 2112;
    v42 = v13;
    v43 = 2112;
    v44 = v12;
    _os_log_impl(&dword_25830F000, v15, OS_LOG_TYPE_DEFAULT, "%@ Forwarding remote request to downloadLogOfType: (%d), timeout (%lf), from device nodeID (%@) for controllerID %@", buf, 0x30u);
  }

  v16 = [MTRPluginPBMDeviceNodeDownloadDiagnosticLog deviceNodeDownloadDiagnosticLogOfType:a5 timeout:v13 nodeID:a6, v26];
  v17 = [MTRPluginRemoteClient deviceFromNodeID:v13 controllerID:v12];
  v18 = [(MTRPluginRemoteClient *)v14 client];
  v19 = [v18 homeUUID];
  v20 = [(MTRPluginRemoteClient *)v14 client];
  v21 = +[MTRPluginDownloadDiagnosticLogMetric downloadDiagnosticMetricForDevice:homeID:clientType:logType:remoteMessageID:](MTRPluginDownloadDiagnosticLogMetric, "downloadDiagnosticMetricForDevice:homeID:clientType:logType:remoteMessageID:", v17, v19, [v20 clientType], a5, 0);

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
  v31[4] = v14;
  v32 = v21;
  v33 = v27;
  v28[0] = MEMORY[0x277D85DD0];
  v28[1] = 3221225472;
  v28[2] = __86__MTRPluginRemoteClient_deviceController_nodeID_downloadLogOfType_timeout_completion___block_invoke_86;
  v28[3] = &unk_279893FB0;
  v28[4] = v14;
  v23 = v32;
  v29 = v23;
  v24 = v33;
  v30 = v24;
  [(MTRPluginRemoteClient *)v14 sendMessageToHomeWithID:v12 messageType:1016 pbCodable:v16 timeout:v22 metrics:v31 errorBlock:v28 replyBlock:a6];
  if (v21)
  {
  }

  objc_sync_exit(v14);
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

- (void)messageTransport:(id)a3 handleDeviceStateChanged:(id)a4
{
  v31 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = self;
  objc_sync_enter(v8);
  v9 = [MTRPluginPBMDeviceNodeMessage alloc];
  v10 = [v7 messageData];
  v11 = [(MTRPluginPBMDeviceNodeMessage *)v9 initWithData:v10];

  if (!v11 && os_log_type_enabled(matterPluginLog_default, OS_LOG_TYPE_ERROR))
  {
    [MTRPluginRemoteClient messageTransport:handleDeviceStateChanged:];
  }

  v12 = MEMORY[0x277CCABB0];
  v13 = [(MTRPluginPBMDeviceNodeMessage *)v11 node];
  v14 = [v12 numberWithUnsignedLongLong:{objc_msgSend(v13, "nodeID")}];

  v15 = [(MTRPluginPBMDeviceNodeMessage *)v11 value];
  v16 = [v15 object];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v17 = [(MTRPluginPBMDeviceNodeMessage *)v11 value];
    v18 = [v17 object];
  }

  else
  {
    v18 = 0;
  }

  v19 = matterPluginLog_default;
  if (os_log_type_enabled(matterPluginLog_default, OS_LOG_TYPE_DEFAULT))
  {
    v25 = 138412802;
    v26 = v8;
    v27 = 2112;
    v28 = v14;
    v29 = 2112;
    v30 = v18;
    _os_log_impl(&dword_25830F000, v19, OS_LOG_TYPE_DEFAULT, "%@ Received state changed for node ID: %@, state: %@", &v25, 0x20u);
  }

  if (v14)
  {
    v20 = [(MTRPluginRemoteClient *)v8 client];
    v21 = [v20 clientProxy];
    [v21 device:v14 stateChanged:{objc_msgSend(v18, "unsignedIntegerValue")}];
  }

  v22 = [v7 responseHandler];

  if (v22)
  {
    v23 = [v7 responseHandler];
    v23[2](v23, 0, 0);
  }

  objc_sync_exit(v8);
  v24 = *MEMORY[0x277D85DE8];
}

- (void)messageTransport:(id)a3 handleDeviceAttributeReport:(id)a4
{
  v34 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = self;
  objc_sync_enter(v8);
  v9 = [MTRPluginPBMDeviceNodeMessage alloc];
  v10 = [v7 messageData];
  v11 = [(MTRPluginPBMDeviceNodeMessage *)v9 initWithData:v10];

  if (!v11 && os_log_type_enabled(matterPluginLog_default, OS_LOG_TYPE_ERROR))
  {
    [MTRPluginRemoteClient messageTransport:handleDeviceAttributeReport:];
  }

  v12 = MEMORY[0x277CCABB0];
  v13 = [(MTRPluginPBMDeviceNodeMessage *)v11 node];
  v14 = [v12 numberWithUnsignedLongLong:{objc_msgSend(v13, "nodeID")}];

  v15 = [(MTRPluginPBMDeviceNodeMessage *)v11 value];
  v16 = [v15 object];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v17 = [(MTRPluginPBMDeviceNodeMessage *)v11 value];
    v18 = [v17 object];
  }

  else
  {
    v18 = 0;
  }

  v19 = matterPluginLog_default;
  if (os_log_type_enabled(matterPluginLog_default, OS_LOG_TYPE_DEFAULT))
  {
    v28 = 138412802;
    v29 = v8;
    v30 = 2112;
    v31 = v14;
    v32 = 2112;
    v33 = v18;
    _os_log_impl(&dword_25830F000, v19, OS_LOG_TYPE_DEFAULT, "%@ Received attribute report for node ID: %@, report: %@", &v28, 0x20u);
  }

  if (v14)
  {
    v20 = objc_autoreleasePoolPush();
    v21 = [(MTRPluginRemoteClient *)v8 client];
    v22 = [v21 localClient];
    [v22 device:v14 injectAttributeReport:v18];

    v23 = [(MTRPluginRemoteClient *)v8 client];
    v24 = [v23 clientProxy];
    [v24 device:v14 receivedAttributeReport:v18];

    objc_autoreleasePoolPop(v20);
  }

  v25 = [v7 responseHandler];

  if (v25)
  {
    v26 = [v7 responseHandler];
    v26[2](v26, 0, 0);
  }

  objc_sync_exit(v8);
  v27 = *MEMORY[0x277D85DE8];
}

- (void)messageTransport:(id)a3 handleDeviceEventReport:(id)a4
{
  v34 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = self;
  objc_sync_enter(v8);
  v9 = [MTRPluginPBMDeviceNodeMessage alloc];
  v10 = [v7 messageData];
  v11 = [(MTRPluginPBMDeviceNodeMessage *)v9 initWithData:v10];

  if (!v11 && os_log_type_enabled(matterPluginLog_default, OS_LOG_TYPE_ERROR))
  {
    [MTRPluginRemoteClient messageTransport:handleDeviceEventReport:];
  }

  v12 = MEMORY[0x277CCABB0];
  v13 = [(MTRPluginPBMDeviceNodeMessage *)v11 node];
  v14 = [v12 numberWithUnsignedLongLong:{objc_msgSend(v13, "nodeID")}];

  v15 = [(MTRPluginPBMDeviceNodeMessage *)v11 value];
  v16 = [v15 object];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v17 = [(MTRPluginPBMDeviceNodeMessage *)v11 value];
    v18 = [v17 object];
  }

  else
  {
    v18 = 0;
  }

  v19 = matterPluginLog_default;
  if (os_log_type_enabled(matterPluginLog_default, OS_LOG_TYPE_DEFAULT))
  {
    v28 = 138412802;
    v29 = v8;
    v30 = 2112;
    v31 = v14;
    v32 = 2112;
    v33 = v18;
    _os_log_impl(&dword_25830F000, v19, OS_LOG_TYPE_DEFAULT, "%@ Received event report for node ID: %@, report: %@", &v28, 0x20u);
  }

  if (v14)
  {
    v20 = objc_autoreleasePoolPush();
    v21 = [(MTRPluginRemoteClient *)v8 client];
    v22 = [v21 localClient];
    [v22 device:v14 injectEventReport:v18];

    v23 = [(MTRPluginRemoteClient *)v8 client];
    v24 = [v23 clientProxy];
    [v24 device:v14 receivedEventReport:v18];

    objc_autoreleasePoolPop(v20);
  }

  v25 = [v7 responseHandler];

  if (v25)
  {
    v26 = [v7 responseHandler];
    v26[2](v26, 0, 0);
  }

  objc_sync_exit(v8);
  v27 = *MEMORY[0x277D85DE8];
}

- (void)messageTransport:(id)a3 handleDeviceBecameActive:(id)a4
{
  v25 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = self;
  objc_sync_enter(v8);
  v9 = [MTRPluginPBMDeviceNodeMessage alloc];
  v10 = [v7 messageData];
  v11 = [(MTRPluginPBMDeviceNodeMessage *)v9 initWithData:v10];

  if (!v11 && os_log_type_enabled(matterPluginLog_default, OS_LOG_TYPE_ERROR))
  {
    [MTRPluginRemoteClient messageTransport:handleDeviceBecameActive:];
  }

  v12 = MEMORY[0x277CCABB0];
  v13 = [(MTRPluginPBMDeviceNodeMessage *)v11 node];
  v14 = [v12 numberWithUnsignedLongLong:{objc_msgSend(v13, "nodeID")}];

  v15 = matterPluginLog_default;
  if (os_log_type_enabled(matterPluginLog_default, OS_LOG_TYPE_DEFAULT))
  {
    v21 = 138412546;
    v22 = v8;
    v23 = 2112;
    v24 = v14;
    _os_log_impl(&dword_25830F000, v15, OS_LOG_TYPE_DEFAULT, "%@ Received device became active for node ID: %@", &v21, 0x16u);
  }

  if (v14)
  {
    v16 = [(MTRPluginRemoteClient *)v8 client];
    v17 = [v16 clientProxy];
    [v17 deviceBecameActive:v14];
  }

  v18 = [v7 responseHandler];

  if (v18)
  {
    v19 = [v7 responseHandler];
    v19[2](v19, 0, 0);
  }

  objc_sync_exit(v8);
  v20 = *MEMORY[0x277D85DE8];
}

- (void)messageTransport:(id)a3 handleDeviceCachePrimed:(id)a4
{
  v25 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = self;
  objc_sync_enter(v8);
  v9 = [MTRPluginPBMDeviceNodeMessage alloc];
  v10 = [v7 messageData];
  v11 = [(MTRPluginPBMDeviceNodeMessage *)v9 initWithData:v10];

  if (!v11 && os_log_type_enabled(matterPluginLog_default, OS_LOG_TYPE_ERROR))
  {
    [MTRPluginRemoteClient messageTransport:handleDeviceCachePrimed:];
  }

  v12 = MEMORY[0x277CCABB0];
  v13 = [(MTRPluginPBMDeviceNodeMessage *)v11 node];
  v14 = [v12 numberWithUnsignedLongLong:{objc_msgSend(v13, "nodeID")}];

  v15 = matterPluginLog_default;
  if (os_log_type_enabled(matterPluginLog_default, OS_LOG_TYPE_DEFAULT))
  {
    v21 = 138412546;
    v22 = v8;
    v23 = 2112;
    v24 = v14;
    _os_log_impl(&dword_25830F000, v15, OS_LOG_TYPE_DEFAULT, "%@ Received device cache primed for node ID: %@", &v21, 0x16u);
  }

  if (v14)
  {
    v16 = [(MTRPluginRemoteClient *)v8 client];
    v17 = [v16 clientProxy];
    [v17 deviceCachePrimed:v14];
  }

  v18 = [v7 responseHandler];

  if (v18)
  {
    v19 = [v7 responseHandler];
    v19[2](v19, 0, 0);
  }

  objc_sync_exit(v8);
  v20 = *MEMORY[0x277D85DE8];
}

- (void)messageTransport:(id)a3 handleDeviceConfigurationChanged:(id)a4
{
  v25 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = self;
  objc_sync_enter(v8);
  v9 = [MTRPluginPBMDeviceNodeMessage alloc];
  v10 = [v7 messageData];
  v11 = [(MTRPluginPBMDeviceNodeMessage *)v9 initWithData:v10];

  if (!v11 && os_log_type_enabled(matterPluginLog_default, OS_LOG_TYPE_ERROR))
  {
    [MTRPluginRemoteClient messageTransport:handleDeviceConfigurationChanged:];
  }

  v12 = MEMORY[0x277CCABB0];
  v13 = [(MTRPluginPBMDeviceNodeMessage *)v11 node];
  v14 = [v12 numberWithUnsignedLongLong:{objc_msgSend(v13, "nodeID")}];

  v15 = matterPluginLog_default;
  if (os_log_type_enabled(matterPluginLog_default, OS_LOG_TYPE_DEFAULT))
  {
    v21 = 138412546;
    v22 = v8;
    v23 = 2112;
    v24 = v14;
    _os_log_impl(&dword_25830F000, v15, OS_LOG_TYPE_DEFAULT, "%@ Received device configChanged for node ID: %@", &v21, 0x16u);
  }

  if (v14)
  {
    v16 = [(MTRPluginRemoteClient *)v8 client];
    v17 = [v16 clientProxy];
    [v17 deviceConfigurationChanged:v14];
  }

  v18 = [v7 responseHandler];

  if (v18)
  {
    v19 = [v7 responseHandler];
    v19[2](v19, 0, 0);
  }

  objc_sync_exit(v8);
  v20 = *MEMORY[0x277D85DE8];
}

- (void)messageTransport:(id)a3 handleDeviceInternalStateUpdated:(id)a4
{
  v29 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = self;
  objc_sync_enter(v8);
  v9 = [MTRPluginPBMDeviceNodeMessage alloc];
  v10 = [v7 messageData];
  v11 = [(MTRPluginPBMDeviceNodeMessage *)v9 initWithData:v10];

  if (!v11 && os_log_type_enabled(matterPluginLog_default, OS_LOG_TYPE_ERROR))
  {
    [MTRPluginRemoteClient messageTransport:handleDeviceInternalStateUpdated:];
  }

  v12 = MEMORY[0x277CCABB0];
  v13 = [(MTRPluginPBMDeviceNodeMessage *)v11 node];
  v14 = [v12 numberWithUnsignedLongLong:{objc_msgSend(v13, "nodeID")}];

  v15 = [(MTRPluginPBMDeviceNodeMessage *)v11 value];
  v16 = [v15 object];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v17 = [(MTRPluginPBMDeviceNodeMessage *)v11 value];
    v18 = [v17 object];
  }

  else
  {
    v18 = 0;
  }

  v19 = matterPluginLog_default;
  if (os_log_type_enabled(matterPluginLog_default, OS_LOG_TYPE_DEFAULT))
  {
    v25 = 138412546;
    v26 = v8;
    v27 = 2112;
    v28 = v14;
    _os_log_impl(&dword_25830F000, v19, OS_LOG_TYPE_DEFAULT, "%@ Received device internal state changed for node ID: %@", &v25, 0x16u);
  }

  if (v14)
  {
    v20 = [(MTRPluginRemoteClient *)v8 client];
    v21 = [v20 clientProxy];
    [v21 device:v14 internalStateUpdated:v18];
  }

  v22 = [v7 responseHandler];

  if (v22)
  {
    v23 = [v7 responseHandler];
    v23[2](v23, 0, 0);
  }

  objc_sync_exit(v8);
  v24 = *MEMORY[0x277D85DE8];
}

- (void)messageTransport:(id)a3 handleControllerConfigUpdated:(id)a4
{
  v28 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = self;
  objc_sync_enter(v8);
  v9 = [MTRPluginPBMDeviceControllerMessage alloc];
  v10 = [v7 messageData];
  v11 = [(MTRPluginPBMDeviceControllerMessage *)v9 initWithData:v10];

  if (v11)
  {
    v12 = [(MTRPluginPBMDeviceControllerMessage *)v11 value];
    v13 = [v12 object];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v14 = [(MTRPluginPBMDeviceControllerMessage *)v11 value];
      v15 = [v14 object];
    }

    else
    {
      v15 = 0;
    }

    v16 = matterPluginLog_default;
    if (os_log_type_enabled(matterPluginLog_default, OS_LOG_TYPE_DEFAULT))
    {
      v24 = 138412546;
      v25 = v8;
      v26 = 2112;
      v27 = v15;
      _os_log_impl(&dword_25830F000, v16, OS_LOG_TYPE_DEFAULT, "%@ Received controller configuration update %@", &v24, 0x16u);
    }

    if ([v15 count])
    {
      v17 = [(MTRPluginRemoteClient *)v8 client];
      v18 = [v17 clientProxy];
      v19 = [(MTRPluginRemoteClient *)v8 client];
      v20 = [v19 homeUUID];
      [v18 controller:v20 controllerConfigurationUpdated:v15];
    }

    v21 = [v7 responseHandler];

    if (v21)
    {
      v22 = [v7 responseHandler];
      v22[2](v22, 0, 0);
    }
  }

  else if (os_log_type_enabled(matterPluginLog_default, OS_LOG_TYPE_ERROR))
  {
    [MTRPluginRemoteClient messageTransport:handleDeviceInternalStateUpdated:];
  }

  objc_sync_exit(v8);
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