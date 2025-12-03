@interface DBUISyncChannel
- (CARSession)session;
- (DBUISyncChannel)initWithSession:(id)session;
- (void)_startConnection;
- (void)_stopConnection;
- (void)addObserver:(id)observer forDisplayID:(id)d;
- (void)channel:(id)channel didReceiveMessage:(id)message;
- (void)didCloseChannel:(id)channel;
- (void)didOpenChannel:(id)channel;
- (void)didSendMessageForChannel:(id)channel;
- (void)removeObserver:(id)observer forDisplayID:(id)d;
- (void)sendPayload:(id)payload forDisplayID:(id)d description:(id)description;
@end

@implementation DBUISyncChannel

- (DBUISyncChannel)initWithSession:(id)session
{
  sessionCopy = session;
  v15.receiver = self;
  v15.super_class = DBUISyncChannel;
  v5 = [(DBUISyncChannel *)&v15 init];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->_session, sessionCopy);
    v7 = objc_alloc_init(MEMORY[0x277CBEB38]);
    observers = v6->_observers;
    v6->_observers = v7;

    v9 = objc_alloc(MEMORY[0x277CF89E8]);
    v10 = *MEMORY[0x277CC15C8];
    v11 = [MEMORY[0x277CCABB0] numberWithInt:12];
    v12 = [v9 initWithSession:sessionCopy channelType:v10 channelID:@"7DED4F02-38A6-4CBA-8731-4B9BA40CB044" withoutReply:1 qualityOfService:v11 streamPriority:&unk_285AA48B0];
    sessionChannel = v6->_sessionChannel;
    v6->_sessionChannel = v12;

    [(CARSessionChannel *)v6->_sessionChannel setChannelDelegate:v6];
  }

  return v6;
}

- (void)addObserver:(id)observer forDisplayID:(id)d
{
  v22 = *MEMORY[0x277D85DE8];
  observerCopy = observer;
  dCopy = d;
  v8 = DBLogForCategory(0x15uLL);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    sessionChannel = [(DBUISyncChannel *)self sessionChannel];
    v18 = 138412546;
    v19 = dCopy;
    v20 = 2112;
    v21 = sessionChannel;
    _os_log_impl(&dword_248146000, v8, OS_LOG_TYPE_DEFAULT, "Registering observer for %@: %@", &v18, 0x16u);
  }

  observers = [(DBUISyncChannel *)self observers];
  v11 = [observers objectForKey:dCopy];

  if (!v11)
  {
    v12 = objc_alloc(MEMORY[0x277CF89C0]);
    v11 = [v12 initWithProtocol:&unk_285B50480 callbackQueue:MEMORY[0x277D85CD0]];
    observers2 = [(DBUISyncChannel *)self observers];
    [observers2 setObject:v11 forKey:dCopy];
  }

  [v11 registerObserver:observerCopy];
  sessionChannel2 = [(DBUISyncChannel *)self sessionChannel];
  isOpened = [sessionChannel2 isOpened];

  if (isOpened)
  {
    v16 = DBLogForCategory(0x15uLL);
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
    {
      sessionChannel3 = [(DBUISyncChannel *)self sessionChannel];
      v18 = 138412290;
      v19 = sessionChannel3;
      _os_log_impl(&dword_248146000, v16, OS_LOG_TYPE_DEFAULT, "Channel is already opened: %@", &v18, 0xCu);
    }

    [observerCopy didOpen:self];
  }

  else
  {
    [(DBUISyncChannel *)self _startConnection];
  }
}

