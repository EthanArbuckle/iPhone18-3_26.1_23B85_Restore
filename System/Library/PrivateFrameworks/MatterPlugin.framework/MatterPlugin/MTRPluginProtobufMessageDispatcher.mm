@interface MTRPluginProtobufMessageDispatcher
- (BOOL)deregisterForRequestMessageWithType:(id)type forSessionID:(id)d;
- (BOOL)handleNewSessionSetupForMessage:(id)message transport:(id)transport errorBlock:(id)block;
- (BOOL)invokeMessageHandlersForMessage:(id)message transport:(id)transport errorBlock:(id)block;
- (BOOL)registerForRequestMessageWithType:(id)type requestHandler:(SEL)handler forSessionID:(id)d;
- (MTRPluginProtobufMessageDispatcher)init;
- (id)_findMessageReceiverMatchingDelegate:(id)delegate;
- (id)_findMessageReceiverMatchingSessionID:(id)d;
- (id)description;
- (void)invokeMessageHandlersForReceiver:(id)receiver message:(id)message transport:(id)transport errorBlock:(id)block;
- (void)removeDelegate:(id)delegate;
- (void)setDelegate:(id)delegate delegateQueue:(id)queue;
- (void)setDelegate:(id)delegate delegateQueue:(id)queue forSessionID:(id)d;
@end

@implementation MTRPluginProtobufMessageDispatcher

- (MTRPluginProtobufMessageDispatcher)init
{
  v6.receiver = self;
  v6.super_class = MTRPluginProtobufMessageDispatcher;
  v2 = [(MTRPluginProtobufMessageDispatcher *)&v6 init];
  v3 = v2;
  if (v2)
  {
    [(MTRPluginProtobufMessageDispatcher *)v2 setControlChannelReceiver:0];
    v4 = [MEMORY[0x277CBEB58] set];
    [(MTRPluginProtobufMessageDispatcher *)v3 setMessageReceivers:v4];
  }

  return v3;
}

- (id)_findMessageReceiverMatchingDelegate:(id)delegate
{
  v22 = *MEMORY[0x277D85DE8];
  delegateCopy = delegate;
  controlChannelReceiver = [(MTRPluginProtobufMessageDispatcher *)self controlChannelReceiver];
  delegate = [controlChannelReceiver delegate];

  if (delegate == delegateCopy)
  {
    controlChannelReceiver2 = [(MTRPluginProtobufMessageDispatcher *)self controlChannelReceiver];
  }

  else
  {
    v19 = 0u;
    v20 = 0u;
    v17 = 0u;
    v18 = 0u;
    messageReceivers = [(MTRPluginProtobufMessageDispatcher *)self messageReceivers];
    v8 = [messageReceivers countByEnumeratingWithState:&v17 objects:v21 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = *v18;
      while (2)
      {
        for (i = 0; i != v9; ++i)
        {
          if (*v18 != v10)
          {
            objc_enumerationMutation(messageReceivers);
          }

          v12 = *(*(&v17 + 1) + 8 * i);
          delegate2 = [v12 delegate];

          if (delegate2 == delegateCopy)
          {
            controlChannelReceiver2 = v12;

            goto LABEL_13;
          }
        }

        v9 = [messageReceivers countByEnumeratingWithState:&v17 objects:v21 count:16];
        if (v9)
        {
          continue;
        }

        break;
      }
    }

    controlChannelReceiver2 = 0;
  }

LABEL_13:

  v15 = *MEMORY[0x277D85DE8];

  return controlChannelReceiver2;
}

- (id)_findMessageReceiverMatchingSessionID:(id)d
{
  v19 = *MEMORY[0x277D85DE8];
  dCopy = d;
  if (dCopy)
  {
    v16 = 0u;
    v17 = 0u;
    v14 = 0u;
    v15 = 0u;
    messageReceivers = [(MTRPluginProtobufMessageDispatcher *)self messageReceivers];
    v6 = [messageReceivers countByEnumeratingWithState:&v14 objects:v18 count:16];
    if (v6)
    {
      v7 = *v15;
      while (2)
      {
        for (i = 0; i != v6; i = i + 1)
        {
          if (*v15 != v7)
          {
            objc_enumerationMutation(messageReceivers);
          }

          v9 = *(*(&v14 + 1) + 8 * i);
          sessionID = [v9 sessionID];
          v11 = [sessionID isEqual:dCopy];

          if (v11)
          {
            v6 = v9;
            goto LABEL_12;
          }
        }

        v6 = [messageReceivers countByEnumeratingWithState:&v14 objects:v18 count:16];
        if (v6)
        {
          continue;
        }

        break;
      }
    }

LABEL_12:
  }

  else
  {
    v6 = 0;
  }

  v12 = *MEMORY[0x277D85DE8];

  return v6;
}

