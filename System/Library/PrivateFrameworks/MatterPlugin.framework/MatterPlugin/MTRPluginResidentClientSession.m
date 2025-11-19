@interface MTRPluginResidentClientSession
- (MTRPluginResidentClientSession)initWithTransport:(id)a3 workQueue:(id)a4 sessionID:(id)a5 homeID:(id)a6 peerAddress:(id)a7;
- (NSString)description;
- (id)_deviceNodeMessageForDevice:(id)a3 messageValue:(id)a4;
- (id)_dictionaryFromCommandFields:(id)a3;
- (id)_validateAndFindDeviceControllerForMessage:(id)a3 deviceControllerMessage:(id *)a4;
- (id)_validateAndFindDeviceControllerMatchingHomeInMessage:(id)a3;
- (id)_validateAndFindDeviceNodeForMessage:(id)a3;
- (id)deviceController;
- (void)_registerForMessages;
- (void)_registerNodeID:(id)a3;
- (void)_unregisterNodeID:(id)a3;
- (void)device:(id)a3 internalStateUpdated:(id)a4;
- (void)device:(id)a3 receivedAttributeReport:(id)a4;
- (void)device:(id)a3 receivedEventReport:(id)a4;
- (void)device:(id)a3 stateChanged:(unint64_t)a4;
- (void)deviceBecameActive:(id)a3;
- (void)deviceCachePrimed:(id)a3;
- (void)deviceConfigurationChanged:(id)a3;
- (void)invalidate;
- (void)messageTransport:(id)a3 handleCloseSession:(id)a4;
- (void)messageTransport:(id)a3 handleDeviceInvokeBatchCommand:(id)a4;
- (void)messageTransport:(id)a3 handleDeviceInvokeCommand:(id)a4;
- (void)messageTransport:(id)a3 handleDeviceReadAttribute:(id)a4;
- (void)messageTransport:(id)a3 handleDeviceReadMultipleAttributes:(id)a4;
- (void)messageTransport:(id)a3 handleDeviceWriteAttribute:(id)a4;
- (void)messageTransport:(id)a3 handleDownloadDiagnosticLog:(id)a4;
- (void)messageTransport:(id)a3 handleGetControllerIsRunning:(id)a4;
- (void)messageTransport:(id)a3 handleGetControllerNodeID:(id)a4;
- (void)messageTransport:(id)a3 handleGetControllerUniqueID:(id)a4;
- (void)messageTransport:(id)a3 handleGetDeviceEstimatedStartTime:(id)a4;
- (void)messageTransport:(id)a3 handleGetDeviceEstimatedSubscriptionLatency:(id)a4;
- (void)messageTransport:(id)a3 handleGetDeviceIsCachePrimed:(id)a4;
- (void)messageTransport:(id)a3 handleGetDeviceState:(id)a4;
- (void)messageTransport:(id)a3 handleUpdateControllerConfig:(id)a4;
- (void)messageTransport:(id)a3 updateTimeOfActivity:(id)a4;
@end

@implementation MTRPluginResidentClientSession

- (MTRPluginResidentClientSession)initWithTransport:(id)a3 workQueue:(id)a4 sessionID:(id)a5 homeID:(id)a6 peerAddress:(id)a7
{
  v12 = a3;
  v13 = a4;
  v14 = a5;
  v15 = a6;
  v16 = a7;
  v26.receiver = self;
  v26.super_class = MTRPluginResidentClientSession;
  v17 = [(MTRPluginResidentClientSession *)&v26 init];
  if (v17)
  {
    v18 = [MEMORY[0x277CBEAA8] date];
    [(MTRPluginResidentClientSession *)v17 setTimeOfLastActivity:v18];

    [(MTRPluginResidentClientSession *)v17 setSessionID:v14];
    [(MTRPluginResidentClientSession *)v17 setHomeID:v15];
    v19 = [MEMORY[0x277CBEB58] set];
    [(MTRPluginResidentClientSession *)v17 setRegisteredNodeIDs:v19];

    v20 = [MEMORY[0x277CBEB58] set];
    [(MTRPluginResidentClientSession *)v17 setSubscribedMTRDevices:v20];

    [(MTRPluginResidentClientSession *)v17 setTransport:v12];
    [(MTRPluginResidentClientSession *)v17 setWorkQueue:v13];
    v21 = [v16 copy];
    [(MTRPluginResidentClientSession *)v17 setPeerAddress:v21];

    v22 = [(MTRPluginResidentClientSession *)v17 workQueue];
    [v12 setDelegate:v17 delegateQueue:v22 forSessionID:v14];

    v23 = objc_autoreleasePoolPush();
    [(MTRPluginResidentClientSession *)v17 _registerForMessages];
    objc_autoreleasePoolPop(v23);
    v24 = v17;
  }

  return v17;
}

- (NSString)description
{
  v3 = objc_autoreleasePoolPush();
  v4 = MEMORY[0x277CCACA8];
  v5 = objc_opt_class();
  v6 = NSStringFromClass(v5);
  v7 = [(MTRPluginResidentClientSession *)self sessionID];
  v8 = [(MTRPluginResidentClientSession *)self homeID];
  v9 = [(MTRPluginResidentClientSession *)self timeOfLastActivity];
  v10 = [v4 stringWithFormat:@"<%@: %p sid: %@ hid: %@ lastActivity: %@>", v6, self, v7, v8, v9];

  objc_autoreleasePoolPop(v3);

  return v10;
}

- (id)deviceController
{
  v3 = +[MTRPluginDeviceControllerRegistry sharedInstance];
  v4 = [(MTRPluginResidentClientSession *)self homeID];
  v5 = [v3 deviceControllerForUUID:v4];

  return v5;
}

- (void)_registerNodeID:(id)a3
{
  v29 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(MTRPluginResidentClientSession *)self registeredNodeIDs];
  v6 = [v5 containsObject:v4];

  if ((v6 & 1) == 0)
  {
    v7 = [(MTRPluginResidentClientSession *)self deviceController];
    v8 = [MEMORY[0x277CD5310] deviceWithNodeID:v4 controller:v7];
    v9 = matterPluginLog_default;
    if (os_log_type_enabled(matterPluginLog_default, OS_LOG_TYPE_DEFAULT))
    {
      v21 = 138413058;
      v22 = self;
      v23 = 2112;
      v24 = v4;
      v25 = 2112;
      v26 = v7;
      v27 = 2112;
      v28 = v8;
      _os_log_impl(&dword_25830F000, v9, OS_LOG_TYPE_DEFAULT, "%@ register nodeID: %@, forController: %@, device: %@", &v21, 0x2Au);
    }

    if (v8)
    {
      v10 = [(MTRPluginResidentClientSession *)self registeredNodeIDs];
      [v10 addObject:v4];

      v11 = [(MTRPluginResidentClientSession *)self subscribedMTRDevices];
      [v11 addObject:v8];

      v12 = matterPluginLog_default;
      if (os_log_type_enabled(matterPluginLog_default, OS_LOG_TYPE_DEFAULT))
      {
        v21 = 138412546;
        v22 = self;
        v23 = 2112;
        v24 = v8;
        _os_log_impl(&dword_25830F000, v12, OS_LOG_TYPE_DEFAULT, "%@ Adding delegate for MTRDevice: %@", &v21, 0x16u);
      }

      v13 = [(MTRPluginResidentClientSession *)self workQueue];
      [v8 addDelegate:self queue:v13];

      v14 = [v8 getAllAttributesReport];
      v15 = [v14 count];
      v16 = matterPluginLog_default;
      v17 = os_log_type_enabled(matterPluginLog_default, OS_LOG_TYPE_DEFAULT);
      if (v15)
      {
        if (v17)
        {
          v18 = v16;
          v19 = [v14 count];
          v21 = 138412546;
          v22 = self;
          v23 = 2048;
          v24 = v19;
          _os_log_impl(&dword_25830F000, v18, OS_LOG_TYPE_DEFAULT, "%@ Reporting all known attributes %lu", &v21, 0x16u);
        }

        [(MTRPluginResidentClientSession *)self device:v8 receivedAttributeReport:v14];
      }

      else if (v17)
      {
        v21 = 138412290;
        v22 = self;
        _os_log_impl(&dword_25830F000, v16, OS_LOG_TYPE_DEFAULT, "%@ No known attributes to report", &v21, 0xCu);
      }
    }

    else if (os_log_type_enabled(matterPluginLog_default, OS_LOG_TYPE_ERROR))
    {
      [MTRPluginResidentClientSession _registerNodeID:];
    }
  }

  v20 = *MEMORY[0x277D85DE8];
}

- (void)_unregisterNodeID:(id)a3
{
  v21 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(MTRPluginResidentClientSession *)self registeredNodeIDs];
  v6 = [v5 containsObject:v4];

  if (v6)
  {
    v7 = [(MTRPluginResidentClientSession *)self deviceController];
    v8 = [MEMORY[0x277CD5310] deviceWithNodeID:v4 controller:v7];
    v9 = matterPluginLog_default;
    if (os_log_type_enabled(matterPluginLog_default, OS_LOG_TYPE_DEFAULT))
    {
      v13 = 138413058;
      v14 = self;
      v15 = 2112;
      v16 = v4;
      v17 = 2112;
      v18 = v7;
      v19 = 2112;
      v20 = v8;
      _os_log_impl(&dword_25830F000, v9, OS_LOG_TYPE_DEFAULT, "%@ unregister nodeID: %@, forController: %@, device: %@", &v13, 0x2Au);
    }

    if (v8)
    {
      v10 = [(MTRPluginResidentClientSession *)self registeredNodeIDs];
      [v10 removeObject:v4];

      v11 = [(MTRPluginResidentClientSession *)self subscribedMTRDevices];
      [v11 removeObject:v8];

      [v8 removeDelegate:self];
    }

    else if (os_log_type_enabled(matterPluginLog_default, OS_LOG_TYPE_ERROR))
    {
      [MTRPluginResidentClientSession _unregisterNodeID:];
    }
  }

  v12 = *MEMORY[0x277D85DE8];
}

- (void)_registerForMessages
{
  v3 = [(MTRPluginResidentClientSession *)self transport];
  v4 = [(MTRPluginResidentClientSession *)self sessionID];
  [v3 registerForRequestMessageWithType:&unk_28697C2A0 requestHandler:sel_messageTransport_handleGetControllerIsRunning_ forSessionID:v4];

  v5 = [(MTRPluginResidentClientSession *)self transport];
  v6 = [(MTRPluginResidentClientSession *)self sessionID];
  [v5 registerForRequestMessageWithType:&unk_28697C2B8 requestHandler:sel_messageTransport_handleGetControllerUniqueID_ forSessionID:v6];

  v7 = [(MTRPluginResidentClientSession *)self transport];
  v8 = [(MTRPluginResidentClientSession *)self sessionID];
  [v7 registerForRequestMessageWithType:&unk_28697C2D0 requestHandler:sel_messageTransport_handleGetControllerNodeID_ forSessionID:v8];

  v9 = [(MTRPluginResidentClientSession *)self transport];
  v10 = [(MTRPluginResidentClientSession *)self sessionID];
  [v9 registerForRequestMessageWithType:&unk_28697C2E8 requestHandler:sel_messageTransport_handleUpdateControllerConfig_ forSessionID:v10];

  v11 = [(MTRPluginResidentClientSession *)self transport];
  v12 = [(MTRPluginResidentClientSession *)self sessionID];
  [v11 registerForRequestMessageWithType:&unk_28697C300 requestHandler:sel_messageTransport_handleCloseSession_ forSessionID:v12];

  v13 = [(MTRPluginResidentClientSession *)self transport];
  v14 = [(MTRPluginResidentClientSession *)self sessionID];
  [v13 registerForRequestMessageWithType:&unk_28697C318 requestHandler:sel_messageTransport_handleGetDeviceState_ forSessionID:v14];

  v15 = [(MTRPluginResidentClientSession *)self transport];
  v16 = [(MTRPluginResidentClientSession *)self sessionID];
  [v15 registerForRequestMessageWithType:&unk_28697C330 requestHandler:sel_messageTransport_handleGetDeviceIsCachePrimed_ forSessionID:v16];

  v17 = [(MTRPluginResidentClientSession *)self transport];
  v18 = [(MTRPluginResidentClientSession *)self sessionID];
  [v17 registerForRequestMessageWithType:&unk_28697C348 requestHandler:sel_messageTransport_handleGetDeviceEstimatedStartTime_ forSessionID:v18];

  v19 = [(MTRPluginResidentClientSession *)self transport];
  v20 = [(MTRPluginResidentClientSession *)self sessionID];
  [v19 registerForRequestMessageWithType:&unk_28697C360 requestHandler:sel_messageTransport_handleGetDeviceEstimatedSubscriptionLatency_ forSessionID:v20];

  v21 = [(MTRPluginResidentClientSession *)self transport];
  v22 = [(MTRPluginResidentClientSession *)self sessionID];
  [v21 registerForRequestMessageWithType:&unk_28697C378 requestHandler:sel_messageTransport_handleDeviceReadAttribute_ forSessionID:v22];

  v23 = [(MTRPluginResidentClientSession *)self transport];
  v24 = [(MTRPluginResidentClientSession *)self sessionID];
  [v23 registerForRequestMessageWithType:&unk_28697C390 requestHandler:sel_messageTransport_handleDeviceReadMultipleAttributes_ forSessionID:v24];

  v25 = [(MTRPluginResidentClientSession *)self transport];
  v26 = [(MTRPluginResidentClientSession *)self sessionID];
  [v25 registerForRequestMessageWithType:&unk_28697C3A8 requestHandler:sel_messageTransport_handleDeviceWriteAttribute_ forSessionID:v26];

  v27 = [(MTRPluginResidentClientSession *)self transport];
  v28 = [(MTRPluginResidentClientSession *)self sessionID];
  [v27 registerForRequestMessageWithType:&unk_28697C3C0 requestHandler:sel_messageTransport_handleDeviceInvokeCommand_ forSessionID:v28];

  v29 = [(MTRPluginResidentClientSession *)self transport];
  v30 = [(MTRPluginResidentClientSession *)self sessionID];
  [v29 registerForRequestMessageWithType:&unk_28697C3D8 requestHandler:sel_messageTransport_handleDeviceInvokeBatchCommand_ forSessionID:v30];

  v31 = [(MTRPluginResidentClientSession *)self transport];
  v32 = [(MTRPluginResidentClientSession *)self sessionID];
  [v31 registerForRequestMessageWithType:&unk_28697C3F0 requestHandler:sel_messageTransport_handleDownloadDiagnosticLog_ forSessionID:v32];

  v34 = [(MTRPluginResidentClientSession *)self deviceController];
  v33 = [(MTRPluginResidentClientSession *)self workQueue];
  [v34 addDeviceControllerDelegate:self queue:v33];
}

