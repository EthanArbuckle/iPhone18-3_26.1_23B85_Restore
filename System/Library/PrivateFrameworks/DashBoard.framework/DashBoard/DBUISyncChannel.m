@interface DBUISyncChannel
- (CARSession)session;
- (DBUISyncChannel)initWithSession:(id)a3;
- (void)_startConnection;
- (void)_stopConnection;
- (void)addObserver:(id)a3 forDisplayID:(id)a4;
- (void)channel:(id)a3 didReceiveMessage:(id)a4;
- (void)didCloseChannel:(id)a3;
- (void)didOpenChannel:(id)a3;
- (void)didSendMessageForChannel:(id)a3;
- (void)removeObserver:(id)a3 forDisplayID:(id)a4;
- (void)sendPayload:(id)a3 forDisplayID:(id)a4 description:(id)a5;
@end

@implementation DBUISyncChannel

- (DBUISyncChannel)initWithSession:(id)a3
{
  v4 = a3;
  v15.receiver = self;
  v15.super_class = DBUISyncChannel;
  v5 = [(DBUISyncChannel *)&v15 init];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->_session, v4);
    v7 = objc_alloc_init(MEMORY[0x277CBEB38]);
    observers = v6->_observers;
    v6->_observers = v7;

    v9 = objc_alloc(MEMORY[0x277CF89E8]);
    v10 = *MEMORY[0x277CC15C8];
    v11 = [MEMORY[0x277CCABB0] numberWithInt:12];
    v12 = [v9 initWithSession:v4 channelType:v10 channelID:@"7DED4F02-38A6-4CBA-8731-4B9BA40CB044" withoutReply:1 qualityOfService:v11 streamPriority:&unk_285AA48B0];
    sessionChannel = v6->_sessionChannel;
    v6->_sessionChannel = v12;

    [(CARSessionChannel *)v6->_sessionChannel setChannelDelegate:v6];
  }

  return v6;
}

- (void)addObserver:(id)a3 forDisplayID:(id)a4
{
  v22 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = DBLogForCategory(0x15uLL);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v9 = [(DBUISyncChannel *)self sessionChannel];
    v18 = 138412546;
    v19 = v7;
    v20 = 2112;
    v21 = v9;
    _os_log_impl(&dword_248146000, v8, OS_LOG_TYPE_DEFAULT, "Registering observer for %@: %@", &v18, 0x16u);
  }

  v10 = [(DBUISyncChannel *)self observers];
  v11 = [v10 objectForKey:v7];

  if (!v11)
  {
    v12 = objc_alloc(MEMORY[0x277CF89C0]);
    v11 = [v12 initWithProtocol:&unk_285B50480 callbackQueue:MEMORY[0x277D85CD0]];
    v13 = [(DBUISyncChannel *)self observers];
    [v13 setObject:v11 forKey:v7];
  }

  [v11 registerObserver:v6];
  v14 = [(DBUISyncChannel *)self sessionChannel];
  v15 = [v14 isOpened];

  if (v15)
  {
    v16 = DBLogForCategory(0x15uLL);
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
    {
      v17 = [(DBUISyncChannel *)self sessionChannel];
      v18 = 138412290;
      v19 = v17;
      _os_log_impl(&dword_248146000, v16, OS_LOG_TYPE_DEFAULT, "Channel is already opened: %@", &v18, 0xCu);
    }

    [v6 didOpen:self];
  }

  else
  {
    [(DBUISyncChannel *)self _startConnection];
  }
}