- (void)setDelegate:(id)delegate delegateQueue:(id)queue forSessionID:(id)d
{
  v26 = *MEMORY[0x277D85DE8];
  delegateCopy = delegate;
  queueCopy = queue;
  dCopy = d;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  v12 = [(MTRPluginProtobufMessageDispatcher *)selfCopy _findMessageReceiverMatchingSessionID:dCopy];
  if (!v12)
  {
    v12 = [[MTRPluginProtobufMessageReceiver alloc] initWithDelegate:delegateCopy delegateQueue:queueCopy sessionID:dCopy];
    messageReceivers = [(MTRPluginProtobufMessageDispatcher *)selfCopy messageReceivers];
    [messageReceivers addObject:v12];

    v14 = matterPluginLog_default;
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      v16 = 0uLL;
      if (dCopy)
      {
        [dCopy getUUIDBytes:&v16];
      }

      else
      {
        v16 = *MEMORY[0x277D0F960];
      }

      v17 = v16;
      *buf = 138413058;
      v19 = selfCopy;
      v20 = 2112;
      v21 = delegateCopy;
      v22 = 1040;
      v23 = 16;
      v24 = 2096;
      v25 = &v17;
      _os_log_impl(&dword_25830F000, v14, OS_LOG_TYPE_DEFAULT, "%@ Adding new session receiver delegate %@ for sessionID: %{uuid_t}.16P", buf, 0x26u);
    }
  }

  objc_sync_exit(selfCopy);
  v15 = *MEMORY[0x277D85DE8];
}

- (void)setDelegate:(id)delegate delegateQueue:(id)queue
{
  v17 = *MEMORY[0x277D85DE8];
  delegateCopy = delegate;
  queueCopy = queue;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  controlChannelReceiver = [(MTRPluginProtobufMessageDispatcher *)selfCopy controlChannelReceiver];

  if (!controlChannelReceiver)
  {
    v10 = [[MTRPluginProtobufMessageReceiver alloc] initWithDelegate:delegateCopy delegateQueue:queueCopy sessionID:0];
    [(MTRPluginProtobufMessageDispatcher *)selfCopy setControlChannelReceiver:v10];

    v11 = matterPluginLog_default;
    if (os_log_type_enabled(matterPluginLog_default, OS_LOG_TYPE_DEFAULT))
    {
      v13 = 138412546;
      v14 = selfCopy;
      v15 = 2112;
      v16 = delegateCopy;
      _os_log_impl(&dword_25830F000, v11, OS_LOG_TYPE_DEFAULT, "%@ Adding control channel receiver delegate %@", &v13, 0x16u);
    }
  }

  objc_sync_exit(selfCopy);

  v12 = *MEMORY[0x277D85DE8];
}

- (void)removeDelegate:(id)delegate
{
  v28 = *MEMORY[0x277D85DE8];
  delegateCopy = delegate;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  v6 = [(MTRPluginProtobufMessageDispatcher *)selfCopy _findMessageReceiverMatchingDelegate:delegateCopy];
  if (v6)
  {
    controlChannelReceiver = [(MTRPluginProtobufMessageDispatcher *)selfCopy controlChannelReceiver];
    if (controlChannelReceiver && (-[MTRPluginProtobufMessageDispatcher controlChannelReceiver](selfCopy, "controlChannelReceiver"), v8 = objc_claimAutoreleasedReturnValue(), v9 = [v6 isEqual:v8], v8, controlChannelReceiver, v9))
    {
      v10 = matterPluginLog_default;
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
      {
        delegate = [v6 delegate];
        *buf = 138412546;
        v21 = selfCopy;
        v22 = 2112;
        v23 = delegate;
        _os_log_impl(&dword_25830F000, v10, OS_LOG_TYPE_DEFAULT, "%@ Removing control channel delegate %@", buf, 0x16u);
      }

      [(MTRPluginProtobufMessageDispatcher *)selfCopy setControlChannelReceiver:0];
    }

    else
    {
      v12 = matterPluginLog_default;
      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
      {
        delegate2 = [v6 delegate];
        v18 = 0uLL;
        sessionID = [v6 sessionID];

        if (sessionID)
        {
          sessionID2 = [v6 sessionID];
          [sessionID2 getUUIDBytes:&v18];
        }

        else
        {
          v18 = *MEMORY[0x277D0F960];
        }

        v19 = v18;
        *buf = 138413058;
        v21 = selfCopy;
        v22 = 2112;
        v23 = delegate2;
        v24 = 1040;
        v25 = 16;
        v26 = 2096;
        v27 = &v19;
        _os_log_impl(&dword_25830F000, v12, OS_LOG_TYPE_DEFAULT, "%@ Removing delegate %@ for session: %{uuid_t}.16P", buf, 0x26u);
      }

      messageReceivers = [(MTRPluginProtobufMessageDispatcher *)selfCopy messageReceivers];
      [messageReceivers removeObject:v6];
    }
  }

  objc_sync_exit(selfCopy);
  v17 = *MEMORY[0x277D85DE8];
}

