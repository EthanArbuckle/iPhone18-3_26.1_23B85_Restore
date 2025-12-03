@interface MTRPluginProtobufOverModernTransport
+ (id)sharedInstance;
- (BOOL)_installResponseHandlerForIncomingProtobufMessage:(id)message hmfMessage:(id)hmfMessage;
- (BOOL)deregisterForRequestMessageWithType:(id)type forSessionID:(id)d;
- (BOOL)dispatchIncomingMessage:(id)message;
- (BOOL)registerForRequestMessageWithType:(id)type requestHandler:(SEL)handler forSessionID:(id)d;
- (BOOL)start;
- (BOOL)stop;
- (MTRPluginProtobufOverModernTransport)init;
- (NSString)description;
- (void)_handleResponseWithPayload:(id)payload error:(id)error forMessage:(id)message;
- (void)_sendMessageToPrimaryHomeHub:(id)hub timeout:(double)timeout;
- (void)_sendMessageToRemotePeer:(id)peer peerDestination:(id)destination timeout:(double)timeout;
- (void)removeDelegate:(id)delegate;
- (void)sendMessageToPrimaryHomeHub:(id)hub timeout:(double)timeout;
- (void)sendMessageToRemotePeer:(id)peer peerDestination:(id)destination timeout:(double)timeout;
- (void)setDelegate:(id)delegate delegateQueue:(id)queue;
- (void)setDelegate:(id)delegate delegateQueue:(id)queue forSessionID:(id)d;
@end

@implementation MTRPluginProtobufOverModernTransport

+ (id)sharedInstance
{
  if (sharedInstance_creation_5 != -1)
  {
    +[MTRPluginProtobufOverModernTransport sharedInstance];
  }

  v3 = sharedInstance_sInstance_5;

  return v3;
}

uint64_t __54__MTRPluginProtobufOverModernTransport_sharedInstance__block_invoke()
{
  sharedInstance_sInstance_5 = objc_alloc_init(MTRPluginProtobufOverModernTransport);

  return MEMORY[0x2821F96F8]();
}

- (MTRPluginProtobufOverModernTransport)init
{
  v5.receiver = self;
  v5.super_class = MTRPluginProtobufOverModernTransport;
  v2 = [(MTRPluginProtobufOverModernTransport *)&v5 init];
  if (v2)
  {
    v3 = objc_alloc_init(MTRPluginProtobufMessageDispatcher);
    [(MTRPluginProtobufOverModernTransport *)v2 setMessageDispatcher:v3];
  }

  return v2;
}

- (void)sendMessageToRemotePeer:(id)peer peerDestination:(id)destination timeout:(double)timeout
{
  peerCopy = peer;
  destinationCopy = destination;
  v9 = objc_autoreleasePoolPush();
  selfCopy = self;
  objc_sync_enter(selfCopy);
  [(MTRPluginProtobufOverModernTransport *)selfCopy _sendMessageToRemotePeer:peerCopy peerDestination:destinationCopy timeout:timeout];
  objc_sync_exit(selfCopy);

  objc_autoreleasePoolPop(v9);
}

- (void)sendMessageToPrimaryHomeHub:(id)hub timeout:(double)timeout
{
  hubCopy = hub;
  v6 = objc_autoreleasePoolPush();
  selfCopy = self;
  objc_sync_enter(selfCopy);
  [(MTRPluginProtobufOverModernTransport *)selfCopy _sendMessageToPrimaryHomeHub:hubCopy timeout:timeout];
  objc_sync_exit(selfCopy);

  objc_autoreleasePoolPop(v6);
}

