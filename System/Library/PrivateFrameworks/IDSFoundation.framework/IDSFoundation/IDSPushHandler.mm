@interface IDSPushHandler
+ (id)sharedInstance;
+ (id)sharedInstanceWithPortName:(id)name;
- (APSConnection)apsConnection;
- (BOOL)_validateHandler:(id)handler withSelector:(SEL)selector topic:(id)topic command:(id)command;
- (BOOL)isConnected;
- (IDSPushHandler)init;
- (IDSPushHandler)initWithPort:(id)port;
- (NSData)pushToken;
- (__SecIdentity)copyPushIdentity;
- (id)_apsConnectionPushToken;
- (id)_getValidPushHandlersWithSelector:(SEL)selector topic:(id)topic command:(id)command;
- (void)_powerLogEvent:(id)event dictionary:(id)dictionary;
- (void)_powerLogIncomingMessage:(id)message command:(id)command topic:(id)topic;
- (void)_recalculateTopicsCache;
- (void)_updateTopics;
- (void)addListener:(id)listener wakingTopics:(id)topics opportunisticTopics:(id)opportunisticTopics nonWakingTopics:(id)wakingTopics commands:(id)commands queue:(id)queue;
- (void)connection:(id)connection didChangeConnectedStatus:(BOOL)status;
- (void)connection:(id)connection didReceiveIncomingMessage:(id)message;
- (void)connection:(id)connection didReceivePublicToken:(id)token;
- (void)connectionDidReconnect:(id)reconnect;
- (void)dealloc;
- (void)removeListener:(id)listener;
- (void)setCommands:(id)commands forListener:(id)listener;
- (void)setShouldWaitToSetTopics:(BOOL)topics;
- (void)setUltraConstrainedTopics:(id)topics forListener:(id)listener;
- (void)setWakingTopics:(id)topics opportunisticTopics:(id)opportunisticTopics nonWakingTopics:(id)wakingTopics forListener:(id)listener;
- (void)subscribeToChannel:(id)channel forTopic:(id)topic;
- (void)writePushPayloadToDiskIfEnabled:(id)enabled topic:(id)topic;
@end

@implementation IDSPushHandler

- (void)_updateTopics
{
  v21 = *MEMORY[0x1E69E9840];
  v3 = objc_autoreleasePoolPush();
  [(NSRecursiveLock *)self->_recursiveLock lock];
  if (self->_shouldWaitToSetTopics)
  {
    [(NSRecursiveLock *)self->_recursiveLock unlock];
  }

  else
  {
    v4 = OSLogHandleForTransportCategory();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      wakingTopicsCache = self->_wakingTopicsCache;
      opportunisticTopicsCache = self->_opportunisticTopicsCache;
      nonWakingTopicsCache = self->_nonWakingTopicsCache;
      *buf = 138412802;
      v16 = wakingTopicsCache;
      v17 = 2112;
      v18 = opportunisticTopicsCache;
      v19 = 2112;
      v20 = nonWakingTopicsCache;
      _os_log_impl(&dword_1A7AD9000, v4, OS_LOG_TYPE_DEFAULT, "Updating waking topics to: %@ opportunistic topics to: %@ nonWaking topics to: %@", buf, 0x20u);
    }

    if (os_log_shim_legacy_logging_enabled())
    {
      if (_IDSShouldLogTransport())
      {
        v14 = self->_nonWakingTopicsCache;
        v13 = *&self->_wakingTopicsCache;
        _IDSLogTransport(@"IDSPushHandler", @"IDS", @"Updating waking topics to: %@ opportunistic topics to: %@ nonWaking topics to: %@");
        if (_IDSShouldLog())
        {
          v14 = self->_nonWakingTopicsCache;
          v13 = *&self->_wakingTopicsCache;
          _IDSLogV(0, @"IDSFoundation", @"IDSPushHandler", @"Updating waking topics to: %@ opportunistic topics to: %@ nonWaking topics to: %@");
        }
      }
    }

    v8 = [(NSMutableSet *)self->_wakingTopicsCache allObjects:v13];
    allObjects = [(NSMutableSet *)self->_opportunisticTopicsCache allObjects];
    allObjects2 = [(NSMutableSet *)self->_nonWakingTopicsCache allObjects];
    array = [MEMORY[0x1E695DEC8] array];
    [(NSRecursiveLock *)self->_recursiveLock unlock];
    apsConnection = [(IDSPushHandler *)self apsConnection];
    [apsConnection setEnabledTopics:v8 ignoredTopics:array opportunisticTopics:allObjects nonWakingTopics:allObjects2];
  }

  objc_autoreleasePoolPop(v3);
}

- (APSConnection)apsConnection
{
  v20 = *MEMORY[0x1E69E9840];
  if (_os_feature_enabled_impl())
  {
    [(NSRecursiveLock *)self->_recursiveLock lock];
    if (!self->_apsConnection)
    {
      v3 = +[IDSServerBag sharedInstance];
      apsEnvironmentName = [v3 apsEnvironmentName];

      v5 = +[IDSDependencyProvider pushAdapter];
      namedDelegatePort = self->_namedDelegatePort;
      v7 = im_primary_queue();
      v8 = [v5 apsConnectionWithEnvironmentName:apsEnvironmentName namedDelegatePort:namedDelegatePort enablePushDuringSleep:1 queue:v7];
      apsConnection = self->_apsConnection;
      self->_apsConnection = v8;

      [(APSConnection *)self->_apsConnection setDelegate:self];
      v10 = OSLogHandleForIDSCategory();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
      {
        publicToken = [(APSConnection *)self->_apsConnection publicToken];
        *buf = 138412546;
        v17 = publicToken;
        v18 = 2112;
        v19 = apsEnvironmentName;
        _os_log_impl(&dword_1A7AD9000, v10, OS_LOG_TYPE_DEFAULT, "Cached push token: %@   Environment: %@", buf, 0x16u);
      }

      if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
      {
        publicToken2 = [(APSConnection *)self->_apsConnection publicToken];
        v15 = apsEnvironmentName;
        _IDSLogV(0, @"IDSFoundation", @"IDSPushHandler", @"Cached push token: %@   Environment: %@");
      }
    }

    [(NSRecursiveLock *)self->_recursiveLock unlock:publicToken2];
  }

  v12 = self->_apsConnection;

  return v12;
}

+ (id)sharedInstance
{
  if (qword_1ED5DF6C8 != -1)
  {
    sub_1A7E183CC();
  }

  v3 = qword_1ED5DF718;

  return v3;
}

