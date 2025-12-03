@interface MTRPluginResidentServer
+ (id)sharedInstance;
- (MTRPluginResidentServer)init;
- (id)_clientSessionForSessionID:(id)d;
- (void)_checkForMaxSessionsLimit;
- (void)_deregisterForSignificantTimeChangeNotifications;
- (void)_registerForSignificantTimeChangeNotifications;
- (void)_registerSessionForSessionID:(id)d incomingNewMessage:(id)message;
- (void)_unregisterSessionForSessionID:(id)d;
- (void)messageTransport:(id)transport handleIncomingMessage:(id)message;
- (void)removeResidentClientSession:(id)session;
- (void)start;
- (void)stop;
- (void)timeZoneOrTimeChanged:(id)changed;
@end

@implementation MTRPluginResidentServer

+ (id)sharedInstance
{
  if (sharedInstance_creation != -1)
  {
    +[MTRPluginResidentServer sharedInstance];
  }

  v3 = sharedInstance_sInstance;

  return v3;
}

uint64_t __41__MTRPluginResidentServer_sharedInstance__block_invoke()
{
  sharedInstance_sInstance = objc_alloc_init(MTRPluginResidentServer);

  return MEMORY[0x2821F96F8]();
}

- (MTRPluginResidentServer)init
{
  v9.receiver = self;
  v9.super_class = MTRPluginResidentServer;
  v2 = [(MTRPluginResidentServer *)&v9 init];
  if (v2)
  {
    v3 = +[MTRPluginProtobufOverModernTransport sharedInstance];
    [(MTRPluginResidentServer *)v2 setTransport:v3];

    v4 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v5 = dispatch_queue_create("MTRPluginResidentServerQueue", v4);
    [(MTRPluginResidentServer *)v2 setWorkQueue:v5];

    array = [MEMORY[0x277CBEB18] array];
    [(MTRPluginResidentServer *)v2 setSessions:array];

    [(MTRPluginResidentServer *)v2 setRunning:0];
    v7 = v2;
  }

  return v2;
}