- (void)removeObserver:(id)observer forDisplayID:(id)d
{
  v20 = *MEMORY[0x277D85DE8];
  dCopy = d;
  observerCopy = observer;
  v8 = DBLogForCategory(0x15uLL);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    sessionChannel = [(DBUISyncChannel *)self sessionChannel];
    v16 = 138412546;
    v17 = dCopy;
    v18 = 2112;
    v19 = sessionChannel;
    _os_log_impl(&dword_248146000, v8, OS_LOG_TYPE_DEFAULT, "Unregistering observer for %@: %@", &v16, 0x16u);
  }

  observers = [(DBUISyncChannel *)self observers];
  v11 = [observers objectForKey:dCopy];

  [v11 unregisterObserver:observerCopy];
  if (([v11 hasObservers] & 1) == 0)
  {
    observers2 = [(DBUISyncChannel *)self observers];
    [observers2 removeObjectForKey:dCopy];
  }

  observers3 = [(DBUISyncChannel *)self observers];
  allKeys = [observers3 allKeys];
  v15 = [allKeys count];

  if (!v15)
  {
    [(DBUISyncChannel *)self _stopConnection];
  }
}

- (void)sendPayload:(id)payload forDisplayID:(id)d description:(id)description
{
  v17[2] = *MEMORY[0x277D85DE8];
  descriptionCopy = description;
  v16[0] = @"displayUUID";
  v16[1] = @"data";
  v17[0] = d;
  v17[1] = payload;
  v9 = MEMORY[0x277CBEAC0];
  dCopy = d;
  payloadCopy = payload;
  v12 = [v9 dictionaryWithObjects:v17 forKeys:v16 count:2];

  v15 = 0;
  v13 = MEMORY[0x24C1CC740](v12, 0, &v15);
  if (v13)
  {
    sessionChannel = [(DBUISyncChannel *)self sessionChannel];
    [sessionChannel sendChannelMessage:v13 withDescription:descriptionCopy];
  }

  else
  {
    sessionChannel = DBLogForCategory(0x15uLL);
    if (os_log_type_enabled(sessionChannel, OS_LOG_TYPE_ERROR))
    {
      [DBUISyncChannel sendPayload:sessionChannel forDisplayID:? description:?];
    }
  }
}

- (void)_startConnection
{
  v5 = *MEMORY[0x277D85DE8];
  sessionChannel = [self sessionChannel];
  OUTLINED_FUNCTION_1();
  _os_log_error_impl(&dword_248146000, a2, OS_LOG_TYPE_ERROR, "Failed to open channel: %@", v4, 0xCu);
}

void __35__DBUISyncChannel__startConnection__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _startConnection];
}

- (void)_stopConnection
{
  v9 = *MEMORY[0x277D85DE8];
  v3 = DBLogForCategory(0x15uLL);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    sessionChannel = [(DBUISyncChannel *)self sessionChannel];
    v7 = 138412290;
    v8 = sessionChannel;
    _os_log_impl(&dword_248146000, v3, OS_LOG_TYPE_DEFAULT, "Stopping channel: %@", &v7, 0xCu);
  }

  sessionChannel2 = [(DBUISyncChannel *)self sessionChannel];
  [sessionChannel2 closeChannel];

  reconnectTimer = [(DBUISyncChannel *)self reconnectTimer];
  [reconnectTimer invalidate];

  [(DBUISyncChannel *)self setReconnectTimer:0];
}

- (void)didSendMessageForChannel:(id)channel
{
  channelCopy = channel;
  v4 = DBLogForCategory(0x15uLL);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    [DBUISyncChannel didSendMessageForChannel:];
  }
}

- (void)channel:(id)channel didReceiveMessage:(id)message
{
  v15 = 0;
  messageCopy = message;
  objc_opt_class();
  v6 = OPACKDecodeData();

  v7 = v6;
  if (v7 && (objc_opt_isKindOfClass() & 1) != 0)
  {
    v8 = v7;
  }

  else
  {
    v8 = 0;
  }

  if (v8)
  {
    v9 = [v8 objectForKey:@"displayUUID"];
    v10 = [v8 objectForKey:@"data"];
    v11 = DBLogForCategory(0x15uLL);
    v12 = v11;
    if (v9 && v10)
    {
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
      {
        [DBUISyncChannel channel:didReceiveMessage:];
      }

      observers = [(DBUISyncChannel *)self observers];
      v12 = [observers objectForKey:v9];

      if (v12)
      {
        [v12 clusterController:self didReceivePayload:v10];
      }

      else
      {
        v14 = DBLogForCategory(0x15uLL);
        if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
        {
          [DBUISyncChannel channel:didReceiveMessage:];
        }
      }
    }

    else if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      [DBUISyncChannel channel:didReceiveMessage:];
    }
  }

  else
  {
    v9 = DBLogForCategory(0x15uLL);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      [DBUISyncChannel channel:v9 didReceiveMessage:?];
    }
  }
}