- (NSData)pushToken
{
  v55 = *MEMORY[0x1E69E9840];
  v39 = 0;
  v40 = &v39;
  v41 = 0x3032000000;
  v42 = sub_1A7BD7500;
  v43 = sub_1A7BD7510;
  v44 = 0;
  [(NSRecursiveLock *)self->_recursiveLock lock];
  cachedPushToken = self->_cachedPushToken;
  if (cachedPushToken)
  {
    v4 = 0;
  }

  else
  {
    v5 = objc_autoreleasePoolPush();
    _apsConnectionPushToken = [(IDSPushHandler *)self _apsConnectionPushToken];
    v7 = self->_cachedPushToken;
    self->_cachedPushToken = _apsConnectionPushToken;

    objc_autoreleasePoolPop(v5);
    cachedPushToken = self->_cachedPushToken;
    v4 = cachedPushToken != 0;
  }

  objc_storeStrong(v40 + 5, cachedPushToken);
  [(NSRecursiveLock *)self->_recursiveLock unlock];
  if (!v4)
  {
    goto LABEL_30;
  }

  [(NSRecursiveLock *)self->_recursiveLock lock];
  if ([(NSMapTable *)self->_handlerMap count])
  {
    weakToStrongObjectsMapTable = [MEMORY[0x1E696AD18] weakToStrongObjectsMapTable];
    v37 = 0u;
    v38 = 0u;
    v36 = 0u;
    v35 = 0u;
    v9 = self->_handlerMap;
    v10 = [(NSMapTable *)v9 countByEnumeratingWithState:&v35 objects:v46 count:16];
    if (v10)
    {
      v11 = *v36;
      do
      {
        for (i = 0; i != v10; ++i)
        {
          if (*v36 != v11)
          {
            objc_enumerationMutation(v9);
          }

          v13 = *(*(&v35 + 1) + 8 * i);
          if ([(IDSPushHandler *)self _validateHandler:v13 withSelector:sel_handler_pushTokenChanged_ topic:0 command:0])
          {
            v14 = [(NSMapTable *)self->_handlerMap objectForKey:v13];
            [weakToStrongObjectsMapTable setObject:v14 forKey:v13];
          }
        }

        v10 = [(NSMapTable *)v9 countByEnumeratingWithState:&v35 objects:v46 count:16];
      }

      while (v10);
    }
  }

  else
  {
    v15 = OSLogHandleForIDSCategory();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      v16 = NSStringFromSelector(sel_handler_pushTokenChanged_);
      *buf = 138413058;
      v48 = v16;
      v49 = 2112;
      v50 = 0;
      v51 = 2112;
      v52 = 0;
      v53 = 2112;
      v54 = 0;
      _os_log_impl(&dword_1A7AD9000, v15, OS_LOG_TYPE_DEFAULT, "No incoming push handler for selector: %@    topic: %@   command: %@   context: %@", buf, 0x2Au);
    }

    if (!os_log_shim_legacy_logging_enabled() || !_IDSShouldLog())
    {
      weakToStrongObjectsMapTable = 0;
      goto LABEL_22;
    }

    v9 = NSStringFromSelector(sel_handler_pushTokenChanged_);
    v28 = 0;
    v29 = 0;
    v26 = v9;
    v27 = 0;
    _IDSLogV(0, @"IDSFoundation", @"IDSPushHandler", @"No incoming push handler for selector: %@    topic: %@   command: %@   context: %@");
    weakToStrongObjectsMapTable = 0;
  }

LABEL_22:
  [(NSRecursiveLock *)self->_recursiveLock unlock:v26];
  v33 = 0u;
  v34 = 0u;
  v31 = 0u;
  v32 = 0u;
  v17 = weakToStrongObjectsMapTable;
  v18 = [v17 countByEnumeratingWithState:&v31 objects:v45 count:16];
  if (v18)
  {
    v19 = *v32;
    do
    {
      for (j = 0; j != v18; ++j)
      {
        if (*v32 != v19)
        {
          objc_enumerationMutation(v17);
        }

        v21 = *(*(&v31 + 1) + 8 * j);
        v22 = [(NSMapTable *)self->_handlerMap objectForKey:v21];
        queue = [v22 queue];
        block[0] = MEMORY[0x1E69E9820];
        block[1] = 3221225472;
        block[2] = sub_1A7BD7518;
        block[3] = &unk_1E77E0AF8;
        block[4] = v21;
        block[5] = self;
        block[6] = &v39;
        dispatch_async(queue, block);
      }

      v18 = [v17 countByEnumeratingWithState:&v31 objects:v45 count:16];
    }

    while (v18);
  }

  [v17 count];
LABEL_30:
  v24 = v40[5];
  _Block_object_dispose(&v39, 8);

  return v24;
}

+ (id)sharedInstanceWithPortName:(id)name
{
  nameCopy = name;
  if (qword_1EB2BBCD8 != -1)
  {
    sub_1A7E183E0();
  }

  pthread_mutex_lock(&stru_1EB2BBCE0);
  v4 = [qword_1EB2B85C8 objectForKey:nameCopy];
  if (!v4)
  {
    v5 = [[IDSPushHandler alloc] initWithPort:nameCopy];
    [qword_1EB2B85C8 setObject:v5 forKey:nameCopy];
    v4 = [qword_1EB2B85C8 objectForKey:nameCopy];
  }

  pthread_mutex_unlock(&stru_1EB2BBCE0);

  return v4;
}

- (IDSPushHandler)init
{
  v3 = +[IDSDependencyProvider pushAdapter];
  placeholderMachPort = [v3 placeholderMachPort];
  v5 = [(IDSPushHandler *)self initWithPort:placeholderMachPort];

  return v5;
}

- (IDSPushHandler)initWithPort:(id)port
{
  v24 = *MEMORY[0x1E69E9840];
  portCopy = port;
  v19.receiver = self;
  v19.super_class = IDSPushHandler;
  v5 = [(IDSPushHandler *)&v19 init];
  if (v5)
  {
    v6 = objc_alloc_init(MEMORY[0x1E696AE68]);
    recursiveLock = v5->_recursiveLock;
    v5->_recursiveLock = v6;

    if (_os_feature_enabled_impl())
    {
      v8 = portCopy;
      namedDelegatePort = v5->_namedDelegatePort;
      v5->_namedDelegatePort = v8;
    }

    else
    {
      v10 = +[IDSServerBag sharedInstance];
      namedDelegatePort = [v10 apsEnvironmentName];

      v11 = +[IDSDependencyProvider pushAdapter];
      v12 = im_primary_queue();
      v13 = [v11 apsConnectionWithEnvironmentName:namedDelegatePort namedDelegatePort:portCopy enablePushDuringSleep:1 queue:v12];
      apsConnection = v5->_apsConnection;
      v5->_apsConnection = v13;

      [(APSConnection *)v5->_apsConnection setDelegate:v5];
      v15 = OSLogHandleForIDSCategory();
      if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
      {
        publicToken = [(APSConnection *)v5->_apsConnection publicToken];
        *buf = 138412546;
        v21 = publicToken;
        v22 = 2112;
        v23 = namedDelegatePort;
        _os_log_impl(&dword_1A7AD9000, v15, OS_LOG_TYPE_DEFAULT, "Cached push token: %@   Environment: %@", buf, 0x16u);
      }

      if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
      {
        publicToken2 = [(APSConnection *)v5->_apsConnection publicToken];
        _IDSLogV(0, @"IDSFoundation", @"IDSPushHandler", @"Cached push token: %@   Environment: %@");
      }
    }
  }

  return v5;
}