- (id)_validateAndFindDeviceControllerMatchingHomeInMessage:(id)a3
{
  v4 = a3;
  v5 = [v4 homeIdentifier];
  v6 = [(MTRPluginResidentClientSession *)self homeID];
  v7 = [v5 isEqual:v6];

  if (!v7 || ([(MTRPluginResidentClientSession *)self deviceController], (v8 = objc_claimAutoreleasedReturnValue()) == 0))
  {
    if (os_log_type_enabled(matterPluginLog_default, OS_LOG_TYPE_ERROR))
    {
      [MTRPluginResidentClientSession _validateAndFindDeviceControllerMatchingHomeInMessage:];
    }

    v9 = [v4 responseHandler];
    v10 = [MEMORY[0x277CCA9B8] errorWithDomain:@"kMTRPluginErrorDomain" code:-1002 userInfo:0];
    (v9)[2](v9, v10, 0);

    v8 = 0;
  }

  return v8;
}

- (id)_validateAndFindDeviceControllerForMessage:(id)a3 deviceControllerMessage:(id *)a4
{
  v6 = a3;
  v7 = [MTRPluginPBMDeviceControllerMessage deviceControllerMessageFromMessage:v6];
  v8 = v7;
  if (v7)
  {
    if (a4)
    {
      v9 = v7;
      *a4 = v8;
    }

    v10 = [(MTRPluginResidentClientSession *)self _validateAndFindDeviceControllerMatchingHomeInMessage:v6];
  }

  else
  {
    if (os_log_type_enabled(matterPluginLog_default, OS_LOG_TYPE_ERROR))
    {
      [MTRPluginResidentClientSession _validateAndFindDeviceControllerForMessage:deviceControllerMessage:];
    }

    v11 = [v6 responseHandler];
    v12 = [MEMORY[0x277CCA9B8] errorWithDomain:@"kMTRPluginErrorDomain" code:-1007 userInfo:0];
    (v11)[2](v11, v12, 0);

    v10 = 0;
  }

  return v10;
}

- (id)_validateAndFindDeviceNodeForMessage:(id)a3
{
  v22 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [MTRPluginPBMDeviceNodeMessage deviceNodeMessageFromMessage:v4];
  if (!v5)
  {
    if (os_log_type_enabled(matterPluginLog_default, OS_LOG_TYPE_ERROR))
    {
      [MTRPluginResidentClientSession _validateAndFindDeviceNodeForMessage:];
    }

    v6 = [v4 responseHandler];
    v9 = [MEMORY[0x277CCA9B8] errorWithDomain:@"kMTRPluginErrorDomain" code:-1003 userInfo:0];
    (v6)[2](v6, v9, 0);
    v10 = 0;
    goto LABEL_10;
  }

  v6 = [(MTRPluginResidentClientSession *)self _validateAndFindDeviceControllerForMessage:v4 deviceControllerMessage:0];
  if (v6)
  {
    v7 = MEMORY[0x277CCABB0];
    v8 = [v5 node];
    v9 = [v7 numberWithUnsignedLongLong:{objc_msgSend(v8, "nodeID")}];

    v10 = [MEMORY[0x277CD5310] deviceWithNodeID:v9 controller:v6];
    if (!v10)
    {
      v11 = matterPluginLog_default;
      if (os_log_type_enabled(matterPluginLog_default, OS_LOG_TYPE_ERROR))
      {
        v16 = 138412802;
        v17 = self;
        v18 = 2112;
        v19 = v9;
        v20 = 2112;
        v21 = v4;
        _os_log_error_impl(&dword_25830F000, v11, OS_LOG_TYPE_ERROR, "%@ failed to find nodeID (%@) for incoming device request message %@", &v16, 0x20u);
      }

      v12 = [v4 responseHandler];
      v13 = [MEMORY[0x277CCA9B8] errorWithDomain:@"kMTRPluginErrorDomain" code:-1001 userInfo:0];
      (v12)[2](v12, v13, 0);
    }

LABEL_10:

    goto LABEL_12;
  }

  v10 = 0;
LABEL_12:

  v14 = *MEMORY[0x277D85DE8];

  return v10;
}

- (void)messageTransport:(id)a3 updateTimeOfActivity:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(MTRPluginResidentClientSession *)self workQueue];
  dispatch_assert_queue_V2(v8);

  v9 = self;
  objc_sync_enter(v9);
  if (os_log_type_enabled(matterPluginLog_default, OS_LOG_TYPE_DEBUG))
  {
    [MTRPluginResidentClientSession messageTransport:updateTimeOfActivity:];
  }

  [(MTRPluginResidentClientSession *)v9 setTimeOfLastActivity:v7];
  objc_sync_exit(v9);
}

- (void)messageTransport:(id)a3 handleGetControllerIsRunning:(id)a4
{
  v28 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = [(MTRPluginResidentClientSession *)self workQueue];
  dispatch_assert_queue_V2(v8);

  v9 = [v7 responseHandler];

  if (v9)
  {
    v10 = self;
    objc_sync_enter(v10);
    v11 = [v7 responseHandler];

    if (v11)
    {
      v12 = [(MTRPluginResidentClientSession *)v10 _validateAndFindDeviceControllerForMessage:v7 deviceControllerMessage:0];
      if (v12)
      {
        v13 = objc_alloc_init(MTRPluginPBMVariableValueResponseMessage);
        v14 = [MTRPluginPBMVariableValue alloc];
        v15 = [MEMORY[0x277CCABB0] numberWithBool:{objc_msgSend(v12, "isRunning")}];
        v16 = [(MTRPluginPBMVariableValue *)v14 initWithObjectValue:v15];
        [(MTRPluginPBMVariableValueResponseMessage *)v13 setValue:v16];

        v17 = matterPluginLog_default;
        if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
        {
          v18 = [v12 isRunning];
          v19 = @"NO";
          v22 = 138412802;
          v23 = v10;
          v24 = 2112;
          if (v18)
          {
            v19 = @"YES";
          }

          v25 = v19;
          v26 = 2112;
          v27 = v7;
          _os_log_impl(&dword_25830F000, v17, OS_LOG_TYPE_DEFAULT, "%@ responding to controller is running state with: %@ for message %@", &v22, 0x20u);
        }

        v20 = [v7 responseHandler];
        (v20)[2](v20, 0, v13);
      }
    }

    objc_sync_exit(v10);
  }

  v21 = *MEMORY[0x277D85DE8];
}

- (void)messageTransport:(id)a3 handleGetControllerUniqueID:(id)a4
{
  v27 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = [(MTRPluginResidentClientSession *)self workQueue];
  dispatch_assert_queue_V2(v8);

  v9 = [v7 responseHandler];

  if (v9)
  {
    v10 = self;
    objc_sync_enter(v10);
    v11 = [v7 responseHandler];

    if (v11)
    {
      v12 = [(MTRPluginResidentClientSession *)v10 _validateAndFindDeviceControllerForMessage:v7 deviceControllerMessage:0];
      if (v12)
      {
        v13 = objc_alloc_init(MTRPluginPBMVariableValueResponseMessage);
        v14 = [MTRPluginPBMVariableValue alloc];
        v15 = [v12 uniqueIdentifier];
        v16 = [(MTRPluginPBMVariableValue *)v14 initWithObjectValue:v15];
        [(MTRPluginPBMVariableValueResponseMessage *)v13 setValue:v16];

        v17 = matterPluginLog_default;
        if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
        {
          v18 = [v12 uniqueIdentifier];
          v21 = 138412802;
          v22 = v10;
          v23 = 2112;
          v24 = v18;
          v25 = 2112;
          v26 = v7;
          _os_log_impl(&dword_25830F000, v17, OS_LOG_TYPE_DEFAULT, "%@ responding to controller get uniqueID with: %@ for message %@", &v21, 0x20u);
        }

        v19 = [v7 responseHandler];
        (v19)[2](v19, 0, v13);
      }
    }

    objc_sync_exit(v10);
  }

  v20 = *MEMORY[0x277D85DE8];
}

- (void)messageTransport:(id)a3 handleGetControllerNodeID:(id)a4
{
  v27 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = [(MTRPluginResidentClientSession *)self workQueue];
  dispatch_assert_queue_V2(v8);

  v9 = [v7 responseHandler];

  if (v9)
  {
    v10 = self;
    objc_sync_enter(v10);
    v11 = [v7 responseHandler];

    if (v11)
    {
      v12 = [(MTRPluginResidentClientSession *)v10 _validateAndFindDeviceControllerForMessage:v7 deviceControllerMessage:0];
      if (v12)
      {
        v13 = objc_alloc_init(MTRPluginPBMVariableValueResponseMessage);
        v14 = [MTRPluginPBMVariableValue alloc];
        v15 = [v12 controllerNodeID];
        v16 = [(MTRPluginPBMVariableValue *)v14 initWithObjectValue:v15];
        [(MTRPluginPBMVariableValueResponseMessage *)v13 setValue:v16];

        v17 = matterPluginLog_default;
        if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
        {
          v18 = [v12 controllerNodeID];
          v21 = 138412802;
          v22 = v10;
          v23 = 2112;
          v24 = v18;
          v25 = 2112;
          v26 = v7;
          _os_log_impl(&dword_25830F000, v17, OS_LOG_TYPE_DEFAULT, "%@ responding to controller get nodeID with: %@ for message %@", &v21, 0x20u);
        }

        v19 = [v7 responseHandler];
        (v19)[2](v19, 0, v13);
      }
    }

    objc_sync_exit(v10);
  }

  v20 = *MEMORY[0x277D85DE8];
}