- (BOOL)registerForRequestMessageWithType:(id)type requestHandler:(SEL)handler forSessionID:(id)d
{
  v31 = *MEMORY[0x277D85DE8];
  typeCopy = type;
  dCopy = d;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  v11 = NSStringFromSelector(handler);
  v12 = [(MTRPluginProtobufMessageDispatcher *)selfCopy _findMessageReceiverMatchingSessionID:dCopy];
  v13 = v12;
  if (v12)
  {
    messageSelectors = [v12 messageSelectors];
    [messageSelectors setObject:v11 forKeyedSubscript:typeCopy];

    v15 = matterPluginLog_default;
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
    {
      v19 = 0uLL;
      if (dCopy)
      {
        [dCopy getUUIDBytes:&v19];
      }

      else
      {
        v19 = *MEMORY[0x277D0F960];
      }

      v18 = v19;
      *buf = 138413314;
      v22 = selfCopy;
      v23 = 2112;
      v24 = v11;
      v25 = 2112;
      v26 = typeCopy;
      v27 = 1040;
      v28 = 16;
      v29 = 2096;
      v30 = &v18;
      _os_log_debug_impl(&dword_25830F000, v15, OS_LOG_TYPE_DEBUG, "%@ Registering selector %@ for messageType: %@ on session: %{uuid_t}.16P", buf, 0x30u);
    }
  }

  else
  {
    v15 = matterPluginLog_default;
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      v19 = 0uLL;
      if (dCopy)
      {
        [dCopy getUUIDBytes:&v19];
      }

      else
      {
        v19 = *MEMORY[0x277D0F960];
      }

      v20 = v19;
      *buf = 138413314;
      v22 = selfCopy;
      v23 = 2112;
      v24 = v11;
      v25 = 2112;
      v26 = typeCopy;
      v27 = 1040;
      v28 = 16;
      v29 = 2096;
      v30 = &v20;
      _os_log_error_impl(&dword_25830F000, v15, OS_LOG_TYPE_ERROR, "%@ Failed to register selector %@ for messageType: %@ on session: %{uuid_t}.16P since session is not valid", buf, 0x30u);
    }
  }

  objc_sync_exit(selfCopy);
  v16 = *MEMORY[0x277D85DE8];
  return v13 != 0;
}

- (BOOL)deregisterForRequestMessageWithType:(id)type forSessionID:(id)d
{
  v26 = *MEMORY[0x277D85DE8];
  typeCopy = type;
  dCopy = d;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  v9 = [(MTRPluginProtobufMessageDispatcher *)selfCopy _findMessageReceiverMatchingSessionID:dCopy];
  v10 = v9;
  if (v9)
  {
    if (typeCopy)
    {
      messageSelectors = [v9 messageSelectors];
      [messageSelectors removeObjectForKey:typeCopy];
    }

    v12 = matterPluginLog_default;
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
    {
      v16 = 0uLL;
      if (dCopy)
      {
        [dCopy getUUIDBytes:&v16];
      }

      else
      {
        v16 = *MEMORY[0x277D0F960];
      }

      v15 = v16;
      *buf = 138413058;
      v19 = selfCopy;
      v20 = 2112;
      v21 = typeCopy;
      v22 = 1040;
      v23 = 16;
      v24 = 2096;
      v25 = &v15;
      _os_log_debug_impl(&dword_25830F000, v12, OS_LOG_TYPE_DEBUG, "%@ Deregistering selector for messageType: %@ on session: %{uuid_t}.16P", buf, 0x26u);
    }
  }

  else
  {
    v12 = matterPluginLog_default;
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      v16 = 0uLL;
      if (dCopy)
      {
        [dCopy getUUIDBytes:&v16];
      }

      else
      {
        v16 = *MEMORY[0x277D0F960];
      }

      v17 = v16;
      *buf = 138413058;
      v19 = selfCopy;
      v20 = 2112;
      v21 = typeCopy;
      v22 = 1040;
      v23 = 16;
      v24 = 2096;
      v25 = &v17;
      _os_log_error_impl(&dword_25830F000, v12, OS_LOG_TYPE_ERROR, "%@ Failed to deregister selector for messageType: %@ on session: %{uuid_t}.16P since session is not valid", buf, 0x26u);
    }
  }

  objc_sync_exit(selfCopy);
  v13 = *MEMORY[0x277D85DE8];
  return v10 != 0;
}