- (void)_sendMessageToPrimaryHomeHub:(id)hub timeout:(double)timeout
{
  v33[1] = *MEMORY[0x277D85DE8];
  hubCopy = hub;
  v9 = hubCopy;
  if (hubCopy)
  {
    messageData = [hubCopy messageData];

    if (messageData)
    {
      v11 = clientConnectionForMessage(v9);
      if (v11)
      {
        messageHeader = [v9 messageHeader];
        responseHandler5 = [MTRPluginRemoteMessageMetric remoteOutgoingRequestMessageMetric:messageHeader];

        v32 = @"HMDHomeMatterRequestProtobufPayloadKey";
        messageData2 = [v9 messageData];
        v33[0] = messageData2;
        v15 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v33 forKeys:&v32 count:1];
        responseHandler = [v9 responseHandler];
        if (responseHandler)
        {
          v17 = v29;
          v29[0] = MEMORY[0x277D85DD0];
          v29[1] = 3221225472;
          v29[2] = __77__MTRPluginProtobufOverModernTransport__sendMessageToPrimaryHomeHub_timeout___block_invoke;
          v29[3] = &unk_2798943C0;
          v4 = v30;
          v30[0] = responseHandler5;
          v30[1] = self;
          v5 = &v31;
          v31 = v9;
        }

        else
        {
          v17 = 0;
        }

        v24 = [v11 _deliverMessagePayloadToPrimaryResident:v15 timeout:v17 responseHandler:timeout];

        if ((v24 & 1) == 0)
        {
          if (os_log_type_enabled(matterPluginLog_default, OS_LOG_TYPE_ERROR))
          {
            [MTRPluginProtobufOverModernTransport _sendMessageToPrimaryHomeHub:timeout:];
          }

          responseHandler2 = [v9 responseHandler];

          if (responseHandler2)
          {
            responseHandler3 = [v9 responseHandler];
            v27 = [MEMORY[0x277CCA9B8] errorWithDomain:@"kMTRPluginErrorDomain" code:-1005 userInfo:0];
            (responseHandler3)[2](responseHandler3, v27, 0);
          }
        }

        if (!responseHandler)
        {
          goto LABEL_23;
        }

        v23 = *v4;
      }

      else
      {
        if (os_log_type_enabled(matterPluginLog_default, OS_LOG_TYPE_ERROR))
        {
          [MTRPluginProtobufOverModernTransport _sendMessageToPrimaryHomeHub:timeout:];
        }

        responseHandler4 = [v9 responseHandler];

        if (!responseHandler4)
        {
          goto LABEL_24;
        }

        responseHandler5 = [v9 responseHandler];
        v23 = [MEMORY[0x277CCA9B8] errorWithDomain:@"kMTRPluginErrorDomain" code:-1002 userInfo:0];
        (responseHandler5)[2](responseHandler5, v23, 0);
      }

LABEL_23:
LABEL_24:

      goto LABEL_25;
    }
  }

  responseHandler6 = [v9 responseHandler];

  if (responseHandler6)
  {
    v19 = matterPluginLog_default;
    if (os_log_type_enabled(matterPluginLog_default, OS_LOG_TYPE_ERROR))
    {
      [MTRPluginProtobufOverModernTransport _sendMessageToPrimaryHomeHub:v19 timeout:?];
    }

    responseHandler7 = [v9 responseHandler];
    v21 = [MEMORY[0x277CCA9B8] errorWithDomain:@"kMTRPluginErrorDomain" code:-1000 userInfo:0];
    (responseHandler7)[2](responseHandler7, v21, 0);
  }

LABEL_25:

  v28 = *MEMORY[0x277D85DE8];
}

void __77__MTRPluginProtobufOverModernTransport__sendMessageToPrimaryHomeHub_timeout___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a3;
  v7 = a2;
  v6 = +[MTRPluginMetricsCollector sharedInstance];
  [v6 collectMetric:*(a1 + 32) error:v7];

  [*(a1 + 40) _handleResponseWithPayload:v5 error:v7 forMessage:*(a1 + 48)];
}