- (void)messageTransport:(id)a3 handleUpdateControllerConfig:(id)a4
{
  v77 = *MEMORY[0x277D85DE8];
  v51 = a3;
  v52 = a4;
  v6 = [(MTRPluginResidentClientSession *)self workQueue];
  dispatch_assert_queue_V2(v6);

  v7 = [v52 responseHandler];

  if (v7)
  {
    obj = self;
    objc_sync_enter(obj);
    v8 = [v52 responseHandler];

    if (v8)
    {
      v66 = 0;
      v56 = [(MTRPluginResidentClientSession *)obj _validateAndFindDeviceControllerForMessage:v52 deviceControllerMessage:&v66];
      v50 = v66;
      v49 = [MEMORY[0x277CBEB38] dictionary];
      if (v56 && v50)
      {
        v9 = [v50 value];
        v10 = [v9 object];
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v11 = [v50 value];
          v48 = [v11 object];
        }

        else
        {
          v48 = 0;
        }

        v47 = [MEMORY[0x277CBEB38] dictionary];
        v14 = [v56 controllerNodeID];

        if (v14)
        {
          v15 = [v56 controllerNodeID];
          [v47 setObject:v15 forKeyedSubscript:*MEMORY[0x277CD50F8]];
        }

        v16 = [v56 compressedFabricID];

        if (v16)
        {
          v17 = [v56 compressedFabricID];
          [v47 setObject:v17 forKeyedSubscript:*MEMORY[0x277CD50E0]];
        }

        v18 = [MEMORY[0x277CCABB0] numberWithBool:{objc_msgSend(v56, "isRunning")}];
        [v47 setObject:v18 forKeyedSubscript:*MEMORY[0x277CD50F0]];

        [v49 setObject:v47 forKeyedSubscript:*MEMORY[0x277CD50E8]];
        v54 = [MEMORY[0x277CBEB18] array];
        v19 = [(MTRPluginResidentClientSession *)obj registeredNodeIDs];
        v55 = [v19 mutableCopy];

        v64 = 0u;
        v65 = 0u;
        v62 = 0u;
        v63 = 0u;
        v46 = *MEMORY[0x277CD5110];
        v20 = [v48 objectForKey:?];
        v21 = [v20 countByEnumeratingWithState:&v62 objects:v76 count:16];
        if (v21)
        {
          v22 = *v63;
          v23 = *MEMORY[0x277CD5108];
          v53 = *MEMORY[0x277CD5100];
          do
          {
            for (i = 0; i != v21; ++i)
            {
              if (*v63 != v22)
              {
                objc_enumerationMutation(v20);
              }

              v25 = *(*(&v62 + 1) + 8 * i);
              objc_opt_class();
              if ((objc_opt_isKindOfClass() & (v25 != 0)) != 0)
              {
                v26 = [(MTRPluginResidentClientSession *)v25 objectForKey:v23];
                objc_opt_class();
                if (objc_opt_isKindOfClass())
                {
                  v27 = [(MTRPluginResidentClientSession *)v25 objectForKey:v23];

                  if (!v27)
                  {
                    continue;
                  }

                  v28 = matterPluginLog_default;
                  if (os_log_type_enabled(matterPluginLog_default, OS_LOG_TYPE_DEFAULT))
                  {
                    *buf = 138412802;
                    v71 = obj;
                    v72 = 2112;
                    v73 = v56;
                    v74 = 2112;
                    v75 = v27;
                    _os_log_impl(&dword_25830F000, v28, OS_LOG_TYPE_DEFAULT, "%@  => controller: %@ register nodeID: %@", buf, 0x20u);
                  }

                  [(MTRPluginResidentClientSession *)obj _registerNodeID:v27];
                  [v55 removeObject:v27];
                  v29 = [MEMORY[0x277CD5310] deviceWithNodeID:v27 controller:v56];
                  v30 = [v29 _internalProperties];
                  if (v30)
                  {
                    v68[0] = v23;
                    v68[1] = v53;
                    v69[0] = v27;
                    v31 = [v29 _internalProperties];
                    v69[1] = v31;
                    v32 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v69 forKeys:v68 count:2];
                    [v54 addObject:v32];
                  }
                }

                else
                {
                  v27 = v26;
                }
              }

              else
              {
                v33 = matterPluginLog_default;
                if (os_log_type_enabled(matterPluginLog_default, OS_LOG_TYPE_ERROR))
                {
                  *buf = 138412290;
                  v71 = v25;
                  _os_log_error_impl(&dword_25830F000, v33, OS_LOG_TYPE_ERROR, "Invalid nodeIDInfo: %@", buf, 0xCu);
                }
              }
            }

            v21 = [v20 countByEnumeratingWithState:&v62 objects:v76 count:16];
          }

          while (v21);
        }

        if ([v54 count])
        {
          [v49 setObject:v54 forKeyedSubscript:v46];
        }

        v60 = 0u;
        v61 = 0u;
        v58 = 0u;
        v59 = 0u;
        v34 = v55;
        v35 = [v34 countByEnumeratingWithState:&v58 objects:v67 count:16];
        if (v35)
        {
          v36 = *v59;
          do
          {
            for (j = 0; j != v35; ++j)
            {
              if (*v59 != v36)
              {
                objc_enumerationMutation(v34);
              }

              v38 = *(*(&v58 + 1) + 8 * j);
              v39 = matterPluginLog_default;
              if (os_log_type_enabled(matterPluginLog_default, OS_LOG_TYPE_DEFAULT))
              {
                *buf = 138412802;
                v71 = obj;
                v72 = 2112;
                v73 = v56;
                v74 = 2112;
                v75 = v38;
                _os_log_impl(&dword_25830F000, v39, OS_LOG_TYPE_DEFAULT, "%@  => controller: %@ unregister nodeIDToUnregister: %@", buf, 0x20u);
              }

              [(MTRPluginResidentClientSession *)obj _unregisterNodeID:v38];
            }

            v35 = [v34 countByEnumeratingWithState:&v58 objects:v67 count:16];
          }

          while (v35);
        }

        v40 = matterPluginLog_default;
        if (os_log_type_enabled(v40, OS_LOG_TYPE_DEFAULT))
        {
          v41 = [(MTRPluginResidentClientSession *)obj registeredNodeIDs];
          *buf = 138412802;
          v71 = obj;
          v72 = 2112;
          v73 = v56;
          v74 = 2112;
          v75 = v41;
          _os_log_impl(&dword_25830F000, v40, OS_LOG_TYPE_DEFAULT, "%@  => controller: %@ self.registeredNodeIDs: %@", buf, 0x20u);
        }

        v42 = objc_alloc_init(MTRPluginPBMVariableValueResponseMessage);
        v43 = [[MTRPluginPBMVariableValue alloc] initWithObjectValue:v49];
        [(MTRPluginPBMVariableValueResponseMessage *)v42 setValue:v43];

        if (os_log_type_enabled(matterPluginLog_default, OS_LOG_TYPE_DEBUG))
        {
          [MTRPluginResidentClientSession messageTransport:handleUpdateControllerConfig:];
        }

        v44 = [v52 responseHandler];
        (v44)[2](v44, 0, v42);

        v13 = v47;
      }

      else
      {
        v48 = [v52 responseHandler];
        v12 = [MEMORY[0x277CCA9B8] errorWithDomain:@"kMTRPluginErrorDomain" code:-1002 userInfo:0];
        v48[2]();
        v13 = v12;
      }
    }

    objc_sync_exit(obj);
  }

  v45 = *MEMORY[0x277D85DE8];
}

- (void)messageTransport:(id)a3 handleCloseSession:(id)a4
{
  v5 = [(MTRPluginResidentClientSession *)self workQueue:a3];
  dispatch_assert_queue_V2(v5);

  v6 = matterPluginLog_default;
  if (os_log_type_enabled(matterPluginLog_default, OS_LOG_TYPE_ERROR))
  {
    [MTRPluginResidentClientSession messageTransport:v6 handleCloseSession:?];
  }

  v7 = +[MTRPluginResidentServer sharedInstance];
  [v7 removeResidentClientSession:self];
}

- (void)messageTransport:(id)a3 handleGetDeviceState:(id)a4
{
  v29 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = [(MTRPluginResidentClientSession *)self workQueue];
  dispatch_assert_queue_V2(v8);

  v9 = [v7 responseHandler];

  if (v9)
  {
    v10 = self;
    objc_sync_enter(v10);
    v11 = [v7 responseHandler];

    if (v11)
    {
      v12 = [(MTRPluginResidentClientSession *)v10 _validateAndFindDeviceNodeForMessage:v7];
      v13 = v12;
      if (v12)
      {
        v14 = [v12 nodeID];
        [(MTRPluginResidentClientSession *)v10 _registerNodeID:v14];

        v15 = objc_alloc_init(MTRPluginPBMVariableValueResponseMessage);
        v16 = [MTRPluginPBMVariableValue alloc];
        v17 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(v13, "state")}];
        v18 = [(MTRPluginPBMVariableValue *)v16 initWithObjectValue:v17];
        [(MTRPluginPBMVariableValueResponseMessage *)v15 setValue:v18];

        v19 = matterPluginLog_default;
        if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
        {
          v20 = [v13 nodeID];
          v23 = 138412802;
          v24 = v10;
          v25 = 2112;
          v26 = v20;
          v27 = 2112;
          v28 = v7;
          _os_log_impl(&dword_25830F000, v19, OS_LOG_TYPE_DEFAULT, "%@ responding to device state for nodeID: %@, for message %@", &v23, 0x20u);
        }

        v21 = [v7 responseHandler];
        (v21)[2](v21, 0, v15);
      }
    }

    objc_sync_exit(v10);
  }

  v22 = *MEMORY[0x277D85DE8];
}

- (void)messageTransport:(id)a3 handleGetDeviceIsCachePrimed:(id)a4
{
  v30 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = [(MTRPluginResidentClientSession *)self workQueue];
  dispatch_assert_queue_V2(v8);

  v9 = [v7 responseHandler];

  if (v9)
  {
    v10 = self;
    objc_sync_enter(v10);
    v11 = [v7 responseHandler];

    if (v11)
    {
      v12 = [(MTRPluginResidentClientSession *)v10 _validateAndFindDeviceNodeForMessage:v7];
      v13 = v12;
      if (v12)
      {
        v14 = [v12 nodeID];
        [(MTRPluginResidentClientSession *)v10 _registerNodeID:v14];

        v15 = objc_alloc_init(MTRPluginPBMVariableValueResponseMessage);
        v16 = [MTRPluginPBMVariableValue alloc];
        v17 = [MEMORY[0x277CCABB0] numberWithBool:{objc_msgSend(v13, "deviceCachePrimed")}];
        v18 = [(MTRPluginPBMVariableValue *)v16 initWithObjectValue:v17];
        [(MTRPluginPBMVariableValueResponseMessage *)v15 setValue:v18];

        v19 = matterPluginLog_default;
        if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
        {
          v20 = [v13 deviceCachePrimed];
          v21 = @"NO";
          v24 = 138412802;
          v25 = v10;
          v26 = 2112;
          if (v20)
          {
            v21 = @"YES";
          }

          v27 = v21;
          v28 = 2112;
          v29 = v7;
          _os_log_impl(&dword_25830F000, v19, OS_LOG_TYPE_DEFAULT, "%@ responding to device cachePrimed for nodeID: %@, for message %@", &v24, 0x20u);
        }

        v22 = [v7 responseHandler];
        (v22)[2](v22, 0, v15);
      }
    }

    objc_sync_exit(v10);
  }

  v23 = *MEMORY[0x277D85DE8];
}

- (void)messageTransport:(id)a3 handleGetDeviceEstimatedStartTime:(id)a4
{
  v28 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = [(MTRPluginResidentClientSession *)self workQueue];
  dispatch_assert_queue_V2(v8);

  v9 = [v7 responseHandler];

  if (v9)
  {
    v10 = self;
    objc_sync_enter(v10);
    v11 = [(MTRPluginResidentClientSession *)v10 _validateAndFindDeviceNodeForMessage:v7];
    v12 = v11;
    if (v11)
    {
      v13 = [v11 nodeID];
      [(MTRPluginResidentClientSession *)v10 _registerNodeID:v13];

      v14 = objc_alloc_init(MTRPluginPBMVariableValueResponseMessage);
      v15 = [MTRPluginPBMVariableValue alloc];
      v16 = [v12 estimatedStartTime];
      v17 = [(MTRPluginPBMVariableValue *)v15 initWithObjectValue:v16];
      [(MTRPluginPBMVariableValueResponseMessage *)v14 setValue:v17];

      v18 = matterPluginLog_default;
      if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
      {
        v19 = [v12 estimatedStartTime];
        v22 = 138412802;
        v23 = v10;
        v24 = 2112;
        v25 = v19;
        v26 = 2112;
        v27 = v7;
        _os_log_impl(&dword_25830F000, v18, OS_LOG_TYPE_DEFAULT, "%@ responding to device estimatedStartTime for nodeID: %@, for message %@", &v22, 0x20u);
      }

      v20 = [v7 responseHandler];
      (v20)[2](v20, 0, v14);
    }

    objc_sync_exit(v10);
  }

  v21 = *MEMORY[0x277D85DE8];
}

- (void)messageTransport:(id)a3 handleGetDeviceEstimatedSubscriptionLatency:(id)a4
{
  v28 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = [(MTRPluginResidentClientSession *)self workQueue];
  dispatch_assert_queue_V2(v8);

  v9 = [v7 responseHandler];

  if (v9)
  {
    v10 = self;
    objc_sync_enter(v10);
    v11 = [(MTRPluginResidentClientSession *)v10 _validateAndFindDeviceNodeForMessage:v7];
    v12 = v11;
    if (v11)
    {
      v13 = [v11 nodeID];
      [(MTRPluginResidentClientSession *)v10 _registerNodeID:v13];

      v14 = objc_alloc_init(MTRPluginPBMVariableValueResponseMessage);
      v15 = [MTRPluginPBMVariableValue alloc];
      v16 = [v12 estimatedSubscriptionLatency];
      v17 = [(MTRPluginPBMVariableValue *)v15 initWithObjectValue:v16];
      [(MTRPluginPBMVariableValueResponseMessage *)v14 setValue:v17];

      v18 = matterPluginLog_default;
      if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
      {
        v19 = [v12 estimatedSubscriptionLatency];
        v22 = 138412802;
        v23 = v10;
        v24 = 2112;
        v25 = v19;
        v26 = 2112;
        v27 = v7;
        _os_log_impl(&dword_25830F000, v18, OS_LOG_TYPE_DEFAULT, "%@ responding to device estimatedSubscriptionLatency for nodeID: %@, for message %@", &v22, 0x20u);
      }

      v20 = [v7 responseHandler];
      (v20)[2](v20, 0, v14);
    }

    objc_sync_exit(v10);
  }

  v21 = *MEMORY[0x277D85DE8];
}