- (void)start
{
  workQueue = [(MTRPluginResidentServer *)self workQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __32__MTRPluginResidentServer_start__block_invoke;
  block[3] = &unk_279893AA0;
  block[4] = self;
  dispatch_async(workQueue, block);
}

uint64_t __32__MTRPluginResidentServer_start__block_invoke(uint64_t a1)
{
  v13 = *MEMORY[0x277D85DE8];
  result = [*(a1 + 32) running];
  if ((result & 1) == 0)
  {
    v3 = matterPluginLog_default;
    if (os_log_type_enabled(matterPluginLog_default, OS_LOG_TYPE_DEFAULT))
    {
      v4 = *(a1 + 32);
      v11 = 138412290;
      v12 = v4;
      _os_log_impl(&dword_25830F000, v3, OS_LOG_TYPE_DEFAULT, "%@ Starting resident server to listen on incoming requests", &v11, 0xCu);
    }

    v5 = [*(a1 + 32) transport];
    v6 = *(a1 + 32);
    v7 = [v6 workQueue];
    [v5 setDelegate:v6 delegateQueue:v7];

    [*(a1 + 32) _registerForSignificantTimeChangeNotifications];
    v8 = matterPluginLog_default;
    if (os_log_type_enabled(matterPluginLog_default, OS_LOG_TYPE_DEFAULT))
    {
      v9 = *(a1 + 32);
      v11 = 138412290;
      v12 = v9;
      _os_log_impl(&dword_25830F000, v8, OS_LOG_TYPE_DEFAULT, "%@ Registering to receive new session and control channel information", &v11, 0xCu);
    }

    result = [*(a1 + 32) setRunning:1];
  }

  v10 = *MEMORY[0x277D85DE8];
  return result;
}

- (void)stop
{
  workQueue = [(MTRPluginResidentServer *)self workQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __31__MTRPluginResidentServer_stop__block_invoke;
  block[3] = &unk_279893AA0;
  block[4] = self;
  dispatch_async(workQueue, block);
}

uint64_t __31__MTRPluginResidentServer_stop__block_invoke(uint64_t a1)
{
  v20 = *MEMORY[0x277D85DE8];
  result = [*(a1 + 32) running];
  if (result)
  {
    v3 = matterPluginLog_default;
    if (os_log_type_enabled(matterPluginLog_default, OS_LOG_TYPE_DEFAULT))
    {
      v4 = *(a1 + 32);
      *buf = 138412290;
      v19 = v4;
      _os_log_impl(&dword_25830F000, v3, OS_LOG_TYPE_DEFAULT, "%@ Stopping resident server from listening for incoming requests", buf, 0xCu);
    }

    [*(a1 + 32) _deregisterForSignificantTimeChangeNotifications];
    v15 = 0u;
    v16 = 0u;
    v13 = 0u;
    v14 = 0u;
    v5 = [*(a1 + 32) sessions];
    v6 = [v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = *v14;
      do
      {
        v9 = 0;
        do
        {
          if (*v14 != v8)
          {
            objc_enumerationMutation(v5);
          }

          [*(*(&v13 + 1) + 8 * v9++) invalidate];
        }

        while (v7 != v9);
        v7 = [v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
      }

      while (v7);
    }

    v10 = [*(a1 + 32) sessions];
    [v10 removeAllObjects];

    v11 = [*(a1 + 32) transport];
    [v11 removeDelegate:*(a1 + 32)];

    result = [*(a1 + 32) setRunning:0];
  }

  v12 = *MEMORY[0x277D85DE8];
  return result;
}

- (id)_clientSessionForSessionID:(id)d
{
  v20 = *MEMORY[0x277D85DE8];
  dCopy = d;
  workQueue = [(MTRPluginResidentServer *)self workQueue];
  dispatch_assert_queue_V2(workQueue);

  if (dCopy)
  {
    v17 = 0u;
    v18 = 0u;
    v15 = 0u;
    v16 = 0u;
    sessions = [(MTRPluginResidentServer *)self sessions];
    v7 = [sessions countByEnumeratingWithState:&v15 objects:v19 count:16];
    if (v7)
    {
      v8 = *v16;
      while (2)
      {
        for (i = 0; i != v7; i = i + 1)
        {
          if (*v16 != v8)
          {
            objc_enumerationMutation(sessions);
          }

          v10 = *(*(&v15 + 1) + 8 * i);
          sessionID = [v10 sessionID];
          v12 = [sessionID isEqual:dCopy];

          if (v12)
          {
            v7 = v10;
            goto LABEL_12;
          }
        }

        v7 = [sessions countByEnumeratingWithState:&v15 objects:v19 count:16];
        if (v7)
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
    v7 = 0;
  }

  v13 = *MEMORY[0x277D85DE8];

  return v7;
}

- (void)_registerSessionForSessionID:(id)d incomingNewMessage:(id)message
{
  v39 = *MEMORY[0x277D85DE8];
  dCopy = d;
  messageCopy = message;
  workQueue = [(MTRPluginResidentServer *)self workQueue];
  dispatch_assert_queue_V2(workQueue);

  if (dCopy && messageCopy && ([messageCopy homeIdentifier], (v9 = objc_claimAutoreleasedReturnValue()) != 0) && (v10 = v9, objc_msgSend(messageCopy, "sourceAddress"), v11 = objc_claimAutoreleasedReturnValue(), v11, v10, v11))
  {
    v12 = [(MTRPluginResidentServer *)self _clientSessionForSessionID:dCopy];

    if (!v12)
    {
      v13 = [MTRPluginResidentClientSession alloc];
      transport = [(MTRPluginResidentServer *)self transport];
      workQueue2 = [(MTRPluginResidentServer *)self workQueue];
      homeIdentifier = [messageCopy homeIdentifier];
      sourceAddress = [messageCopy sourceAddress];
      v18 = [(MTRPluginResidentClientSession *)v13 initWithTransport:transport workQueue:workQueue2 sessionID:dCopy homeID:homeIdentifier peerAddress:sourceAddress];

      v19 = matterPluginLog_default;
      if (v18)
      {
        if (os_log_type_enabled(matterPluginLog_default, OS_LOG_TYPE_DEFAULT))
        {
          v20 = v19;
          homeIdentifier2 = [messageCopy homeIdentifier];
          homeIdentifier3 = [messageCopy homeIdentifier];
          v29 = 138413314;
          selfCopy2 = self;
          v31 = 2112;
          v32 = v18;
          v33 = 2112;
          v34 = dCopy;
          v35 = 2112;
          v36 = homeIdentifier2;
          v37 = 2112;
          v38 = homeIdentifier3;
          _os_log_impl(&dword_25830F000, v20, OS_LOG_TYPE_DEFAULT, "%@ Registered session: %@ for sessionID : %@  controllerID: %@  homeID: %@", &v29, 0x34u);
        }

        sessions = [(MTRPluginResidentServer *)self sessions];
        [sessions addObject:v18];

        [(MTRPluginResidentServer *)self _checkForMaxSessionsLimit];
      }

      else if (os_log_type_enabled(matterPluginLog_default, OS_LOG_TYPE_ERROR))
      {
        v26 = v19;
        homeIdentifier4 = [messageCopy homeIdentifier];
        homeIdentifier5 = [messageCopy homeIdentifier];
        v29 = 138413314;
        selfCopy2 = self;
        v31 = 2112;
        v32 = 0;
        v33 = 2112;
        v34 = dCopy;
        v35 = 2112;
        v36 = homeIdentifier4;
        v37 = 2112;
        v38 = homeIdentifier5;
        _os_log_error_impl(&dword_25830F000, v26, OS_LOG_TYPE_ERROR, "%@ ** Failed to create session: %@ for sessionID : %@  controllerID: %@  homeID: %@", &v29, 0x34u);
      }
    }
  }

  else
  {
    v24 = matterPluginLog_default;
    if (os_log_type_enabled(matterPluginLog_default, OS_LOG_TYPE_ERROR))
    {
      [(MTRPluginResidentServer *)self _registerSessionForSessionID:v24 incomingNewMessage:messageCopy];
    }
  }

  v25 = *MEMORY[0x277D85DE8];
}

- (void)_unregisterSessionForSessionID:(id)d
{
  v17 = *MEMORY[0x277D85DE8];
  dCopy = d;
  workQueue = [(MTRPluginResidentServer *)self workQueue];
  dispatch_assert_queue_V2(workQueue);

  if (dCopy)
  {
    v6 = [(MTRPluginResidentServer *)self _clientSessionForSessionID:dCopy];
    v7 = matterPluginLog_default;
    if (v6)
    {
      if (os_log_type_enabled(matterPluginLog_default, OS_LOG_TYPE_DEFAULT))
      {
        v11 = 138412802;
        selfCopy = self;
        v13 = 2112;
        v14 = v6;
        v15 = 2112;
        v16 = dCopy;
        _os_log_impl(&dword_25830F000, v7, OS_LOG_TYPE_DEFAULT, "%@ Found session to remove: %@ for sessionID : %@", &v11, 0x20u);
      }

      [v6 invalidate];
      sessions = [(MTRPluginResidentServer *)self sessions];
      [sessions removeObject:v6];
    }

    else if (os_log_type_enabled(matterPluginLog_default, OS_LOG_TYPE_ERROR))
    {
      [(MTRPluginResidentServer *)self _unregisterSessionForSessionID:dCopy, v7];
    }
  }

  else
  {
    v9 = matterPluginLog_default;
    if (os_log_type_enabled(matterPluginLog_default, OS_LOG_TYPE_ERROR))
    {
      [(MTRPluginResidentServer *)self _unregisterSessionForSessionID:v9];
    }
  }

  v10 = *MEMORY[0x277D85DE8];
}

- (void)_registerForSignificantTimeChangeNotifications
{
  v11 = *MEMORY[0x277D85DE8];
  workQueue = [(MTRPluginResidentServer *)self workQueue];
  dispatch_assert_queue_V2(workQueue);

  v4 = matterPluginLog_default;
  if (os_log_type_enabled(matterPluginLog_default, OS_LOG_TYPE_INFO))
  {
    v9 = 138412290;
    selfCopy = self;
    _os_log_impl(&dword_25830F000, v4, OS_LOG_TYPE_INFO, "%@ Registering for signification time change notifications", &v9, 0xCu);
  }

  defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
  [defaultCenter addObserver:self selector:sel_timeZoneOrTimeChanged_ name:*MEMORY[0x277CBE780] object:0];

  defaultCenter2 = [MEMORY[0x277CCAB98] defaultCenter];
  [defaultCenter2 addObserver:self selector:sel_timeZoneOrTimeChanged_ name:*MEMORY[0x277CBE778] object:0];

  DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
  CFNotificationCenterAddObserver(DarwinNotifyCenter, self, significantTimeChangedNotification, @"SignificantTimeChangeNotification", 0, CFNotificationSuspensionBehaviorDeliverImmediately);
  v8 = *MEMORY[0x277D85DE8];
}

- (void)_deregisterForSignificantTimeChangeNotifications
{
  v11 = *MEMORY[0x277D85DE8];
  workQueue = [(MTRPluginResidentServer *)self workQueue];
  dispatch_assert_queue_V2(workQueue);

  v4 = matterPluginLog_default;
  if (os_log_type_enabled(matterPluginLog_default, OS_LOG_TYPE_INFO))
  {
    v9 = 138412290;
    selfCopy = self;
    _os_log_impl(&dword_25830F000, v4, OS_LOG_TYPE_INFO, "%@ De-registering for signification time change notifications", &v9, 0xCu);
  }

  defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
  [defaultCenter removeObserver:self name:*MEMORY[0x277CBE780] object:0];

  defaultCenter2 = [MEMORY[0x277CCAB98] defaultCenter];
  [defaultCenter2 removeObserver:self name:*MEMORY[0x277CBE778] object:0];

  DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
  CFNotificationCenterRemoveObserver(DarwinNotifyCenter, self, @"SignificantTimeChangeNotification", 0);
  v8 = *MEMORY[0x277D85DE8];
}

- (void)timeZoneOrTimeChanged:(id)changed
{
  v10 = *MEMORY[0x277D85DE8];
  v4 = matterPluginLog_default;
  if (os_log_type_enabled(matterPluginLog_default, OS_LOG_TYPE_INFO))
  {
    *buf = 138412290;
    selfCopy = self;
    _os_log_impl(&dword_25830F000, v4, OS_LOG_TYPE_INFO, "%@ Received significant time changed notification, resetting all session times", buf, 0xCu);
  }

  workQueue = [(MTRPluginResidentServer *)self workQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __49__MTRPluginResidentServer_timeZoneOrTimeChanged___block_invoke;
  block[3] = &unk_279893AA0;
  block[4] = self;
  dispatch_async(workQueue, block);

  v6 = *MEMORY[0x277D85DE8];
}

void __49__MTRPluginResidentServer_timeZoneOrTimeChanged___block_invoke(uint64_t a1)
{
  v16 = *MEMORY[0x277D85DE8];
  v2 = [MEMORY[0x277CBEAA8] date];
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v3 = [*(a1 + 32) sessions];
  v4 = [v3 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v12;
    do
    {
      v7 = 0;
      do
      {
        if (*v12 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = *(*(&v11 + 1) + 8 * v7);
        v9 = [*(a1 + 32) transport];
        [v8 messageTransport:v9 updateTimeOfActivity:v2];

        ++v7;
      }

      while (v5 != v7);
      v5 = [v3 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v5);
  }

  v10 = *MEMORY[0x277D85DE8];
}

- (void)_checkForMaxSessionsLimit
{
  v36 = *MEMORY[0x277D85DE8];
  workQueue = [(MTRPluginResidentServer *)self workQueue];
  dispatch_assert_queue_V2(workQueue);

  active = MTRPluginMaxActiveClientSessions();
  sessions = [(MTRPluginResidentServer *)self sessions];
  v6 = [sessions count];

  v7 = v6 - active;
  if (v6 > active)
  {
    v8 = matterPluginLog_default;
    if (os_log_type_enabled(matterPluginLog_default, OS_LOG_TYPE_INFO))
    {
      *buf = 138412802;
      selfCopy2 = self;
      v32 = 2048;
      v33 = v6;
      v34 = 2048;
      v35 = active;
      _os_log_impl(&dword_25830F000, v8, OS_LOG_TYPE_INFO, "%@ Total sessions %lu reached above limit of %lu, removing oldest session ", buf, 0x20u);
    }

    sessions2 = [(MTRPluginResidentServer *)self sessions];
    v10 = [MEMORY[0x277CCAC98] sortDescriptorWithKey:@"timeOfLastActivity" ascending:0];
    v29 = v10;
    v11 = [MEMORY[0x277CBEA60] arrayWithObjects:&v29 count:1];
    [sessions2 sortUsingDescriptors:v11];

    v12 = [MEMORY[0x277CCAA78] indexSetWithIndexesInRange:{v6 - 1, v7}];
    v24 = 0u;
    v25 = 0u;
    v26 = 0u;
    v27 = 0u;
    sessions3 = [(MTRPluginResidentServer *)self sessions];
    v23 = v12;
    v14 = [sessions3 objectsAtIndexes:v12];

    v15 = [v14 countByEnumeratingWithState:&v24 objects:v28 count:16];
    if (v15)
    {
      v16 = v15;
      v17 = *v25;
      do
      {
        for (i = 0; i != v16; ++i)
        {
          if (*v25 != v17)
          {
            objc_enumerationMutation(v14);
          }

          v19 = *(*(&v24 + 1) + 8 * i);
          v20 = matterPluginLog_default;
          if (os_log_type_enabled(matterPluginLog_default, OS_LOG_TYPE_INFO))
          {
            *buf = 138412546;
            selfCopy2 = self;
            v32 = 2112;
            v33 = v19;
            _os_log_impl(&dword_25830F000, v20, OS_LOG_TYPE_INFO, "%@ Invalidating session %@", buf, 0x16u);
          }

          [v19 invalidate];
        }

        v16 = [v14 countByEnumeratingWithState:&v24 objects:v28 count:16];
      }

      while (v16);
    }

    sessions4 = [(MTRPluginResidentServer *)self sessions];
    [sessions4 removeObjectsAtIndexes:v23];
  }

  v22 = *MEMORY[0x277D85DE8];
}

- (void)removeResidentClientSession:(id)session
{
  sessionCopy = session;
  workQueue = [(MTRPluginResidentServer *)self workQueue];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __55__MTRPluginResidentServer_removeResidentClientSession___block_invoke;
  v7[3] = &unk_279893AC8;
  v7[4] = self;
  v8 = sessionCopy;
  v6 = sessionCopy;
  dispatch_async(workQueue, v7);
}

void __55__MTRPluginResidentServer_removeResidentClientSession___block_invoke(uint64_t a1)
{
  v14 = *MEMORY[0x277D85DE8];
  v2 = matterPluginLog_default;
  if (os_log_type_enabled(matterPluginLog_default, OS_LOG_TYPE_DEFAULT))
  {
    v4 = *(a1 + 32);
    v3 = *(a1 + 40);
    v5 = v2;
    v6 = [v3 sessionID];
    v10 = 138412546;
    v11 = v4;
    v12 = 2112;
    v13 = v6;
    _os_log_impl(&dword_25830F000, v5, OS_LOG_TYPE_DEFAULT, "%@ Removing client session with identifier: %@", &v10, 0x16u);
  }

  v7 = *(a1 + 32);
  v8 = [*(a1 + 40) sessionID];
  [v7 _unregisterSessionForSessionID:v8];

  v9 = *MEMORY[0x277D85DE8];
}

- (void)messageTransport:(id)transport handleIncomingMessage:(id)message
{
  v16 = *MEMORY[0x277D85DE8];
  messageCopy = message;
  workQueue = [(MTRPluginResidentServer *)self workQueue];
  dispatch_assert_queue_V2(workQueue);

  v7 = matterPluginLog_default;
  if (os_log_type_enabled(matterPluginLog_default, OS_LOG_TYPE_DEFAULT))
  {
    v8 = v7;
    sessionIdentifier = [messageCopy sessionIdentifier];
    v12 = 138412546;
    selfCopy = self;
    v14 = 2112;
    v15 = sessionIdentifier;
    _os_log_impl(&dword_25830F000, v8, OS_LOG_TYPE_DEFAULT, "%@ Received new session with identifier: %@", &v12, 0x16u);
  }

  sessionIdentifier2 = [messageCopy sessionIdentifier];
  [(MTRPluginResidentServer *)self _registerSessionForSessionID:sessionIdentifier2 incomingNewMessage:messageCopy];

  v11 = *MEMORY[0x277D85DE8];
}

- (void)_registerSessionForSessionID:(void *)a3 incomingNewMessage:.cold.1(uint64_t a1, void *a2, void *a3)
{
  v12 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = [a3 sourceAddress];
  v8 = 138412546;
  v9 = a1;
  v10 = 2112;
  v11 = v6;
  _os_log_error_impl(&dword_25830F000, v5, OS_LOG_TYPE_ERROR, "%@ Failed to register session due to invalid session, controller or home ID, message source: %@", &v8, 0x16u);

  v7 = *MEMORY[0x277D85DE8];
}

- (void)_unregisterSessionForSessionID:(os_log_t)log .cold.1(uint64_t a1, uint64_t a2, os_log_t log)
{
  v10 = *MEMORY[0x277D85DE8];
  v4 = 138412802;
  v5 = a1;
  v6 = 2112;
  v7 = 0;
  v8 = 2112;
  v9 = a2;
  _os_log_error_impl(&dword_25830F000, log, OS_LOG_TYPE_ERROR, "%@ *** No session found to remove: %@ for sessionID : %@", &v4, 0x20u);
  v3 = *MEMORY[0x277D85DE8];
}

- (void)_unregisterSessionForSessionID:(uint64_t)a1 .cold.2(uint64_t a1, NSObject *a2)
{
  v5 = *MEMORY[0x277D85DE8];
  v3 = 138412290;
  v4 = a1;
  _os_log_error_impl(&dword_25830F000, a2, OS_LOG_TYPE_ERROR, "%@ Failed to unregister session due to invalid session, controller or home ID ", &v3, 0xCu);
  v2 = *MEMORY[0x277D85DE8];
}

@end