- (void)dealloc
{
  [(APSConnection *)self->_apsConnection setDelegate:0];
  v3.receiver = self;
  v3.super_class = IDSPushHandler;
  [(IDSPushHandler *)&v3 dealloc];
}

- (void)_powerLogIncomingMessage:(id)message command:(id)command topic:(id)topic
{
  v27 = *MEMORY[0x1E69E9840];
  messageCopy = message;
  commandCopy = command;
  topicCopy = topic;
  if ([commandCopy integerValue] == 255)
  {
    goto LABEL_24;
  }

  dictionary = [MEMORY[0x1E695DF90] dictionary];
  v12 = dictionary;
  if (commandCopy)
  {
    [dictionary setObject:commandCopy forKeyedSubscript:@"CommandID"];
  }

  if (topicCopy)
  {
    [v12 setObject:topicCopy forKeyedSubscript:@"Topic"];
  }

  v13 = objc_opt_class();
  v14 = sub_1A7B0A150(v13, messageCopy, @"i");
  if (v14)
  {
    [v12 setObject:v14 forKeyedSubscript:@"MessageIdentifier"];
  }

  v15 = [messageCopy objectForKey:@"U"];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v16 = MEMORY[0x1E695DEF0];
    v17 = [messageCopy objectForKey:@"U"];
    v18 = [v16 _IDSDataFromBase64String:v17];
    v19 = JWUUIDPushObjectToString();
  }

  else
  {
    v17 = [messageCopy objectForKey:@"U"];
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      v20 = JWUUIDPushObjectToString();
      goto LABEL_14;
    }

    v18 = [messageCopy objectForKey:@"U"];
    v19 = JWUUIDPushObjectToString();
  }

  v20 = v19;

LABEL_14:
  if (v20)
  {
    [v12 setObject:v20 forKeyedSubscript:@"MessageGUID"];
  }

  v21 = objc_opt_class();
  v22 = sub_1A7B0A150(v21, messageCopy, @"cc");
  if (v22)
  {
    [v12 setObject:v22 forKeyedSubscript:@"CommandContext"];
  }

  v23 = OSLogHandleForIDSCategory();
  if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v26 = v12;
    _os_log_impl(&dword_1A7AD9000, v23, OS_LOG_TYPE_DEFAULT, "Logging incoming push power event: %@", buf, 0xCu);
  }

  if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
  {
    v24 = v12;
    _IDSLogV(0, @"IDSFoundation", @"IDSPushHandler", @"Logging incoming push power event: %@");
  }

  [(IDSPushHandler *)self _powerLogEvent:@"IDS IncomingPushReceived" dictionary:v12, v24];

LABEL_24:
}

- (void)_powerLogEvent:(id)event dictionary:(id)dictionary
{
  eventCopy = event;
  dictionaryCopy = dictionary;
  if (qword_1EB2BBD28 != -1)
  {
    sub_1A7E183F4();
  }

  if (off_1EB2BBD20)
  {
    off_1EB2BBD20(2, eventCopy, dictionaryCopy, 0);
  }
}

- (BOOL)isConnected
{
  apsConnection = [(IDSPushHandler *)self apsConnection];
  isConnected = [apsConnection isConnected];

  return isConnected;
}

- (BOOL)_validateHandler:(id)handler withSelector:(SEL)selector topic:(id)topic command:(id)command
{
  topicCopy = topic;
  commandCopy = command;
  handlerMap = self->_handlerMap;
  handlerCopy = handler;
  v13 = [(NSMapTable *)handlerMap objectForKey:handlerCopy];
  v14 = objc_opt_respondsToSelector();

  if (topicCopy)
  {
    wakingTopics = [v13 wakingTopics];
    if ([wakingTopics containsObject:@"*"])
    {
      v16 = 1;
    }

    else
    {
      wakingTopics2 = [v13 wakingTopics];
      if ([wakingTopics2 containsObject:topicCopy])
      {
        v16 = 1;
      }

      else
      {
        opportunisticTopics = [v13 opportunisticTopics];
        if ([opportunisticTopics containsObject:@"*"])
        {
          v16 = 1;
        }

        else
        {
          opportunisticTopics2 = [v13 opportunisticTopics];
          if ([opportunisticTopics2 containsObject:topicCopy])
          {
            v16 = 1;
          }

          else
          {
            nonWakingTopics = [v13 nonWakingTopics];
            if ([nonWakingTopics containsObject:@"*"])
            {
              v16 = 1;
            }

            else
            {
              nonWakingTopics2 = [v13 nonWakingTopics];
              v16 = [nonWakingTopics2 containsObject:topicCopy];
            }
          }
        }
      }
    }

    if (commandCopy)
    {
      goto LABEL_20;
    }
  }

  else
  {
    v16 = 1;
    if (commandCopy)
    {
LABEL_20:
      commands = [v13 commands];
      v17 = [commands containsObject:commandCopy];

      goto LABEL_21;
    }
  }

  v17 = 1;
LABEL_21:

  return v14 & v16 & v17 & 1;
}

- (id)_getValidPushHandlersWithSelector:(SEL)selector topic:(id)topic command:(id)command
{
  v33 = *MEMORY[0x1E69E9840];
  topicCopy = topic;
  commandCopy = command;
  [(NSRecursiveLock *)self->_recursiveLock lock];
  if ([(NSMapTable *)self->_handlerMap count])
  {
    weakToStrongObjectsMapTable = [MEMORY[0x1E696AD18] weakToStrongObjectsMapTable];
    v24 = 0u;
    v25 = 0u;
    v22 = 0u;
    v23 = 0u;
    v9 = self->_handlerMap;
    v10 = [(NSMapTable *)v9 countByEnumeratingWithState:&v22 objects:v26 count:16];
    if (v10)
    {
      v11 = *v23;
      do
      {
        for (i = 0; i != v10; ++i)
        {
          if (*v23 != v11)
          {
            objc_enumerationMutation(v9);
          }

          v13 = *(*(&v22 + 1) + 8 * i);
          if ([(IDSPushHandler *)self _validateHandler:v13 withSelector:sel_selector topic:topicCopy command:commandCopy])
          {
            v14 = [(NSMapTable *)self->_handlerMap objectForKey:v13];
            [weakToStrongObjectsMapTable setObject:v14 forKey:v13];
          }
        }

        v10 = [(NSMapTable *)v9 countByEnumeratingWithState:&v22 objects:v26 count:16];
      }

      while (v10);
    }

    goto LABEL_11;
  }

  v15 = OSLogHandleForIDSCategory();
  if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
  {
    v16 = NSStringFromSelector(sel_selector);
    *buf = 138412802;
    v28 = v16;
    v29 = 2112;
    v30 = topicCopy;
    v31 = 2112;
    v32 = commandCopy;
    _os_log_impl(&dword_1A7AD9000, v15, OS_LOG_TYPE_DEFAULT, "No incoming push handler for selector: %@    topic: %@   command: %@", buf, 0x20u);
  }

  if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
  {
    v9 = NSStringFromSelector(sel_selector);
    v19 = topicCopy;
    v20 = commandCopy;
    v18 = v9;
    _IDSLogV(0, @"IDSFoundation", @"IDSPushHandler", @"No incoming push handler for selector: %@    topic: %@   command: %@");
    weakToStrongObjectsMapTable = 0;
LABEL_11:

    goto LABEL_18;
  }

  weakToStrongObjectsMapTable = 0;
LABEL_18:
  [(NSRecursiveLock *)self->_recursiveLock unlock:v18];

  return weakToStrongObjectsMapTable;
}