- (void)messageTransport:(id)a3 handleDeviceReadAttribute:(id)a4
{
  v52 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = [(MTRPluginResidentClientSession *)self workQueue];
  dispatch_assert_queue_V2(v8);

  v9 = [v7 responseHandler];

  if (v9)
  {
    v10 = self;
    objc_sync_enter(v10);
    v11 = [MTRPluginPBMDeviceNodeReadAttributeMessage deviceNodeReadAttributeMessageFromMessage:v7];
    if (v11)
    {
      v12 = [(MTRPluginResidentClientSession *)v10 _validateAndFindDeviceControllerMatchingHomeInMessage:v7];
      if (!v12)
      {
LABEL_23:

        objc_sync_exit(v10);
        goto LABEL_24;
      }

      v13 = MEMORY[0x277CCABB0];
      v14 = [v11 node];
      v15 = [v13 numberWithUnsignedLongLong:{objc_msgSend(v14, "nodeID")}];

      v37 = [MEMORY[0x277CD5310] deviceWithNodeID:v15 controller:v12];
      if (v37)
      {
        [(MTRPluginResidentClientSession *)v10 _registerNodeID:v15];
        v16 = MEMORY[0x277CCABB0];
        v17 = [v11 attributePath];
        v18 = [v17 clusterPath];
        v36 = [v16 numberWithUnsignedInt:{objc_msgSend(v18, "endpointID")}];

        v19 = MEMORY[0x277CCABB0];
        v20 = [v11 attributePath];
        v21 = [v20 clusterPath];
        v22 = [v19 numberWithUnsignedInt:{objc_msgSend(v21, "clusterID")}];

        v23 = MEMORY[0x277CCABB0];
        v24 = [v11 attributePath];
        v35 = [v23 numberWithUnsignedInt:{objc_msgSend(v24, "attributeID")}];

        if ([v11 hasReadParams])
        {
          v25 = [v11 readParams];
          v33 = [v25 readParams];
        }

        else
        {
          v33 = 0;
        }

        v26 = matterPluginLog_default;
        if (os_log_type_enabled(matterPluginLog_default, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138413826;
          v39 = v10;
          v40 = 2112;
          v41 = v36;
          v42 = 2112;
          v43 = v22;
          v44 = 2112;
          v45 = v35;
          v46 = 2112;
          v47 = v33;
          v48 = 2112;
          v49 = v15;
          v50 = 2112;
          v51 = v7;
          _os_log_impl(&dword_25830F000, v26, OS_LOG_TYPE_DEFAULT, "%@ Reading attribute: endpointID (%@), clusterID (%@), attributeID (%@), readParams (%@) from local device nodeID (%@) connection for message %@", buf, 0x48u);
        }

        v27 = [v37 readAttributeWithEndpointID:v36 clusterID:v22 attributeID:v35 params:{v33, v33}];
        v28 = objc_alloc_init(MTRPluginPBMVariableValueResponseMessage);
        if (v27)
        {
          v29 = [[MTRPluginPBMVariableValue alloc] initWithObjectValue:v27];
          [(MTRPluginPBMVariableValueResponseMessage *)v28 setValue:v29];
        }

        v30 = matterPluginLog_default;
        if (os_log_type_enabled(matterPluginLog_default, OS_LOG_TYPE_DEBUG))
        {
          *buf = 138412802;
          v39 = v10;
          v40 = 2112;
          v41 = v15;
          v42 = 2112;
          v43 = v7;
          _os_log_debug_impl(&dword_25830F000, v30, OS_LOG_TYPE_DEBUG, "%@ responding to device read attribute for nodeID: %@, for message %@", buf, 0x20u);
        }

        v31 = [v7 responseHandler];
        (v31)[2](v31, 0, v28);
      }

      else
      {
        if (os_log_type_enabled(matterPluginLog_default, OS_LOG_TYPE_ERROR))
        {
          [MTRPluginResidentClientSession messageTransport:handleDeviceReadAttribute:];
        }

        v36 = [v7 responseHandler];
        v22 = [MEMORY[0x277CCA9B8] errorWithDomain:@"kMTRPluginErrorDomain" code:-1001 userInfo:0];
        (v36)[2](v36, v22, 0);
      }
    }

    else
    {
      if (os_log_type_enabled(matterPluginLog_default, OS_LOG_TYPE_ERROR))
      {
        [MTRPluginResidentClientSession messageTransport:handleDeviceReadAttribute:];
      }

      v12 = [v7 responseHandler];
      v15 = [MEMORY[0x277CCA9B8] errorWithDomain:@"kMTRPluginErrorDomain" code:-1007 userInfo:0];
      (v12)[2](v12, v15, 0);
    }

    goto LABEL_23;
  }

LABEL_24:

  v32 = *MEMORY[0x277D85DE8];
}

- (void)messageTransport:(id)a3 handleDeviceReadMultipleAttributes:(id)a4
{
  v37 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = [(MTRPluginResidentClientSession *)self workQueue];
  dispatch_assert_queue_V2(v8);

  v9 = [v7 responseHandler];

  if (v9)
  {
    v10 = self;
    objc_sync_enter(v10);
    v11 = [MTRPluginPBMDeviceNodeReadMultipleAttributesMessage deviceNodeReadMultipleAttributesMessageFromMessage:v7];
    if (v11)
    {
      v12 = [(MTRPluginResidentClientSession *)v10 _validateAndFindDeviceControllerMatchingHomeInMessage:v7];
      if (!v12)
      {
LABEL_18:

        objc_sync_exit(v10);
        goto LABEL_19;
      }

      v13 = MEMORY[0x277CCABB0];
      v14 = [v11 node];
      v15 = [v13 numberWithUnsignedLongLong:{objc_msgSend(v14, "nodeID")}];

      v28 = [MEMORY[0x277CD5310] deviceWithNodeID:v15 controller:v12];
      if (v28)
      {
        [(MTRPluginResidentClientSession *)v10 _registerNodeID:v15];
        v26 = [v11 attributeRequestPaths];
        v16 = matterPluginLog_default;
        if (os_log_type_enabled(matterPluginLog_default, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138413058;
          v30 = v10;
          v31 = 2112;
          v32 = v26;
          v33 = 2112;
          v34 = v15;
          v35 = 2112;
          v36 = v7;
          _os_log_impl(&dword_25830F000, v16, OS_LOG_TYPE_DEFAULT, "%@ Reading multiple attributes: (%@), from local device nodeID (%@) connection for message %@", buf, 0x2Au);
        }

        v17 = +[MTRPluginMetricsCollector sharedInstance];
        v18 = [v7 homeIdentifier];
        v19 = [v7 uniqueIdentifier];
        v20 = [MTRPluginBulkReadAttributeMetric bulkReadAttributeMetricForDevice:v28 homeID:v18 remoteMessageID:v19];
        [v17 collectMetric:v20];

        v21 = [v28 readAttributePaths:v27];
        v22 = [[MTRPluginPBMVariableValueResponseMessage alloc] initWithObjectValue:v21];
        v23 = matterPluginLog_default;
        if (os_log_type_enabled(matterPluginLog_default, OS_LOG_TYPE_DEBUG))
        {
          *buf = 138412802;
          v30 = v10;
          v31 = 2112;
          v32 = v15;
          v33 = 2112;
          v34 = v7;
          _os_log_debug_impl(&dword_25830F000, v23, OS_LOG_TYPE_DEBUG, "%@ responding to device read multiple attribute for nodeID: %@, for message %@", buf, 0x20u);
        }

        v24 = [v7 responseHandler];
        (v24)[2](v24, 0, v22);
      }

      else
      {
        if (os_log_type_enabled(matterPluginLog_default, OS_LOG_TYPE_ERROR))
        {
          [MTRPluginResidentClientSession messageTransport:handleDeviceReadAttribute:];
        }

        v27 = [v7 responseHandler];
        v21 = [MEMORY[0x277CCA9B8] errorWithDomain:@"kMTRPluginErrorDomain" code:-1001 userInfo:0];
        (v27)[2](v27, v21, 0);
      }
    }

    else
    {
      if (os_log_type_enabled(matterPluginLog_default, OS_LOG_TYPE_ERROR))
      {
        [MTRPluginResidentClientSession messageTransport:handleDeviceReadMultipleAttributes:];
      }

      v12 = [v7 responseHandler];
      v15 = [MEMORY[0x277CCA9B8] errorWithDomain:@"kMTRPluginErrorDomain" code:-1007 userInfo:0];
      (v12)[2](v12, v15, 0);
    }

    goto LABEL_18;
  }

LABEL_19:

  v25 = *MEMORY[0x277D85DE8];
}

- (void)messageTransport:(id)a3 handleDeviceWriteAttribute:(id)a4
{
  v57 = *MEMORY[0x277D85DE8];
  v42 = a3;
  v6 = a4;
  v7 = [(MTRPluginResidentClientSession *)self workQueue];
  dispatch_assert_queue_V2(v7);

  v8 = [v6 responseHandler];

  if (v8)
  {
    v9 = self;
    objc_sync_enter(v9);
    v10 = [MTRPluginPBMDeviceNodeWriteAttributeMessage deviceNodeWriteAttributeMessageFromMessage:v6];
    if (v10)
    {
      v11 = [(MTRPluginResidentClientSession *)v9 _validateAndFindDeviceControllerMatchingHomeInMessage:v6];
      if (!v11)
      {
LABEL_26:

        objc_sync_exit(v9);
        goto LABEL_27;
      }

      v12 = MEMORY[0x277CCABB0];
      v13 = [v10 node];
      v14 = [v12 numberWithUnsignedLongLong:{objc_msgSend(v13, "nodeID")}];

      v41 = [MEMORY[0x277CD5310] deviceWithNodeID:v14 controller:v11];
      if (v41)
      {
        [(MTRPluginResidentClientSession *)v9 _registerNodeID:v14];
        v15 = MEMORY[0x277CCABB0];
        v16 = [v10 attributePath];
        v17 = [v16 clusterPath];
        v40 = [v15 numberWithUnsignedInt:{objc_msgSend(v17, "endpointID")}];

        v18 = MEMORY[0x277CCABB0];
        v19 = [v10 attributePath];
        v20 = [v19 clusterPath];
        v39 = [v18 numberWithUnsignedInt:{objc_msgSend(v20, "clusterID")}];

        v21 = MEMORY[0x277CCABB0];
        v22 = [v10 attributePath];
        v38 = [v21 numberWithUnsignedInt:{objc_msgSend(v22, "attributeID")}];

        v23 = [v10 value];
        v37 = [v23 object];

        v24 = matterPluginLog_default;
        if (os_log_type_enabled(matterPluginLog_default, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138413826;
          v44 = v9;
          v45 = 2112;
          v46 = v40;
          v47 = 2112;
          v48 = v39;
          v49 = 2112;
          v50 = v38;
          v51 = 2112;
          v52 = v37;
          v53 = 2112;
          v54 = v14;
          v55 = 2112;
          v56 = v6;
          _os_log_impl(&dword_25830F000, v24, OS_LOG_TYPE_DEFAULT, "%@ Writing attribute: endpointID (%@), clusterID (%@), attributeID (%@), value (%@) from local device nodeID (%@) connection for message %@", buf, 0x48u);
        }

        v25 = [v10 hasExpectedValueInterval];
        if (v25)
        {
          v26 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:{objc_msgSend(v10, "expectedValueInterval")}];
        }

        else
        {
          v26 = 0;
        }

        v28 = [v10 hasTimedWriteTimeout];
        if (v28)
        {
          v29 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:{objc_msgSend(v10, "timedWriteTimeout")}];
        }

        else
        {
          v29 = 0;
        }

        [v41 writeAttributeWithEndpointID:v40 clusterID:v39 attributeID:v38 value:v37 expectedValueInterval:v26 timedWriteTimeout:v29];
        if (v28)
        {
        }

        if (v25)
        {
        }

        v30 = +[MTRPluginMetricsCollector sharedInstance];
        v31 = [v6 homeIdentifier];
        v32 = [v10 hasTimedWriteTimeout];
        v33 = [v6 uniqueIdentifier];
        LOBYTE(v36) = v32;
        v34 = [MTRPluginWriteAttributeMetric writeAttributeMetricForDevice:v41 homeID:v31 clientType:8 endpointID:v40 clusterID:v39 attributeID:v38 timedWrite:v36 remoteMessageID:v33];
        [v30 collectMetric:v34];

        v27 = v39;
      }

      else
      {
        if (os_log_type_enabled(matterPluginLog_default, OS_LOG_TYPE_ERROR))
        {
          [MTRPluginResidentClientSession messageTransport:handleDeviceWriteAttribute:];
        }

        v40 = [v6 responseHandler];
        v27 = [MEMORY[0x277CCA9B8] errorWithDomain:@"kMTRPluginErrorDomain" code:-1001 userInfo:0];
        (v40)[2](v40, v27, 0);
      }
    }

    else
    {
      if (os_log_type_enabled(matterPluginLog_default, OS_LOG_TYPE_ERROR))
      {
        [MTRPluginResidentClientSession messageTransport:handleDeviceWriteAttribute:];
      }

      v11 = [v6 responseHandler];
      v14 = [MEMORY[0x277CCA9B8] errorWithDomain:@"kMTRPluginErrorDomain" code:-1007 userInfo:0];
      (v11)[2](v11, v14, 0);
    }

    goto LABEL_26;
  }

LABEL_27:

  v35 = *MEMORY[0x277D85DE8];
}

- (id)_dictionaryFromCommandFields:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  v6 = v5;
  if (v6)
  {
    v7 = [MEMORY[0x277CBEB38] dictionary];
    v8 = [v6 objectForKey:@"type"];
    v9 = [v6 objectForKey:@"value"];
    if (v8)
    {
      [v7 setObject:v8 forKey:@"type"];
      if (v9)
      {
        [v7 setObject:v9 forKey:@"value"];
      }

      else
      {
        v13 = [MEMORY[0x277CBEA60] array];
        [v7 setObject:v13 forKey:@"value"];
      }

      v11 = v7;
    }

    else
    {
      v12 = matterPluginLog_default;
      if (os_log_type_enabled(matterPluginLog_default, OS_LOG_TYPE_ERROR))
      {
        [(MTRPluginResidentClientSession *)self _dictionaryFromCommandFields:v4, v12];
      }

      v11 = 0;
    }
  }

  else
  {
    v10 = matterPluginLog_default;
    if (os_log_type_enabled(matterPluginLog_default, OS_LOG_TYPE_ERROR))
    {
      [(MTRPluginResidentClientSession *)self _dictionaryFromCommandFields:v4, v10];
    }

    v11 = 0;
  }

  return v11;
}

