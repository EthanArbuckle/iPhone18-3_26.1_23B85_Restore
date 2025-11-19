@interface MTRPluginProtobufMessageDispatcher
- (BOOL)deregisterForRequestMessageWithType:(id)a3 forSessionID:(id)a4;
- (BOOL)handleNewSessionSetupForMessage:(id)a3 transport:(id)a4 errorBlock:(id)a5;
- (BOOL)invokeMessageHandlersForMessage:(id)a3 transport:(id)a4 errorBlock:(id)a5;
- (BOOL)registerForRequestMessageWithType:(id)a3 requestHandler:(SEL)a4 forSessionID:(id)a5;
- (MTRPluginProtobufMessageDispatcher)init;
- (id)_findMessageReceiverMatchingDelegate:(id)a3;
- (id)_findMessageReceiverMatchingSessionID:(id)a3;
- (id)description;
- (void)invokeMessageHandlersForReceiver:(id)a3 message:(id)a4 transport:(id)a5 errorBlock:(id)a6;
- (void)removeDelegate:(id)a3;
- (void)setDelegate:(id)a3 delegateQueue:(id)a4;
- (void)setDelegate:(id)a3 delegateQueue:(id)a4 forSessionID:(id)a5;
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

- (id)_findMessageReceiverMatchingDelegate:(id)a3
{
  v22 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(MTRPluginProtobufMessageDispatcher *)self controlChannelReceiver];
  v6 = [v5 delegate];

  if (v6 == v4)
  {
    v14 = [(MTRPluginProtobufMessageDispatcher *)self controlChannelReceiver];
  }

  else
  {
    v19 = 0u;
    v20 = 0u;
    v17 = 0u;
    v18 = 0u;
    v7 = [(MTRPluginProtobufMessageDispatcher *)self messageReceivers];
    v8 = [v7 countByEnumeratingWithState:&v17 objects:v21 count:16];
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
            objc_enumerationMutation(v7);
          }

          v12 = *(*(&v17 + 1) + 8 * i);
          v13 = [v12 delegate];

          if (v13 == v4)
          {
            v14 = v12;

            goto LABEL_13;
          }
        }

        v9 = [v7 countByEnumeratingWithState:&v17 objects:v21 count:16];
        if (v9)
        {
          continue;
        }

        break;
      }
    }

    v14 = 0;
  }

LABEL_13:

  v15 = *MEMORY[0x277D85DE8];

  return v14;
}