- (void)_sendMessageToRemotePeer:(id)peer peerDestination:(id)destination timeout:(double)timeout
{
  v38[1] = *MEMORY[0x277D85DE8];
  peerCopy = peer;
  destinationCopy = destination;
  if (peerCopy && ([peerCopy messageData], v10 = objc_claimAutoreleasedReturnValue(), v10, v10))
  {
    messageHeader = [peerCopy messageHeader];
    v12 = [MTRPluginRemoteMessageMetric remoteOutgoingRequestMessageMetric:messageHeader];

    v13 = MEMORY[0x277D0F818];
    v37 = @"HMDHomeMatterRequestProtobufPayloadKey";
    messageData = [peerCopy messageData];
    v38[0] = messageData;
    v15 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v38 forKeys:&v37 count:1];
    v16 = [v13 messageWithName:@"HMDHomeMatterRequestKey" destination:destinationCopy payload:v15];

    v27[0] = MEMORY[0x277D85DD0];
    v27[1] = 3221225472;
    v27[2] = __89__MTRPluginProtobufOverModernTransport__sendMessageToRemotePeer_peerDestination_timeout___block_invoke;
    v27[3] = &unk_2798943C0;
    v17 = v12;
    v28 = v17;
    selfCopy = self;
    v18 = peerCopy;
    v30 = v18;
    [v16 setResponseHandler:v27];
    v19 = matterPluginLog_default;
    if (os_log_type_enabled(matterPluginLog_default, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412802;
      selfCopy2 = self;
      v33 = 2112;
      v34 = v18;
      v35 = 2112;
      v36 = destinationCopy;
      _os_log_impl(&dword_25830F000, v19, OS_LOG_TYPE_DEFAULT, "%@ <= Sending message: %@ to remote peer: %@", buf, 0x20u);
    }

    v20 = +[MTRPluginServer sharedInstance];
    homeIdentifier = [v18 homeIdentifier];
    [v20 _deliverMessageToDelegate:v16 homeUUID:homeIdentifier timeout:timeout];
  }

  else
  {
    responseHandler = [peerCopy responseHandler];

    if (responseHandler)
    {
      v23 = matterPluginLog_default;
      if (os_log_type_enabled(matterPluginLog_default, OS_LOG_TYPE_ERROR))
      {
        [MTRPluginProtobufOverModernTransport _sendMessageToRemotePeer:v23 peerDestination:? timeout:?];
      }

      responseHandler2 = [peerCopy responseHandler];
      v25 = [MEMORY[0x277CCA9B8] errorWithDomain:@"kMTRPluginErrorDomain" code:-1000 userInfo:0];
      (responseHandler2)[2](responseHandler2, v25, 0);
    }
  }

  v26 = *MEMORY[0x277D85DE8];
}

void __89__MTRPluginProtobufOverModernTransport__sendMessageToRemotePeer_peerDestination_timeout___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a3;
  v7 = a2;
  v6 = +[MTRPluginMetricsCollector sharedInstance];
  [v6 collectMetric:*(a1 + 32) error:v7];

  [*(a1 + 40) _handleResponseWithPayload:v5 error:v7 forMessage:*(a1 + 48)];
}

- (void)setDelegate:(id)delegate delegateQueue:(id)queue forSessionID:(id)d
{
  delegateCopy = delegate;
  queueCopy = queue;
  dCopy = d;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  messageDispatcher = [(MTRPluginProtobufOverModernTransport *)selfCopy messageDispatcher];
  [messageDispatcher setDelegate:delegateCopy delegateQueue:queueCopy forSessionID:dCopy];

  objc_sync_exit(selfCopy);
}

- (void)setDelegate:(id)delegate delegateQueue:(id)queue
{
  delegateCopy = delegate;
  queueCopy = queue;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  messageDispatcher = [(MTRPluginProtobufOverModernTransport *)selfCopy messageDispatcher];
  [messageDispatcher setDelegate:delegateCopy delegateQueue:queueCopy];

  objc_sync_exit(selfCopy);
}

- (void)removeDelegate:(id)delegate
{
  delegateCopy = delegate;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  messageDispatcher = [(MTRPluginProtobufOverModernTransport *)selfCopy messageDispatcher];
  [messageDispatcher removeDelegate:delegateCopy];

  objc_sync_exit(selfCopy);
}

- (BOOL)registerForRequestMessageWithType:(id)type requestHandler:(SEL)handler forSessionID:(id)d
{
  typeCopy = type;
  dCopy = d;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  messageDispatcher = [(MTRPluginProtobufOverModernTransport *)selfCopy messageDispatcher];
  LOBYTE(handler) = [messageDispatcher registerForRequestMessageWithType:typeCopy requestHandler:handler forSessionID:dCopy];

  objc_sync_exit(selfCopy);
  return handler;
}