- (void)messageTransport:(id)a3 handleDeviceInvokeCommand:(id)a4
{
  v76 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = [(MTRPluginResidentClientSession *)self workQueue];
  dispatch_assert_queue_V2(v8);

  v9 = [v7 responseHandler];

  if (v9)
  {
    v10 = self;
    objc_sync_enter(v10);
    v11 = [MTRPluginPBMDeviceNodeInvokeCommmandMessage deviceNodeInvokeCommandMessageFromMessage:v7];
    if (v11)
    {
      v47 = [(MTRPluginResidentClientSession *)v10 _validateAndFindDeviceControllerMatchingHomeInMessage:v7];
      if (v47)
      {
        v12 = MEMORY[0x277CCABB0];
        v13 = [v11 node];
        v14 = [v12 numberWithUnsignedLongLong:{objc_msgSend(v13, "nodeID")}];

        v46 = v14;
        v48 = [MEMORY[0x277CD5310] deviceWithNodeID:v14 controller:v47];
        if (v48)
        {
          [(MTRPluginResidentClientSession *)v10 _registerNodeID:v14];
          v15 = MEMORY[0x277CCABB0];
          v16 = [v11 commandPath];
          v17 = [v16 clusterPath];
          v45 = [v15 numberWithUnsignedInt:{objc_msgSend(v17, "endpointID")}];

          v18 = MEMORY[0x277CCABB0];
          v19 = [v11 commandPath];
          v20 = [v19 clusterPath];
          v44 = [v18 numberWithUnsignedInt:{objc_msgSend(v20, "clusterID")}];

          v21 = MEMORY[0x277CCABB0];
          v22 = [v11 commandPath];
          v43 = [v21 numberWithUnsignedInt:{objc_msgSend(v22, "commandID")}];

          v23 = [v11 commandFields];
          v24 = [v23 object];
          v42 = [(MTRPluginResidentClientSession *)v10 _dictionaryFromCommandFields:v24];

          if ([v11 hasExpectedValues])
          {
            v25 = [v11 expectedValues];
            v41 = [v25 array];
          }

          else
          {
            v41 = 0;
          }

          if ([v11 hasExpectedValueInterval])
          {
            v30 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:{objc_msgSend(v11, "expectedValueInterval")}];
          }

          else
          {
            v30 = 0;
          }

          if ([v11 hasTimedInvokeTimeout])
          {
            v31 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:{objc_msgSend(v11, "timedInvokeTimeout")}];
          }

          else
          {
            v31 = 0;
          }

          if ([v11 hasServerSideProcessingTimeout])
          {
            v32 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:{objc_msgSend(v11, "serverSideProcessingTimeout")}];
          }

          else
          {
            v32 = 0;
          }

          v33 = matterPluginLog_default;
          if (os_log_type_enabled(matterPluginLog_default, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 138414850;
            v55 = v10;
            v56 = 2112;
            v57 = v45;
            v58 = 2112;
            v59 = v44;
            v60 = 2112;
            v61 = v43;
            v62 = 2112;
            v63 = v42;
            v64 = 2112;
            v65 = v41;
            v66 = 2112;
            v67 = v30;
            v68 = 2112;
            v69 = v31;
            v70 = 2112;
            v71 = v32;
            v72 = 2112;
            v73 = v46;
            v74 = 2112;
            v75 = v7;
            _os_log_impl(&dword_25830F000, v33, OS_LOG_TYPE_DEFAULT, "%@ Invoking command on: endpointID (%@), clusterID (%@), commandID (%@), commandFields (%@), expectedValues (%@),                      expectedValueInterval (%@), timedInvokeTimeout (%@), serverSideProcessingTimeout (%@), from device nodeID (%@) for message %@", buf, 0x70u);
          }

          v34 = [v7 homeIdentifier];
          v35 = [v7 uniqueIdentifier];
          LOBYTE(v40) = v31 != 0;
          v36 = [MTRPluginInvokeCommandMetric invokeCommandMetricForDevice:v48 homeID:v34 clientType:8 endpointID:v45 clusterID:v44 commandID:v43 commandFields:v42 expectedValues:v41 expectedValueInterval:v30 timedInvoke:v40 remoteMessageID:v35];

          v37 = [(MTRPluginResidentClientSession *)v10 workQueue];
          v49[0] = MEMORY[0x277D85DD0];
          v49[1] = 3221225472;
          v49[2] = __77__MTRPluginResidentClientSession_messageTransport_handleDeviceInvokeCommand___block_invoke;
          v49[3] = &unk_279893AF0;
          v50 = v7;
          v51 = v10;
          v52 = v46;
          v38 = v36;
          v53 = v38;
          [v48 _invokeCommandWithEndpointID:v45 clusterID:v44 commandID:v43 commandFields:v42 expectedValues:v41 expectedValueInterval:v30 timedInvokeTimeout:v31 serverSideProcessingTimeout:v32 queue:v37 completion:v49];
        }

        else
        {
          v28 = [v7 responseHandler];
          v29 = [MEMORY[0x277CCA9B8] errorWithDomain:@"kMTRPluginErrorDomain" code:-1001 userInfo:0];
          (v28)[2](v28, v29, 0);
        }
      }
    }

    else
    {
      v26 = [v7 responseHandler];
      v27 = [MEMORY[0x277CCA9B8] errorWithDomain:@"kMTRPluginErrorDomain" code:-1007 userInfo:0];
      (v26)[2](v26, v27, 0);
    }

    objc_sync_exit(v10);
  }

  v39 = *MEMORY[0x277D85DE8];
}

void __77__MTRPluginResidentClientSession_messageTransport_handleDeviceInvokeCommand___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v30 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  v7 = [*(a1 + 32) responseHandler];

  if (v7)
  {
    if (v6)
    {
      v8 = matterPluginLog_default;
      if (os_log_type_enabled(matterPluginLog_default, OS_LOG_TYPE_ERROR))
      {
        v20 = *(a1 + 40);
        v19 = *(a1 + 48);
        v21 = *(a1 + 32);
        v22 = 138413058;
        v23 = v20;
        v24 = 2112;
        v25 = v19;
        v26 = 2112;
        v27 = v6;
        v28 = 2112;
        v29 = v21;
        _os_log_error_impl(&dword_25830F000, v8, OS_LOG_TYPE_ERROR, "%@ Failed to invoke command for nodeID: %@, with error %@, for message %@", &v22, 0x2Au);
      }

      v9 = +[MTRPluginMetricsCollector sharedInstance];
      [v9 collectMetric:*(a1 + 56) error:v6];

      v10 = [*(a1 + 32) responseHandler];
      (v10->_header)(v10, v6, 0);
    }

    else
    {
      v10 = objc_alloc_init(MTRPluginPBMVariableValueResponseMessage);
      v11 = [[MTRPluginPBMVariableValue alloc] initWithObjectValue:v5];
      [(MTRPluginPBMVariableValueResponseMessage *)v10 setValue:v11];

      v12 = matterPluginLog_default;
      if (os_log_type_enabled(matterPluginLog_default, OS_LOG_TYPE_DEFAULT))
      {
        v14 = *(a1 + 40);
        v13 = *(a1 + 48);
        v15 = *(a1 + 32);
        v22 = 138412802;
        v23 = v14;
        v24 = 2112;
        v25 = v13;
        v26 = 2112;
        v27 = v15;
        _os_log_impl(&dword_25830F000, v12, OS_LOG_TYPE_DEFAULT, "%@ responding to invoke command for nodeID: %@, for message %@", &v22, 0x20u);
      }

      v16 = +[MTRPluginMetricsCollector sharedInstance];
      [v16 collectMetric:*(a1 + 56)];

      v17 = [*(a1 + 32) responseHandler];
      (v17)[2](v17, 0, v10);
    }
  }

  v18 = *MEMORY[0x277D85DE8];
}