- (void)_recalculateTopicsCache
{
  v27 = *MEMORY[0x1E69E9840];
  [(NSRecursiveLock *)self->_recursiveLock lock];
  v3 = self->_wakingTopicsCache;
  v4 = objc_alloc_init(MEMORY[0x1E695DFA8]);
  wakingTopicsCache = self->_wakingTopicsCache;
  self->_wakingTopicsCache = v4;

  v21 = self->_opportunisticTopicsCache;
  v6 = objc_alloc_init(MEMORY[0x1E695DFA8]);
  opportunisticTopicsCache = self->_opportunisticTopicsCache;
  self->_opportunisticTopicsCache = v6;

  v20 = self->_nonWakingTopicsCache;
  v8 = objc_alloc_init(MEMORY[0x1E695DFA8]);
  nonWakingTopicsCache = self->_nonWakingTopicsCache;
  self->_nonWakingTopicsCache = v8;

  v24 = 0u;
  v25 = 0u;
  v22 = 0u;
  v23 = 0u;
  v10 = self->_handlerMap;
  v11 = [(NSMapTable *)v10 countByEnumeratingWithState:&v22 objects:v26 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = *v23;
    do
    {
      for (i = 0; i != v12; ++i)
      {
        if (*v23 != v13)
        {
          objc_enumerationMutation(v10);
        }

        v15 = [(NSMapTable *)self->_handlerMap objectForKey:*(*(&v22 + 1) + 8 * i), v20];
        wakingTopics = [v15 wakingTopics];
        [(NSMutableSet *)self->_wakingTopicsCache unionSet:wakingTopics];
        opportunisticTopics = [v15 opportunisticTopics];
        [(NSMutableSet *)self->_opportunisticTopicsCache unionSet:opportunisticTopics];
        nonWakingTopics = [v15 nonWakingTopics];
        [(NSMutableSet *)self->_nonWakingTopicsCache unionSet:nonWakingTopics];
      }

      v12 = [(NSMapTable *)v10 countByEnumeratingWithState:&v22 objects:v26 count:16];
    }

    while (v12);
  }

  v19 = v20;
  if (![(NSMutableSet *)self->_wakingTopicsCache isEqualToSet:v3]|| ![(NSMutableSet *)self->_opportunisticTopicsCache isEqualToSet:v21]|| ([(NSMutableSet *)self->_nonWakingTopicsCache isEqualToSet:v20]& 1) == 0)
  {
    [(IDSPushHandler *)self _updateTopics];
  }

  [(NSRecursiveLock *)self->_recursiveLock unlock];
}