- (BOOL)deregisterForRequestMessageWithType:(id)type forSessionID:(id)d
{
  typeCopy = type;
  dCopy = d;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  messageDispatcher = [(MTRPluginProtobufOverModernTransport *)selfCopy messageDispatcher];
  v10 = [messageDispatcher deregisterForRequestMessageWithType:typeCopy forSessionID:dCopy];

  objc_sync_exit(selfCopy);
  return v10;
}

- (BOOL)start
{
  v8 = *MEMORY[0x277D85DE8];
  v3 = matterPluginLog_default;
  if (os_log_type_enabled(matterPluginLog_default, OS_LOG_TYPE_DEFAULT))
  {
    v6 = 138412290;
    selfCopy = self;
    _os_log_impl(&dword_25830F000, v3, OS_LOG_TYPE_DEFAULT, "%@ Starting Matter remote message transport over HomeKit Modern Transport", &v6, 0xCu);
  }

  v4 = *MEMORY[0x277D85DE8];
  return 1;
}

- (BOOL)stop
{
  v8 = *MEMORY[0x277D85DE8];
  v3 = matterPluginLog_default;
  if (os_log_type_enabled(matterPluginLog_default, OS_LOG_TYPE_DEFAULT))
  {
    v6 = 138412290;
    selfCopy = self;
    _os_log_impl(&dword_25830F000, v3, OS_LOG_TYPE_DEFAULT, "%@ Stopping Matter remote message transport over HomeKit Modern Transport", &v6, 0xCu);
  }

  v4 = *MEMORY[0x277D85DE8];
  return 1;
}

- (NSString)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = [v3 stringWithFormat:@"<%@: %p>", v5, self];

  return v6;
}

- (BOOL)dispatchIncomingMessage:(id)message
{
  v41 = *MEMORY[0x277D85DE8];
  messageCopy = message;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  messagePayload = [messageCopy messagePayload];
  v8 = [messagePayload hmf_dataForKey:@"HMDHomeMatterRequestProtobufPayloadKey"];

  if (v8)
  {
    v9 = [MTRPluginProtobufMessage messageWithProtobufData:v8];
    v10 = v9 != 0;
    v11 = matterPluginLog_default;
    v12 = v11;
    if (v9)
    {
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
      {
        name = [messageCopy name];
        identifier = [messageCopy identifier];
        *buf = 138413058;
        v34 = selfCopy;
        v35 = 2112;
        v36 = v9;
        v37 = 2112;
        v38 = name;
        v39 = 2112;
        v40 = identifier;
        _os_log_impl(&dword_25830F000, v12, OS_LOG_TYPE_DEFAULT, "%@ => Received incoming protobuf message: %@ from HMFMessage (%@: %@)", buf, 0x2Au);
      }

      v15 = [(MTRPluginProtobufOverModernTransport *)selfCopy _installResponseHandlerForIncomingProtobufMessage:v9 hmfMessage:messageCopy];
      destination = [messageCopy destination];
      [v9 setSourceAddress:destination];

      messageDispatcher = [(MTRPluginProtobufOverModernTransport *)selfCopy messageDispatcher];
      if (v15)
      {
        v18 = v31;
        v31[0] = MEMORY[0x277D85DD0];
        v31[1] = 3221225472;
        v31[2] = __64__MTRPluginProtobufOverModernTransport_dispatchIncomingMessage___block_invoke;
        v31[3] = &unk_279893AA0;
        v3 = &v32;
        v32 = messageCopy;
      }

      else
      {
        v18 = 0;
      }

      v21 = [messageDispatcher invokeMessageHandlersForMessage:v9 transport:selfCopy errorBlock:v18];

      if (v21)
      {
        messageType = [v9 messageType];
        v23 = [messageType intValue] == 9;

        if (!v23)
        {
          [v9 setHintRequestCheckinMessageFromPeer:1];
          v24 = matterPluginLog_default;
          if (os_log_type_enabled(matterPluginLog_default, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 138412546;
            v34 = selfCopy;
            v35 = 2112;
            v36 = v9;
            _os_log_impl(&dword_25830F000, v24, OS_LOG_TYPE_DEFAULT, "%@ => Received new incoming protobuf message: %@ without checkin, requesting piggyback checkin as part of response", buf, 0x16u);
          }
        }
      }

      if (!v15)
      {
        v10 = 1;
        goto LABEL_22;
      }

      v20 = *v3;
    }

    else
    {
      if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
      {
        name2 = [messageCopy name];
        identifier2 = [messageCopy identifier];
        *buf = 138412802;
        v34 = selfCopy;
        v35 = 2112;
        v36 = name2;
        v37 = 2112;
        v38 = identifier2;
        _os_log_error_impl(&dword_25830F000, v12, OS_LOG_TYPE_ERROR, "%@ => Received invalid HMFMessage (%@ : %@), failed to unpack protobuf data", buf, 0x20u);
      }

      v20 = [MEMORY[0x277CCA9B8] errorWithDomain:@"kMTRPluginErrorDomain" code:-1003 userInfo:0];
      [messageCopy respondWithError:v20];
    }
  }

  else
  {
    v19 = matterPluginLog_default;
    if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
    {
      name3 = [messageCopy name];
      identifier3 = [messageCopy identifier];
      *buf = 138412802;
      v34 = selfCopy;
      v35 = 2112;
      v36 = name3;
      v37 = 2112;
      v38 = identifier3;
      _os_log_error_impl(&dword_25830F000, v19, OS_LOG_TYPE_ERROR, "%@ => Received invalid incoming HMFMessage (%@: %@) to dispatch as it is missing protobuf payload", buf, 0x20u);
    }

    v9 = [MEMORY[0x277CCA9B8] errorWithDomain:@"kMTRPluginErrorDomain" code:-1003 userInfo:0];
    [messageCopy respondWithError:v9];
    v10 = 0;
  }

LABEL_22:

  objc_sync_exit(selfCopy);
  v25 = *MEMORY[0x277D85DE8];
  return v10;
}

void __64__MTRPluginProtobufOverModernTransport_dispatchIncomingMessage___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = [MEMORY[0x277CCA9B8] errorWithDomain:@"kMTRPluginErrorDomain" code:-1010 userInfo:0];
  [v1 respondWithError:v2];
}

