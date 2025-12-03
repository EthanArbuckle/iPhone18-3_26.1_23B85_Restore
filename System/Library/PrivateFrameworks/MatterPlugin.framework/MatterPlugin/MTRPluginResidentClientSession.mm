@interface MTRPluginResidentClientSession
- (MTRPluginResidentClientSession)initWithTransport:(id)transport workQueue:(id)queue sessionID:(id)d homeID:(id)iD peerAddress:(id)address;
- (NSString)description;
- (id)_deviceNodeMessageForDevice:(id)device messageValue:(id)value;
- (id)_dictionaryFromCommandFields:(id)fields;
- (id)_validateAndFindDeviceControllerForMessage:(id)message deviceControllerMessage:(id *)controllerMessage;
- (id)_validateAndFindDeviceControllerMatchingHomeInMessage:(id)message;
- (id)_validateAndFindDeviceNodeForMessage:(id)message;
- (id)deviceController;
- (void)_registerForMessages;
- (void)_registerNodeID:(id)d;
- (void)_unregisterNodeID:(id)d;
- (void)device:(id)device internalStateUpdated:(id)updated;
- (void)device:(id)device receivedAttributeReport:(id)report;
- (void)device:(id)device receivedEventReport:(id)report;
- (void)device:(id)device stateChanged:(unint64_t)changed;
- (void)deviceBecameActive:(id)active;
- (void)deviceCachePrimed:(id)primed;
- (void)deviceConfigurationChanged:(id)changed;
- (void)invalidate;
- (void)messageTransport:(id)transport handleCloseSession:(id)session;
- (void)messageTransport:(id)transport handleDeviceInvokeBatchCommand:(id)command;
- (void)messageTransport:(id)transport handleDeviceInvokeCommand:(id)command;
- (void)messageTransport:(id)transport handleDeviceReadAttribute:(id)attribute;
- (void)messageTransport:(id)transport handleDeviceReadMultipleAttributes:(id)attributes;
- (void)messageTransport:(id)transport handleDeviceWriteAttribute:(id)attribute;
- (void)messageTransport:(id)transport handleDownloadDiagnosticLog:(id)log;
- (void)messageTransport:(id)transport handleGetControllerIsRunning:(id)running;
- (void)messageTransport:(id)transport handleGetControllerNodeID:(id)d;
- (void)messageTransport:(id)transport handleGetControllerUniqueID:(id)d;
- (void)messageTransport:(id)transport handleGetDeviceEstimatedStartTime:(id)time;
- (void)messageTransport:(id)transport handleGetDeviceEstimatedSubscriptionLatency:(id)latency;
- (void)messageTransport:(id)transport handleGetDeviceIsCachePrimed:(id)primed;
- (void)messageTransport:(id)transport handleGetDeviceState:(id)state;
- (void)messageTransport:(id)transport handleUpdateControllerConfig:(id)config;
- (void)messageTransport:(id)transport updateTimeOfActivity:(id)activity;
@end

@implementation MTRPluginResidentClientSession