- (id)_findMessageReceiverMatchingSessionID:(id)a3
{
  v19 = *MEMORY[0x277D85DE8];
  v4 = a3;
  if (v4)
  {
    v16 = 0u;
    v17 = 0u;
    v14 = 0u;
    v15 = 0u;
    v5 = [(MTRPluginProtobufMessageDispatcher *)self messageReceivers];
    v6 = [v5 countByEnumeratingWithState:&v14 objects:v18 count:16];
    if (v6)
    {
      v7 = *v15;
      while (2)
      {
        for (i = 0; i != v6; i = i + 1)
        {
          if (*v15 != v7)
          {
            objc_enumerationMutation(v5);
          }

          v9 = *(*(&v14 + 1) + 8 * i);
          v10 = [v9 sessionID];
          v11 = [v10 isEqual:v4];

          if (v11)
          {
            v6 = v9;
            goto LABEL_12;
          }
        }

        v6 = [v5 countByEnumeratingWithState:&v14 objects:v18 count:16];
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

- (void)setDelegate:(id)a3 delegateQueue:(id)a4 forSessionID:(id)a5
{
  v26 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = self;
  objc_sync_enter(v11);
  v12 = [(MTRPluginProtobufMessageDispatcher *)v11 _findMessageReceiverMatchingSessionID:v10];
  if (!v12)
  {
    v12 = [[MTRPluginProtobufMessageReceiver alloc] initWithDelegate:v8 delegateQueue:v9 sessionID:v10];
    v13 = [(MTRPluginProtobufMessageDispatcher *)v11 messageReceivers];
    [v13 addObject:v12];

    v14 = matterPluginLog_default;
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      v16 = 0uLL;
      if (v10)
      {
        [v10 getUUIDBytes:&v16];
      }

      else
      {
        v16 = *MEMORY[0x277D0F960];
      }

      v17 = v16;
      *buf = 138413058;
      v19 = v11;
      v20 = 2112;
      v21 = v8;
      v22 = 1040;
      v23 = 16;
      v24 = 2096;
      v25 = &v17;
      _os_log_impl(&dword_25830F000, v14, OS_LOG_TYPE_DEFAULT, "%@ Adding new session receiver delegate %@ for sessionID: %{uuid_t}.16P", buf, 0x26u);
    }
  }

  objc_sync_exit(v11);
  v15 = *MEMORY[0x277D85DE8];
}

- (void)setDelegate:(id)a3 delegateQueue:(id)a4
{
  v17 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = self;
  objc_sync_enter(v8);
  v9 = [(MTRPluginProtobufMessageDispatcher *)v8 controlChannelReceiver];

  if (!v9)
  {
    v10 = [[MTRPluginProtobufMessageReceiver alloc] initWithDelegate:v6 delegateQueue:v7 sessionID:0];
    [(MTRPluginProtobufMessageDispatcher *)v8 setControlChannelReceiver:v10];

    v11 = matterPluginLog_default;
    if (os_log_type_enabled(matterPluginLog_default, OS_LOG_TYPE_DEFAULT))
    {
      v13 = 138412546;
      v14 = v8;
      v15 = 2112;
      v16 = v6;
      _os_log_impl(&dword_25830F000, v11, OS_LOG_TYPE_DEFAULT, "%@ Adding control channel receiver delegate %@", &v13, 0x16u);
    }
  }

  objc_sync_exit(v8);

  v12 = *MEMORY[0x277D85DE8];
}

- (void)removeDelegate:(id)a3
{
  v28 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = self;
  objc_sync_enter(v5);
  v6 = [(MTRPluginProtobufMessageDispatcher *)v5 _findMessageReceiverMatchingDelegate:v4];
  if (v6)
  {
    v7 = [(MTRPluginProtobufMessageDispatcher *)v5 controlChannelReceiver];
    if (v7 && (-[MTRPluginProtobufMessageDispatcher controlChannelReceiver](v5, "controlChannelReceiver"), v8 = objc_claimAutoreleasedReturnValue(), v9 = [v6 isEqual:v8], v8, v7, v9))
    {
      v10 = matterPluginLog_default;
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
      {
        v11 = [v6 delegate];
        *buf = 138412546;
        v21 = v5;
        v22 = 2112;
        v23 = v11;
        _os_log_impl(&dword_25830F000, v10, OS_LOG_TYPE_DEFAULT, "%@ Removing control channel delegate %@", buf, 0x16u);
      }

      [(MTRPluginProtobufMessageDispatcher *)v5 setControlChannelReceiver:0];
    }

    else
    {
      v12 = matterPluginLog_default;
      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
      {
        v13 = [v6 delegate];
        v18 = 0uLL;
        v14 = [v6 sessionID];

        if (v14)
        {
          v15 = [v6 sessionID];
          [v15 getUUIDBytes:&v18];
        }

        else
        {
          v18 = *MEMORY[0x277D0F960];
        }

        v19 = v18;
        *buf = 138413058;
        v21 = v5;
        v22 = 2112;
        v23 = v13;
        v24 = 1040;
        v25 = 16;
        v26 = 2096;
        v27 = &v19;
        _os_log_impl(&dword_25830F000, v12, OS_LOG_TYPE_DEFAULT, "%@ Removing delegate %@ for session: %{uuid_t}.16P", buf, 0x26u);
      }

      v16 = [(MTRPluginProtobufMessageDispatcher *)v5 messageReceivers];
      [v16 removeObject:v6];
    }
  }

  objc_sync_exit(v5);
  v17 = *MEMORY[0x277D85DE8];
}

- (BOOL)registerForRequestMessageWithType:(id)a3 requestHandler:(SEL)a4 forSessionID:(id)a5
{
  v31 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a5;
  v10 = self;
  objc_sync_enter(v10);
  v11 = NSStringFromSelector(a4);
  v12 = [(MTRPluginProtobufMessageDispatcher *)v10 _findMessageReceiverMatchingSessionID:v9];
  v13 = v12;
  if (v12)
  {
    v14 = [v12 messageSelectors];
    [v14 setObject:v11 forKeyedSubscript:v8];

    v15 = matterPluginLog_default;
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
    {
      v19 = 0uLL;
      if (v9)
      {
        [v9 getUUIDBytes:&v19];
      }

      else
      {
        v19 = *MEMORY[0x277D0F960];
      }

      v18 = v19;
      *buf = 138413314;
      v22 = v10;
      v23 = 2112;
      v24 = v11;
      v25 = 2112;
      v26 = v8;
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
      if (v9)
      {
        [v9 getUUIDBytes:&v19];
      }

      else
      {
        v19 = *MEMORY[0x277D0F960];
      }

      v20 = v19;
      *buf = 138413314;
      v22 = v10;
      v23 = 2112;
      v24 = v11;
      v25 = 2112;
      v26 = v8;
      v27 = 1040;
      v28 = 16;
      v29 = 2096;
      v30 = &v20;
      _os_log_error_impl(&dword_25830F000, v15, OS_LOG_TYPE_ERROR, "%@ Failed to register selector %@ for messageType: %@ on session: %{uuid_t}.16P since session is not valid", buf, 0x30u);
    }
  }

  objc_sync_exit(v10);
  v16 = *MEMORY[0x277D85DE8];
  return v13 != 0;
}

- (BOOL)deregisterForRequestMessageWithType:(id)a3 forSessionID:(id)a4
{
  v26 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = self;
  objc_sync_enter(v8);
  v9 = [(MTRPluginProtobufMessageDispatcher *)v8 _findMessageReceiverMatchingSessionID:v7];
  v10 = v9;
  if (v9)
  {
    if (v6)
    {
      v11 = [v9 messageSelectors];
      [v11 removeObjectForKey:v6];
    }

    v12 = matterPluginLog_default;
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
    {
      v16 = 0uLL;
      if (v7)
      {
        [v7 getUUIDBytes:&v16];
      }

      else
      {
        v16 = *MEMORY[0x277D0F960];
      }

      v15 = v16;
      *buf = 138413058;
      v19 = v8;
      v20 = 2112;
      v21 = v6;
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
      if (v7)
      {
        [v7 getUUIDBytes:&v16];
      }

      else
      {
        v16 = *MEMORY[0x277D0F960];
      }

      v17 = v16;
      *buf = 138413058;
      v19 = v8;
      v20 = 2112;
      v21 = v6;
      v22 = 1040;
      v23 = 16;
      v24 = 2096;
      v25 = &v17;
      _os_log_error_impl(&dword_25830F000, v12, OS_LOG_TYPE_ERROR, "%@ Failed to deregister selector for messageType: %@ on session: %{uuid_t}.16P since session is not valid", buf, 0x26u);
    }
  }

  objc_sync_exit(v8);
  v13 = *MEMORY[0x277D85DE8];
  return v10 != 0;
}

- (BOOL)handleNewSessionSetupForMessage:(id)a3 transport:(id)a4 errorBlock:(id)a5
{
  v30 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = matterPluginLog_default;
  if (os_log_type_enabled(matterPluginLog_default, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412546;
    v27 = self;
    v28 = 2112;
    v29 = v8;
    _os_log_impl(&dword_25830F000, v11, OS_LOG_TYPE_DEFAULT, "%@ Received message %@ with new session identifier", buf, 0x16u);
  }

  v12 = [(MTRPluginProtobufMessageDispatcher *)self controlChannelReceiver];
  v13 = [v12 delegate];

  v14 = objc_opt_respondsToSelector();
  if (v14)
  {
    v15 = [(MTRPluginProtobufMessageDispatcher *)self controlChannelReceiver];
    v16 = [v15 delegateQueue];
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __91__MTRPluginProtobufMessageDispatcher_handleNewSessionSetupForMessage_transport_errorBlock___block_invoke;
    block[3] = &unk_279893C30;
    v21 = v13;
    v22 = v9;
    v23 = v8;
    v24 = self;
    v25 = v10;
    dispatch_async(v16, block);
  }

  else if (v10)
  {
    v17 = matterPluginLog_default;
    if (os_log_type_enabled(matterPluginLog_default, OS_LOG_TYPE_ERROR))
    {
      [MTRPluginProtobufMessageDispatcher handleNewSessionSetupForMessage:v8 transport:v17 errorBlock:?];
    }

    v10[2](v10);
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

- (void)invokeMessageHandlersForReceiver:(id)a3 message:(id)a4 transport:(id)a5 errorBlock:(id)a6
{
  v47 = *MEMORY[0x277D85DE8];
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  if (v10 && v11 && v12)
  {
    v14 = [v10 messageSelectors];
    v15 = [v11 messageType];
    v16 = [v14 objectForKeyedSubscript:v15];

    v17 = NSSelectorFromString(v16);
    v18 = [v10 delegate];
    if ((objc_opt_respondsToSelector() & 1) != 0 && [v18 isSuspended])
    {
      v19 = matterPluginLog_default;
      if (os_log_type_enabled(matterPluginLog_default, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412802;
        *&buf[4] = self;
        *&buf[12] = 2112;
        *&buf[14] = v11;
        v43 = 2112;
        *v44 = v18;
        v20 = "%@ Received message %@ but delegate %@ is suspended, sending error response to close remote session";
        goto LABEL_22;
      }

      goto LABEL_17;
    }

    if (v18 && (objc_opt_respondsToSelector() & 1) != 0)
    {
      v21 = matterPluginLog_default;
      if (os_log_type_enabled(v21, OS_LOG_TYPE_DEBUG))
      {
        *buf = 0;
        *&buf[8] = 0;
        v27 = [v11 sessionIdentifier];

        if (v27)
        {
          v28 = [v11 sessionIdentifier];
          [v28 getUUIDBytes:buf];
        }

        else
        {
          *buf = *MEMORY[0x277D0F960];
        }

        v41 = *buf;
        *buf = 138413314;
        *&buf[4] = self;
        *&buf[12] = 2048;
        *&buf[14] = v18;
        v43 = 1040;
        *v44 = 16;
        *&v44[4] = 2096;
        *&v44[6] = &v41;
        v45 = 2112;
        v46 = v11;
        _os_log_debug_impl(&dword_25830F000, v21, OS_LOG_TYPE_DEBUG, "%@ Calling invokeHandler on delegate %p for session with identifier %{uuid_t}.16P for message: %@", buf, 0x30u);
      }

      v22 = [v10 delegateQueue];
      block[0] = MEMORY[0x277D85DD0];
      block[1] = 3221225472;
      block[2] = __100__MTRPluginProtobufMessageDispatcher_invokeMessageHandlersForReceiver_message_transport_errorBlock___block_invoke;
      block[3] = &unk_279893E18;
      v37 = v18;
      v40 = v17;
      v38 = v12;
      v39 = v11;
      dispatch_async(v22, block);

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
          *&buf[14] = v18;
          v43 = 2112;
          *v44 = v11;
          v20 = "%@ Receiver delegate %@ has no handler for message: %@";
LABEL_22:
          _os_log_error_impl(&dword_25830F000, v19, OS_LOG_TYPE_ERROR, v20, buf, 0x20u);
          if (!v13)
          {
            goto LABEL_19;
          }

          goto LABEL_18;
        }

LABEL_17:
        if (!v13)
        {
LABEL_19:

          goto LABEL_20;
        }

LABEL_18:
        v13[2](v13);
        goto LABEL_19;
      }

      v24 = [v10 delegateQueue];
      v32[0] = MEMORY[0x277D85DD0];
      v32[1] = 3221225472;
      v32[2] = __100__MTRPluginProtobufMessageDispatcher_invokeMessageHandlersForReceiver_message_transport_errorBlock___block_invoke_2;
      v32[3] = &unk_279893D98;
      v32[4] = self;
      v33 = v18;
      v34 = v11;
      v35 = v12;
      dispatch_async(v24, v32);

      v23 = v33;
    }

    if (objc_opt_respondsToSelector())
    {
      v25 = [v10 delegateQueue];
      v29[0] = MEMORY[0x277D85DD0];
      v29[1] = 3221225472;
      v29[2] = __100__MTRPluginProtobufMessageDispatcher_invokeMessageHandlersForReceiver_message_transport_errorBlock___block_invoke_60;
      v29[3] = &unk_279893AC8;
      v30 = v18;
      v31 = v12;
      dispatch_async(v25, v29);
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

- (BOOL)invokeMessageHandlersForMessage:(id)a3 transport:(id)a4 errorBlock:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = self;
  objc_sync_enter(v11);
  v12 = [v8 sessionIdentifier];
  v13 = [(MTRPluginProtobufMessageDispatcher *)v11 _findMessageReceiverMatchingSessionID:v12];

  if (v13)
  {
    [(MTRPluginProtobufMessageDispatcher *)v11 invokeMessageHandlersForReceiver:v13 message:v8 transport:v9 errorBlock:v10];
    v14 = 0;
  }

  else
  {
    v14 = [(MTRPluginProtobufMessageDispatcher *)v11 handleNewSessionSetupForMessage:v8 transport:v9 errorBlock:v10];
  }

  objc_sync_exit(v11);
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