- (BOOL)_installResponseHandlerForIncomingProtobufMessage:(id)message hmfMessage:(id)hmfMessage
{
  messageCopy = message;
  hmfMessageCopy = hmfMessage;
  messageHeader = [messageCopy messageHeader];
  messageDirection = [messageHeader messageDirection];

  if (messageDirection == 2)
  {
    messageHeader2 = [messageCopy messageHeader];
    v11 = [MTRPluginRemoteMessageMetric remoteIncomingRequestMessageMetric:messageHeader2];

    messageHeader3 = [messageCopy messageHeader];
    responseHeaderForRequestHeader = [messageHeader3 responseHeaderForRequestHeader];

    objc_initWeak(&location, messageCopy);
    v17[0] = MEMORY[0x277D85DD0];
    v17[1] = 3221225472;
    v17[2] = __101__MTRPluginProtobufOverModernTransport__installResponseHandlerForIncomingProtobufMessage_hmfMessage___block_invoke;
    v17[3] = &unk_2798943E8;
    v14 = v11;
    v18 = v14;
    v19 = hmfMessageCopy;
    v15 = responseHeaderForRequestHeader;
    v20 = v15;
    selfCopy = self;
    objc_copyWeak(&v22, &location);
    [messageCopy setResponseHandler:v17];
    objc_destroyWeak(&v22);

    objc_destroyWeak(&location);
  }

  return messageDirection == 2;
}