- (void)messageTransport:(id)a3 handleDeviceInvokeBatchCommand:(id)a4
{
  v70 = *MEMORY[0x277D85DE8];
  v37 = a3;
  v46 = a4;
  v6 = [(MTRPluginResidentClientSession *)self workQueue];
  dispatch_assert_queue_V2(v6);

  v7 = [v46 responseHandler];

  if (v7)
  {
    v38 = self;
    objc_sync_enter(v38);
    v39 = [MTRPluginPBMDeviceNodeInvokeBatchCommmandMessage deviceNodeInvokeBatchCommandMessageFromMessage:v46];
    if (v39)
    {
      v36 = [(MTRPluginResidentClientSession *)v38 _validateAndFindDeviceControllerMatchingHomeInMessage:v46];
      if (v36)
      {
        v8 = MEMORY[0x277CCABB0];
        v9 = [v39 node];
        v10 = [v8 numberWithUnsignedLongLong:{objc_msgSend(v9, "nodeID")}];

        v35 = v10;
        v45 = [MEMORY[0x277CD5310] deviceWithNodeID:v10 controller:v36];
        if (v45)
        {
          v11 = [v39 commands];
          [(MTRPluginResidentClientSession *)v38 _registerNodeID:v35];
          v12 = matterPluginLog_default;
          if (os_log_type_enabled(matterPluginLog_default, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 138413058;
            v63 = v38;
            v64 = 2112;
            v65 = v35;
            v66 = 2112;
            v67 = v46;
            v68 = 2112;
            v69 = v11;
            _os_log_impl(&dword_25830F000, v12, OS_LOG_TYPE_DEFAULT, "%@ Invoking Batch Commands on: nodeID %@ message (%@) commands %@", buf, 0x2Au);
          }

          v44 = [MEMORY[0x277CBEB18] array];
          v58 = 0u;
          v59 = 0u;
          v56 = 0u;
          v57 = 0u;
          obj = v11;
          v42 = [obj countByEnumeratingWithState:&v56 objects:v61 count:16];
          if (v42)
          {
            v41 = *v57;
            do
            {
              for (i = 0; i != v42; ++i)
              {
                if (*v57 != v41)
                {
                  objc_enumerationMutation(obj);
                }

                v13 = *(*(&v56 + 1) + 8 * i);
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
                v52 = 0u;
                v53 = 0u;
                v54 = 0u;
                v55 = 0u;
                v16 = v15;
                v17 = [v16 countByEnumeratingWithState:&v52 objects:v60 count:16];
                if (v17)
                {
                  v18 = *v53;
                  do
                  {
                    for (j = 0; j != v17; ++j)
                    {
                      if (*v53 != v18)
                      {
                        objc_enumerationMutation(v16);
                      }

                      v20 = *(*(&v52 + 1) + 8 * j);
                      objc_opt_class();
                      if (objc_opt_isKindOfClass())
                      {
                        v21 = v20;
                      }

                      else
                      {
                        v21 = 0;
                      }

                      v22 = v21;
                      if (v22)
                      {
                        v23 = [v46 homeIdentifier];
                        v24 = [v22 path];
                        v25 = [v22 commandFields];
                        v26 = [v46 uniqueIdentifier];
                        v27 = [MTRPluginInvokeCommandMetric invokeBatchCommandMetricForDevice:v45 homeID:v23 clientType:8 commandPath:v24 commandFields:v25 remoteMessageID:v26];

                        [v44 addObject:v27];
                      }
                    }

                    v17 = [v16 countByEnumeratingWithState:&v52 objects:v60 count:16];
                  }

                  while (v17);
                }
              }

              v42 = [obj countByEnumeratingWithState:&v56 objects:v61 count:16];
            }

            while (v42);
          }

          v28 = [(MTRPluginResidentClientSession *)v38 workQueue];
          v47[0] = MEMORY[0x277D85DD0];
          v47[1] = 3221225472;
          v47[2] = __82__MTRPluginResidentClientSession_messageTransport_handleDeviceInvokeBatchCommand___block_invoke;
          v47[3] = &unk_279893AF0;
          v29 = v44;
          v48 = v29;
          v49 = v46;
          v50 = v38;
          v51 = v35;
          [v45 invokeCommands:obj queue:v28 completion:v47];
        }

        else
        {
          v32 = [v46 responseHandler];
          v33 = [MEMORY[0x277CCA9B8] errorWithDomain:@"kMTRPluginErrorDomain" code:-1001 userInfo:0];
          (v32)[2](v32, v33, 0);
        }
      }
    }

    else
    {
      v30 = [v46 responseHandler];
      v31 = [MEMORY[0x277CCA9B8] errorWithDomain:@"kMTRPluginErrorDomain" code:-1007 userInfo:0];
      (v30)[2](v30, v31, 0);
    }

    objc_sync_exit(v38);
  }

  v34 = *MEMORY[0x277D85DE8];
}

void __82__MTRPluginResidentClientSession_messageTransport_handleDeviceInvokeBatchCommand___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v40 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  v7 = *(a1 + 32);
  v8 = [v7 countByEnumeratingWithState:&v27 objects:v39 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v28;
    do
    {
      v11 = 0;
      do
      {
        if (*v28 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v12 = *(*(&v27 + 1) + 8 * v11);
        v13 = +[MTRPluginMetricsCollector sharedInstance];
        [v13 collectMetric:v12 error:v6];

        ++v11;
      }

      while (v9 != v11);
      v9 = [v7 countByEnumeratingWithState:&v27 objects:v39 count:16];
    }

    while (v9);
  }

  v14 = [*(a1 + 40) responseHandler];

  if (v14)
  {
    if (v6)
    {
      v15 = matterPluginLog_default;
      if (os_log_type_enabled(matterPluginLog_default, OS_LOG_TYPE_ERROR))
      {
        v25 = *(a1 + 48);
        v24 = *(a1 + 56);
        v26 = *(a1 + 40);
        *buf = 138413058;
        v32 = v25;
        v33 = 2112;
        v34 = v24;
        v35 = 2112;
        v36 = v6;
        v37 = 2112;
        v38 = v26;
        _os_log_error_impl(&dword_25830F000, v15, OS_LOG_TYPE_ERROR, "%@ Failed to invoke batch commands for nodeID: %@, with error %@, for message %@", buf, 0x2Au);
      }

      v16 = [*(a1 + 40) responseHandler];
      (v16->_header)(v16, v6, 0);
    }

    else
    {
      v16 = objc_alloc_init(MTRPluginPBMVariableValueResponseMessage);
      v17 = [[MTRPluginPBMVariableValue alloc] initWithObjectValue:v5];
      [(MTRPluginPBMVariableValueResponseMessage *)v16 setValue:v17];

      v18 = matterPluginLog_default;
      if (os_log_type_enabled(matterPluginLog_default, OS_LOG_TYPE_DEFAULT))
      {
        v20 = *(a1 + 48);
        v19 = *(a1 + 56);
        v21 = *(a1 + 40);
        *buf = 138412802;
        v32 = v20;
        v33 = 2112;
        v34 = v19;
        v35 = 2112;
        v36 = v21;
        _os_log_impl(&dword_25830F000, v18, OS_LOG_TYPE_DEFAULT, "%@ responding to invoke batch command for nodeID: %@, for message %@", buf, 0x20u);
      }

      v22 = [*(a1 + 40) responseHandler];
      (v22)[2](v22, 0, v16);
    }
  }

  v23 = *MEMORY[0x277D85DE8];
}

- (void)messageTransport:(id)a3 handleDownloadDiagnosticLog:(id)a4
{
  v50 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = [(MTRPluginResidentClientSession *)self workQueue];
  dispatch_assert_queue_V2(v8);

  v9 = [v7 responseHandler];

  if (v9)
  {
    v10 = self;
    objc_sync_enter(v10);
    v11 = [MTRPluginPBMDeviceNodeDownloadDiagnosticLog deviceNodeDownloadDiagnosticLogMessageFromMessage:v7];
    if (v11)
    {
      v12 = [(MTRPluginResidentClientSession *)v10 _validateAndFindDeviceControllerMatchingHomeInMessage:v7];
      if (v12)
      {
        v13 = MEMORY[0x277CCABB0];
        v14 = [v11 node];
        v15 = [v13 numberWithUnsignedLongLong:{objc_msgSend(v14, "nodeID")}];

        v16 = [MEMORY[0x277CD5310] deviceWithNodeID:v15 controller:v12];
        if (v16)
        {
          [(MTRPluginResidentClientSession *)v10 _registerNodeID:v15];
          v17 = matterPluginLog_default;
          if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
          {
            v18 = [v11 logType];
            [v11 timeoutInterval];
            *buf = 138413314;
            v41 = v10;
            v42 = 1024;
            v43 = v18;
            v44 = 2048;
            v45 = v19;
            v46 = 2112;
            v47 = v15;
            v48 = 2112;
            v49 = v7;
            _os_log_impl(&dword_25830F000, v17, OS_LOG_TYPE_DEFAULT, "%@ Invoking download diagnostic log of type (%d), timeout (%lf), from device nodeID (%@) for message %@", buf, 0x30u);
          }

          v33 = v16;

          v20 = [(MTRPluginResidentClientSession *)v10 homeID];
          v21 = [v11 logType];
          v22 = [v7 uniqueIdentifier];
          v23 = [MTRPluginDownloadDiagnosticLogMetric downloadDiagnosticMetricForDevice:v33 homeID:v20 clientType:8 logType:v21 remoteMessageID:v22];

          LODWORD(v22) = [v11 logType];
          [v11 timeoutInterval];
          v25 = v24;
          v26 = [(MTRPluginResidentClientSession *)v10 workQueue];
          v34[0] = MEMORY[0x277D85DD0];
          v34[1] = 3221225472;
          v34[2] = __79__MTRPluginResidentClientSession_messageTransport_handleDownloadDiagnosticLog___block_invoke;
          v34[3] = &unk_279893B18;
          v35 = v7;
          v36 = v10;
          v37 = v11;
          v38 = v15;
          v27 = v23;
          v39 = v27;
          [v33 downloadLogOfType:v22 timeout:v26 queue:v34 completion:v25];

          v16 = v33;
        }

        else
        {
          v30 = [v7 responseHandler];
          v31 = [MEMORY[0x277CCA9B8] errorWithDomain:@"kMTRPluginErrorDomain" code:-1001 userInfo:0];
          (v30)[2](v30, v31, 0);
        }
      }
    }

    else
    {
      v28 = [v7 responseHandler];
      v29 = [MEMORY[0x277CCA9B8] errorWithDomain:@"kMTRPluginErrorDomain" code:-1007 userInfo:0];
      (v28)[2](v28, v29, 0);
    }

    objc_sync_exit(v10);
  }

  v32 = *MEMORY[0x277D85DE8];
}

void __79__MTRPluginResidentClientSession_messageTransport_handleDownloadDiagnosticLog___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v40 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  v7 = [*(a1 + 32) responseHandler];

  if (v7)
  {
    if (v6)
    {
      v8 = matterPluginLog_default;
      if (os_log_type_enabled(matterPluginLog_default, OS_LOG_TYPE_ERROR))
      {
        v25 = *(a1 + 40);
        v24 = *(a1 + 48);
        v26 = v8;
        v27 = [v24 logType];
        v28 = *(a1 + 56);
        v29 = *(a1 + 32);
        v30 = 138413314;
        v31 = v25;
        v32 = 1024;
        v33 = v27;
        v34 = 2112;
        v35 = v28;
        v36 = 2112;
        v37 = v6;
        v38 = 2112;
        v39 = v29;
        _os_log_error_impl(&dword_25830F000, v26, OS_LOG_TYPE_ERROR, "%@ Failed to download diagnostic log of type %d for nodeID: %@, with error %@, for message %@", &v30, 0x30u);
      }

      v9 = +[MTRPluginMetricsCollector sharedInstance];
      [v9 collectMetric:*(a1 + 64) error:v6];

      v10 = [*(a1 + 32) responseHandler];
      (v10)[2](v10, v6, 0);
    }

    else
    {
      v10 = [MEMORY[0x277CBEA90] dataWithContentsOfURL:v5];
      if (v10)
      {
        v11 = objc_alloc_init(MTRPluginPBMVariableValueResponseMessage);
        v12 = [[MTRPluginPBMVariableValue alloc] initWithObjectValue:v10];
        [(MTRPluginPBMVariableValueResponseMessage *)v11 setValue:v12];

        v13 = matterPluginLog_default;
        if (os_log_type_enabled(matterPluginLog_default, OS_LOG_TYPE_DEFAULT))
        {
          v15 = *(a1 + 40);
          v14 = *(a1 + 48);
          v16 = v13;
          v17 = [v14 logType];
          v18 = *(a1 + 56);
          v19 = *(a1 + 32);
          v30 = 138413058;
          v31 = v15;
          v32 = 1024;
          v33 = v17;
          v34 = 2112;
          v35 = v18;
          v36 = 2112;
          v37 = v19;
          _os_log_impl(&dword_25830F000, v16, OS_LOG_TYPE_DEFAULT, "%@ responding to download log of type %d for nodeID: %@, for message %@", &v30, 0x26u);
        }

        v20 = 0;
      }

      else
      {
        v20 = [MEMORY[0x277CCA9B8] errorWithDomain:@"kMTRPluginErrorDomain" code:-1011 userInfo:0];
        v11 = 0;
      }

      v21 = +[MTRPluginMetricsCollector sharedInstance];
      [v21 collectMetric:*(a1 + 64) error:v20];

      v22 = [*(a1 + 32) responseHandler];
      (v22)[2](v22, v20, v11);
    }
  }

  v23 = *MEMORY[0x277D85DE8];
}

- (void)invalidate
{
  v26 = *MEMORY[0x277D85DE8];
  v2 = self;
  objc_sync_enter(v2);
  v3 = [(MTRPluginResidentClientSession *)v2 registeredNodeIDs];
  v4 = [v3 copy];

  v5 = matterPluginLog_default;
  if (os_log_type_enabled(matterPluginLog_default, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412546;
    v23 = v2;
    v24 = 2112;
    v25 = v4;
    _os_log_impl(&dword_25830F000, v5, OS_LOG_TYPE_DEFAULT, "%@ invalidating registered nodeIDs; %@", buf, 0x16u);
  }

  v19 = 0u;
  v20 = 0u;
  v17 = 0u;
  v18 = 0u;
  v6 = v4;
  v7 = [v6 countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v7)
  {
    v8 = *v18;
    do
    {
      v9 = 0;
      do
      {
        if (*v18 != v8)
        {
          objc_enumerationMutation(v6);
        }

        [(MTRPluginResidentClientSession *)v2 _unregisterNodeID:*(*(&v17 + 1) + 8 * v9++), v17];
      }

      while (v7 != v9);
      v7 = [v6 countByEnumeratingWithState:&v17 objects:v21 count:16];
    }

    while (v7);
  }

  v10 = [(MTRPluginResidentClientSession *)v2 transport];
  [v10 removeDelegate:v2];

  v11 = [(MTRPluginResidentClientSession *)v2 deviceController];
  [v11 removeDeviceControllerDelegate:v2];

  v12 = [(MTRPluginResidentClientSession *)v2 internalStateUpdateSource];

  if (v12)
  {
    v13 = [(MTRPluginResidentClientSession *)v2 internalStateUpdateSource];
    dispatch_source_cancel(v13);

    [(MTRPluginResidentClientSession *)v2 setInternalStateUpdateSource:0];
  }

  v14 = [(MTRPluginResidentClientSession *)v2 deviceBecameActiveSource];

  if (v14)
  {
    v15 = [(MTRPluginResidentClientSession *)v2 deviceBecameActiveSource];
    dispatch_source_cancel(v15);

    [(MTRPluginResidentClientSession *)v2 setDeviceBecameActiveSource:0];
  }

  objc_sync_exit(v2);
  v16 = *MEMORY[0x277D85DE8];
}

void __118__MTRPluginResidentClientSession__sendMessageToHomeWithID_messageType_pbCodable_timeout_metric_errorBlock_replyBlock___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v31 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  v7 = objc_autoreleasePoolPush();
  v8 = matterPluginLog_default;
  if (v5)
  {
    if (os_log_type_enabled(matterPluginLog_default, OS_LOG_TYPE_ERROR))
    {
      __118__MTRPluginResidentClientSession__sendMessageToHomeWithID_messageType_pbCodable_timeout_metric_errorBlock_replyBlock___block_invoke_cold_1(a1, v8, v5);
    }

    v9 = *(a1 + 48);
    if (v9)
    {
      (*(v9 + 16))(v9, v5);
    }

    v10 = matterPluginLog_default;
    if (os_log_type_enabled(matterPluginLog_default, OS_LOG_TYPE_ERROR))
    {
      __118__MTRPluginResidentClientSession__sendMessageToHomeWithID_messageType_pbCodable_timeout_metric_errorBlock_replyBlock___block_invoke_cold_2(a1, v10);
    }

    v11 = +[MTRPluginResidentServer sharedInstance];
    [v11 removeResidentClientSession:*(a1 + 32)];
  }

  else
  {
    if (os_log_type_enabled(matterPluginLog_default, OS_LOG_TYPE_DEFAULT))
    {
      v12 = *(a1 + 32);
      v13 = *(a1 + 64);
      v14 = v8;
      v15 = [MTRPluginPBMHeader messageTypeAsString:v13];
      v16 = *(a1 + 40);
      v23 = 138413058;
      v24 = v12;
      v25 = 1024;
      v26 = v13;
      v27 = 2112;
      v28 = v15;
      v29 = 2112;
      v30 = v16;
      _os_log_impl(&dword_25830F000, v14, OS_LOG_TYPE_DEFAULT, "%@ Response received for message %d (%@) from homeID %@", &v23, 0x26u);
    }

    v17 = *(a1 + 56);
    if (v17)
    {
      (*(v17 + 16))(v17, v6);
    }

    v11 = *(a1 + 32);
    objc_sync_enter(v11);
    v18 = [MEMORY[0x277CBEAA8] date];
    [*(a1 + 32) setTimeOfLastActivity:v18];

    v19 = matterPluginLog_default;
    if (os_log_type_enabled(v19, OS_LOG_TYPE_DEBUG))
    {
      v20 = *(a1 + 32);
      v21 = [v20 timeOfLastActivity];
      __118__MTRPluginResidentClientSession__sendMessageToHomeWithID_messageType_pbCodable_timeout_metric_errorBlock_replyBlock___block_invoke_cold_3(v20, v21, &v23, v19);
    }

    objc_sync_exit(v11);
  }

  objc_autoreleasePoolPop(v7);
  v22 = *MEMORY[0x277D85DE8];
}

- (id)_deviceNodeMessageForDevice:(id)a3 messageValue:(id)a4
{
  v5 = a4;
  if (a3)
  {
    v6 = [a3 nodeID];
    a3 = [MTRPluginPBMDeviceNodeMessage deviceNodeMessageWithNodeID:v6];

    if (v5)
    {
      v7 = [[MTRPluginPBMVariableValue alloc] initWithObjectValue:v5];
      [a3 setValue:v7];
    }
  }

  return a3;
}