- (BOOL)handleNewSessionSetupForMessage:(id)message transport:(id)transport errorBlock:(id)block
{
  v30 = *MEMORY[0x277D85DE8];
  messageCopy = message;
  transportCopy = transport;
  blockCopy = block;
  v11 = matterPluginLog_default;
  if (os_log_type_enabled(matterPluginLog_default, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412546;
    selfCopy = self;
    v28 = 2112;
    v29 = messageCopy;
    _os_log_impl(&dword_25830F000, v11, OS_LOG_TYPE_DEFAULT, "%@ Received message %@ with new session identifier", buf, 0x16u);
  }

  controlChannelReceiver = [(MTRPluginProtobufMessageDispatcher *)self controlChannelReceiver];
  delegate = [controlChannelReceiver delegate];

  v14 = objc_opt_respondsToSelector();
  if (v14)
  {
    controlChannelReceiver2 = [(MTRPluginProtobufMessageDispatcher *)self controlChannelReceiver];
    delegateQueue = [controlChannelReceiver2 delegateQueue];
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __91__MTRPluginProtobufMessageDispatcher_handleNewSessionSetupForMessage_transport_errorBlock___block_invoke;
    block[3] = &unk_279893C30;
    v21 = delegate;
    v22 = transportCopy;
    v23 = messageCopy;
    selfCopy2 = self;
    v25 = blockCopy;
    dispatch_async(delegateQueue, block);
  }

  else if (blockCopy)
  {
    v17 = matterPluginLog_default;
    if (os_log_type_enabled(matterPluginLog_default, OS_LOG_TYPE_ERROR))
    {
      [MTRPluginProtobufMessageDispatcher handleNewSessionSetupForMessage:messageCopy transport:v17 errorBlock:?];
    }

    blockCopy[2](blockCopy);
  }

  v18 = *MEMORY[0x277D85DE8];
  return v14 & 1;
}

void __91__MTRPluginProtobufMessageDispatcher_handleNewSessionSetupForMessage_transport_errorBlock___block_invoke(uint64_t a1)
{
  v17 = *MEMORY[0x277D85DE8];
  v2 = objc_autoreleasePoolPush();
  [*(a1 + 32) messageTransport:*(a1 + 40) handleIncomingMessage:*(a1 + 48)];
  v3 = *(a1 + 56);
  objc_sync_enter(v3);
  v4 = *(a1 + 56);
  v5 = [*(a1 + 48) sessionIdentifier];
  v6 = [v4 _findMessageReceiverMatchingSessionID:v5];

  if (v6)
  {
    [*(a1 + 56) invokeMessageHandlersForReceiver:v6 message:*(a1 + 48) transport:*(a1 + 40) errorBlock:*(a1 + 64)];
  }

  else
  {
    v8 = [*(a1 + 48) sessionIdentifier];

    if (v8)
    {
      v9 = matterPluginLog_default;
      if (os_log_type_enabled(matterPluginLog_default, OS_LOG_TYPE_DEFAULT))
      {
        v11 = *(a1 + 48);
        v10 = *(a1 + 56);
        v13 = 138412546;
        v14 = v10;
        v15 = 2112;
        v16 = v11;
        _os_log_impl(&dword_25830F000, v9, OS_LOG_TYPE_DEFAULT, "%@ Found no handler for incoming new session message; %@", &v13, 0x16u);
      }

      v12 = *(a1 + 64);
      if (v12)
      {
        (*(v12 + 16))();
      }
    }
  }

  objc_sync_exit(v3);
  objc_autoreleasePoolPop(v2);
  v7 = *MEMORY[0x277D85DE8];
}

- (void)invokeMessageHandlersForReceiver:(id)receiver message:(id)message transport:(id)transport errorBlock:(id)block
{
  v47 = *MEMORY[0x277D85DE8];
  receiverCopy = receiver;
  messageCopy = message;
  transportCopy = transport;
  blockCopy = block;
  if (receiverCopy && messageCopy && transportCopy)
  {
    messageSelectors = [receiverCopy messageSelectors];
    messageType = [messageCopy messageType];
    v16 = [messageSelectors objectForKeyedSubscript:messageType];

    v17 = NSSelectorFromString(v16);
    delegate = [receiverCopy delegate];
    if ((objc_opt_respondsToSelector() & 1) != 0 && [delegate isSuspended])
    {
      v19 = matterPluginLog_default;
      if (os_log_type_enabled(matterPluginLog_default, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412802;
        *&buf[4] = self;
        *&buf[12] = 2112;
        *&buf[14] = messageCopy;
        v43 = 2112;
        *v44 = delegate;
        v20 = "%@ Received message %@ but delegate %@ is suspended, sending error response to close remote session";
        goto LABEL_22;
      }

      goto LABEL_17;
    }

    if (delegate && (objc_opt_respondsToSelector() & 1) != 0)
    {
      v21 = matterPluginLog_default;
      if (os_log_type_enabled(v21, OS_LOG_TYPE_DEBUG))
      {
        *buf = 0;
        *&buf[8] = 0;
        sessionIdentifier = [messageCopy sessionIdentifier];

        if (sessionIdentifier)
        {
          sessionIdentifier2 = [messageCopy sessionIdentifier];
          [sessionIdentifier2 getUUIDBytes:buf];
        }

        else
        {
          *buf = *MEMORY[0x277D0F960];
        }

        v41 = *buf;
        *buf = 138413314;
        *&buf[4] = self;
        *&buf[12] = 2048;
        *&buf[14] = delegate;
        v43 = 1040;
        *v44 = 16;
        *&v44[4] = 2096;
        *&v44[6] = &v41;
        v45 = 2112;
        v46 = messageCopy;
        _os_log_debug_impl(&dword_25830F000, v21, OS_LOG_TYPE_DEBUG, "%@ Calling invokeHandler on delegate %p for session with identifier %{uuid_t}.16P for message: %@", buf, 0x30u);
      }

      delegateQueue = [receiverCopy delegateQueue];
      block[0] = MEMORY[0x277D85DD0];
      block[1] = 3221225472;
      block[2] = __100__MTRPluginProtobufMessageDispatcher_invokeMessageHandlersForReceiver_message_transport_errorBlock___block_invoke;
      block[3] = &unk_279893E18;
      v37 = delegate;
      v40 = v17;
      v38 = transportCopy;
      v39 = messageCopy;
      dispatch_async(delegateQueue, block);

      v23 = v37;
    }

    else
    {
      if ((objc_opt_respondsToSelector() & 1) == 0)
      {
        v19 = matterPluginLog_default;
        if (os_log_type_enabled(matterPluginLog_default, OS_LOG_TYPE_ERROR))
        {
          *buf = 138412802;
          *&buf[4] = self;
          *&buf[12] = 2112;
          *&buf[14] = delegate;
          v43 = 2112;
          *v44 = messageCopy;
          v20 = "%@ Receiver delegate %@ has no handler for message: %@";
LABEL_22:
          _os_log_error_impl(&dword_25830F000, v19, OS_LOG_TYPE_ERROR, v20, buf, 0x20u);
          if (!blockCopy)
          {
            goto LABEL_19;
          }

          goto LABEL_18;
        }

LABEL_17:
        if (!blockCopy)
        {
LABEL_19:

          goto LABEL_20;
        }

LABEL_18:
        blockCopy[2](blockCopy);
        goto LABEL_19;
      }

      delegateQueue2 = [receiverCopy delegateQueue];
      v32[0] = MEMORY[0x277D85DD0];
      v32[1] = 3221225472;
      v32[2] = __100__MTRPluginProtobufMessageDispatcher_invokeMessageHandlersForReceiver_message_transport_errorBlock___block_invoke_2;
      v32[3] = &unk_279893D98;
      v32[4] = self;
      v33 = delegate;
      v34 = messageCopy;
      v35 = transportCopy;
      dispatch_async(delegateQueue2, v32);

      v23 = v33;
    }

    if (objc_opt_respondsToSelector())
    {
      delegateQueue3 = [receiverCopy delegateQueue];
      v29[0] = MEMORY[0x277D85DD0];
      v29[1] = 3221225472;
      v29[2] = __100__MTRPluginProtobufMessageDispatcher_invokeMessageHandlersForReceiver_message_transport_errorBlock___block_invoke_60;
      v29[3] = &unk_279893AC8;
      v30 = delegate;
      v31 = transportCopy;
      dispatch_async(delegateQueue3, v29);
    }

    goto LABEL_19;
  }

LABEL_20:

  v26 = *MEMORY[0x277D85DE8];
}

void __100__MTRPluginProtobufMessageDispatcher_invokeMessageHandlersForReceiver_message_transport_errorBlock___block_invoke(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  v3 = [*(a1 + 32) methodSignatureForSelector:*(a1 + 56)];
  v4 = [MEMORY[0x277CBEAE8] invocationWithMethodSignature:v3];
  [v4 setSelector:*(a1 + 56)];
  [v4 setTarget:*(a1 + 32)];
  v5 = *(a1 + 40);
  v6 = *(a1 + 48);
  v7 = v5;
  [v4 setArgument:&v7 atIndex:{2, v6}];
  [v4 setArgument:&v6 atIndex:3];
  [v4 invokeWithTarget:*(a1 + 32)];

  objc_autoreleasePoolPop(v2);
}

void __100__MTRPluginProtobufMessageDispatcher_invokeMessageHandlersForReceiver_message_transport_errorBlock___block_invoke_2(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  v3 = matterPluginLog_default;
  if (os_log_type_enabled(matterPluginLog_default, OS_LOG_TYPE_DEBUG))
  {
    __100__MTRPluginProtobufMessageDispatcher_invokeMessageHandlersForReceiver_message_transport_errorBlock___block_invoke_2_cold_1(a1, v3);
  }

  [*(a1 + 40) messageTransport:*(a1 + 56) handleIncomingMessage:*(a1 + 48)];
  objc_autoreleasePoolPop(v2);
}

void __100__MTRPluginProtobufMessageDispatcher_invokeMessageHandlersForReceiver_message_transport_errorBlock___block_invoke_60(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(a1 + 40);
  v3 = [MEMORY[0x277CBEAA8] date];
  [v1 messageTransport:v2 updateTimeOfActivity:v3];
}

- (BOOL)invokeMessageHandlersForMessage:(id)message transport:(id)transport errorBlock:(id)block
{
  messageCopy = message;
  transportCopy = transport;
  blockCopy = block;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  sessionIdentifier = [messageCopy sessionIdentifier];
  v13 = [(MTRPluginProtobufMessageDispatcher *)selfCopy _findMessageReceiverMatchingSessionID:sessionIdentifier];

  if (v13)
  {
    [(MTRPluginProtobufMessageDispatcher *)selfCopy invokeMessageHandlersForReceiver:v13 message:messageCopy transport:transportCopy errorBlock:blockCopy];
    v14 = 0;
  }

  else
  {
    v14 = [(MTRPluginProtobufMessageDispatcher *)selfCopy handleNewSessionSetupForMessage:messageCopy transport:transportCopy errorBlock:blockCopy];
  }

  objc_sync_exit(selfCopy);
  return v14;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = [v3 stringWithFormat:@"<%@ : %p>", v5, self];

  return v6;
}

- (void)handleNewSessionSetupForMessage:(uint64_t)a1 transport:(uint64_t)a2 errorBlock:(os_log_t)log .cold.1(uint64_t a1, uint64_t a2, os_log_t log)
{
  v8 = *MEMORY[0x277D85DE8];
  v4 = 138412546;
  v5 = a1;
  v6 = 2112;
  v7 = a2;
  _os_log_error_impl(&dword_25830F000, log, OS_LOG_TYPE_ERROR, "%@ No receiver delegate for new session setup message: %@, sending error", &v4, 0x16u);
  v3 = *MEMORY[0x277D85DE8];
}

void __100__MTRPluginProtobufMessageDispatcher_invokeMessageHandlersForReceiver_message_transport_errorBlock___block_invoke_2_cold_1(void *a1, NSObject *a2)
{
  v12 = *MEMORY[0x277D85DE8];
  v2 = a1[4];
  v3 = a1[5];
  v4 = a1[6];
  v6 = 138412802;
  v7 = v2;
  v8 = 2112;
  v9 = v3;
  v10 = 2112;
  v11 = v4;
  _os_log_debug_impl(&dword_25830F000, a2, OS_LOG_TYPE_DEBUG, "%@ Invoking delegate %@ to handle all messages for message: %@", &v6, 0x20u);
  v5 = *MEMORY[0x277D85DE8];
}

@end