- (void)addListener:(id)listener wakingTopics:(id)topics opportunisticTopics:(id)opportunisticTopics nonWakingTopics:(id)wakingTopics commands:(id)commands queue:(id)queue
{
  v82 = *MEMORY[0x1E69E9840];
  listenerCopy = listener;
  topicsCopy = topics;
  opportunisticTopicsCopy = opportunisticTopics;
  wakingTopicsCopy = wakingTopics;
  commandsCopy = commands;
  queueCopy = queue;
  v17 = queueCopy;
  if (!listenerCopy || !queueCopy)
  {
    goto LABEL_42;
  }

  [(NSRecursiveLock *)self->_recursiveLock lock];
  v58 = [(NSMapTable *)self->_handlerMap objectForKey:listenerCopy];
  v18 = OSLogHandleForIDSCategory();
  if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
  {
    wakingTopics = [v58 wakingTopics];
    opportunisticTopics = [v58 opportunisticTopics];
    nonWakingTopics = [v58 nonWakingTopics];
    commands = [v58 commands];
    *buf = 138414338;
    v65 = listenerCopy;
    v66 = 2112;
    v67 = wakingTopics;
    v68 = 2112;
    v69 = topicsCopy;
    v70 = 2112;
    v71 = opportunisticTopics;
    v72 = 2112;
    v73 = opportunisticTopicsCopy;
    v74 = 2112;
    v75 = nonWakingTopics;
    v76 = 2112;
    v77 = wakingTopicsCopy;
    v78 = 2112;
    v79 = commands;
    v80 = 2112;
    v81 = commandsCopy;
    _os_log_impl(&dword_1A7AD9000, v18, OS_LOG_TYPE_DEFAULT, "Updating push topics for listener %@   | waking topics were %@ becoming %@ opportunistic topics were %@ becoming %@ nonwaking topics were %@ becoming %@ commands were %@ becoming %@", buf, 0x5Cu);
  }

  if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
  {
    wakingTopics2 = [v58 wakingTopics];
    opportunisticTopics2 = [v58 opportunisticTopics];
    nonWakingTopics2 = [v58 nonWakingTopics];
    commands2 = [v58 commands];
    v53 = commandsCopy;
    v50 = nonWakingTopics2;
    v51 = wakingTopicsCopy;
    v48 = opportunisticTopics2;
    v49 = opportunisticTopicsCopy;
    v46 = wakingTopics2;
    v47 = topicsCopy;
    v45 = listenerCopy;
    _IDSLogV(0, @"IDSFoundation", @"IDSPushHandler", @"Updating push topics for listener %@   | waking topics were %@ becoming %@ opportunistic topics were %@ becoming %@ nonwaking topics were %@ becoming %@ commands were %@ becoming %@");
  }

  v26 = v58;
  if (self->_handlerMap)
  {
    if (opportunisticTopicsCopy)
    {
LABEL_10:
      v54 = opportunisticTopicsCopy;
      goto LABEL_13;
    }
  }

  else
  {
    weakToStrongObjectsMapTable = [MEMORY[0x1E696AD18] weakToStrongObjectsMapTable];
    handlerMap = self->_handlerMap;
    self->_handlerMap = weakToStrongObjectsMapTable;

    v26 = v58;
    if (opportunisticTopicsCopy)
    {
      goto LABEL_10;
    }
  }

  v54 = [MEMORY[0x1E695DFD8] set];
  v26 = v58;
LABEL_13:
  v29 = wakingTopicsCopy;
  if (!topicsCopy)
  {
    v55 = [MEMORY[0x1E695DFD8] set];
    v26 = v58;
    v29 = wakingTopicsCopy;
    if (wakingTopicsCopy)
    {
      goto LABEL_15;
    }

LABEL_17:
    v30 = [MEMORY[0x1E695DFD8] set];
    v26 = v58;
    goto LABEL_18;
  }

  v55 = topicsCopy;
  if (!wakingTopicsCopy)
  {
    goto LABEL_17;
  }

LABEL_15:
  v30 = v29;
LABEL_18:
  v31 = [[IDSPushHandlerContext alloc] initWithQueue:v17 wakingTopics:v55 opportunisticTopics:opportunisticTopicsCopy nonWakingTopics:v30 commands:commandsCopy];
  [(NSMapTable *)self->_handlerMap setObject:v31 forKey:listenerCopy];
  if (v26)
  {
    [(IDSPushHandler *)self _recalculateTopicsCache];
  }

  else if (!self->_wakingTopicsCache || !self->_opportunisticTopicsCache || !self->_nonWakingTopicsCache || ![v55 isSubsetOfSet:?] || !objc_msgSend(v54, "isSubsetOfSet:", self->_opportunisticTopicsCache) || (objc_msgSend(v30, "isSubsetOfSet:", self->_nonWakingTopicsCache) & 1) == 0)
  {
    opportunisticTopicsCache = self->_opportunisticTopicsCache;
    if (!opportunisticTopicsCache)
    {
      v33 = objc_alloc_init(MEMORY[0x1E695DFA8]);
      v34 = self->_opportunisticTopicsCache;
      self->_opportunisticTopicsCache = v33;

      opportunisticTopicsCache = self->_opportunisticTopicsCache;
    }

    [(NSMutableSet *)opportunisticTopicsCache unionSet:v54, v45, v46, v47, v48, v49, v50, v51, commands2, v53];
    wakingTopicsCache = self->_wakingTopicsCache;
    if (!wakingTopicsCache)
    {
      v36 = objc_alloc_init(MEMORY[0x1E695DFA8]);
      v37 = self->_wakingTopicsCache;
      self->_wakingTopicsCache = v36;

      wakingTopicsCache = self->_wakingTopicsCache;
    }

    [(NSMutableSet *)wakingTopicsCache unionSet:v55];
    nonWakingTopicsCache = self->_nonWakingTopicsCache;
    if (!nonWakingTopicsCache)
    {
      v39 = objc_alloc_init(MEMORY[0x1E695DFA8]);
      v40 = self->_nonWakingTopicsCache;
      self->_nonWakingTopicsCache = v39;

      nonWakingTopicsCache = self->_nonWakingTopicsCache;
    }

    [(NSMutableSet *)nonWakingTopicsCache unionSet:v30];
    [(IDSPushHandler *)self _updateTopics];
  }

  v41 = [(NSData *)self->_cachedPushToken copy:v45];
  [(NSRecursiveLock *)self->_recursiveLock unlock];
  if (v41)
  {
    v42 = OSLogHandleForIDSCategory();
    if (os_log_type_enabled(v42, OS_LOG_TYPE_DEBUG))
    {
      *buf = 0;
      _os_log_impl(&dword_1A7AD9000, v42, OS_LOG_TYPE_DEBUG, "Alerting delegate with our cached token", buf, 2u);
    }

    if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
    {
      _IDSLogV(2, @"IDSFoundation", @"IDSPushHandler", @"Alerting delegate with our cached token");
    }

    if ([(IDSPushHandler *)self _validateHandler:listenerCopy withSelector:sel_handler_pushTokenChanged_ topic:0 command:0])
    {
      v43 = [(NSMapTable *)self->_handlerMap objectForKey:listenerCopy];
      queue = [v43 queue];
      block[0] = MEMORY[0x1E69E9820];
      block[1] = 3221225472;
      block[2] = sub_1A7BD6CD4;
      block[3] = &unk_1E77E0E18;
      v61 = listenerCopy;
      selfCopy = self;
      v63 = v41;
      dispatch_async(queue, block);
    }
  }

LABEL_42:
}

- (void)removeListener:(id)listener
{
  if (listener)
  {
    recursiveLock = self->_recursiveLock;
    listenerCopy = listener;
    [(NSRecursiveLock *)recursiveLock lock];
    [(NSMapTable *)self->_handlerMap removeObjectForKey:listenerCopy];

    if (![(NSMapTable *)self->_handlerMap count])
    {
      handlerMap = self->_handlerMap;
      self->_handlerMap = 0;
    }

    [(IDSPushHandler *)self _recalculateTopicsCache];
    v7 = self->_recursiveLock;

    [(NSRecursiveLock *)v7 unlock];
  }
}

- (void)setWakingTopics:(id)topics opportunisticTopics:(id)opportunisticTopics nonWakingTopics:(id)wakingTopics forListener:(id)listener
{
  topicsCopy = topics;
  opportunisticTopicsCopy = opportunisticTopics;
  wakingTopicsCopy = wakingTopics;
  listenerCopy = listener;
  if (!listenerCopy)
  {
    goto LABEL_20;
  }

  if (!opportunisticTopicsCopy)
  {
    opportunisticTopicsCopy = [MEMORY[0x1E695DFD8] set];
  }

  if (!topicsCopy)
  {
    topicsCopy = [MEMORY[0x1E695DFD8] set];
    if (wakingTopicsCopy)
    {
      goto LABEL_6;
    }

LABEL_17:
    wakingTopicsCopy = [MEMORY[0x1E695DFD8] set];
    goto LABEL_6;
  }

  if (!wakingTopicsCopy)
  {
    goto LABEL_17;
  }

LABEL_6:
  [(NSRecursiveLock *)self->_recursiveLock lock];
  v13 = [(NSMapTable *)self->_handlerMap objectForKey:listenerCopy];
  v14 = v13;
  if (v13)
  {
    wakingTopics = [v13 wakingTopics];
    opportunisticTopics = [v14 opportunisticTopics];
    nonWakingTopics = [v14 nonWakingTopics];
    if (![wakingTopics isEqualToSet:topicsCopy] || !objc_msgSend(opportunisticTopics, "isEqualToSet:", opportunisticTopicsCopy) || (objc_msgSend(nonWakingTopics, "isEqualToSet:", wakingTopicsCopy) & 1) == 0)
    {
      [v14 setWakingTopics:topicsCopy];
      [v14 setOpportunisticTopics:opportunisticTopicsCopy];
      [v14 setNonWakingTopics:wakingTopicsCopy];
      if ([wakingTopics isSubsetOfSet:topicsCopy] && objc_msgSend(opportunisticTopics, "isSubsetOfSet:", opportunisticTopicsCopy) && objc_msgSend(nonWakingTopics, "isSubsetOfSet:", wakingTopicsCopy))
      {
        [(NSMutableSet *)self->_opportunisticTopicsCache unionSet:opportunisticTopicsCopy];
        [(NSMutableSet *)self->_wakingTopicsCache unionSet:topicsCopy];
        [(NSMutableSet *)self->_nonWakingTopicsCache unionSet:wakingTopicsCopy];
        [(IDSPushHandler *)self _updateTopics];
      }

      else
      {
        [(IDSPushHandler *)self _recalculateTopicsCache];
      }
    }

    [(NSRecursiveLock *)self->_recursiveLock unlock];
  }

  else
  {
    [(NSRecursiveLock *)self->_recursiveLock unlock];
  }

LABEL_20:
}