- (void)device:(id)a3 stateChanged:(unint64_t)a4
{
  v23 = *MEMORY[0x277D85DE8];
  v6 = a3;
  if (v6)
  {
    v7 = [(MTRPluginResidentClientSession *)self workQueue];
    dispatch_assert_queue_V2(v7);

    v8 = self;
    objc_sync_enter(v8);
    v9 = objc_autoreleasePoolPush();
    v10 = matterPluginLog_default;
    if (os_log_type_enabled(matterPluginLog_default, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412802;
      v18 = v8;
      v19 = 2112;
      v20 = v6;
      v21 = 2048;
      v22 = a4;
      _os_log_impl(&dword_25830F000, v10, OS_LOG_TYPE_DEFAULT, "%@ device %@ stateChanged %lu", buf, 0x20u);
    }

    v11 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:a4];
    v12 = [(MTRPluginResidentClientSession *)v8 _deviceNodeMessageForDevice:v6 messageValue:v11];

    v13 = [(MTRPluginResidentClientSession *)v8 homeID];
    v16[0] = MEMORY[0x277D85DD0];
    v16[1] = 3221225472;
    v16[2] = __54__MTRPluginResidentClientSession_device_stateChanged___block_invoke;
    v16[3] = &unk_279893B68;
    v16[4] = v8;
    v15[0] = MEMORY[0x277D85DD0];
    v15[1] = 3221225472;
    v15[2] = __54__MTRPluginResidentClientSession_device_stateChanged___block_invoke_121;
    v15[3] = &unk_279893B90;
    v15[4] = v8;
    [(MTRPluginResidentClientSession *)v8 _sendMessageToHomeWithID:v13 messageType:1008 pbCodable:v12 timeout:0 metric:v16 errorBlock:v15 replyBlock:60.0];

    objc_autoreleasePoolPop(v9);
    objc_sync_exit(v8);
  }

  v14 = *MEMORY[0x277D85DE8];
}

void __54__MTRPluginResidentClientSession_device_stateChanged___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if (os_log_type_enabled(matterPluginLog_default, OS_LOG_TYPE_ERROR))
  {
    __54__MTRPluginResidentClientSession_device_stateChanged___block_invoke_cold_1(a1);
  }
}