void __101__MTRPluginProtobufOverModernTransport__installResponseHandlerForIncomingProtobufMessage_hmfMessage___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v44 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  v7 = +[MTRPluginMetricsCollector sharedInstance];
  [v7 collectMetric:*(a1 + 32) error:v5];

  if (v5)
  {
    [*(a1 + 40) respondWithError:v5];
    goto LABEL_38;
  }

  if (!v6)
  {
    v12 = objc_alloc_init(MTRPluginPBMVariableValueResponseMessage);
    [(MTRPluginPBMVariableValueResponseMessage *)v12 setHeader:*(a1 + 48)];
    v11 = [(MTRPluginPBMVariableValueResponseMessage *)v12 data];
    goto LABEL_14;
  }

  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();
  if (isKindOfClass)
  {
    v9 = v6;
  }

  else
  {
    v9 = 0;
  }

  v10 = v9;
  if (isKindOfClass)
  {
    [(MTRPluginPBMVariableValueResponseMessage *)v6 setHeader:*(a1 + 48)];
    v11 = [(MTRPluginPBMVariableValueResponseMessage *)v6 data];
    v12 = v6;
    goto LABEL_14;
  }

  objc_opt_class();
  v13 = objc_opt_isKindOfClass() & 1;
  if (v13)
  {
    v14 = v6;
  }

  else
  {
    v14 = 0;
  }

  v15 = v14;
  v12 = 0;
  v11 = v6;
  if (v13)
  {
LABEL_14:
    WeakRetained = objc_loadWeakRetained((a1 + 64));
    if ([WeakRetained hintRequestCheckinMessageFromPeer])
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v17 = v12;
      }

      else
      {
        v17 = 0;
      }

      v18 = v17;

      if (v18)
      {
        [(MTRPluginPBMVariableValueResponseMessage *)v18 setCheckinRequested:1];
        v19 = v12;
        if (!v11)
        {
LABEL_20:
          v5 = [MEMORY[0x277CCA9B8] errorWithDomain:@"kMTRPluginErrorDomain" code:-1003 userInfo:0];
          v20 = matterPluginLog_default;
          if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
          {
            v21 = *(a1 + 56);
            v22 = [*(a1 + 40) name];
            *buf = 0;
            *&buf[8] = 0;
            v23 = [*(a1 + 40) identifier];

            if (v23)
            {
              v24 = [*(a1 + 40) identifier];
              [v24 getUUIDBytes:buf];
            }

            else
            {
              *buf = *MEMORY[0x277D0F960];
            }

            v35 = *buf;
            *buf = 138413314;
            *&buf[4] = v21;
            *&buf[12] = 2112;
            *&buf[14] = v22;
            v40 = 1040;
            *v41 = 16;
            *&v41[4] = 2096;
            *&v41[6] = &v35;
            v42 = 2112;
            v43 = v5;
            _os_log_impl(&dword_25830F000, v20, OS_LOG_TYPE_DEFAULT, "%@ <= Sending response for incoming request HMFMessage (%@ : %{uuid_t}.16P) with error: %@", buf, 0x30u);
          }

          [*(a1 + 40) respondWithError:v5];
LABEL_37:

          goto LABEL_38;
        }

LABEL_25:
        v25 = matterPluginLog_default;
        if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
        {
          v26 = *(a1 + 56);
          v27 = [*(a1 + 48) shortDescription];
          v28 = [*(a1 + 40) name];
          *buf = 0;
          *&buf[8] = 0;
          v29 = [*(a1 + 40) identifier];

          if (v29)
          {
            v30 = [*(a1 + 40) identifier];
            [v30 getUUIDBytes:buf];
          }

          else
          {
            *buf = *MEMORY[0x277D0F960];
          }

          v38 = *buf;
          *buf = 138413314;
          *&buf[4] = v26;
          *&buf[12] = 2112;
          *&buf[14] = v27;
          v40 = 2112;
          *v41 = v28;
          *&v41[8] = 1040;
          *&v41[10] = 16;
          v42 = 2096;
          v43 = &v38;
          _os_log_impl(&dword_25830F000, v25, OS_LOG_TYPE_DEFAULT, "%@ <= Sending response %@ for incoming request HMFMessage (%@ : %{uuid_t}.16P)", buf, 0x30u);
        }

        v32 = *(a1 + 40);
        v36 = @"HMDHomeMatterRequestProtobufPayloadKey";
        v37 = v11;
        v33 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v37 forKeys:&v36 count:1];
        [v32 respondWithPayload:v33];

        v5 = 0;
        goto LABEL_37;
      }
    }

    else
    {
    }

    v19 = 0;
    if (!v11)
    {
      goto LABEL_20;
    }

    goto LABEL_25;
  }

  v31 = matterPluginLog_default;
  if (os_log_type_enabled(matterPluginLog_default, OS_LOG_TYPE_ERROR))
  {
    __101__MTRPluginProtobufOverModernTransport__installResponseHandlerForIncomingProtobufMessage_hmfMessage___block_invoke_cold_1(a1, v31);
  }

  v5 = 0;