- (void)didOpenChannel:(id)channel
{
  v10 = *MEMORY[0x277D85DE8];
  channelCopy = channel;
  v5 = DBLogForCategory(0x15uLL);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v9 = channelCopy;
    _os_log_impl(&dword_248146000, v5, OS_LOG_TYPE_DEFAULT, "Did open channel: %@", buf, 0xCu);
  }

  observers = [(DBUISyncChannel *)self observers];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __34__DBUISyncChannel_didOpenChannel___block_invoke;
  v7[3] = &unk_278F04698;
  v7[4] = self;
  [observers enumerateKeysAndObjectsUsingBlock:v7];
}

- (void)didCloseChannel:(id)channel
{
  v10 = *MEMORY[0x277D85DE8];
  channelCopy = channel;
  v5 = DBLogForCategory(0x15uLL);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v9 = channelCopy;
    _os_log_impl(&dword_248146000, v5, OS_LOG_TYPE_DEFAULT, "Did close channel: %@", buf, 0xCu);
  }

  observers = [(DBUISyncChannel *)self observers];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __35__DBUISyncChannel_didCloseChannel___block_invoke;
  v7[3] = &unk_278F04698;
  v7[4] = self;
  [observers enumerateKeysAndObjectsUsingBlock:v7];
}

- (CARSession)session
{
  WeakRetained = objc_loadWeakRetained(&self->_session);

  return WeakRetained;
}

- (void)sendPayload:(int *)a1 forDisplayID:(NSObject *)a2 description:.cold.1(int *a1, NSObject *a2)
{
  v4 = *MEMORY[0x277D85DE8];
  v2 = *a1;
  v3[0] = 67109120;
  v3[1] = v2;
  _os_log_error_impl(&dword_248146000, a2, OS_LOG_TYPE_ERROR, "Unable to package payload: %d", v3, 8u);
}

- (void)didSendMessageForChannel:.cold.1()
{
  v2 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1();
  _os_log_debug_impl(&dword_248146000, v0, OS_LOG_TYPE_DEBUG, "Channel %@ successfully sent message", v1, 0xCu);
}

- (void)channel:didReceiveMessage:.cold.1()
{
  v2 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1();
  _os_log_error_impl(&dword_248146000, v0, OS_LOG_TYPE_ERROR, "Received message without displayID or data: %@", v1, 0xCu);
}

- (void)channel:didReceiveMessage:.cold.2()
{
  v5 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1();
  v3 = 2112;
  v4 = v0;
  _os_log_debug_impl(&dword_248146000, v1, OS_LOG_TYPE_DEBUG, "Channel for %@ received message: %@", v2, 0x16u);
}

- (void)channel:didReceiveMessage:.cold.3()
{
  v2 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1();
  _os_log_debug_impl(&dword_248146000, v0, OS_LOG_TYPE_DEBUG, "No observers registered for %@", v1, 0xCu);
}

- (void)channel:(int *)a1 didReceiveMessage:(NSObject *)a2 .cold.4(int *a1, NSObject *a2)
{
  v4 = *MEMORY[0x277D85DE8];
  v2 = *a1;
  v3[0] = 67109120;
  v3[1] = v2;
  _os_log_error_impl(&dword_248146000, a2, OS_LOG_TYPE_ERROR, "Error parsing message: %d", v3, 8u);
}

@end