void __54__MTRPluginResidentClientSession_device_stateChanged___block_invoke_121(uint64_t a1)
{
  v7 = *MEMORY[0x277D85DE8];
  v2 = matterPluginLog_default;
  if (os_log_type_enabled(matterPluginLog_default, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    v5 = 138412290;
    v6 = v3;
    _os_log_impl(&dword_25830F000, v2, OS_LOG_TYPE_DEFAULT, "%@ Successfully sent state changed report", &v5, 0xCu);
  }

  v4 = *MEMORY[0x277D85DE8];
}

- (void)device:(id)a3 receivedAttributeReport:(id)a4
{
  v23 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = matterPluginLog_default;
  if (os_log_type_enabled(matterPluginLog_default, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412802;
    v18 = self;
    v19 = 2112;
    v20 = v6;
    v21 = 2112;
    v22 = v7;
    _os_log_impl(&dword_25830F000, v8, OS_LOG_TYPE_DEFAULT, "%@ device %@ receivedAttributeReport %@, sending to remote controller", buf, 0x20u);
  }

  if (v6 && v7)
  {
    v9 = [(MTRPluginResidentClientSession *)self workQueue];
    dispatch_assert_queue_V2(v9);

    v10 = self;
    objc_sync_enter(v10);
    v11 = objc_autoreleasePoolPush();
    v12 = [(MTRPluginResidentClientSession *)v10 _deviceNodeMessageForDevice:v6 messageValue:v7];
    v13 = [(MTRPluginResidentClientSession *)v10 homeID];
    v16[0] = MEMORY[0x277D85DD0];
    v16[1] = 3221225472;
    v16[2] = __65__MTRPluginResidentClientSession_device_receivedAttributeReport___block_invoke;
    v16[3] = &unk_279893B68;
    v16[4] = v10;
    v15[0] = MEMORY[0x277D85DD0];
    v15[1] = 3221225472;
    v15[2] = __65__MTRPluginResidentClientSession_device_receivedAttributeReport___block_invoke_123;
    v15[3] = &unk_279893B90;
    v15[4] = v10;
    [(MTRPluginResidentClientSession *)v10 _sendMessageToHomeWithID:v13 messageType:1009 pbCodable:v12 timeout:0 metric:v16 errorBlock:v15 replyBlock:60.0];

    objc_autoreleasePoolPop(v11);
    objc_sync_exit(v10);
  }

  v14 = *MEMORY[0x277D85DE8];
}

void __65__MTRPluginResidentClientSession_device_receivedAttributeReport___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if (os_log_type_enabled(matterPluginLog_default, OS_LOG_TYPE_ERROR))
  {
    __65__MTRPluginResidentClientSession_device_receivedAttributeReport___block_invoke_cold_1(a1);
  }
}

void __65__MTRPluginResidentClientSession_device_receivedAttributeReport___block_invoke_123(uint64_t a1)
{
  v7 = *MEMORY[0x277D85DE8];
  v2 = matterPluginLog_default;
  if (os_log_type_enabled(matterPluginLog_default, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    v5 = 138412290;
    v6 = v3;
    _os_log_impl(&dword_25830F000, v2, OS_LOG_TYPE_DEFAULT, "%@ Successfully sent attribute report", &v5, 0xCu);
  }

  v4 = *MEMORY[0x277D85DE8];
}

- (void)device:(id)a3 receivedEventReport:(id)a4
{
  v23 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = matterPluginLog_default;
  if (os_log_type_enabled(matterPluginLog_default, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412802;
    v18 = self;
    v19 = 2112;
    v20 = v6;
    v21 = 2112;
    v22 = v7;
    _os_log_impl(&dword_25830F000, v8, OS_LOG_TYPE_DEFAULT, "%@ device %@ receivedEventReport %@", buf, 0x20u);
  }

  if (v6 && v7)
  {
    v9 = [(MTRPluginResidentClientSession *)self workQueue];
    dispatch_assert_queue_V2(v9);

    v10 = self;
    objc_sync_enter(v10);
    v11 = objc_autoreleasePoolPush();
    v12 = [(MTRPluginResidentClientSession *)v10 _deviceNodeMessageForDevice:v6 messageValue:v7];
    v13 = [(MTRPluginResidentClientSession *)v10 homeID];
    v16[0] = MEMORY[0x277D85DD0];
    v16[1] = 3221225472;
    v16[2] = __61__MTRPluginResidentClientSession_device_receivedEventReport___block_invoke;
    v16[3] = &unk_279893B68;
    v16[4] = v10;
    v15[0] = MEMORY[0x277D85DD0];
    v15[1] = 3221225472;
    v15[2] = __61__MTRPluginResidentClientSession_device_receivedEventReport___block_invoke_124;
    v15[3] = &unk_279893B90;
    v15[4] = v10;
    [(MTRPluginResidentClientSession *)v10 _sendMessageToHomeWithID:v13 messageType:1010 pbCodable:v12 timeout:0 metric:v16 errorBlock:v15 replyBlock:60.0];

    objc_autoreleasePoolPop(v11);
    objc_sync_exit(v10);
  }

  v14 = *MEMORY[0x277D85DE8];
}

void __61__MTRPluginResidentClientSession_device_receivedEventReport___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if (os_log_type_enabled(matterPluginLog_default, OS_LOG_TYPE_ERROR))
  {
    __61__MTRPluginResidentClientSession_device_receivedEventReport___block_invoke_cold_1(a1);
  }
}

void __61__MTRPluginResidentClientSession_device_receivedEventReport___block_invoke_124(uint64_t a1)
{
  v7 = *MEMORY[0x277D85DE8];
  v2 = matterPluginLog_default;
  if (os_log_type_enabled(matterPluginLog_default, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    v5 = 138412290;
    v6 = v3;
    _os_log_impl(&dword_25830F000, v2, OS_LOG_TYPE_DEFAULT, "%@ Successfully sent event report", &v5, 0xCu);
  }

  v4 = *MEMORY[0x277D85DE8];
}

- (void)deviceBecameActive:(id)a3
{
  v11 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = matterPluginLog_default;
  if (os_log_type_enabled(matterPluginLog_default, OS_LOG_TYPE_DEFAULT))
  {
    v7 = 138412546;
    v8 = self;
    v9 = 2112;
    v10 = v4;
    _os_log_impl(&dword_25830F000, v5, OS_LOG_TYPE_DEFAULT, "%@ deviceBecameActive %@", &v7, 0x16u);
  }

  v6 = *MEMORY[0x277D85DE8];
}

- (void)deviceCachePrimed:(id)a3
{
  v18 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = matterPluginLog_default;
  if (os_log_type_enabled(matterPluginLog_default, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412546;
    v15 = self;
    v16 = 2112;
    v17 = v4;
    _os_log_impl(&dword_25830F000, v5, OS_LOG_TYPE_DEFAULT, "%@ deviceCachePrimed %@", buf, 0x16u);
  }

  if (v4)
  {
    v6 = [(MTRPluginResidentClientSession *)self workQueue];
    dispatch_assert_queue_V2(v6);

    v7 = self;
    objc_sync_enter(v7);
    v8 = objc_autoreleasePoolPush();
    v9 = [(MTRPluginResidentClientSession *)v7 _deviceNodeMessageForDevice:v4 messageValue:0];
    v10 = [(MTRPluginResidentClientSession *)v7 homeID];
    v13[0] = MEMORY[0x277D85DD0];
    v13[1] = 3221225472;
    v13[2] = __52__MTRPluginResidentClientSession_deviceCachePrimed___block_invoke;
    v13[3] = &unk_279893B68;
    v13[4] = v7;
    v12[0] = MEMORY[0x277D85DD0];
    v12[1] = 3221225472;
    v12[2] = __52__MTRPluginResidentClientSession_deviceCachePrimed___block_invoke_125;
    v12[3] = &unk_279893B90;
    v12[4] = v7;
    [(MTRPluginResidentClientSession *)v7 _sendMessageToHomeWithID:v10 messageType:1012 pbCodable:v9 timeout:0 metric:v13 errorBlock:v12 replyBlock:60.0];

    objc_autoreleasePoolPop(v8);
    objc_sync_exit(v7);
  }

  v11 = *MEMORY[0x277D85DE8];
}

void __52__MTRPluginResidentClientSession_deviceCachePrimed___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if (os_log_type_enabled(matterPluginLog_default, OS_LOG_TYPE_ERROR))
  {
    __52__MTRPluginResidentClientSession_deviceCachePrimed___block_invoke_cold_1(a1);
  }
}

void __52__MTRPluginResidentClientSession_deviceCachePrimed___block_invoke_125(uint64_t a1)
{
  v7 = *MEMORY[0x277D85DE8];
  v2 = matterPluginLog_default;
  if (os_log_type_enabled(matterPluginLog_default, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    v5 = 138412290;
    v6 = v3;
    _os_log_impl(&dword_25830F000, v2, OS_LOG_TYPE_DEFAULT, "%@ Successfully sent device cache primed active", &v5, 0xCu);
  }

  v4 = *MEMORY[0x277D85DE8];
}

- (void)deviceConfigurationChanged:(id)a3
{
  v17 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = matterPluginLog_default;
  if (os_log_type_enabled(matterPluginLog_default, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412546;
    v14 = self;
    v15 = 2112;
    v16 = v4;
    _os_log_impl(&dword_25830F000, v5, OS_LOG_TYPE_DEFAULT, "%@ deviceConfigurationChanged %@", buf, 0x16u);
  }

  if (v4)
  {
    v6 = [(MTRPluginResidentClientSession *)self workQueue];
    dispatch_assert_queue_V2(v6);

    v7 = self;
    objc_sync_enter(v7);
    v8 = [(MTRPluginResidentClientSession *)v7 _deviceNodeMessageForDevice:v4 messageValue:0];
    v9 = [(MTRPluginResidentClientSession *)v7 homeID];
    v12[0] = MEMORY[0x277D85DD0];
    v12[1] = 3221225472;
    v12[2] = __61__MTRPluginResidentClientSession_deviceConfigurationChanged___block_invoke;
    v12[3] = &unk_279893B68;
    v12[4] = v7;
    v11[0] = MEMORY[0x277D85DD0];
    v11[1] = 3221225472;
    v11[2] = __61__MTRPluginResidentClientSession_deviceConfigurationChanged___block_invoke_126;
    v11[3] = &unk_279893B90;
    v11[4] = v7;
    [(MTRPluginResidentClientSession *)v7 _sendMessageToHomeWithID:v9 messageType:1013 pbCodable:v8 timeout:0 metric:v12 errorBlock:v11 replyBlock:60.0];

    objc_sync_exit(v7);
  }

  v10 = *MEMORY[0x277D85DE8];
}

void __61__MTRPluginResidentClientSession_deviceConfigurationChanged___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if (os_log_type_enabled(matterPluginLog_default, OS_LOG_TYPE_ERROR))
  {
    __61__MTRPluginResidentClientSession_deviceConfigurationChanged___block_invoke_cold_1(a1);
  }
}

void __61__MTRPluginResidentClientSession_deviceConfigurationChanged___block_invoke_126(uint64_t a1)
{
  v7 = *MEMORY[0x277D85DE8];
  v2 = matterPluginLog_default;
  if (os_log_type_enabled(matterPluginLog_default, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    v5 = 138412290;
    v6 = v3;
    _os_log_impl(&dword_25830F000, v2, OS_LOG_TYPE_DEFAULT, "%@ Successfully sent device configChanged", &v5, 0xCu);
  }

  v4 = *MEMORY[0x277D85DE8];
}

- (void)device:(id)a3 internalStateUpdated:(id)a4
{
  v41 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = matterPluginLog_default;
  if (os_log_type_enabled(matterPluginLog_default, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412802;
    v36 = self;
    v37 = 2112;
    v38 = v6;
    v39 = 2112;
    v40 = v7;
    _os_log_impl(&dword_25830F000, v8, OS_LOG_TYPE_DEFAULT, "%@ device %@ internalStateUpdated with value: %@", buf, 0x20u);
  }

  if (v6 && v7)
  {
    v9 = [(MTRPluginResidentClientSession *)self workQueue];
    dispatch_assert_queue_V2(v9);

    v10 = objc_autoreleasePoolPush();
    v11 = [MEMORY[0x277CBEB38] dictionary];
    v12 = [v7 objectForKeyedSubscript:@"MTRDeviceInternalStateKeyVendorID"];
    [v11 setObject:v12 forKeyedSubscript:@"MTRDeviceInternalStateKeyVendorID"];

    v13 = [v7 objectForKeyedSubscript:@"MTRDeviceInternalStateKeyProductID"];
    [v11 setObject:v13 forKeyedSubscript:@"MTRDeviceInternalStateKeyProductID"];

    v14 = [v7 objectForKeyedSubscript:@"MTRDeviceInternalPropertyNetworkFeatures"];
    [v11 setObject:v14 forKeyedSubscript:@"MTRDeviceInternalPropertyNetworkFeatures"];

    v15 = [v7 objectForKeyedSubscript:@"MTRDeviceInternalPropertyDeviceInternalState"];
    [v11 setObject:v15 forKeyedSubscript:@"MTRDeviceInternalPropertyDeviceInternalState"];

    v16 = [v7 objectForKeyedSubscript:@"MTRDeviceInternalPropertyDeviceState"];
    [v11 setObject:v16 forKeyedSubscript:@"MTRDeviceInternalPropertyDeviceState"];

    v17 = [v7 objectForKeyedSubscript:@"MTRDeviceInternalPropertyDeviceCachePrimed"];
    [v11 setObject:v17 forKeyedSubscript:@"MTRDeviceInternalPropertyDeviceCachePrimed"];

    v18 = [(MTRPluginResidentClientSession *)self lastKnownInternalState];
    if (v18 && (v19 = v18, -[MTRPluginResidentClientSession lastKnownInternalState](self, "lastKnownInternalState"), v20 = objc_claimAutoreleasedReturnValue(), v21 = [v20 isEqual:v11], v20, v19, v21))
    {
      v22 = matterPluginLog_default;
      if (os_log_type_enabled(matterPluginLog_default, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v36 = self;
        _os_log_impl(&dword_25830F000, v22, OS_LOG_TYPE_DEFAULT, "%@ internalState is same as lastKnownInternalState, ignoring sending update to remote clients", buf, 0xCu);
      }
    }

    else
    {
      [(MTRPluginResidentClientSession *)self setLastKnownInternalState:v11];
      v23 = [(MTRPluginResidentClientSession *)self _deviceNodeMessageForDevice:v6 messageValue:v7];
      v24 = [(MTRPluginResidentClientSession *)self internalStateUpdateSource];
      v25 = [(MTRPluginResidentClientSession *)self workQueue];
      v29 = MEMORY[0x277D85DD0];
      v30 = 3221225472;
      v31 = __62__MTRPluginResidentClientSession_device_internalStateUpdated___block_invoke;
      v32 = &unk_279893AC8;
      v33 = self;
      v34 = v23;
      v26 = v23;
      v27 = MTRBufferedExecutionBlock(v24, v25, &v29, 0.5);
      [(MTRPluginResidentClientSession *)self setInternalStateUpdateSource:v27, v29, v30, v31, v32, v33];
    }

    objc_autoreleasePoolPop(v10);
  }

  v28 = *MEMORY[0x277D85DE8];
}

void __62__MTRPluginResidentClientSession_device_internalStateUpdated___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = [v2 homeID];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __62__MTRPluginResidentClientSession_device_internalStateUpdated___block_invoke_2;
  v6[3] = &unk_279893B68;
  v4 = *(a1 + 40);
  v7 = *(a1 + 32);
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __62__MTRPluginResidentClientSession_device_internalStateUpdated___block_invoke_145;
  v5[3] = &unk_279893B90;
  v5[4] = v7;
  [v2 _sendMessageToHomeWithID:v3 messageType:1014 pbCodable:v4 timeout:0 metric:v6 errorBlock:v5 replyBlock:60.0];
}

void __62__MTRPluginResidentClientSession_device_internalStateUpdated___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  if (os_log_type_enabled(matterPluginLog_default, OS_LOG_TYPE_ERROR))
  {
    __62__MTRPluginResidentClientSession_device_internalStateUpdated___block_invoke_2_cold_1(a1);
  }
}

void __62__MTRPluginResidentClientSession_device_internalStateUpdated___block_invoke_145(uint64_t a1)
{
  v7 = *MEMORY[0x277D85DE8];
  v2 = matterPluginLog_default;
  if (os_log_type_enabled(matterPluginLog_default, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    v5 = 138412290;
    v6 = v3;
    _os_log_impl(&dword_25830F000, v2, OS_LOG_TYPE_DEFAULT, "%@ Successfully sent device internal state updated", &v5, 0xCu);
  }

  v4 = *MEMORY[0x277D85DE8];
}

- (void)_registerNodeID:.cold.1()
{
  v3 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_2(&dword_25830F000, v0, v1, "%@ *** No device created for nodeID: %@");
  v2 = *MEMORY[0x277D85DE8];
}

- (void)_unregisterNodeID:.cold.1()
{
  v3 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_2(&dword_25830F000, v0, v1, "%@ *** No device to unregister for nodeID: %@");
  v2 = *MEMORY[0x277D85DE8];
}

- (void)_validateAndFindDeviceControllerMatchingHomeInMessage:.cold.1()
{
  v3 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_2(&dword_25830F000, v0, v1, "%@ failed to find controller for home for incoming request message %@");
  v2 = *MEMORY[0x277D85DE8];
}

- (void)_validateAndFindDeviceControllerForMessage:deviceControllerMessage:.cold.1()
{
  v3 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_2(&dword_25830F000, v0, v1, "%@ failed to decode message for incoming controller request message %@");
  v2 = *MEMORY[0x277D85DE8];
}

- (void)_validateAndFindDeviceNodeForMessage:.cold.1()
{
  v3 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_2(&dword_25830F000, v0, v1, "%@ failed to decode message for incoming device request message %@");
  v2 = *MEMORY[0x277D85DE8];
}

- (void)messageTransport:updateTimeOfActivity:.cold.1()
{
  v3 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_5(&dword_25830F000, v0, v1, "%@ Updating timeOfActivity to: %@");
  v2 = *MEMORY[0x277D85DE8];
}

- (void)messageTransport:handleUpdateControllerConfig:.cold.1()
{
  v3 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_5(&dword_25830F000, v0, v1, "%@ responding to handleUpdateControllerConfig for message %@");
  v2 = *MEMORY[0x277D85DE8];
}

- (void)messageTransport:(void *)a1 handleCloseSession:(void *)a2 .cold.1(void *a1, void *a2)
{
  v10 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = [a1 sessionID];
  v7 = 138412546;
  v8 = a1;
  OUTLINED_FUNCTION_3();
  v9 = v5;
  _os_log_error_impl(&dword_25830F000, v3, OS_LOG_TYPE_ERROR, "%@ Removing sessionID %@, since the peer requested to close the session", &v7, 0x16u);

  v6 = *MEMORY[0x277D85DE8];
}

- (void)messageTransport:handleDeviceReadAttribute:.cold.1()
{
  v3 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_2(&dword_25830F000, v0, v1, "%@ failed to find node for read attribute for incoming device request message %@");
  v2 = *MEMORY[0x277D85DE8];
}

- (void)messageTransport:handleDeviceReadAttribute:.cold.2()
{
  v3 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_2(&dword_25830F000, v0, v1, "%@ failed to decode read attribute message for incoming device request message %@");
  v2 = *MEMORY[0x277D85DE8];
}

- (void)messageTransport:handleDeviceReadMultipleAttributes:.cold.2()
{
  v3 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_2(&dword_25830F000, v0, v1, "%@ failed to decode read multiple attribute message for incoming device request message %@");
  v2 = *MEMORY[0x277D85DE8];
}

- (void)messageTransport:handleDeviceWriteAttribute:.cold.1()
{
  v3 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_2(&dword_25830F000, v0, v1, "%@ failed to find node for write attribute for incoming device request message %@");
  v2 = *MEMORY[0x277D85DE8];
}

- (void)messageTransport:handleDeviceWriteAttribute:.cold.2()
{
  v3 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_2(&dword_25830F000, v0, v1, "%@ failed to decode write attribute message for incoming device request message %@");
  v2 = *MEMORY[0x277D85DE8];
}

- (void)_dictionaryFromCommandFields:(void *)a3 .cold.1(uint64_t a1, uint64_t a2, void *a3)
{
  v13 = *MEMORY[0x277D85DE8];
  v3 = a3;
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_6(&dword_25830F000, v6, v7, "%@ *** commandFields is missing type %@:%@", v8, v9, v10, v11, 2u);

  v12 = *MEMORY[0x277D85DE8];
}

- (void)_dictionaryFromCommandFields:(void *)a3 .cold.2(uint64_t a1, uint64_t a2, void *a3)
{
  v13 = *MEMORY[0x277D85DE8];
  v3 = a3;
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_6(&dword_25830F000, v6, v7, "%@ *** commandFields is invalid type %@:%@", v8, v9, v10, v11, 2u);

  v12 = *MEMORY[0x277D85DE8];
}

void __118__MTRPluginResidentClientSession__sendMessageToHomeWithID_messageType_pbCodable_timeout_metric_errorBlock_replyBlock___block_invoke_cold_1(uint64_t a1, void *a2, uint64_t a3)
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
  _os_log_error_impl(&dword_25830F000, v7, OS_LOG_TYPE_ERROR, "%@ Response received for message %d (%@) from homeID %@ with error: %@", &v11, 0x30u);

  v10 = *MEMORY[0x277D85DE8];
}

void __118__MTRPluginResidentClientSession__sendMessageToHomeWithID_messageType_pbCodable_timeout_metric_errorBlock_replyBlock___block_invoke_cold_2(uint64_t a1, void *a2)
{
  v10 = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 32);
  v3 = a2;
  v4 = [v2 sessionID];
  v7 = 138412546;
  v8 = v2;
  OUTLINED_FUNCTION_3();
  v9 = v5;
  _os_log_error_impl(&dword_25830F000, v3, OS_LOG_TYPE_ERROR, "%@ Removing sessionID %@, since the peer rejected with an error message", &v7, 0x16u);

  v6 = *MEMORY[0x277D85DE8];
}

void __118__MTRPluginResidentClientSession__sendMessageToHomeWithID_messageType_pbCodable_timeout_metric_errorBlock_replyBlock___block_invoke_cold_3(uint64_t a1, void *a2, uint8_t *buf, os_log_t log)
{
  *buf = 138412546;
  *(buf + 4) = a1;
  *(buf + 6) = 2112;
  *(buf + 14) = a2;
  _os_log_debug_impl(&dword_25830F000, log, OS_LOG_TYPE_DEBUG, "%@ Response received, updating timeOfActivity to: %@", buf, 0x16u);
}

void __54__MTRPluginResidentClientSession_device_stateChanged___block_invoke_cold_1(uint64_t a1)
{
  OUTLINED_FUNCTION_4(a1, *MEMORY[0x277D85DE8]);
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_2(&dword_25830F000, v1, v2, "%@ Failed to send state changed value with error: %@");
  v3 = *MEMORY[0x277D85DE8];
}

void __65__MTRPluginResidentClientSession_device_receivedAttributeReport___block_invoke_cold_1(uint64_t a1)
{
  OUTLINED_FUNCTION_4(a1, *MEMORY[0x277D85DE8]);
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_2(&dword_25830F000, v1, v2, "%@ Failed to send attribute report with error: %@");
  v3 = *MEMORY[0x277D85DE8];
}

void __61__MTRPluginResidentClientSession_device_receivedEventReport___block_invoke_cold_1(uint64_t a1)
{
  OUTLINED_FUNCTION_4(a1, *MEMORY[0x277D85DE8]);
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_2(&dword_25830F000, v1, v2, "%@ Failed to send event report with error: %@");
  v3 = *MEMORY[0x277D85DE8];
}

void __52__MTRPluginResidentClientSession_deviceCachePrimed___block_invoke_cold_1(uint64_t a1)
{
  OUTLINED_FUNCTION_4(a1, *MEMORY[0x277D85DE8]);
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_2(&dword_25830F000, v1, v2, "%@ Failed to send device cache primed with error: %@");
  v3 = *MEMORY[0x277D85DE8];
}

void __61__MTRPluginResidentClientSession_deviceConfigurationChanged___block_invoke_cold_1(uint64_t a1)
{
  OUTLINED_FUNCTION_4(a1, *MEMORY[0x277D85DE8]);
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_2(&dword_25830F000, v1, v2, "%@ Failed to send device configChanged with error: %@");
  v3 = *MEMORY[0x277D85DE8];
}

void __62__MTRPluginResidentClientSession_device_internalStateUpdated___block_invoke_2_cold_1(uint64_t a1)
{
  OUTLINED_FUNCTION_4(a1, *MEMORY[0x277D85DE8]);
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_2(&dword_25830F000, v1, v2, "%@ Failed to send device internal state updated with error: %@");
  v3 = *MEMORY[0x277D85DE8];
}

@end