- (void)setUltraConstrainedTopics:(id)topics forListener:(id)listener
{
  topicsCopy = topics;
  listenerCopy = listener;
  if (listenerCopy)
  {
    v7 = topicsCopy;
    if (!topicsCopy)
    {
      v7 = [MEMORY[0x1E695DFD8] set];
    }

    topicsCopy = v7;
    [(NSRecursiveLock *)self->_recursiveLock lock];
    v8 = [(NSMapTable *)self->_handlerMap objectForKey:listenerCopy];
    if (v8)
    {
      apsConnection = [(IDSPushHandler *)self apsConnection];
      allObjects = [topicsCopy allObjects];
      [apsConnection setUltraConstrainedTopics:allObjects];
    }

    [(NSRecursiveLock *)self->_recursiveLock unlock];
  }
}

- (void)setCommands:(id)commands forListener:(id)listener
{
  v25 = *MEMORY[0x1E69E9840];
  commandsCopy = commands;
  listenerCopy = listener;
  if (listenerCopy)
  {
    if (!commandsCopy)
    {
      commandsCopy = [MEMORY[0x1E695DFD8] set];
    }

    [(NSRecursiveLock *)self->_recursiveLock lock];
    v8 = [(NSMapTable *)self->_handlerMap objectForKey:listenerCopy];
    v9 = v8;
    if (!v8)
    {
      [(NSRecursiveLock *)self->_recursiveLock unlock];
LABEL_17:

      goto LABEL_18;
    }

    commands = [v8 commands];
    v11 = commands;
    if (commands && commandsCopy)
    {
      commands2 = [v9 commands];
      v13 = [commands2 isEqual:commandsCopy];

      if (v13)
      {
LABEL_16:
        [v9 setCommands:{commandsCopy, v16, commands4, v18}];
        [(NSRecursiveLock *)self->_recursiveLock unlock];
        goto LABEL_17;
      }
    }

    else
    {
    }

    v14 = OSLogHandleForIDSCategory();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
    {
      commands3 = [v9 commands];
      *buf = 138412802;
      v20 = listenerCopy;
      v21 = 2112;
      v22 = commands3;
      v23 = 2112;
      v24 = commandsCopy;
      _os_log_impl(&dword_1A7AD9000, v14, OS_LOG_TYPE_DEBUG, "Updating push commands for listener %@ from %@ to %@", buf, 0x20u);
    }

    if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
    {
      commands4 = [v9 commands];
      v18 = commandsCopy;
      v16 = listenerCopy;
      _IDSLogV(1, @"IDSFoundation", @"IDSPushHandler", @"Updating push commands for listener %@ from %@ to %@");
    }

    goto LABEL_16;
  }

LABEL_18:
}

- (void)setShouldWaitToSetTopics:(BOOL)topics
{
  topicsCopy = topics;
  [(NSRecursiveLock *)self->_recursiveLock lock];
  shouldWaitToSetTopics = self->_shouldWaitToSetTopics;
  self->_shouldWaitToSetTopics = topicsCopy;
  if (shouldWaitToSetTopics != topicsCopy && shouldWaitToSetTopics != 0)
  {
    [(IDSPushHandler *)self _updateTopics];
  }

  recursiveLock = self->_recursiveLock;

  [(NSRecursiveLock *)recursiveLock unlock];
}

- (id)_apsConnectionPushToken
{
  apsConnection = [(IDSPushHandler *)self apsConnection];
  publicToken = [apsConnection publicToken];

  return publicToken;
}

- (__SecIdentity)copyPushIdentity
{
  v2 = CUTWeakLinkClass();

  return [v2 copyIdentity];
}

- (void)subscribeToChannel:(id)channel forTopic:(id)topic
{
  topicCopy = topic;
  v7 = topicCopy;
  if (channel && topicCopy)
  {
    channelCopy = channel;
    v9 = [objc_alloc(CUTWeakLinkClass()) initWithChannelID:channelCopy];

    apsConnection = [(IDSPushHandler *)self apsConnection];
    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 3221225472;
    v12[2] = sub_1A7BD7838;
    v12[3] = &unk_1E77E1558;
    v13 = v9;
    selfCopy = self;
    v15 = v7;
    v11 = v9;
    [apsConnection getRegisteredChannelsForTopic:v15 withCompletion:v12];
  }
}