- (void)removeObserver:(id)a3 forDisplayID:(id)a4
{
  v20 = *MEMORY[0x277D85DE8];
  v6 = a4;
  v7 = a3;
  v8 = DBLogForCategory(0x15uLL);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v9 = [(DBUISyncChannel *)self sessionChannel];
    v16 = 138412546;
    v17 = v6;
    v18 = 2112;
    v19 = v9;
    _os_log_impl(&dword_248146000, v8, OS_LOG_TYPE_DEFAULT, "Unregistering observer for %@: %@", &v16, 0x16u);
  }

  v10 = [(DBUISyncChannel *)self observers];
  v11 = [v10 objectForKey:v6];

  [v11 unregisterObserver:v7];
  if (([v11 hasObservers] & 1) == 0)
  {
    v12 = [(DBUISyncChannel *)self observers];
    [v12 removeObjectForKey:v6];
  }

  v13 = [(DBUISyncChannel *)self observers];
  v14 = [v13 allKeys];
  v15 = [v14 count];

  if (!v15)
  {
    [(DBUISyncChannel *)self _stopConnection];
  }
}

- (void)sendPayload:(id)a3 forDisplayID:(id)a4 description:(id)a5
{
  v17[2] = *MEMORY[0x277D85DE8];
  v8 = a5;
  v16[0] = @"displayUUID";
  v16[1] = @"data";
  v17[0] = a4;
  v17[1] = a3;
  v9 = MEMORY[0x277CBEAC0];
  v10 = a4;
  v11 = a3;
  v12 = [v9 dictionaryWithObjects:v17 forKeys:v16 count:2];

  v15 = 0;
  v13 = MEMORY[0x24C1CC740](v12, 0, &v15);
  if (v13)
  {
    v14 = [(DBUISyncChannel *)self sessionChannel];
    [v14 sendChannelMessage:v13 withDescription:v8];
  }

  else
  {
    v14 = DBLogForCategory(0x15uLL);
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      [DBUISyncChannel sendPayload:v14 forDisplayID:? description:?];
    }
  }
}

- (void)_startConnection
{
  v5 = *MEMORY[0x277D85DE8];
  v3 = [a1 sessionChannel];
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
    v4 = [(DBUISyncChannel *)self sessionChannel];
    v7 = 138412290;
    v8 = v4;
    _os_log_impl(&dword_248146000, v3, OS_LOG_TYPE_DEFAULT, "Stopping channel: %@", &v7, 0xCu);
  }

  v5 = [(DBUISyncChannel *)self sessionChannel];
  [v5 closeChannel];

  v6 = [(DBUISyncChannel *)self reconnectTimer];
  [v6 invalidate];

  [(DBUISyncChannel *)self setReconnectTimer:0];
}

- (void)didSendMessageForChannel:(id)a3
{
  v3 = a3;
  v4 = DBLogForCategory(0x15uLL);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    [DBUISyncChannel didSendMessageForChannel:];
  }
}

- (void)channel:(id)a3 didReceiveMessage:(id)a4
{
  v15 = 0;
  v5 = a4;
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

      v13 = [(DBUISyncChannel *)self observers];
      v12 = [v13 objectForKey:v9];

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

- (void)didOpenChannel:(id)a3
{
  v10 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = DBLogForCategory(0x15uLL);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v9 = v4;
    _os_log_impl(&dword_248146000, v5, OS_LOG_TYPE_DEFAULT, "Did open channel: %@", buf, 0xCu);
  }

  v6 = [(DBUISyncChannel *)self observers];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __34__DBUISyncChannel_didOpenChannel___block_invoke;
  v7[3] = &unk_278F04698;
  v7[4] = self;
  [v6 enumerateKeysAndObjectsUsingBlock:v7];
}

- (void)didCloseChannel:(id)a3
{
  v10 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = DBLogForCategory(0x15uLL);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v9 = v4;
    _os_log_impl(&dword_248146000, v5, OS_LOG_TYPE_DEFAULT, "Did close channel: %@", buf, 0xCu);
  }

  v6 = [(DBUISyncChannel *)self observers];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __35__DBUISyncChannel_didCloseChannel___block_invoke;
  v7[3] = &unk_278F04698;
  v7[4] = self;
  [v6 enumerateKeysAndObjectsUsingBlock:v7];
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