LABEL_38:

  v34 = *MEMORY[0x277D85DE8];
}

- (void)_handleResponseWithPayload:(id)payload error:(id)error forMessage:(id)message
{
  v30 = *MEMORY[0x277D85DE8];
  payloadCopy = payload;
  errorCopy = error;
  messageCopy = message;
  if (!errorCopy)
  {
    responseHandler7 = [payloadCopy hmf_dataForKey:@"HMDHomeMatterRequestProtobufPayloadKey"];
    if (responseHandler7)
    {
      responseHandler5 = [MTRPluginProtobufMessage messageWithProtobufData:responseHandler7];
      if (responseHandler5)
      {
        v15 = [[MTRPluginPBMVariableValueResponseMessage alloc] initWithData:responseHandler7];
        v16 = matterPluginLog_default;
        if (v15)
        {
          if (os_log_type_enabled(matterPluginLog_default, OS_LOG_TYPE_DEFAULT))
          {
            v24 = 138412546;
            selfCopy3 = self;
            v26 = 2112;
            v27 = responseHandler5;
            _os_log_impl(&dword_25830F000, v16, OS_LOG_TYPE_DEFAULT, "%@ => Received responseValue in response for protobuf message %@", &v24, 0x16u);
          }

          errorCopy = [(MTRPluginPBMVariableValueResponseMessage *)v15 error];
          if (errorCopy)
          {
            responseHandler3 = 0;
          }

          else
          {
            responseHandler3 = responseHandler7;
          }

          responseHandler = [messageCopy responseHandler];

          if (responseHandler)
          {
            responseHandler2 = [messageCopy responseHandler];
            (responseHandler2)[2](responseHandler2, errorCopy, responseHandler3);
          }

          if ([(MTRPluginPBMVariableValueResponseMessage *)v15 checkinRequested])
          {
            v21 = matterPluginLog_default;
            if (os_log_type_enabled(matterPluginLog_default, OS_LOG_TYPE_DEFAULT))
            {
              v24 = 138412546;
              selfCopy3 = self;
              v26 = 2112;
              v27 = messageCopy;
              _os_log_impl(&dword_25830F000, v21, OS_LOG_TYPE_DEFAULT, "%@ => Received responseValue for message %@ that is requesting a checkin, scheduling a checkin", &v24, 0x16u);
            }

            v22 = clientConnectionForMessage(messageCopy);
            [v22 updateControllerConfigurationForRemotePeer];
          }
        }

        else
        {
          if (os_log_type_enabled(matterPluginLog_default, OS_LOG_TYPE_ERROR))
          {
            [MTRPluginProtobufOverModernTransport _handleResponseWithPayload:error:forMessage:];
          }

          errorCopy = [MEMORY[0x277CCA9B8] errorWithDomain:@"kMTRPluginErrorDomain" code:-1008 userInfo:0];
          responseHandler3 = 0;
        }
      }

      else
      {
        if (os_log_type_enabled(matterPluginLog_default, OS_LOG_TYPE_ERROR))
        {
          [MTRPluginProtobufOverModernTransport _handleResponseWithPayload:error:forMessage:];
        }

        errorCopy = [messageCopy responseHandler];

        if (!errorCopy)
        {
          goto LABEL_34;
        }

        responseHandler3 = [messageCopy responseHandler];
        v15 = [MEMORY[0x277CCA9B8] errorWithDomain:@"kMTRPluginErrorDomain" code:-1003 userInfo:0];
        (*(responseHandler3 + 2))(responseHandler3, v15, 0);
        errorCopy = 0;
      }
    }

    else
    {
      if (os_log_type_enabled(matterPluginLog_default, OS_LOG_TYPE_ERROR))
      {
        [MTRPluginProtobufOverModernTransport _handleResponseWithPayload:error:forMessage:];
      }

      responseHandler4 = [messageCopy responseHandler];

      if (!responseHandler4)
      {
        errorCopy = 0;
        goto LABEL_35;
      }

      responseHandler5 = [messageCopy responseHandler];
      responseHandler3 = [MEMORY[0x277CCA9B8] errorWithDomain:@"kMTRPluginErrorDomain" code:-1003 userInfo:0];
      (responseHandler5)[2](responseHandler5, responseHandler3, 0);
      errorCopy = 0;
    }

LABEL_34:
    goto LABEL_35;
  }

  v11 = matterPluginLog_default;
  if (os_log_type_enabled(matterPluginLog_default, OS_LOG_TYPE_ERROR))
  {
    v24 = 138412802;
    selfCopy3 = self;
    v26 = 2112;
    v27 = errorCopy;
    v28 = 2112;
    v29 = messageCopy;
    _os_log_error_impl(&dword_25830F000, v11, OS_LOG_TYPE_ERROR, "%@ Received error %@ in response for message: %@", &v24, 0x20u);
  }

  responseHandler6 = [messageCopy responseHandler];

  if (responseHandler6)
  {
    responseHandler7 = [messageCopy responseHandler];
    (responseHandler7)[2](responseHandler7, errorCopy, 0);
LABEL_35:
  }

  v23 = *MEMORY[0x277D85DE8];
}