- (void)connection:(id)connection didReceivePublicToken:(id)token
{
  v61 = *MEMORY[0x1E69E9840];
  connectionCopy = connection;
  tokenCopy = token;
  [(NSRecursiveLock *)self->_recursiveLock lock];
  p_cachedPushToken = &self->_cachedPushToken;
  cachedPushToken = self->_cachedPushToken;
  if (cachedPushToken == tokenCopy)
  {
    v38 = 0;
    v9 = tokenCopy;
  }

  else
  {
    *p_cachedPushToken = 0;

    v9 = tokenCopy;
    if ([(NSData *)tokenCopy length])
    {
      objc_storeStrong(&self->_cachedPushToken, token);
      v38 = *p_cachedPushToken;
    }

    else
    {
      v38 = 0;
    }

    v10 = OSLogHandleForIDSCategory();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      v11 = self->_cachedPushToken;
      *buf = 138412546;
      selfCopy = self;
      v55 = 2112;
      v56 = v11;
      _os_log_impl(&dword_1A7AD9000, v10, OS_LOG_TYPE_DEFAULT, "%@ Received push token: %@", buf, 0x16u);
    }

    if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
    {
      selfCopy2 = self;
      v32 = self->_cachedPushToken;
      _IDSLogV(0, @"IDSFoundation", @"IDSPushHandler", @"%@ Received push token: %@");
    }
  }

  v36 = v9;
  [(NSRecursiveLock *)self->_recursiveLock unlock:selfCopy2];
  v12 = v38;
  if (v38)
  {
    v13 = cachedPushToken == v9;
  }

  else
  {
    v13 = 1;
  }

  if (!v13)
  {
    v40 = [v38 copy];
    [(NSRecursiveLock *)self->_recursiveLock lock];
    if ([(NSMapTable *)self->_handlerMap count])
    {
      weakToStrongObjectsMapTable = [MEMORY[0x1E696AD18] weakToStrongObjectsMapTable];
      v49 = 0u;
      v50 = 0u;
      v48 = 0u;
      v47 = 0u;
      v15 = self->_handlerMap;
      v16 = [(NSMapTable *)v15 countByEnumeratingWithState:&v47 objects:v52 count:16];
      if (v16)
      {
        v17 = *v48;
        do
        {
          for (i = 0; i != v16; ++i)
          {
            if (*v48 != v17)
            {
              objc_enumerationMutation(v15);
            }

            v19 = *(*(&v47 + 1) + 8 * i);
            if ([(IDSPushHandler *)self _validateHandler:v19 withSelector:sel_handler_pushTokenChanged_ topic:0 command:0])
            {
              v20 = [(NSMapTable *)self->_handlerMap objectForKey:v19];
              [weakToStrongObjectsMapTable setObject:v20 forKey:v19];
            }
          }

          v16 = [(NSMapTable *)v15 countByEnumeratingWithState:&v47 objects:v52 count:16];
        }

        while (v16);
      }
    }

    else
    {
      v21 = OSLogHandleForIDSCategory();
      if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
      {
        v22 = NSStringFromSelector(sel_handler_pushTokenChanged_);
        *buf = 138413058;
        selfCopy = v22;
        v55 = 2112;
        v56 = 0;
        v57 = 2112;
        v58 = 0;
        v59 = 2112;
        v60 = 0;
        _os_log_impl(&dword_1A7AD9000, v21, OS_LOG_TYPE_DEFAULT, "No incoming push handler for selector: %@    topic: %@   command: %@   context: %@", buf, 0x2Au);
      }

      if (!os_log_shim_legacy_logging_enabled() || !_IDSShouldLog())
      {
        weakToStrongObjectsMapTable = 0;
        goto LABEL_32;
      }

      v15 = NSStringFromSelector(sel_handler_pushTokenChanged_);
      v34 = 0;
      v35 = 0;
      v31 = v15;
      v33 = 0;
      _IDSLogV(0, @"IDSFoundation", @"IDSPushHandler", @"No incoming push handler for selector: %@    topic: %@   command: %@   context: %@");
      weakToStrongObjectsMapTable = 0;
    }

LABEL_32:
    [(NSRecursiveLock *)self->_recursiveLock unlock:v31];
    v45 = 0u;
    v46 = 0u;
    v43 = 0u;
    v44 = 0u;
    obj = weakToStrongObjectsMapTable;
    v23 = [obj countByEnumeratingWithState:&v43 objects:v51 count:16];
    if (v23)
    {
      v24 = *v44;
      v25 = MEMORY[0x1E69E9820];
      do
      {
        for (j = 0; j != v23; ++j)
        {
          if (*v44 != v24)
          {
            objc_enumerationMutation(obj);
          }

          v27 = *(*(&v43 + 1) + 8 * j);
          v28 = [(NSMapTable *)self->_handlerMap objectForKey:v27];
          queue = [v28 queue];
          block[0] = v25;
          block[1] = 3221225472;
          block[2] = sub_1A7BD7DFC;
          block[3] = &unk_1E77E0E18;
          block[4] = v27;
          block[5] = self;
          v42 = v40;
          dispatch_async(queue, block);
        }

        v23 = [obj countByEnumeratingWithState:&v43 objects:v51 count:16];
      }

      while (v23);
    }

    [obj count];
    v12 = v38;
  }
}

- (void)writePushPayloadToDiskIfEnabled:(id)enabled topic:(id)topic
{
  v38 = *MEMORY[0x1E69E9840];
  enabledCopy = enabled;
  topicCopy = topic;
  if (CUTIsInternalInstall() && [MEMORY[0x1E69A6180] isWritePushPayloadsToDiskEnabled])
  {
    writePushPayloadsToDiskPath = [MEMORY[0x1E69A6180] writePushPayloadsToDiskPath];

    if (writePushPayloadsToDiskPath)
    {
      writePushPayloadsToDiskPath2 = [MEMORY[0x1E69A6180] writePushPayloadsToDiskPath];
    }

    else
    {
      writePushPayloadsToDiskPath2 = @"/var/mobile/Library/IdentityServices/";
    }

    v8 = objc_opt_class();
    v9 = sub_1A7B0A150(v8, enabledCopy, @"c");
    v10 = MEMORY[0x1E696AEC0];
    uUID = [MEMORY[0x1E696AFB0] UUID];
    uUIDString = [uUID UUIDString];
    v13 = [v10 stringWithFormat:@"%@-push-%@.data", v9, uUIDString];

    v14 = MEMORY[0x1E695DFF8];
    v15 = [(__CFString *)writePushPayloadsToDiskPath2 stringByAppendingPathComponent:v13];
    v16 = [v14 fileURLWithPath:v15];

    v17 = OSLogHandleForIDSCategory();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
    {
      absoluteString = [v16 absoluteString];
      *buf = 138412290;
      v37 = absoluteString;
      _os_log_impl(&dword_1A7AD9000, v17, OS_LOG_TYPE_DEFAULT, "Writing payload to disk: {%@}", buf, 0xCu);
    }

    if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
    {
      absoluteString2 = [v16 absoluteString];
      _IDSLogV(0, @"IDSFoundation", @"IDSPushHandler", @"Writing payload to disk: {%@}");
    }

    v34[0] = @"t";
    v34[1] = @"p";
    v35[0] = topicCopy;
    v35[1] = enabledCopy;
    v19 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v35 forKeys:v34 count:{2, absoluteString2}];
    v33 = 0;
    v20 = [MEMORY[0x1E696AE40] dataWithPropertyList:v19 format:100 options:0 error:&v33];
    v21 = v33;
    if (v21)
    {
      v22 = v21;
      v23 = OSLogHandleForIDSCategory();
      if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v37 = v22;
        _os_log_impl(&dword_1A7AD9000, v23, OS_LOG_TYPE_DEFAULT, "Error while serializing payload %@", buf, 0xCu);
      }

      if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
      {
        _IDSLogV(0, @"IDSFoundation", @"IDSPushHandler", @"Error while serializing payload %@");
      }
    }

    else
    {
      defaultManager = [MEMORY[0x1E696AC08] defaultManager];
      uRLByDeletingLastPathComponent = [v16 URLByDeletingLastPathComponent];
      v32 = 0;
      [defaultManager createDirectoryAtURL:uRLByDeletingLastPathComponent withIntermediateDirectories:1 attributes:0 error:&v32];
      v26 = v32;

      v31 = v26;
      LODWORD(uRLByDeletingLastPathComponent) = [v20 writeToURL:v16 options:1 error:&v31];
      v22 = v31;

      if (uRLByDeletingLastPathComponent)
      {
        v27 = OSLogHandleForIDSCategory();
        if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&dword_1A7AD9000, v27, OS_LOG_TYPE_DEFAULT, "Write to disk: Successful", buf, 2u);
        }

        if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
        {
          _IDSLogV(0, @"IDSFoundation", @"IDSPushHandler", @"Write to disk: Successful");
        }
      }

      else
      {
        v28 = OSLogHandleForIDSCategory();
        if (os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138412290;
          v37 = v22;
          _os_log_impl(&dword_1A7AD9000, v28, OS_LOG_TYPE_DEFAULT, "Write to disk: Unsuccessful with error: %@", buf, 0xCu);
        }

        if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
        {
          _IDSLogV(0, @"IDSFoundation", @"IDSPushHandler", @"Write to disk: Unsuccessful with error: %@");
        }
      }
    }
  }
}