- (MTRPluginResidentClientSession)initWithTransport:(id)transport workQueue:(id)queue sessionID:(id)d homeID:(id)iD peerAddress:(id)address
{
  transportCopy = transport;
  queueCopy = queue;
  dCopy = d;
  iDCopy = iD;
  addressCopy = address;
  v26.receiver = self;
  v26.super_class = MTRPluginResidentClientSession;
  v17 = [(MTRPluginResidentClientSession *)&v26 init];
  if (v17)
  {
    date = [MEMORY[0x277CBEAA8] date];
    [(MTRPluginResidentClientSession *)v17 setTimeOfLastActivity:date];

    [(MTRPluginResidentClientSession *)v17 setSessionID:dCopy];
    [(MTRPluginResidentClientSession *)v17 setHomeID:iDCopy];
    v19 = [MEMORY[0x277CBEB58] set];
    [(MTRPluginResidentClientSession *)v17 setRegisteredNodeIDs:v19];

    v20 = [MEMORY[0x277CBEB58] set];
    [(MTRPluginResidentClientSession *)v17 setSubscribedMTRDevices:v20];

    [(MTRPluginResidentClientSession *)v17 setTransport:transportCopy];
    [(MTRPluginResidentClientSession *)v17 setWorkQueue:queueCopy];
    v21 = [addressCopy copy];
    [(MTRPluginResidentClientSession *)v17 setPeerAddress:v21];

    workQueue = [(MTRPluginResidentClientSession *)v17 workQueue];
    [transportCopy setDelegate:v17 delegateQueue:workQueue forSessionID:dCopy];

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
  sessionID = [(MTRPluginResidentClientSession *)self sessionID];
  homeID = [(MTRPluginResidentClientSession *)self homeID];
  timeOfLastActivity = [(MTRPluginResidentClientSession *)self timeOfLastActivity];
  v10 = [v4 stringWithFormat:@"<%@: %p sid: %@ hid: %@ lastActivity: %@>", v6, self, sessionID, homeID, timeOfLastActivity];

  objc_autoreleasePoolPop(v3);

  return v10;
}

- (id)deviceController
{
  v3 = +[MTRPluginDeviceControllerRegistry sharedInstance];
  homeID = [(MTRPluginResidentClientSession *)self homeID];
  v5 = [v3 deviceControllerForUUID:homeID];

  return v5;
}

- (void)_registerNodeID:(id)d
{
  v29 = *MEMORY[0x277D85DE8];
  dCopy = d;
  registeredNodeIDs = [(MTRPluginResidentClientSession *)self registeredNodeIDs];
  v6 = [registeredNodeIDs containsObject:dCopy];

  if ((v6 & 1) == 0)
  {
    deviceController = [(MTRPluginResidentClientSession *)self deviceController];
    v8 = [MEMORY[0x277CD5310] deviceWithNodeID:dCopy controller:deviceController];
    v9 = matterPluginLog_default;
    if (os_log_type_enabled(matterPluginLog_default, OS_LOG_TYPE_DEFAULT))
    {
      v21 = 138413058;
      selfCopy4 = self;
      v23 = 2112;
      v24 = dCopy;
      v25 = 2112;
      v26 = deviceController;
      v27 = 2112;
      v28 = v8;
      _os_log_impl(&dword_25830F000, v9, OS_LOG_TYPE_DEFAULT, "%@ register nodeID: %@, forController: %@, device: %@", &v21, 0x2Au);
    }

    if (v8)
    {
      registeredNodeIDs2 = [(MTRPluginResidentClientSession *)self registeredNodeIDs];
      [registeredNodeIDs2 addObject:dCopy];

      subscribedMTRDevices = [(MTRPluginResidentClientSession *)self subscribedMTRDevices];
      [subscribedMTRDevices addObject:v8];

      v12 = matterPluginLog_default;
      if (os_log_type_enabled(matterPluginLog_default, OS_LOG_TYPE_DEFAULT))
      {
        v21 = 138412546;
        selfCopy4 = self;
        v23 = 2112;
        v24 = v8;
        _os_log_impl(&dword_25830F000, v12, OS_LOG_TYPE_DEFAULT, "%@ Adding delegate for MTRDevice: %@", &v21, 0x16u);
      }

      workQueue = [(MTRPluginResidentClientSession *)self workQueue];
      [v8 addDelegate:self queue:workQueue];

      getAllAttributesReport = [v8 getAllAttributesReport];
      v15 = [getAllAttributesReport count];
      v16 = matterPluginLog_default;
      v17 = os_log_type_enabled(matterPluginLog_default, OS_LOG_TYPE_DEFAULT);
      if (v15)
      {
        if (v17)
        {
          v18 = v16;
          v19 = [getAllAttributesReport count];
          v21 = 138412546;
          selfCopy4 = self;
          v23 = 2048;
          v24 = v19;
          _os_log_impl(&dword_25830F000, v18, OS_LOG_TYPE_DEFAULT, "%@ Reporting all known attributes %lu", &v21, 0x16u);
        }

        [(MTRPluginResidentClientSession *)self device:v8 receivedAttributeReport:getAllAttributesReport];
      }

      else if (v17)
      {
        v21 = 138412290;
        selfCopy4 = self;
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

- (void)_unregisterNodeID:(id)d
{
  v21 = *MEMORY[0x277D85DE8];
  dCopy = d;
  registeredNodeIDs = [(MTRPluginResidentClientSession *)self registeredNodeIDs];
  v6 = [registeredNodeIDs containsObject:dCopy];

  if (v6)
  {
    deviceController = [(MTRPluginResidentClientSession *)self deviceController];
    v8 = [MEMORY[0x277CD5310] deviceWithNodeID:dCopy controller:deviceController];
    v9 = matterPluginLog_default;
    if (os_log_type_enabled(matterPluginLog_default, OS_LOG_TYPE_DEFAULT))
    {
      v13 = 138413058;
      selfCopy = self;
      v15 = 2112;
      v16 = dCopy;
      v17 = 2112;
      v18 = deviceController;
      v19 = 2112;
      v20 = v8;
      _os_log_impl(&dword_25830F000, v9, OS_LOG_TYPE_DEFAULT, "%@ unregister nodeID: %@, forController: %@, device: %@", &v13, 0x2Au);
    }

    if (v8)
    {
      registeredNodeIDs2 = [(MTRPluginResidentClientSession *)self registeredNodeIDs];
      [registeredNodeIDs2 removeObject:dCopy];

      subscribedMTRDevices = [(MTRPluginResidentClientSession *)self subscribedMTRDevices];
      [subscribedMTRDevices removeObject:v8];

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
  transport = [(MTRPluginResidentClientSession *)self transport];
  sessionID = [(MTRPluginResidentClientSession *)self sessionID];
  [transport registerForRequestMessageWithType:&unk_28697C2A0 requestHandler:sel_messageTransport_handleGetControllerIsRunning_ forSessionID:sessionID];

  transport2 = [(MTRPluginResidentClientSession *)self transport];
  sessionID2 = [(MTRPluginResidentClientSession *)self sessionID];
  [transport2 registerForRequestMessageWithType:&unk_28697C2B8 requestHandler:sel_messageTransport_handleGetControllerUniqueID_ forSessionID:sessionID2];

  transport3 = [(MTRPluginResidentClientSession *)self transport];
  sessionID3 = [(MTRPluginResidentClientSession *)self sessionID];
  [transport3 registerForRequestMessageWithType:&unk_28697C2D0 requestHandler:sel_messageTransport_handleGetControllerNodeID_ forSessionID:sessionID3];

  transport4 = [(MTRPluginResidentClientSession *)self transport];
  sessionID4 = [(MTRPluginResidentClientSession *)self sessionID];
  [transport4 registerForRequestMessageWithType:&unk_28697C2E8 requestHandler:sel_messageTransport_handleUpdateControllerConfig_ forSessionID:sessionID4];

  transport5 = [(MTRPluginResidentClientSession *)self transport];
  sessionID5 = [(MTRPluginResidentClientSession *)self sessionID];
  [transport5 registerForRequestMessageWithType:&unk_28697C300 requestHandler:sel_messageTransport_handleCloseSession_ forSessionID:sessionID5];

  transport6 = [(MTRPluginResidentClientSession *)self transport];
  sessionID6 = [(MTRPluginResidentClientSession *)self sessionID];
  [transport6 registerForRequestMessageWithType:&unk_28697C318 requestHandler:sel_messageTransport_handleGetDeviceState_ forSessionID:sessionID6];

  transport7 = [(MTRPluginResidentClientSession *)self transport];
  sessionID7 = [(MTRPluginResidentClientSession *)self sessionID];
  [transport7 registerForRequestMessageWithType:&unk_28697C330 requestHandler:sel_messageTransport_handleGetDeviceIsCachePrimed_ forSessionID:sessionID7];

  transport8 = [(MTRPluginResidentClientSession *)self transport];
  sessionID8 = [(MTRPluginResidentClientSession *)self sessionID];
  [transport8 registerForRequestMessageWithType:&unk_28697C348 requestHandler:sel_messageTransport_handleGetDeviceEstimatedStartTime_ forSessionID:sessionID8];

  transport9 = [(MTRPluginResidentClientSession *)self transport];
  sessionID9 = [(MTRPluginResidentClientSession *)self sessionID];
  [transport9 registerForRequestMessageWithType:&unk_28697C360 requestHandler:sel_messageTransport_handleGetDeviceEstimatedSubscriptionLatency_ forSessionID:sessionID9];

  transport10 = [(MTRPluginResidentClientSession *)self transport];
  sessionID10 = [(MTRPluginResidentClientSession *)self sessionID];
  [transport10 registerForRequestMessageWithType:&unk_28697C378 requestHandler:sel_messageTransport_handleDeviceReadAttribute_ forSessionID:sessionID10];

  transport11 = [(MTRPluginResidentClientSession *)self transport];
  sessionID11 = [(MTRPluginResidentClientSession *)self sessionID];
  [transport11 registerForRequestMessageWithType:&unk_28697C390 requestHandler:sel_messageTransport_handleDeviceReadMultipleAttributes_ forSessionID:sessionID11];

  transport12 = [(MTRPluginResidentClientSession *)self transport];
  sessionID12 = [(MTRPluginResidentClientSession *)self sessionID];
  [transport12 registerForRequestMessageWithType:&unk_28697C3A8 requestHandler:sel_messageTransport_handleDeviceWriteAttribute_ forSessionID:sessionID12];

  transport13 = [(MTRPluginResidentClientSession *)self transport];
  sessionID13 = [(MTRPluginResidentClientSession *)self sessionID];
  [transport13 registerForRequestMessageWithType:&unk_28697C3C0 requestHandler:sel_messageTransport_handleDeviceInvokeCommand_ forSessionID:sessionID13];

  transport14 = [(MTRPluginResidentClientSession *)self transport];
  sessionID14 = [(MTRPluginResidentClientSession *)self sessionID];
  [transport14 registerForRequestMessageWithType:&unk_28697C3D8 requestHandler:sel_messageTransport_handleDeviceInvokeBatchCommand_ forSessionID:sessionID14];

  transport15 = [(MTRPluginResidentClientSession *)self transport];
  sessionID15 = [(MTRPluginResidentClientSession *)self sessionID];
  [transport15 registerForRequestMessageWithType:&unk_28697C3F0 requestHandler:sel_messageTransport_handleDownloadDiagnosticLog_ forSessionID:sessionID15];

  deviceController = [(MTRPluginResidentClientSession *)self deviceController];
  workQueue = [(MTRPluginResidentClientSession *)self workQueue];
  [deviceController addDeviceControllerDelegate:self queue:workQueue];
}

- (id)_validateAndFindDeviceControllerMatchingHomeInMessage:(id)message
{
  messageCopy = message;
  homeIdentifier = [messageCopy homeIdentifier];
  homeID = [(MTRPluginResidentClientSession *)self homeID];
  v7 = [homeIdentifier isEqual:homeID];

  if (!v7 || ([(MTRPluginResidentClientSession *)self deviceController], (v8 = objc_claimAutoreleasedReturnValue()) == 0))
  {
    if (os_log_type_enabled(matterPluginLog_default, OS_LOG_TYPE_ERROR))
    {
      [MTRPluginResidentClientSession _validateAndFindDeviceControllerMatchingHomeInMessage:];
    }

    responseHandler = [messageCopy responseHandler];
    v10 = [MEMORY[0x277CCA9B8] errorWithDomain:@"kMTRPluginErrorDomain" code:-1002 userInfo:0];
    (responseHandler)[2](responseHandler, v10, 0);

    v8 = 0;
  }

  return v8;
}

- (id)_validateAndFindDeviceControllerForMessage:(id)message deviceControllerMessage:(id *)controllerMessage
{
  messageCopy = message;
  v7 = [MTRPluginPBMDeviceControllerMessage deviceControllerMessageFromMessage:messageCopy];
  v8 = v7;
  if (v7)
  {
    if (controllerMessage)
    {
      v9 = v7;
      *controllerMessage = v8;
    }

    v10 = [(MTRPluginResidentClientSession *)self _validateAndFindDeviceControllerMatchingHomeInMessage:messageCopy];
  }

  else
  {
    if (os_log_type_enabled(matterPluginLog_default, OS_LOG_TYPE_ERROR))
    {
      [MTRPluginResidentClientSession _validateAndFindDeviceControllerForMessage:deviceControllerMessage:];
    }

    responseHandler = [messageCopy responseHandler];
    v12 = [MEMORY[0x277CCA9B8] errorWithDomain:@"kMTRPluginErrorDomain" code:-1007 userInfo:0];
    (responseHandler)[2](responseHandler, v12, 0);

    v10 = 0;
  }

  return v10;
}

- (id)_validateAndFindDeviceNodeForMessage:(id)message
{
  v22 = *MEMORY[0x277D85DE8];
  messageCopy = message;
  v5 = [MTRPluginPBMDeviceNodeMessage deviceNodeMessageFromMessage:messageCopy];
  if (!v5)
  {
    if (os_log_type_enabled(matterPluginLog_default, OS_LOG_TYPE_ERROR))
    {
      [MTRPluginResidentClientSession _validateAndFindDeviceNodeForMessage:];
    }

    responseHandler = [messageCopy responseHandler];
    v9 = [MEMORY[0x277CCA9B8] errorWithDomain:@"kMTRPluginErrorDomain" code:-1003 userInfo:0];
    (responseHandler)[2](responseHandler, v9, 0);
    v10 = 0;
    goto LABEL_10;
  }

  responseHandler = [(MTRPluginResidentClientSession *)self _validateAndFindDeviceControllerForMessage:messageCopy deviceControllerMessage:0];
  if (responseHandler)
  {
    v7 = MEMORY[0x277CCABB0];
    node = [v5 node];
    v9 = [v7 numberWithUnsignedLongLong:{objc_msgSend(node, "nodeID")}];

    v10 = [MEMORY[0x277CD5310] deviceWithNodeID:v9 controller:responseHandler];
    if (!v10)
    {
      v11 = matterPluginLog_default;
      if (os_log_type_enabled(matterPluginLog_default, OS_LOG_TYPE_ERROR))
      {
        v16 = 138412802;
        selfCopy = self;
        v18 = 2112;
        v19 = v9;
        v20 = 2112;
        v21 = messageCopy;
        _os_log_error_impl(&dword_25830F000, v11, OS_LOG_TYPE_ERROR, "%@ failed to find nodeID (%@) for incoming device request message %@", &v16, 0x20u);
      }

      responseHandler2 = [messageCopy responseHandler];
      v13 = [MEMORY[0x277CCA9B8] errorWithDomain:@"kMTRPluginErrorDomain" code:-1001 userInfo:0];
      (responseHandler2)[2](responseHandler2, v13, 0);
    }

LABEL_10:

    goto LABEL_12;
  }

  v10 = 0;
LABEL_12:

  v14 = *MEMORY[0x277D85DE8];

  return v10;
}

- (void)messageTransport:(id)transport updateTimeOfActivity:(id)activity
{
  transportCopy = transport;
  activityCopy = activity;
  workQueue = [(MTRPluginResidentClientSession *)self workQueue];
  dispatch_assert_queue_V2(workQueue);

  selfCopy = self;
  objc_sync_enter(selfCopy);
  if (os_log_type_enabled(matterPluginLog_default, OS_LOG_TYPE_DEBUG))
  {
    [MTRPluginResidentClientSession messageTransport:updateTimeOfActivity:];
  }

  [(MTRPluginResidentClientSession *)selfCopy setTimeOfLastActivity:activityCopy];
  objc_sync_exit(selfCopy);
}

- (void)messageTransport:(id)transport handleGetControllerIsRunning:(id)running
{
  v28 = *MEMORY[0x277D85DE8];
  transportCopy = transport;
  runningCopy = running;
  workQueue = [(MTRPluginResidentClientSession *)self workQueue];
  dispatch_assert_queue_V2(workQueue);

  responseHandler = [runningCopy responseHandler];

  if (responseHandler)
  {
    selfCopy = self;
    objc_sync_enter(selfCopy);
    responseHandler2 = [runningCopy responseHandler];

    if (responseHandler2)
    {
      v12 = [(MTRPluginResidentClientSession *)selfCopy _validateAndFindDeviceControllerForMessage:runningCopy deviceControllerMessage:0];
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
          isRunning = [v12 isRunning];
          v19 = @"NO";
          v22 = 138412802;
          v23 = selfCopy;
          v24 = 2112;
          if (isRunning)
          {
            v19 = @"YES";
          }

          v25 = v19;
          v26 = 2112;
          v27 = runningCopy;
          _os_log_impl(&dword_25830F000, v17, OS_LOG_TYPE_DEFAULT, "%@ responding to controller is running state with: %@ for message %@", &v22, 0x20u);
        }

        responseHandler3 = [runningCopy responseHandler];
        (responseHandler3)[2](responseHandler3, 0, v13);
      }
    }

    objc_sync_exit(selfCopy);
  }

  v21 = *MEMORY[0x277D85DE8];
}

- (void)messageTransport:(id)transport handleGetControllerUniqueID:(id)d
{
  v27 = *MEMORY[0x277D85DE8];
  transportCopy = transport;
  dCopy = d;
  workQueue = [(MTRPluginResidentClientSession *)self workQueue];
  dispatch_assert_queue_V2(workQueue);

  responseHandler = [dCopy responseHandler];

  if (responseHandler)
  {
    selfCopy = self;
    objc_sync_enter(selfCopy);
    responseHandler2 = [dCopy responseHandler];

    if (responseHandler2)
    {
      v12 = [(MTRPluginResidentClientSession *)selfCopy _validateAndFindDeviceControllerForMessage:dCopy deviceControllerMessage:0];
      if (v12)
      {
        v13 = objc_alloc_init(MTRPluginPBMVariableValueResponseMessage);
        v14 = [MTRPluginPBMVariableValue alloc];
        uniqueIdentifier = [v12 uniqueIdentifier];
        v16 = [(MTRPluginPBMVariableValue *)v14 initWithObjectValue:uniqueIdentifier];
        [(MTRPluginPBMVariableValueResponseMessage *)v13 setValue:v16];

        v17 = matterPluginLog_default;
        if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
        {
          uniqueIdentifier2 = [v12 uniqueIdentifier];
          v21 = 138412802;
          v22 = selfCopy;
          v23 = 2112;
          v24 = uniqueIdentifier2;
          v25 = 2112;
          v26 = dCopy;
          _os_log_impl(&dword_25830F000, v17, OS_LOG_TYPE_DEFAULT, "%@ responding to controller get uniqueID with: %@ for message %@", &v21, 0x20u);
        }

        responseHandler3 = [dCopy responseHandler];
        (responseHandler3)[2](responseHandler3, 0, v13);
      }
    }

    objc_sync_exit(selfCopy);
  }

  v20 = *MEMORY[0x277D85DE8];
}

- (void)messageTransport:(id)transport handleGetControllerNodeID:(id)d
{
  v27 = *MEMORY[0x277D85DE8];
  transportCopy = transport;
  dCopy = d;
  workQueue = [(MTRPluginResidentClientSession *)self workQueue];
  dispatch_assert_queue_V2(workQueue);

  responseHandler = [dCopy responseHandler];

  if (responseHandler)
  {
    selfCopy = self;
    objc_sync_enter(selfCopy);
    responseHandler2 = [dCopy responseHandler];

    if (responseHandler2)
    {
      v12 = [(MTRPluginResidentClientSession *)selfCopy _validateAndFindDeviceControllerForMessage:dCopy deviceControllerMessage:0];
      if (v12)
      {
        v13 = objc_alloc_init(MTRPluginPBMVariableValueResponseMessage);
        v14 = [MTRPluginPBMVariableValue alloc];
        controllerNodeID = [v12 controllerNodeID];
        v16 = [(MTRPluginPBMVariableValue *)v14 initWithObjectValue:controllerNodeID];
        [(MTRPluginPBMVariableValueResponseMessage *)v13 setValue:v16];

        v17 = matterPluginLog_default;
        if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
        {
          controllerNodeID2 = [v12 controllerNodeID];
          v21 = 138412802;
          v22 = selfCopy;
          v23 = 2112;
          v24 = controllerNodeID2;
          v25 = 2112;
          v26 = dCopy;
          _os_log_impl(&dword_25830F000, v17, OS_LOG_TYPE_DEFAULT, "%@ responding to controller get nodeID with: %@ for message %@", &v21, 0x20u);
        }

        responseHandler3 = [dCopy responseHandler];
        (responseHandler3)[2](responseHandler3, 0, v13);
      }
    }

    objc_sync_exit(selfCopy);
  }

  v20 = *MEMORY[0x277D85DE8];
}

- (void)messageTransport:(id)transport handleUpdateControllerConfig:(id)config
{
  v77 = *MEMORY[0x277D85DE8];
  transportCopy = transport;
  configCopy = config;
  workQueue = [(MTRPluginResidentClientSession *)self workQueue];
  dispatch_assert_queue_V2(workQueue);

  responseHandler = [configCopy responseHandler];

  if (responseHandler)
  {
    obj = self;
    objc_sync_enter(obj);
    responseHandler2 = [configCopy responseHandler];

    if (responseHandler2)
    {
      v66 = 0;
      v56 = [(MTRPluginResidentClientSession *)obj _validateAndFindDeviceControllerForMessage:configCopy deviceControllerMessage:&v66];
      v50 = v66;
      dictionary = [MEMORY[0x277CBEB38] dictionary];
      if (v56 && v50)
      {
        value = [v50 value];
        object = [value object];
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          value2 = [v50 value];
          object2 = [value2 object];
        }

        else
        {
          object2 = 0;
        }

        dictionary2 = [MEMORY[0x277CBEB38] dictionary];
        controllerNodeID = [v56 controllerNodeID];

        if (controllerNodeID)
        {
          controllerNodeID2 = [v56 controllerNodeID];
          [dictionary2 setObject:controllerNodeID2 forKeyedSubscript:*MEMORY[0x277CD50F8]];
        }

        compressedFabricID = [v56 compressedFabricID];

        if (compressedFabricID)
        {
          compressedFabricID2 = [v56 compressedFabricID];
          [dictionary2 setObject:compressedFabricID2 forKeyedSubscript:*MEMORY[0x277CD50E0]];
        }

        v18 = [MEMORY[0x277CCABB0] numberWithBool:{objc_msgSend(v56, "isRunning")}];
        [dictionary2 setObject:v18 forKeyedSubscript:*MEMORY[0x277CD50F0]];

        [dictionary setObject:dictionary2 forKeyedSubscript:*MEMORY[0x277CD50E8]];
        array = [MEMORY[0x277CBEB18] array];
        registeredNodeIDs = [(MTRPluginResidentClientSession *)obj registeredNodeIDs];
        v55 = [registeredNodeIDs mutableCopy];

        v64 = 0u;
        v65 = 0u;
        v62 = 0u;
        v63 = 0u;
        v46 = *MEMORY[0x277CD5110];
        v20 = [object2 objectForKey:?];
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
                  _internalProperties = [v29 _internalProperties];
                  if (_internalProperties)
                  {
                    v68[0] = v23;
                    v68[1] = v53;
                    v69[0] = v27;
                    _internalProperties2 = [v29 _internalProperties];
                    v69[1] = _internalProperties2;
                    v32 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v69 forKeys:v68 count:2];
                    [array addObject:v32];
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

        if ([array count])
        {
          [dictionary setObject:array forKeyedSubscript:v46];
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
          registeredNodeIDs2 = [(MTRPluginResidentClientSession *)obj registeredNodeIDs];
          *buf = 138412802;
          v71 = obj;
          v72 = 2112;
          v73 = v56;
          v74 = 2112;
          v75 = registeredNodeIDs2;
          _os_log_impl(&dword_25830F000, v40, OS_LOG_TYPE_DEFAULT, "%@  => controller: %@ self.registeredNodeIDs: %@", buf, 0x20u);
        }

        v42 = objc_alloc_init(MTRPluginPBMVariableValueResponseMessage);
        v43 = [[MTRPluginPBMVariableValue alloc] initWithObjectValue:dictionary];
        [(MTRPluginPBMVariableValueResponseMessage *)v42 setValue:v43];

        if (os_log_type_enabled(matterPluginLog_default, OS_LOG_TYPE_DEBUG))
        {
          [MTRPluginResidentClientSession messageTransport:handleUpdateControllerConfig:];
        }

        responseHandler3 = [configCopy responseHandler];
        (responseHandler3)[2](responseHandler3, 0, v42);

        v13 = dictionary2;
      }

      else
      {
        object2 = [configCopy responseHandler];
        v12 = [MEMORY[0x277CCA9B8] errorWithDomain:@"kMTRPluginErrorDomain" code:-1002 userInfo:0];
        object2[2]();
        v13 = v12;
      }
    }

    objc_sync_exit(obj);
  }

  v45 = *MEMORY[0x277D85DE8];
}

- (void)messageTransport:(id)transport handleCloseSession:(id)session
{
  v5 = [(MTRPluginResidentClientSession *)self workQueue:transport];
  dispatch_assert_queue_V2(v5);

  v6 = matterPluginLog_default;
  if (os_log_type_enabled(matterPluginLog_default, OS_LOG_TYPE_ERROR))
  {
    [MTRPluginResidentClientSession messageTransport:v6 handleCloseSession:?];
  }

  v7 = +[MTRPluginResidentServer sharedInstance];
  [v7 removeResidentClientSession:self];
}

- (void)messageTransport:(id)transport handleGetDeviceState:(id)state
{
  v29 = *MEMORY[0x277D85DE8];
  transportCopy = transport;
  stateCopy = state;
  workQueue = [(MTRPluginResidentClientSession *)self workQueue];
  dispatch_assert_queue_V2(workQueue);

  responseHandler = [stateCopy responseHandler];

  if (responseHandler)
  {
    selfCopy = self;
    objc_sync_enter(selfCopy);
    responseHandler2 = [stateCopy responseHandler];

    if (responseHandler2)
    {
      v12 = [(MTRPluginResidentClientSession *)selfCopy _validateAndFindDeviceNodeForMessage:stateCopy];
      v13 = v12;
      if (v12)
      {
        nodeID = [v12 nodeID];
        [(MTRPluginResidentClientSession *)selfCopy _registerNodeID:nodeID];

        v15 = objc_alloc_init(MTRPluginPBMVariableValueResponseMessage);
        v16 = [MTRPluginPBMVariableValue alloc];
        v17 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(v13, "state")}];
        v18 = [(MTRPluginPBMVariableValue *)v16 initWithObjectValue:v17];
        [(MTRPluginPBMVariableValueResponseMessage *)v15 setValue:v18];

        v19 = matterPluginLog_default;
        if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
        {
          nodeID2 = [v13 nodeID];
          v23 = 138412802;
          v24 = selfCopy;
          v25 = 2112;
          v26 = nodeID2;
          v27 = 2112;
          v28 = stateCopy;
          _os_log_impl(&dword_25830F000, v19, OS_LOG_TYPE_DEFAULT, "%@ responding to device state for nodeID: %@, for message %@", &v23, 0x20u);
        }

        responseHandler3 = [stateCopy responseHandler];
        (responseHandler3)[2](responseHandler3, 0, v15);
      }
    }

    objc_sync_exit(selfCopy);
  }

  v22 = *MEMORY[0x277D85DE8];
}

- (void)messageTransport:(id)transport handleGetDeviceIsCachePrimed:(id)primed
{
  v30 = *MEMORY[0x277D85DE8];
  transportCopy = transport;
  primedCopy = primed;
  workQueue = [(MTRPluginResidentClientSession *)self workQueue];
  dispatch_assert_queue_V2(workQueue);

  responseHandler = [primedCopy responseHandler];

  if (responseHandler)
  {
    selfCopy = self;
    objc_sync_enter(selfCopy);
    responseHandler2 = [primedCopy responseHandler];

    if (responseHandler2)
    {
      v12 = [(MTRPluginResidentClientSession *)selfCopy _validateAndFindDeviceNodeForMessage:primedCopy];
      v13 = v12;
      if (v12)
      {
        nodeID = [v12 nodeID];
        [(MTRPluginResidentClientSession *)selfCopy _registerNodeID:nodeID];

        v15 = objc_alloc_init(MTRPluginPBMVariableValueResponseMessage);
        v16 = [MTRPluginPBMVariableValue alloc];
        v17 = [MEMORY[0x277CCABB0] numberWithBool:{objc_msgSend(v13, "deviceCachePrimed")}];
        v18 = [(MTRPluginPBMVariableValue *)v16 initWithObjectValue:v17];
        [(MTRPluginPBMVariableValueResponseMessage *)v15 setValue:v18];

        v19 = matterPluginLog_default;
        if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
        {
          deviceCachePrimed = [v13 deviceCachePrimed];
          v21 = @"NO";
          v24 = 138412802;
          v25 = selfCopy;
          v26 = 2112;
          if (deviceCachePrimed)
          {
            v21 = @"YES";
          }

          v27 = v21;
          v28 = 2112;
          v29 = primedCopy;
          _os_log_impl(&dword_25830F000, v19, OS_LOG_TYPE_DEFAULT, "%@ responding to device cachePrimed for nodeID: %@, for message %@", &v24, 0x20u);
        }

        responseHandler3 = [primedCopy responseHandler];
        (responseHandler3)[2](responseHandler3, 0, v15);
      }
    }

    objc_sync_exit(selfCopy);
  }

  v23 = *MEMORY[0x277D85DE8];
}

- (void)messageTransport:(id)transport handleGetDeviceEstimatedStartTime:(id)time
{
  v28 = *MEMORY[0x277D85DE8];
  transportCopy = transport;
  timeCopy = time;
  workQueue = [(MTRPluginResidentClientSession *)self workQueue];
  dispatch_assert_queue_V2(workQueue);

  responseHandler = [timeCopy responseHandler];

  if (responseHandler)
  {
    selfCopy = self;
    objc_sync_enter(selfCopy);
    v11 = [(MTRPluginResidentClientSession *)selfCopy _validateAndFindDeviceNodeForMessage:timeCopy];
    v12 = v11;
    if (v11)
    {
      nodeID = [v11 nodeID];
      [(MTRPluginResidentClientSession *)selfCopy _registerNodeID:nodeID];

      v14 = objc_alloc_init(MTRPluginPBMVariableValueResponseMessage);
      v15 = [MTRPluginPBMVariableValue alloc];
      estimatedStartTime = [v12 estimatedStartTime];
      v17 = [(MTRPluginPBMVariableValue *)v15 initWithObjectValue:estimatedStartTime];
      [(MTRPluginPBMVariableValueResponseMessage *)v14 setValue:v17];

      v18 = matterPluginLog_default;
      if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
      {
        estimatedStartTime2 = [v12 estimatedStartTime];
        v22 = 138412802;
        v23 = selfCopy;
        v24 = 2112;
        v25 = estimatedStartTime2;
        v26 = 2112;
        v27 = timeCopy;
        _os_log_impl(&dword_25830F000, v18, OS_LOG_TYPE_DEFAULT, "%@ responding to device estimatedStartTime for nodeID: %@, for message %@", &v22, 0x20u);
      }

      responseHandler2 = [timeCopy responseHandler];
      (responseHandler2)[2](responseHandler2, 0, v14);
    }

    objc_sync_exit(selfCopy);
  }

  v21 = *MEMORY[0x277D85DE8];
}

- (void)messageTransport:(id)transport handleGetDeviceEstimatedSubscriptionLatency:(id)latency
{
  v28 = *MEMORY[0x277D85DE8];
  transportCopy = transport;
  latencyCopy = latency;
  workQueue = [(MTRPluginResidentClientSession *)self workQueue];
  dispatch_assert_queue_V2(workQueue);

  responseHandler = [latencyCopy responseHandler];

  if (responseHandler)
  {
    selfCopy = self;
    objc_sync_enter(selfCopy);
    v11 = [(MTRPluginResidentClientSession *)selfCopy _validateAndFindDeviceNodeForMessage:latencyCopy];
    v12 = v11;
    if (v11)
    {
      nodeID = [v11 nodeID];
      [(MTRPluginResidentClientSession *)selfCopy _registerNodeID:nodeID];

      v14 = objc_alloc_init(MTRPluginPBMVariableValueResponseMessage);
      v15 = [MTRPluginPBMVariableValue alloc];
      estimatedSubscriptionLatency = [v12 estimatedSubscriptionLatency];
      v17 = [(MTRPluginPBMVariableValue *)v15 initWithObjectValue:estimatedSubscriptionLatency];
      [(MTRPluginPBMVariableValueResponseMessage *)v14 setValue:v17];

      v18 = matterPluginLog_default;
      if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
      {
        estimatedSubscriptionLatency2 = [v12 estimatedSubscriptionLatency];
        v22 = 138412802;
        v23 = selfCopy;
        v24 = 2112;
        v25 = estimatedSubscriptionLatency2;
        v26 = 2112;
        v27 = latencyCopy;
        _os_log_impl(&dword_25830F000, v18, OS_LOG_TYPE_DEFAULT, "%@ responding to device estimatedSubscriptionLatency for nodeID: %@, for message %@", &v22, 0x20u);
      }

      responseHandler2 = [latencyCopy responseHandler];
      (responseHandler2)[2](responseHandler2, 0, v14);
    }

    objc_sync_exit(selfCopy);
  }

  v21 = *MEMORY[0x277D85DE8];
}

- (void)messageTransport:(id)transport handleDeviceReadAttribute:(id)attribute
{
  v52 = *MEMORY[0x277D85DE8];
  transportCopy = transport;
  attributeCopy = attribute;
  workQueue = [(MTRPluginResidentClientSession *)self workQueue];
  dispatch_assert_queue_V2(workQueue);

  responseHandler = [attributeCopy responseHandler];

  if (responseHandler)
  {
    selfCopy = self;
    objc_sync_enter(selfCopy);
    v11 = [MTRPluginPBMDeviceNodeReadAttributeMessage deviceNodeReadAttributeMessageFromMessage:attributeCopy];
    if (v11)
    {
      responseHandler4 = [(MTRPluginResidentClientSession *)selfCopy _validateAndFindDeviceControllerMatchingHomeInMessage:attributeCopy];
      if (!responseHandler4)
      {
LABEL_23:

        objc_sync_exit(selfCopy);
        goto LABEL_24;
      }

      v13 = MEMORY[0x277CCABB0];
      node = [v11 node];
      v15 = [v13 numberWithUnsignedLongLong:{objc_msgSend(node, "nodeID")}];

      v37 = [MEMORY[0x277CD5310] deviceWithNodeID:v15 controller:responseHandler4];
      if (v37)
      {
        [(MTRPluginResidentClientSession *)selfCopy _registerNodeID:v15];
        v16 = MEMORY[0x277CCABB0];
        attributePath = [v11 attributePath];
        clusterPath = [attributePath clusterPath];
        responseHandler3 = [v16 numberWithUnsignedInt:{objc_msgSend(clusterPath, "endpointID")}];

        v19 = MEMORY[0x277CCABB0];
        attributePath2 = [v11 attributePath];
        clusterPath2 = [attributePath2 clusterPath];
        v22 = [v19 numberWithUnsignedInt:{objc_msgSend(clusterPath2, "clusterID")}];

        v23 = MEMORY[0x277CCABB0];
        attributePath3 = [v11 attributePath];
        v35 = [v23 numberWithUnsignedInt:{objc_msgSend(attributePath3, "attributeID")}];

        if ([v11 hasReadParams])
        {
          readParams = [v11 readParams];
          v25ReadParams = [readParams readParams];
        }

        else
        {
          v25ReadParams = 0;
        }

        v26 = matterPluginLog_default;
        if (os_log_type_enabled(matterPluginLog_default, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138413826;
          v39 = selfCopy;
          v40 = 2112;
          v41 = responseHandler3;
          v42 = 2112;
          v43 = v22;
          v44 = 2112;
          v45 = v35;
          v46 = 2112;
          v47 = v25ReadParams;
          v48 = 2112;
          v49 = v15;
          v50 = 2112;
          v51 = attributeCopy;
          _os_log_impl(&dword_25830F000, v26, OS_LOG_TYPE_DEFAULT, "%@ Reading attribute: endpointID (%@), clusterID (%@), attributeID (%@), readParams (%@) from local device nodeID (%@) connection for message %@", buf, 0x48u);
        }

        v27 = [v37 readAttributeWithEndpointID:responseHandler3 clusterID:v22 attributeID:v35 params:{v25ReadParams, v25ReadParams}];
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
          v39 = selfCopy;
          v40 = 2112;
          v41 = v15;
          v42 = 2112;
          v43 = attributeCopy;
          _os_log_debug_impl(&dword_25830F000, v30, OS_LOG_TYPE_DEBUG, "%@ responding to device read attribute for nodeID: %@, for message %@", buf, 0x20u);
        }

        responseHandler2 = [attributeCopy responseHandler];
        (responseHandler2)[2](responseHandler2, 0, v28);
      }

      else
      {
        if (os_log_type_enabled(matterPluginLog_default, OS_LOG_TYPE_ERROR))
        {
          [MTRPluginResidentClientSession messageTransport:handleDeviceReadAttribute:];
        }

        responseHandler3 = [attributeCopy responseHandler];
        v22 = [MEMORY[0x277CCA9B8] errorWithDomain:@"kMTRPluginErrorDomain" code:-1001 userInfo:0];
        (responseHandler3)[2](responseHandler3, v22, 0);
      }
    }

    else
    {
      if (os_log_type_enabled(matterPluginLog_default, OS_LOG_TYPE_ERROR))
      {
        [MTRPluginResidentClientSession messageTransport:handleDeviceReadAttribute:];
      }

      responseHandler4 = [attributeCopy responseHandler];
      v15 = [MEMORY[0x277CCA9B8] errorWithDomain:@"kMTRPluginErrorDomain" code:-1007 userInfo:0];
      (responseHandler4)[2](responseHandler4, v15, 0);
    }

    goto LABEL_23;
  }

LABEL_24:

  v32 = *MEMORY[0x277D85DE8];
}

- (void)messageTransport:(id)transport handleDeviceReadMultipleAttributes:(id)attributes
{
  v37 = *MEMORY[0x277D85DE8];
  transportCopy = transport;
  attributesCopy = attributes;
  workQueue = [(MTRPluginResidentClientSession *)self workQueue];
  dispatch_assert_queue_V2(workQueue);

  responseHandler = [attributesCopy responseHandler];

  if (responseHandler)
  {
    selfCopy = self;
    objc_sync_enter(selfCopy);
    v11 = [MTRPluginPBMDeviceNodeReadMultipleAttributesMessage deviceNodeReadMultipleAttributesMessageFromMessage:attributesCopy];
    if (v11)
    {
      responseHandler4 = [(MTRPluginResidentClientSession *)selfCopy _validateAndFindDeviceControllerMatchingHomeInMessage:attributesCopy];
      if (!responseHandler4)
      {
LABEL_18:

        objc_sync_exit(selfCopy);
        goto LABEL_19;
      }

      v13 = MEMORY[0x277CCABB0];
      node = [v11 node];
      v15 = [v13 numberWithUnsignedLongLong:{objc_msgSend(node, "nodeID")}];

      v28 = [MEMORY[0x277CD5310] deviceWithNodeID:v15 controller:responseHandler4];
      if (v28)
      {
        [(MTRPluginResidentClientSession *)selfCopy _registerNodeID:v15];
        attributeRequestPaths = [v11 attributeRequestPaths];
        v16 = matterPluginLog_default;
        if (os_log_type_enabled(matterPluginLog_default, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138413058;
          v30 = selfCopy;
          v31 = 2112;
          v32 = attributeRequestPaths;
          v33 = 2112;
          v34 = v15;
          v35 = 2112;
          v36 = attributesCopy;
          _os_log_impl(&dword_25830F000, v16, OS_LOG_TYPE_DEFAULT, "%@ Reading multiple attributes: (%@), from local device nodeID (%@) connection for message %@", buf, 0x2Au);
        }

        v17 = +[MTRPluginMetricsCollector sharedInstance];
        homeIdentifier = [attributesCopy homeIdentifier];
        uniqueIdentifier = [attributesCopy uniqueIdentifier];
        v20 = [MTRPluginBulkReadAttributeMetric bulkReadAttributeMetricForDevice:v28 homeID:homeIdentifier remoteMessageID:uniqueIdentifier];
        [v17 collectMetric:v20];

        v21 = [v28 readAttributePaths:responseHandler3];
        v22 = [[MTRPluginPBMVariableValueResponseMessage alloc] initWithObjectValue:v21];
        v23 = matterPluginLog_default;
        if (os_log_type_enabled(matterPluginLog_default, OS_LOG_TYPE_DEBUG))
        {
          *buf = 138412802;
          v30 = selfCopy;
          v31 = 2112;
          v32 = v15;
          v33 = 2112;
          v34 = attributesCopy;
          _os_log_debug_impl(&dword_25830F000, v23, OS_LOG_TYPE_DEBUG, "%@ responding to device read multiple attribute for nodeID: %@, for message %@", buf, 0x20u);
        }

        responseHandler2 = [attributesCopy responseHandler];
        (responseHandler2)[2](responseHandler2, 0, v22);
      }

      else
      {
        if (os_log_type_enabled(matterPluginLog_default, OS_LOG_TYPE_ERROR))
        {
          [MTRPluginResidentClientSession messageTransport:handleDeviceReadAttribute:];
        }

        responseHandler3 = [attributesCopy responseHandler];
        v21 = [MEMORY[0x277CCA9B8] errorWithDomain:@"kMTRPluginErrorDomain" code:-1001 userInfo:0];
        (responseHandler3)[2](responseHandler3, v21, 0);
      }
    }

    else
    {
      if (os_log_type_enabled(matterPluginLog_default, OS_LOG_TYPE_ERROR))
      {
        [MTRPluginResidentClientSession messageTransport:handleDeviceReadMultipleAttributes:];
      }

      responseHandler4 = [attributesCopy responseHandler];
      v15 = [MEMORY[0x277CCA9B8] errorWithDomain:@"kMTRPluginErrorDomain" code:-1007 userInfo:0];
      (responseHandler4)[2](responseHandler4, v15, 0);
    }

    goto LABEL_18;
  }

LABEL_19:

  v25 = *MEMORY[0x277D85DE8];
}

- (void)messageTransport:(id)transport handleDeviceWriteAttribute:(id)attribute
{
  v57 = *MEMORY[0x277D85DE8];
  transportCopy = transport;
  attributeCopy = attribute;
  workQueue = [(MTRPluginResidentClientSession *)self workQueue];
  dispatch_assert_queue_V2(workQueue);

  responseHandler = [attributeCopy responseHandler];

  if (responseHandler)
  {
    selfCopy = self;
    objc_sync_enter(selfCopy);
    v10 = [MTRPluginPBMDeviceNodeWriteAttributeMessage deviceNodeWriteAttributeMessageFromMessage:attributeCopy];
    if (v10)
    {
      responseHandler3 = [(MTRPluginResidentClientSession *)selfCopy _validateAndFindDeviceControllerMatchingHomeInMessage:attributeCopy];
      if (!responseHandler3)
      {
LABEL_26:

        objc_sync_exit(selfCopy);
        goto LABEL_27;
      }

      v12 = MEMORY[0x277CCABB0];
      node = [v10 node];
      v14 = [v12 numberWithUnsignedLongLong:{objc_msgSend(node, "nodeID")}];

      v41 = [MEMORY[0x277CD5310] deviceWithNodeID:v14 controller:responseHandler3];
      if (v41)
      {
        [(MTRPluginResidentClientSession *)selfCopy _registerNodeID:v14];
        v15 = MEMORY[0x277CCABB0];
        attributePath = [v10 attributePath];
        clusterPath = [attributePath clusterPath];
        responseHandler2 = [v15 numberWithUnsignedInt:{objc_msgSend(clusterPath, "endpointID")}];

        v18 = MEMORY[0x277CCABB0];
        attributePath2 = [v10 attributePath];
        clusterPath2 = [attributePath2 clusterPath];
        v39 = [v18 numberWithUnsignedInt:{objc_msgSend(clusterPath2, "clusterID")}];

        v21 = MEMORY[0x277CCABB0];
        attributePath3 = [v10 attributePath];
        v38 = [v21 numberWithUnsignedInt:{objc_msgSend(attributePath3, "attributeID")}];

        value = [v10 value];
        object = [value object];

        v24 = matterPluginLog_default;
        if (os_log_type_enabled(matterPluginLog_default, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138413826;
          v44 = selfCopy;
          v45 = 2112;
          v46 = responseHandler2;
          v47 = 2112;
          v48 = v39;
          v49 = 2112;
          v50 = v38;
          v51 = 2112;
          v52 = object;
          v53 = 2112;
          v54 = v14;
          v55 = 2112;
          v56 = attributeCopy;
          _os_log_impl(&dword_25830F000, v24, OS_LOG_TYPE_DEFAULT, "%@ Writing attribute: endpointID (%@), clusterID (%@), attributeID (%@), value (%@) from local device nodeID (%@) connection for message %@", buf, 0x48u);
        }

        hasExpectedValueInterval = [v10 hasExpectedValueInterval];
        if (hasExpectedValueInterval)
        {
          v26 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:{objc_msgSend(v10, "expectedValueInterval")}];
        }

        else
        {
          v26 = 0;
        }

        hasTimedWriteTimeout = [v10 hasTimedWriteTimeout];
        if (hasTimedWriteTimeout)
        {
          v29 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:{objc_msgSend(v10, "timedWriteTimeout")}];
        }

        else
        {
          v29 = 0;
        }

        [v41 writeAttributeWithEndpointID:responseHandler2 clusterID:v39 attributeID:v38 value:object expectedValueInterval:v26 timedWriteTimeout:v29];
        if (hasTimedWriteTimeout)
        {
        }

        if (hasExpectedValueInterval)
        {
        }

        v30 = +[MTRPluginMetricsCollector sharedInstance];
        homeIdentifier = [attributeCopy homeIdentifier];
        hasTimedWriteTimeout2 = [v10 hasTimedWriteTimeout];
        uniqueIdentifier = [attributeCopy uniqueIdentifier];
        LOBYTE(v36) = hasTimedWriteTimeout2;
        v34 = [MTRPluginWriteAttributeMetric writeAttributeMetricForDevice:v41 homeID:homeIdentifier clientType:8 endpointID:responseHandler2 clusterID:v39 attributeID:v38 timedWrite:v36 remoteMessageID:uniqueIdentifier];
        [v30 collectMetric:v34];

        v27 = v39;
      }

      else
      {
        if (os_log_type_enabled(matterPluginLog_default, OS_LOG_TYPE_ERROR))
        {
          [MTRPluginResidentClientSession messageTransport:handleDeviceWriteAttribute:];
        }

        responseHandler2 = [attributeCopy responseHandler];
        v27 = [MEMORY[0x277CCA9B8] errorWithDomain:@"kMTRPluginErrorDomain" code:-1001 userInfo:0];
        (responseHandler2)[2](responseHandler2, v27, 0);
      }
    }

    else
    {
      if (os_log_type_enabled(matterPluginLog_default, OS_LOG_TYPE_ERROR))
      {
        [MTRPluginResidentClientSession messageTransport:handleDeviceWriteAttribute:];
      }

      responseHandler3 = [attributeCopy responseHandler];
      v14 = [MEMORY[0x277CCA9B8] errorWithDomain:@"kMTRPluginErrorDomain" code:-1007 userInfo:0];
      (responseHandler3)[2](responseHandler3, v14, 0);
    }

    goto LABEL_26;
  }

LABEL_27:

  v35 = *MEMORY[0x277D85DE8];
}

- (id)_dictionaryFromCommandFields:(id)fields
{
  fieldsCopy = fields;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = fieldsCopy;
  }

  else
  {
    v5 = 0;
  }

  v6 = v5;
  if (v6)
  {
    dictionary = [MEMORY[0x277CBEB38] dictionary];
    v8 = [v6 objectForKey:@"type"];
    v9 = [v6 objectForKey:@"value"];
    if (v8)
    {
      [dictionary setObject:v8 forKey:@"type"];
      if (v9)
      {
        [dictionary setObject:v9 forKey:@"value"];
      }

      else
      {
        array = [MEMORY[0x277CBEA60] array];
        [dictionary setObject:array forKey:@"value"];
      }

      v11 = dictionary;
    }

    else
    {
      v12 = matterPluginLog_default;
      if (os_log_type_enabled(matterPluginLog_default, OS_LOG_TYPE_ERROR))
      {
        [(MTRPluginResidentClientSession *)self _dictionaryFromCommandFields:fieldsCopy, v12];
      }

      v11 = 0;
    }
  }

  else
  {
    v10 = matterPluginLog_default;
    if (os_log_type_enabled(matterPluginLog_default, OS_LOG_TYPE_ERROR))
    {
      [(MTRPluginResidentClientSession *)self _dictionaryFromCommandFields:fieldsCopy, v10];
    }

    v11 = 0;
  }

  return v11;
}

- (void)messageTransport:(id)transport handleDeviceInvokeCommand:(id)command
{
  v76 = *MEMORY[0x277D85DE8];
  transportCopy = transport;
  commandCopy = command;
  workQueue = [(MTRPluginResidentClientSession *)self workQueue];
  dispatch_assert_queue_V2(workQueue);

  responseHandler = [commandCopy responseHandler];

  if (responseHandler)
  {
    selfCopy = self;
    objc_sync_enter(selfCopy);
    v11 = [MTRPluginPBMDeviceNodeInvokeCommmandMessage deviceNodeInvokeCommandMessageFromMessage:commandCopy];
    if (v11)
    {
      v47 = [(MTRPluginResidentClientSession *)selfCopy _validateAndFindDeviceControllerMatchingHomeInMessage:commandCopy];
      if (v47)
      {
        v12 = MEMORY[0x277CCABB0];
        node = [v11 node];
        v14 = [v12 numberWithUnsignedLongLong:{objc_msgSend(node, "nodeID")}];

        v46 = v14;
        v48 = [MEMORY[0x277CD5310] deviceWithNodeID:v14 controller:v47];
        if (v48)
        {
          [(MTRPluginResidentClientSession *)selfCopy _registerNodeID:v14];
          v15 = MEMORY[0x277CCABB0];
          commandPath = [v11 commandPath];
          clusterPath = [commandPath clusterPath];
          v45 = [v15 numberWithUnsignedInt:{objc_msgSend(clusterPath, "endpointID")}];

          v18 = MEMORY[0x277CCABB0];
          commandPath2 = [v11 commandPath];
          clusterPath2 = [commandPath2 clusterPath];
          v44 = [v18 numberWithUnsignedInt:{objc_msgSend(clusterPath2, "clusterID")}];

          v21 = MEMORY[0x277CCABB0];
          commandPath3 = [v11 commandPath];
          v43 = [v21 numberWithUnsignedInt:{objc_msgSend(commandPath3, "commandID")}];

          commandFields = [v11 commandFields];
          object = [commandFields object];
          v42 = [(MTRPluginResidentClientSession *)selfCopy _dictionaryFromCommandFields:object];

          if ([v11 hasExpectedValues])
          {
            expectedValues = [v11 expectedValues];
            array = [expectedValues array];
          }

          else
          {
            array = 0;
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
            v55 = selfCopy;
            v56 = 2112;
            v57 = v45;
            v58 = 2112;
            v59 = v44;
            v60 = 2112;
            v61 = v43;
            v62 = 2112;
            v63 = v42;
            v64 = 2112;
            v65 = array;
            v66 = 2112;
            v67 = v30;
            v68 = 2112;
            v69 = v31;
            v70 = 2112;
            v71 = v32;
            v72 = 2112;
            v73 = v46;
            v74 = 2112;
            v75 = commandCopy;
            _os_log_impl(&dword_25830F000, v33, OS_LOG_TYPE_DEFAULT, "%@ Invoking command on: endpointID (%@), clusterID (%@), commandID (%@), commandFields (%@), expectedValues (%@),                      expectedValueInterval (%@), timedInvokeTimeout (%@), serverSideProcessingTimeout (%@), from device nodeID (%@) for message %@", buf, 0x70u);
          }

          homeIdentifier = [commandCopy homeIdentifier];
          uniqueIdentifier = [commandCopy uniqueIdentifier];
          LOBYTE(v40) = v31 != 0;
          v36 = [MTRPluginInvokeCommandMetric invokeCommandMetricForDevice:v48 homeID:homeIdentifier clientType:8 endpointID:v45 clusterID:v44 commandID:v43 commandFields:v42 expectedValues:array expectedValueInterval:v30 timedInvoke:v40 remoteMessageID:uniqueIdentifier];

          workQueue2 = [(MTRPluginResidentClientSession *)selfCopy workQueue];
          v49[0] = MEMORY[0x277D85DD0];
          v49[1] = 3221225472;
          v49[2] = __77__MTRPluginResidentClientSession_messageTransport_handleDeviceInvokeCommand___block_invoke;
          v49[3] = &unk_279893AF0;
          v50 = commandCopy;
          v51 = selfCopy;
          v52 = v46;
          v38 = v36;
          v53 = v38;
          [v48 _invokeCommandWithEndpointID:v45 clusterID:v44 commandID:v43 commandFields:v42 expectedValues:array expectedValueInterval:v30 timedInvokeTimeout:v31 serverSideProcessingTimeout:v32 queue:workQueue2 completion:v49];
        }

        else
        {
          responseHandler2 = [commandCopy responseHandler];
          v29 = [MEMORY[0x277CCA9B8] errorWithDomain:@"kMTRPluginErrorDomain" code:-1001 userInfo:0];
          (responseHandler2)[2](responseHandler2, v29, 0);
        }
      }
    }

    else
    {
      responseHandler3 = [commandCopy responseHandler];
      v27 = [MEMORY[0x277CCA9B8] errorWithDomain:@"kMTRPluginErrorDomain" code:-1007 userInfo:0];
      (responseHandler3)[2](responseHandler3, v27, 0);
    }

    objc_sync_exit(selfCopy);
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

- (void)messageTransport:(id)transport handleDeviceInvokeBatchCommand:(id)command
{
  v70 = *MEMORY[0x277D85DE8];
  transportCopy = transport;
  commandCopy = command;
  workQueue = [(MTRPluginResidentClientSession *)self workQueue];
  dispatch_assert_queue_V2(workQueue);

  responseHandler = [commandCopy responseHandler];

  if (responseHandler)
  {
    selfCopy = self;
    objc_sync_enter(selfCopy);
    v39 = [MTRPluginPBMDeviceNodeInvokeBatchCommmandMessage deviceNodeInvokeBatchCommandMessageFromMessage:commandCopy];
    if (v39)
    {
      v36 = [(MTRPluginResidentClientSession *)selfCopy _validateAndFindDeviceControllerMatchingHomeInMessage:commandCopy];
      if (v36)
      {
        v8 = MEMORY[0x277CCABB0];
        node = [v39 node];
        v10 = [v8 numberWithUnsignedLongLong:{objc_msgSend(node, "nodeID")}];

        v35 = v10;
        v45 = [MEMORY[0x277CD5310] deviceWithNodeID:v10 controller:v36];
        if (v45)
        {
          commands = [v39 commands];
          [(MTRPluginResidentClientSession *)selfCopy _registerNodeID:v35];
          v12 = matterPluginLog_default;
          if (os_log_type_enabled(matterPluginLog_default, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 138413058;
            v63 = selfCopy;
            v64 = 2112;
            v65 = v35;
            v66 = 2112;
            v67 = commandCopy;
            v68 = 2112;
            v69 = commands;
            _os_log_impl(&dword_25830F000, v12, OS_LOG_TYPE_DEFAULT, "%@ Invoking Batch Commands on: nodeID %@ message (%@) commands %@", buf, 0x2Au);
          }

          array = [MEMORY[0x277CBEB18] array];
          v58 = 0u;
          v59 = 0u;
          v56 = 0u;
          v57 = 0u;
          obj = commands;
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
                        homeIdentifier = [commandCopy homeIdentifier];
                        path = [v22 path];
                        commandFields = [v22 commandFields];
                        uniqueIdentifier = [commandCopy uniqueIdentifier];
                        v27 = [MTRPluginInvokeCommandMetric invokeBatchCommandMetricForDevice:v45 homeID:homeIdentifier clientType:8 commandPath:path commandFields:commandFields remoteMessageID:uniqueIdentifier];

                        [array addObject:v27];
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

          workQueue2 = [(MTRPluginResidentClientSession *)selfCopy workQueue];
          v47[0] = MEMORY[0x277D85DD0];
          v47[1] = 3221225472;
          v47[2] = __82__MTRPluginResidentClientSession_messageTransport_handleDeviceInvokeBatchCommand___block_invoke;
          v47[3] = &unk_279893AF0;
          v29 = array;
          v48 = v29;
          v49 = commandCopy;
          v50 = selfCopy;
          v51 = v35;
          [v45 invokeCommands:obj queue:workQueue2 completion:v47];
        }

        else
        {
          responseHandler2 = [commandCopy responseHandler];
          v33 = [MEMORY[0x277CCA9B8] errorWithDomain:@"kMTRPluginErrorDomain" code:-1001 userInfo:0];
          (responseHandler2)[2](responseHandler2, v33, 0);
        }
      }
    }

    else
    {
      responseHandler3 = [commandCopy responseHandler];
      v31 = [MEMORY[0x277CCA9B8] errorWithDomain:@"kMTRPluginErrorDomain" code:-1007 userInfo:0];
      (responseHandler3)[2](responseHandler3, v31, 0);
    }

    objc_sync_exit(selfCopy);
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

- (void)messageTransport:(id)transport handleDownloadDiagnosticLog:(id)log
{
  v50 = *MEMORY[0x277D85DE8];
  transportCopy = transport;
  logCopy = log;
  workQueue = [(MTRPluginResidentClientSession *)self workQueue];
  dispatch_assert_queue_V2(workQueue);

  responseHandler = [logCopy responseHandler];

  if (responseHandler)
  {
    selfCopy = self;
    objc_sync_enter(selfCopy);
    v11 = [MTRPluginPBMDeviceNodeDownloadDiagnosticLog deviceNodeDownloadDiagnosticLogMessageFromMessage:logCopy];
    if (v11)
    {
      v12 = [(MTRPluginResidentClientSession *)selfCopy _validateAndFindDeviceControllerMatchingHomeInMessage:logCopy];
      if (v12)
      {
        v13 = MEMORY[0x277CCABB0];
        node = [v11 node];
        v15 = [v13 numberWithUnsignedLongLong:{objc_msgSend(node, "nodeID")}];

        v16 = [MEMORY[0x277CD5310] deviceWithNodeID:v15 controller:v12];
        if (v16)
        {
          [(MTRPluginResidentClientSession *)selfCopy _registerNodeID:v15];
          v17 = matterPluginLog_default;
          if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
          {
            logType = [v11 logType];
            [v11 timeoutInterval];
            *buf = 138413314;
            v41 = selfCopy;
            v42 = 1024;
            v43 = logType;
            v44 = 2048;
            v45 = v19;
            v46 = 2112;
            v47 = v15;
            v48 = 2112;
            v49 = logCopy;
            _os_log_impl(&dword_25830F000, v17, OS_LOG_TYPE_DEFAULT, "%@ Invoking download diagnostic log of type (%d), timeout (%lf), from device nodeID (%@) for message %@", buf, 0x30u);
          }

          v33 = v16;

          homeID = [(MTRPluginResidentClientSession *)selfCopy homeID];
          logType2 = [v11 logType];
          uniqueIdentifier = [logCopy uniqueIdentifier];
          v23 = [MTRPluginDownloadDiagnosticLogMetric downloadDiagnosticMetricForDevice:v33 homeID:homeID clientType:8 logType:logType2 remoteMessageID:uniqueIdentifier];

          LODWORD(uniqueIdentifier) = [v11 logType];
          [v11 timeoutInterval];
          v25 = v24;
          workQueue2 = [(MTRPluginResidentClientSession *)selfCopy workQueue];
          v34[0] = MEMORY[0x277D85DD0];
          v34[1] = 3221225472;
          v34[2] = __79__MTRPluginResidentClientSession_messageTransport_handleDownloadDiagnosticLog___block_invoke;
          v34[3] = &unk_279893B18;
          v35 = logCopy;
          v36 = selfCopy;
          v37 = v11;
          v38 = v15;
          v27 = v23;
          v39 = v27;
          [v33 downloadLogOfType:uniqueIdentifier timeout:workQueue2 queue:v34 completion:v25];

          v16 = v33;
        }

        else
        {
          responseHandler2 = [logCopy responseHandler];
          v31 = [MEMORY[0x277CCA9B8] errorWithDomain:@"kMTRPluginErrorDomain" code:-1001 userInfo:0];
          (responseHandler2)[2](responseHandler2, v31, 0);
        }
      }
    }

    else
    {
      responseHandler3 = [logCopy responseHandler];
      v29 = [MEMORY[0x277CCA9B8] errorWithDomain:@"kMTRPluginErrorDomain" code:-1007 userInfo:0];
      (responseHandler3)[2](responseHandler3, v29, 0);
    }

    objc_sync_exit(selfCopy);
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
  selfCopy = self;
  objc_sync_enter(selfCopy);
  registeredNodeIDs = [(MTRPluginResidentClientSession *)selfCopy registeredNodeIDs];
  v4 = [registeredNodeIDs copy];

  v5 = matterPluginLog_default;
  if (os_log_type_enabled(matterPluginLog_default, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412546;
    v23 = selfCopy;
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

        [(MTRPluginResidentClientSession *)selfCopy _unregisterNodeID:*(*(&v17 + 1) + 8 * v9++), v17];
      }

      while (v7 != v9);
      v7 = [v6 countByEnumeratingWithState:&v17 objects:v21 count:16];
    }

    while (v7);
  }

  transport = [(MTRPluginResidentClientSession *)selfCopy transport];
  [transport removeDelegate:selfCopy];

  deviceController = [(MTRPluginResidentClientSession *)selfCopy deviceController];
  [deviceController removeDeviceControllerDelegate:selfCopy];

  internalStateUpdateSource = [(MTRPluginResidentClientSession *)selfCopy internalStateUpdateSource];

  if (internalStateUpdateSource)
  {
    internalStateUpdateSource2 = [(MTRPluginResidentClientSession *)selfCopy internalStateUpdateSource];
    dispatch_source_cancel(internalStateUpdateSource2);

    [(MTRPluginResidentClientSession *)selfCopy setInternalStateUpdateSource:0];
  }

  deviceBecameActiveSource = [(MTRPluginResidentClientSession *)selfCopy deviceBecameActiveSource];

  if (deviceBecameActiveSource)
  {
    deviceBecameActiveSource2 = [(MTRPluginResidentClientSession *)selfCopy deviceBecameActiveSource];
    dispatch_source_cancel(deviceBecameActiveSource2);

    [(MTRPluginResidentClientSession *)selfCopy setDeviceBecameActiveSource:0];
  }

  objc_sync_exit(selfCopy);
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

- (id)_deviceNodeMessageForDevice:(id)device messageValue:(id)value
{
  valueCopy = value;
  if (device)
  {
    nodeID = [device nodeID];
    device = [MTRPluginPBMDeviceNodeMessage deviceNodeMessageWithNodeID:nodeID];

    if (valueCopy)
    {
      v7 = [[MTRPluginPBMVariableValue alloc] initWithObjectValue:valueCopy];
      [device setValue:v7];
    }
  }

  return device;
}

- (void)device:(id)device stateChanged:(unint64_t)changed
{
  v23 = *MEMORY[0x277D85DE8];
  deviceCopy = device;
  if (deviceCopy)
  {
    workQueue = [(MTRPluginResidentClientSession *)self workQueue];
    dispatch_assert_queue_V2(workQueue);

    selfCopy = self;
    objc_sync_enter(selfCopy);
    v9 = objc_autoreleasePoolPush();
    v10 = matterPluginLog_default;
    if (os_log_type_enabled(matterPluginLog_default, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412802;
      v18 = selfCopy;
      v19 = 2112;
      v20 = deviceCopy;
      v21 = 2048;
      changedCopy = changed;
      _os_log_impl(&dword_25830F000, v10, OS_LOG_TYPE_DEFAULT, "%@ device %@ stateChanged %lu", buf, 0x20u);
    }

    v11 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:changed];
    v12 = [(MTRPluginResidentClientSession *)selfCopy _deviceNodeMessageForDevice:deviceCopy messageValue:v11];

    homeID = [(MTRPluginResidentClientSession *)selfCopy homeID];
    v16[0] = MEMORY[0x277D85DD0];
    v16[1] = 3221225472;
    v16[2] = __54__MTRPluginResidentClientSession_device_stateChanged___block_invoke;
    v16[3] = &unk_279893B68;
    v16[4] = selfCopy;
    v15[0] = MEMORY[0x277D85DD0];
    v15[1] = 3221225472;
    v15[2] = __54__MTRPluginResidentClientSession_device_stateChanged___block_invoke_121;
    v15[3] = &unk_279893B90;
    v15[4] = selfCopy;
    [(MTRPluginResidentClientSession *)selfCopy _sendMessageToHomeWithID:homeID messageType:1008 pbCodable:v12 timeout:0 metric:v16 errorBlock:v15 replyBlock:60.0];

    objc_autoreleasePoolPop(v9);
    objc_sync_exit(selfCopy);
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

- (void)device:(id)device receivedAttributeReport:(id)report
{
  v23 = *MEMORY[0x277D85DE8];
  deviceCopy = device;
  reportCopy = report;
  v8 = matterPluginLog_default;
  if (os_log_type_enabled(matterPluginLog_default, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412802;
    selfCopy = self;
    v19 = 2112;
    v20 = deviceCopy;
    v21 = 2112;
    v22 = reportCopy;
    _os_log_impl(&dword_25830F000, v8, OS_LOG_TYPE_DEFAULT, "%@ device %@ receivedAttributeReport %@, sending to remote controller", buf, 0x20u);
  }

  if (deviceCopy && reportCopy)
  {
    workQueue = [(MTRPluginResidentClientSession *)self workQueue];
    dispatch_assert_queue_V2(workQueue);

    selfCopy2 = self;
    objc_sync_enter(selfCopy2);
    v11 = objc_autoreleasePoolPush();
    v12 = [(MTRPluginResidentClientSession *)selfCopy2 _deviceNodeMessageForDevice:deviceCopy messageValue:reportCopy];
    homeID = [(MTRPluginResidentClientSession *)selfCopy2 homeID];
    v16[0] = MEMORY[0x277D85DD0];
    v16[1] = 3221225472;
    v16[2] = __65__MTRPluginResidentClientSession_device_receivedAttributeReport___block_invoke;
    v16[3] = &unk_279893B68;
    v16[4] = selfCopy2;
    v15[0] = MEMORY[0x277D85DD0];
    v15[1] = 3221225472;
    v15[2] = __65__MTRPluginResidentClientSession_device_receivedAttributeReport___block_invoke_123;
    v15[3] = &unk_279893B90;
    v15[4] = selfCopy2;
    [(MTRPluginResidentClientSession *)selfCopy2 _sendMessageToHomeWithID:homeID messageType:1009 pbCodable:v12 timeout:0 metric:v16 errorBlock:v15 replyBlock:60.0];

    objc_autoreleasePoolPop(v11);
    objc_sync_exit(selfCopy2);
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

- (void)device:(id)device receivedEventReport:(id)report
{
  v23 = *MEMORY[0x277D85DE8];
  deviceCopy = device;
  reportCopy = report;
  v8 = matterPluginLog_default;
  if (os_log_type_enabled(matterPluginLog_default, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412802;
    selfCopy = self;
    v19 = 2112;
    v20 = deviceCopy;
    v21 = 2112;
    v22 = reportCopy;
    _os_log_impl(&dword_25830F000, v8, OS_LOG_TYPE_DEFAULT, "%@ device %@ receivedEventReport %@", buf, 0x20u);
  }

  if (deviceCopy && reportCopy)
  {
    workQueue = [(MTRPluginResidentClientSession *)self workQueue];
    dispatch_assert_queue_V2(workQueue);

    selfCopy2 = self;
    objc_sync_enter(selfCopy2);
    v11 = objc_autoreleasePoolPush();
    v12 = [(MTRPluginResidentClientSession *)selfCopy2 _deviceNodeMessageForDevice:deviceCopy messageValue:reportCopy];
    homeID = [(MTRPluginResidentClientSession *)selfCopy2 homeID];
    v16[0] = MEMORY[0x277D85DD0];
    v16[1] = 3221225472;
    v16[2] = __61__MTRPluginResidentClientSession_device_receivedEventReport___block_invoke;
    v16[3] = &unk_279893B68;
    v16[4] = selfCopy2;
    v15[0] = MEMORY[0x277D85DD0];
    v15[1] = 3221225472;
    v15[2] = __61__MTRPluginResidentClientSession_device_receivedEventReport___block_invoke_124;
    v15[3] = &unk_279893B90;
    v15[4] = selfCopy2;
    [(MTRPluginResidentClientSession *)selfCopy2 _sendMessageToHomeWithID:homeID messageType:1010 pbCodable:v12 timeout:0 metric:v16 errorBlock:v15 replyBlock:60.0];

    objc_autoreleasePoolPop(v11);
    objc_sync_exit(selfCopy2);
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

- (void)deviceBecameActive:(id)active
{
  v11 = *MEMORY[0x277D85DE8];
  activeCopy = active;
  v5 = matterPluginLog_default;
  if (os_log_type_enabled(matterPluginLog_default, OS_LOG_TYPE_DEFAULT))
  {
    v7 = 138412546;
    selfCopy = self;
    v9 = 2112;
    v10 = activeCopy;
    _os_log_impl(&dword_25830F000, v5, OS_LOG_TYPE_DEFAULT, "%@ deviceBecameActive %@", &v7, 0x16u);
  }

  v6 = *MEMORY[0x277D85DE8];
}

- (void)deviceCachePrimed:(id)primed
{
  v18 = *MEMORY[0x277D85DE8];
  primedCopy = primed;
  v5 = matterPluginLog_default;
  if (os_log_type_enabled(matterPluginLog_default, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412546;
    selfCopy = self;
    v16 = 2112;
    v17 = primedCopy;
    _os_log_impl(&dword_25830F000, v5, OS_LOG_TYPE_DEFAULT, "%@ deviceCachePrimed %@", buf, 0x16u);
  }

  if (primedCopy)
  {
    workQueue = [(MTRPluginResidentClientSession *)self workQueue];
    dispatch_assert_queue_V2(workQueue);

    selfCopy2 = self;
    objc_sync_enter(selfCopy2);
    v8 = objc_autoreleasePoolPush();
    v9 = [(MTRPluginResidentClientSession *)selfCopy2 _deviceNodeMessageForDevice:primedCopy messageValue:0];
    homeID = [(MTRPluginResidentClientSession *)selfCopy2 homeID];
    v13[0] = MEMORY[0x277D85DD0];
    v13[1] = 3221225472;
    v13[2] = __52__MTRPluginResidentClientSession_deviceCachePrimed___block_invoke;
    v13[3] = &unk_279893B68;
    v13[4] = selfCopy2;
    v12[0] = MEMORY[0x277D85DD0];
    v12[1] = 3221225472;
    v12[2] = __52__MTRPluginResidentClientSession_deviceCachePrimed___block_invoke_125;
    v12[3] = &unk_279893B90;
    v12[4] = selfCopy2;
    [(MTRPluginResidentClientSession *)selfCopy2 _sendMessageToHomeWithID:homeID messageType:1012 pbCodable:v9 timeout:0 metric:v13 errorBlock:v12 replyBlock:60.0];

    objc_autoreleasePoolPop(v8);
    objc_sync_exit(selfCopy2);
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

- (void)deviceConfigurationChanged:(id)changed
{
  v17 = *MEMORY[0x277D85DE8];
  changedCopy = changed;
  v5 = matterPluginLog_default;
  if (os_log_type_enabled(matterPluginLog_default, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412546;
    selfCopy = self;
    v15 = 2112;
    v16 = changedCopy;
    _os_log_impl(&dword_25830F000, v5, OS_LOG_TYPE_DEFAULT, "%@ deviceConfigurationChanged %@", buf, 0x16u);
  }

  if (changedCopy)
  {
    workQueue = [(MTRPluginResidentClientSession *)self workQueue];
    dispatch_assert_queue_V2(workQueue);

    selfCopy2 = self;
    objc_sync_enter(selfCopy2);
    v8 = [(MTRPluginResidentClientSession *)selfCopy2 _deviceNodeMessageForDevice:changedCopy messageValue:0];
    homeID = [(MTRPluginResidentClientSession *)selfCopy2 homeID];
    v12[0] = MEMORY[0x277D85DD0];
    v12[1] = 3221225472;
    v12[2] = __61__MTRPluginResidentClientSession_deviceConfigurationChanged___block_invoke;
    v12[3] = &unk_279893B68;
    v12[4] = selfCopy2;
    v11[0] = MEMORY[0x277D85DD0];
    v11[1] = 3221225472;
    v11[2] = __61__MTRPluginResidentClientSession_deviceConfigurationChanged___block_invoke_126;
    v11[3] = &unk_279893B90;
    v11[4] = selfCopy2;
    [(MTRPluginResidentClientSession *)selfCopy2 _sendMessageToHomeWithID:homeID messageType:1013 pbCodable:v8 timeout:0 metric:v12 errorBlock:v11 replyBlock:60.0];

    objc_sync_exit(selfCopy2);
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

- (void)device:(id)device internalStateUpdated:(id)updated
{
  v41 = *MEMORY[0x277D85DE8];
  deviceCopy = device;
  updatedCopy = updated;
  v8 = matterPluginLog_default;
  if (os_log_type_enabled(matterPluginLog_default, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412802;
    selfCopy2 = self;
    v37 = 2112;
    v38 = deviceCopy;
    v39 = 2112;
    v40 = updatedCopy;
    _os_log_impl(&dword_25830F000, v8, OS_LOG_TYPE_DEFAULT, "%@ device %@ internalStateUpdated with value: %@", buf, 0x20u);
  }

  if (deviceCopy && updatedCopy)
  {
    workQueue = [(MTRPluginResidentClientSession *)self workQueue];
    dispatch_assert_queue_V2(workQueue);

    v10 = objc_autoreleasePoolPush();
    dictionary = [MEMORY[0x277CBEB38] dictionary];
    v12 = [updatedCopy objectForKeyedSubscript:@"MTRDeviceInternalStateKeyVendorID"];
    [dictionary setObject:v12 forKeyedSubscript:@"MTRDeviceInternalStateKeyVendorID"];

    v13 = [updatedCopy objectForKeyedSubscript:@"MTRDeviceInternalStateKeyProductID"];
    [dictionary setObject:v13 forKeyedSubscript:@"MTRDeviceInternalStateKeyProductID"];

    v14 = [updatedCopy objectForKeyedSubscript:@"MTRDeviceInternalPropertyNetworkFeatures"];
    [dictionary setObject:v14 forKeyedSubscript:@"MTRDeviceInternalPropertyNetworkFeatures"];

    v15 = [updatedCopy objectForKeyedSubscript:@"MTRDeviceInternalPropertyDeviceInternalState"];
    [dictionary setObject:v15 forKeyedSubscript:@"MTRDeviceInternalPropertyDeviceInternalState"];

    v16 = [updatedCopy objectForKeyedSubscript:@"MTRDeviceInternalPropertyDeviceState"];
    [dictionary setObject:v16 forKeyedSubscript:@"MTRDeviceInternalPropertyDeviceState"];

    v17 = [updatedCopy objectForKeyedSubscript:@"MTRDeviceInternalPropertyDeviceCachePrimed"];
    [dictionary setObject:v17 forKeyedSubscript:@"MTRDeviceInternalPropertyDeviceCachePrimed"];

    lastKnownInternalState = [(MTRPluginResidentClientSession *)self lastKnownInternalState];
    if (lastKnownInternalState && (v19 = lastKnownInternalState, -[MTRPluginResidentClientSession lastKnownInternalState](self, "lastKnownInternalState"), v20 = objc_claimAutoreleasedReturnValue(), v21 = [v20 isEqual:dictionary], v20, v19, v21))
    {
      v22 = matterPluginLog_default;
      if (os_log_type_enabled(matterPluginLog_default, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        selfCopy2 = self;
        _os_log_impl(&dword_25830F000, v22, OS_LOG_TYPE_DEFAULT, "%@ internalState is same as lastKnownInternalState, ignoring sending update to remote clients", buf, 0xCu);
      }
    }

    else
    {
      [(MTRPluginResidentClientSession *)self setLastKnownInternalState:dictionary];
      v23 = [(MTRPluginResidentClientSession *)self _deviceNodeMessageForDevice:deviceCopy messageValue:updatedCopy];
      internalStateUpdateSource = [(MTRPluginResidentClientSession *)self internalStateUpdateSource];
      workQueue2 = [(MTRPluginResidentClientSession *)self workQueue];
      v29 = MEMORY[0x277D85DD0];
      v30 = 3221225472;
      v31 = __62__MTRPluginResidentClientSession_device_internalStateUpdated___block_invoke;
      v32 = &unk_279893AC8;
      selfCopy3 = self;
      v34 = v23;
      v26 = v23;
      v27 = MTRBufferedExecutionBlock(internalStateUpdateSource, workQueue2, &v29, 0.5);
      [(MTRPluginResidentClientSession *)self setInternalStateUpdateSource:v27, v29, v30, v31, v32, selfCopy3];
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