- (void)_sendMessageToPrimaryHomeHub:timeout:.cold.1()
{
  v3 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_2(&dword_25830F000, v0, v1, "%@ Failed to _deliverMessagePayloadToPrimaryResident for connection: %@");
  v2 = *MEMORY[0x277D85DE8];
}

- (void)_sendMessageToPrimaryHomeHub:timeout:.cold.2()
{
  v3 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_2(&dword_25830F000, v0, v1, "%@ No connection found to _deliverMessagePayloadToPrimaryResident for message: %@");
  v2 = *MEMORY[0x277D85DE8];
}

- (void)_sendMessageToPrimaryHomeHub:(uint64_t)a1 timeout:(NSObject *)a2 .cold.3(uint64_t a1, NSObject *a2)
{
  v5 = *MEMORY[0x277D85DE8];
  v3 = 138412290;
  v4 = a1;
  _os_log_error_impl(&dword_25830F000, a2, OS_LOG_TYPE_ERROR, "%@ Unable to send message over to home hub since message is nil", &v3, 0xCu);
  v2 = *MEMORY[0x277D85DE8];
}

- (void)_sendMessageToRemotePeer:(uint64_t)a1 peerDestination:(NSObject *)a2 timeout:.cold.1(uint64_t a1, NSObject *a2)
{
  v5 = *MEMORY[0x277D85DE8];
  v3 = 138412290;
  v4 = a1;
  _os_log_error_impl(&dword_25830F000, a2, OS_LOG_TYPE_ERROR, "%@ Unable to send message over to remote peer since message is nil", &v3, 0xCu);
  v2 = *MEMORY[0x277D85DE8];
}

void __101__MTRPluginProtobufOverModernTransport__installResponseHandlerForIncomingProtobufMessage_hmfMessage___block_invoke_cold_1(uint64_t a1, void *a2)
{
  v11 = *MEMORY[0x277D85DE8];
  v3 = *(a1 + 56);
  v4 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 64));
  v7 = 138412546;
  v8 = v3;
  v9 = 2112;
  v10 = WeakRetained;
  _os_log_error_impl(&dword_25830F000, v4, OS_LOG_TYPE_ERROR, "%@ Failed to respond to incoming protobuf message %@ due to malformed response", &v7, 0x16u);

  v6 = *MEMORY[0x277D85DE8];
}

- (void)_handleResponseWithPayload:error:forMessage:.cold.1()
{
  v3 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_2(&dword_25830F000, v0, v1, "%@ => Received invalid responseValue in response for protobuf message %@");
  v2 = *MEMORY[0x277D85DE8];
}

- (void)_handleResponseWithPayload:error:forMessage:.cold.2()
{
  v3 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_2(&dword_25830F000, v0, v1, "%@ => Received invalid HMFMessage payload in response for message %@, failed to unpack protobuf data");
  v2 = *MEMORY[0x277D85DE8];
}

- (void)_handleResponseWithPayload:error:forMessage:.cold.3()
{
  v3 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_2(&dword_25830F000, v0, v1, "%@ => Received invalid HMFMessage payload in response for message %@ as it is missing protobuf payload");
  v2 = *MEMORY[0x277D85DE8];
}

@end