- (void)connection:(id)connection didReceiveIncomingMessage:(id)message
{
  messageCopy = message;
  v7 = +[IDSBlastDoorConnectionHelper getBlastDoorSharedConnection];
  topic = [messageCopy topic];
  userInfo = [messageCopy userInfo];
  if (connection)
  {
    [(IDSPushHandler *)self writePushPayloadToDiskIfEnabled:userInfo topic:topic];
  }

  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = sub_1A7BD8660;
  v13[3] = &unk_1E77E15F8;
  v13[4] = self;
  v14 = topic;
  v15 = messageCopy;
  v16 = userInfo;
  v10 = userInfo;
  v11 = messageCopy;
  v12 = topic;
  [v7 diffuseAPSUserPayload:v10 topic:v12 withCompletionBlock:v13];
}

- (void)connectionDidReconnect:(id)reconnect
{
  v7 = *MEMORY[0x1E69E9840];
  reconnectCopy = reconnect;
  v4 = OSLogHandleForIDSCategory();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v6 = reconnectCopy;
    _os_log_impl(&dword_1A7AD9000, v4, OS_LOG_TYPE_DEFAULT, "APS Connection did reconnect: %@", buf, 0xCu);
  }

  if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
  {
    _IDSLogV(0, @"IDSFoundation", @"IDSPushHandler", @"APS Connection did reconnect: %@");
  }
}

- (void)connection:(id)connection didChangeConnectedStatus:(BOOL)status
{
  statusCopy = status;
  v52 = *MEMORY[0x1E69E9840];
  connectionCopy = connection;
  v5 = OSLogHandleForIDSCategory();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = @"NO";
    if (statusCopy)
    {
      v6 = @"YES";
    }

    *buf = 138412290;
    v45 = v6;
    _os_log_impl(&dword_1A7AD9000, v5, OS_LOG_TYPE_DEFAULT, "APS Connection status did change to connected: %@", buf, 0xCu);
  }

  if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
  {
    v7 = @"NO";
    if (statusCopy)
    {
      v7 = @"YES";
    }

    v24 = v7;
    _IDSLogV(0, @"IDSFoundation", @"IDSPushHandler", @"APS Connection status did change to connected: %@");
  }

  [(NSRecursiveLock *)self->_recursiveLock lock];
  if ([(NSMapTable *)self->_handlerMap count])
  {
    weakToStrongObjectsMapTable = [MEMORY[0x1E696AD18] weakToStrongObjectsMapTable];
    v40 = 0u;
    v41 = 0u;
    v39 = 0u;
    v38 = 0u;
    v9 = self->_handlerMap;
    v10 = [(NSMapTable *)v9 countByEnumeratingWithState:&v38 objects:v43 count:16];
    if (v10)
    {
      v11 = *v39;
      do
      {
        for (i = 0; i != v10; ++i)
        {
          if (*v39 != v11)
          {
            objc_enumerationMutation(v9);
          }

          v13 = *(*(&v38 + 1) + 8 * i);
          if ([(IDSPushHandler *)self _validateHandler:v13 withSelector:sel_handler_isConnectedChanged_ topic:0 command:0])
          {
            v14 = [(NSMapTable *)self->_handlerMap objectForKey:v13];
            [weakToStrongObjectsMapTable setObject:v14 forKey:v13];
          }
        }

        v10 = [(NSMapTable *)v9 countByEnumeratingWithState:&v38 objects:v43 count:16];
      }

      while (v10);
    }

    goto LABEL_20;
  }

  v15 = OSLogHandleForIDSCategory();
  if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
  {
    v16 = NSStringFromSelector(sel_handler_isConnectedChanged_);
    *buf = 138413058;
    v45 = v16;
    v46 = 2112;
    v47 = 0;
    v48 = 2112;
    v49 = 0;
    v50 = 2112;
    v51 = 0;
    _os_log_impl(&dword_1A7AD9000, v15, OS_LOG_TYPE_DEFAULT, "No incoming push handler for selector: %@    topic: %@   command: %@   context: %@", buf, 0x2Au);
  }

  if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
  {
    v9 = NSStringFromSelector(sel_handler_isConnectedChanged_);
    v27 = 0;
    v28 = 0;
    v25 = v9;
    v26 = 0;
    _IDSLogV(0, @"IDSFoundation", @"IDSPushHandler", @"No incoming push handler for selector: %@    topic: %@   command: %@   context: %@");
    weakToStrongObjectsMapTable = 0;
LABEL_20:

    goto LABEL_27;
  }

  weakToStrongObjectsMapTable = 0;
LABEL_27:
  [(NSRecursiveLock *)self->_recursiveLock unlock:v25];
  v36 = 0u;
  v37 = 0u;
  v34 = 0u;
  v35 = 0u;
  obj = weakToStrongObjectsMapTable;
  v17 = [obj countByEnumeratingWithState:&v34 objects:v42 count:16];
  if (v17)
  {
    v18 = *v35;
    v19 = MEMORY[0x1E69E9820];
    do
    {
      for (j = 0; j != v17; ++j)
      {
        if (*v35 != v18)
        {
          objc_enumerationMutation(obj);
        }

        v21 = *(*(&v34 + 1) + 8 * j);
        v22 = [(NSMapTable *)self->_handlerMap objectForKey:v21];
        queue = [v22 queue];
        block[0] = v19;
        block[1] = 3221225472;
        block[2] = sub_1A7BDAC58;
        block[3] = &unk_1E77E1620;
        block[4] = v21;
        block[5] = self;
        v33 = statusCopy;
        dispatch_async(queue, block);
      }

      v17 = [obj countByEnumeratingWithState:&v34 objects:v42 count:16];
    }

    while (v17);
  }

  [obj count];
}

@end