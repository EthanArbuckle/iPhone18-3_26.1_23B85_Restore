@interface ICSessionManager
- (BOOL)createSessionWithConnection:(id)connection;
- (ICSessionManager)initWithDelegate:(id)delegate;
- (ICSessionManagerProtocol)delegate;
- (NSArray)connections;
- (NSArray)sessions;
- (id)connectionsMonitoringNotification:(id)notification;
- (id)connectionsMonitoringObjectID:(id)d;
- (id)sessionWithConnection:(id)connection;
- (unint64_t)currentSessionCount;
- (unint64_t)removeSessionWithConnection:(id)connection;
- (unint64_t)removeSessionsWithProcessIdentifier:(id)identifier;
- (void)addNotifications:(id)notifications toSessionWithConnection:(id)connection;
- (void)remNotifications:(id)notifications fromSessionWithConnection:(id)connection;
- (void)removeAllSessions;
@end

@implementation ICSessionManager

- (ICSessionManager)initWithDelegate:(id)delegate
{
  delegateCopy = delegate;
  v9.receiver = self;
  v9.super_class = ICSessionManager;
  v5 = [(ICSessionManager *)&v9 init];
  if (v5)
  {
    v6 = objc_alloc_init(MEMORY[0x29EDB8DE8]);
    sessions = v5->_sessions;
    v5->_sessions = v6;

    v5->_sessionsLock._os_unfair_lock_opaque = 0;
    objc_storeWeak(&v5->_delegate, delegateCopy);
  }

  return v5;
}

- (BOOL)createSessionWithConnection:(id)connection
{
  v42 = *MEMORY[0x29EDCA608];
  connectionCopy = connection;
  if (connectionCopy && ([(ICSessionManager *)self sessionWithConnection:connectionCopy], v5 = objc_claimAutoreleasedReturnValue(), v5, !v5))
  {
    v6 = [[ICSession alloc] initWithConnection:connectionCopy];
    objc_initWeak(&location, connectionCopy);
    v31 = MEMORY[0x29EDCA5F8];
    v32 = 3221225472;
    v33 = __48__ICSessionManager_createSessionWithConnection___block_invoke;
    v34 = &unk_29F380B50;
    objc_copyWeak(&v36, &location);
    selfCopy = self;
    v13 = MEMORY[0x29EDA9880](&v31);
    [connectionCopy setInterruptionHandler:v13];
    [connectionCopy setInvalidationHandler:v13];
    os_unfair_lock_lock(&self->_sessionsLock);
    [(NSMutableArray *)self->_sessions addObject:v6];
    os_unfair_lock_unlock(&self->_sessionsLock);
    __ICOSLogCreate();
    if ([@"CM" length] < 0x15)
    {
      v15 = @"CM";
    }

    else
    {
      v14 = [@"CM" substringWithRange:{0, 18}];
      v15 = [v14 stringByAppendingString:@".."];
    }

    v16 = MEMORY[0x29EDBA0F8];
    v17 = [(ICSession *)v6 pid];
    v18 = [v16 stringWithFormat:@"add: [%05d]", v17, v31, v32, v33, v34];
    v19 = _gICOSLog;
    if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
    {
      v20 = v15;
      uTF8String = [(__CFString *)v15 UTF8String];
      *buf = 136446466;
      uTF8String2 = uTF8String;
      v40 = 2114;
      v41 = v18;
      _os_log_impl(&dword_29EB58000, v19, OS_LOG_TYPE_DEFAULT, "%{public}20s | %{public}@", buf, 0x16u);
    }

    objc_destroyWeak(&v36);
    objc_destroyWeak(&location);
    v12 = 1;
  }

  else
  {
    __ICOSLogCreate();
    v6 = @"CM";
    if ([@"CM" length] >= 0x15)
    {
      v7 = [@"CM" substringWithRange:{0, 18}];
      v6 = [v7 stringByAppendingString:@".."];
    }

    v8 = [MEMORY[0x29EDBA0F8] stringWithFormat:@"exists: [%05d]", objc_msgSend(connectionCopy, "processIdentifier")];
    v9 = _gICOSLog;
    if (os_log_type_enabled(_gICOSLog, OS_LOG_TYPE_DEFAULT))
    {
      v10 = v6;
      v11 = v9;
      *buf = 136446466;
      uTF8String2 = [(ICSession *)v6 UTF8String];
      v40 = 2114;
      v41 = v8;
      _os_log_impl(&dword_29EB58000, v11, OS_LOG_TYPE_DEFAULT, "%{public}20s | %{public}@", buf, 0x16u);
    }

    v12 = 0;
  }

  __ICOSLogCreate();
  if ([@"CM" length] < 0x15)
  {
    v23 = @"CM";
  }

  else
  {
    v22 = [@"CM" substringWithRange:{0, 18}];
    v23 = [v22 stringByAppendingString:@".."];
  }

  v24 = [MEMORY[0x29EDBA0F8] stringWithFormat:@"count: [%05lu]", -[ICSessionManager currentSessionCount](self, "currentSessionCount")];
  v25 = _gICOSLog;
  if (os_log_type_enabled(_gICOSLog, OS_LOG_TYPE_DEFAULT))
  {
    v26 = v23;
    v27 = v25;
    uTF8String3 = [(__CFString *)v23 UTF8String];
    *buf = 136446466;
    uTF8String2 = uTF8String3;
    v40 = 2114;
    v41 = v24;
    _os_log_impl(&dword_29EB58000, v27, OS_LOG_TYPE_DEFAULT, "%{public}20s | %{public}@", buf, 0x16u);
  }

  v29 = *MEMORY[0x29EDCA608];
  return v12;
}

void __48__ICSessionManager_createSessionWithConnection___block_invoke(uint64_t a1)
{
  v14 = *MEMORY[0x29EDCA608];
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [*(a1 + 32) removeSessionWithConnection:WeakRetained];
  __ICOSLogCreate();
  v3 = @"CM";
  if ([@"CM" length] >= 0x15)
  {
    v4 = [@"CM" substringWithRange:{0, 18}];
    v3 = [v4 stringByAppendingString:@".."];
  }

  v5 = [MEMORY[0x29EDBA0F8] stringWithFormat:@"xpc-term: [%05d]", objc_msgSend(WeakRetained, "processIdentifier")];
  v6 = _gICOSLog;
  if (os_log_type_enabled(_gICOSLog, OS_LOG_TYPE_DEFAULT))
  {
    v7 = v3;
    v8 = v6;
    *buf = 136446466;
    v11 = [(__CFString *)v3 UTF8String];
    v12 = 2114;
    v13 = v5;
    _os_log_impl(&dword_29EB58000, v8, OS_LOG_TYPE_DEFAULT, "%{public}20s | %{public}@", buf, 0x16u);
  }

  v9 = *MEMORY[0x29EDCA608];
}

- (NSArray)sessions
{
  os_unfair_lock_lock(&self->_sessionsLock);
  v3 = [(NSMutableArray *)self->_sessions copy];
  os_unfair_lock_unlock(&self->_sessionsLock);

  return v3;
}

- (unint64_t)currentSessionCount
{
  os_unfair_lock_lock(&self->_sessionsLock);
  v3 = [(NSMutableArray *)self->_sessions count];
  os_unfair_lock_unlock(&self->_sessionsLock);
  return v3;
}

- (id)sessionWithConnection:(id)connection
{
  v19 = *MEMORY[0x29EDCA608];
  connectionCopy = connection;
  [(ICSessionManager *)self sessions];
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v5 = v17 = 0u;
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
        connection = [v9 connection];
        v11 = [connection isEqual:connectionCopy];

        if (v11)
        {
          v6 = v9;
          goto LABEL_11;
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

LABEL_11:

  v12 = *MEMORY[0x29EDCA608];

  return v6;
}

- (void)addNotifications:(id)notifications toSessionWithConnection:(id)connection
{
  v19 = *MEMORY[0x29EDCA608];
  notificationsCopy = notifications;
  v7 = [(ICSessionManager *)self sessionWithConnection:connection];
  os_unfair_lock_lock(&self->_sessionsLock);
  __ICOSLogCreate();
  v8 = @"CM";
  if ([@"CM" length] >= 0x15)
  {
    v9 = [@"CM" substringWithRange:{0, 18}];
    v8 = [v9 stringByAppendingString:@".."];
  }

  notificationsCopy = [MEMORY[0x29EDBA0F8] stringWithFormat:@"+ note: [%05d] - %@", objc_msgSend(v7, "pid"), notificationsCopy];
  v11 = _gICOSLog;
  if (os_log_type_enabled(_gICOSLog, OS_LOG_TYPE_DEFAULT))
  {
    v12 = v8;
    v13 = v11;
    *buf = 136446466;
    uTF8String = [(__CFString *)v8 UTF8String];
    v17 = 2114;
    v18 = notificationsCopy;
    _os_log_impl(&dword_29EB58000, v13, OS_LOG_TYPE_DEFAULT, "%{public}20s | %{public}@", buf, 0x16u);
  }

  [v7 addNotifications:notificationsCopy];
  os_unfair_lock_unlock(&self->_sessionsLock);

  v14 = *MEMORY[0x29EDCA608];
}

- (void)remNotifications:(id)notifications fromSessionWithConnection:(id)connection
{
  v19 = *MEMORY[0x29EDCA608];
  notificationsCopy = notifications;
  v7 = [(ICSessionManager *)self sessionWithConnection:connection];
  os_unfair_lock_lock(&self->_sessionsLock);
  __ICOSLogCreate();
  v8 = @"CM";
  if ([@"CM" length] >= 0x15)
  {
    v9 = [@"CM" substringWithRange:{0, 18}];
    v8 = [v9 stringByAppendingString:@".."];
  }

  notificationsCopy = [MEMORY[0x29EDBA0F8] stringWithFormat:@"- note: [%05d] - %@", objc_msgSend(v7, "pid"), notificationsCopy];
  v11 = _gICOSLog;
  if (os_log_type_enabled(_gICOSLog, OS_LOG_TYPE_DEFAULT))
  {
    v12 = v8;
    v13 = v11;
    *buf = 136446466;
    uTF8String = [(__CFString *)v8 UTF8String];
    v17 = 2114;
    v18 = notificationsCopy;
    _os_log_impl(&dword_29EB58000, v13, OS_LOG_TYPE_DEFAULT, "%{public}20s | %{public}@", buf, 0x16u);
  }

  [v7 remNotifications:notificationsCopy];
  os_unfair_lock_unlock(&self->_sessionsLock);

  v14 = *MEMORY[0x29EDCA608];
}

- (unint64_t)removeSessionWithConnection:(id)connection
{
  v21 = *MEMORY[0x29EDCA608];
  v4 = [(ICSessionManager *)self sessionWithConnection:connection];
  v5 = v4;
  if (v4)
  {
    connection = [v4 connection];
    [connection invalidate];

    __ICOSLogCreate();
    v7 = @"CM";
    if ([@"CM" length] >= 0x15)
    {
      v8 = [@"CM" substringWithRange:{0, 18}];
      v7 = [v8 stringByAppendingString:@".."];
    }

    v9 = [MEMORY[0x29EDBA0F8] stringWithFormat:@"remove: [%05lu]", objc_msgSend(v5, "pid")];
    v10 = _gICOSLog;
    if (os_log_type_enabled(_gICOSLog, OS_LOG_TYPE_DEFAULT))
    {
      v11 = v7;
      v12 = v10;
      *buf = 136446466;
      uTF8String = [(__CFString *)v7 UTF8String];
      v19 = 2114;
      v20 = v9;
      _os_log_impl(&dword_29EB58000, v12, OS_LOG_TYPE_DEFAULT, "%{public}20s | %{public}@", buf, 0x16u);
    }

    os_unfair_lock_lock(&self->_sessionsLock);
    [(NSMutableArray *)self->_sessions removeObject:v5];
    os_unfair_lock_unlock(&self->_sessionsLock);
  }

  if (![(ICSessionManager *)self currentSessionCount])
  {
    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    [WeakRetained sessionManagerDidCloseAllSessions:self];
  }

  currentSessionCount = [(ICSessionManager *)self currentSessionCount];

  v15 = *MEMORY[0x29EDCA608];
  return currentSessionCount;
}

- (unint64_t)removeSessionsWithProcessIdentifier:(id)identifier
{
  v21 = *MEMORY[0x29EDCA608];
  identifierCopy = identifier;
  sessions = [(ICSessionManager *)self sessions];
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v6 = [sessions countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v17;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v17 != v8)
        {
          objc_enumerationMutation(sessions);
        }

        v10 = *(*(&v16 + 1) + 8 * i);
        v11 = [v10 pid];
        if (v11 == [identifierCopy intValue])
        {
          connection = [v10 connection];
          [(ICSessionManager *)self removeSessionWithConnection:connection];
        }
      }

      v7 = [sessions countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v7);
  }

  currentSessionCount = [(ICSessionManager *)self currentSessionCount];

  v14 = *MEMORY[0x29EDCA608];
  return currentSessionCount;
}

- (void)removeAllSessions
{
  v15 = *MEMORY[0x29EDCA608];
  sessions = [(ICSessionManager *)self sessions];
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v4 = [sessions countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v11;
    do
    {
      v7 = 0;
      do
      {
        if (*v11 != v6)
        {
          objc_enumerationMutation(sessions);
        }

        connection = [*(*(&v10 + 1) + 8 * v7) connection];
        [(ICSessionManager *)self removeSessionWithConnection:connection];

        ++v7;
      }

      while (v5 != v7);
      v5 = [sessions countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v5);
  }

  v9 = *MEMORY[0x29EDCA608];
}

- (id)connectionsMonitoringNotification:(id)notification
{
  v31 = *MEMORY[0x29EDCA608];
  notificationCopy = notification;
  array = [MEMORY[0x29EDB8DE8] array];
  sessions = [(ICSessionManager *)self sessions];
  __ICOSLogCreate();
  if (__ICLogTypeEnabled(4))
  {
    v7 = @"noteInterest";
    if ([@"noteInterest" length] >= 0x15)
    {
      v8 = [@"noteInterest" substringWithRange:{0, 18}];
      v7 = [v8 stringByAppendingString:@".."];
    }

    notificationCopy = [MEMORY[0x29EDBA0F8] stringWithFormat:@"[%05d] - %@", objc_msgSend(sessions, "count"), notificationCopy];
    v10 = _gICOSLog;
    if (os_log_type_enabled(_gICOSLog, OS_LOG_TYPE_DEFAULT))
    {
      v11 = v7;
      v12 = v10;
      *buf = 136446466;
      uTF8String = [(__CFString *)v7 UTF8String];
      v29 = 2114;
      v30 = notificationCopy;
      _os_log_impl(&dword_29EB58000, v12, OS_LOG_TYPE_DEFAULT, "%{public}20s | %{public}@", buf, 0x16u);
    }
  }

  v24 = 0u;
  v25 = 0u;
  v22 = 0u;
  v23 = 0u;
  v13 = sessions;
  v14 = [v13 countByEnumeratingWithState:&v22 objects:v26 count:16];
  if (v14)
  {
    v15 = v14;
    v16 = *v23;
    do
    {
      for (i = 0; i != v15; ++i)
      {
        if (*v23 != v16)
        {
          objc_enumerationMutation(v13);
        }

        v18 = *(*(&v22 + 1) + 8 * i);
        if ([v18 interestedInNotification:notificationCopy])
        {
          connection = [v18 connection];
          [array addObject:connection];
        }
      }

      v15 = [v13 countByEnumeratingWithState:&v22 objects:v26 count:16];
    }

    while (v15);
  }

  v20 = *MEMORY[0x29EDCA608];

  return array;
}

- (id)connectionsMonitoringObjectID:(id)d
{
  v33 = *MEMORY[0x29EDCA608];
  dCopy = d;
  array = [MEMORY[0x29EDB8DE8] array];
  sessions = [(ICSessionManager *)self sessions];
  v7 = [MEMORY[0x29EDBA0F8] stringWithFormat:@"0x%08lX", objc_msgSend(dCopy, "longValue")];
  __ICOSLogCreate();
  if (__ICLogTypeEnabled(4))
  {
    v8 = @"noteInterest";
    if ([@"noteInterest" length] >= 0x15)
    {
      v9 = [@"noteInterest" substringWithRange:{0, 18}];
      v8 = [v9 stringByAppendingString:@".."];
    }

    v10 = [MEMORY[0x29EDBA0F8] stringWithFormat:@"[%05d] - %@", objc_msgSend(sessions, "count"), v7];
    v11 = _gICOSLog;
    if (os_log_type_enabled(_gICOSLog, OS_LOG_TYPE_DEFAULT))
    {
      v12 = v8;
      v13 = v11;
      *buf = 136446466;
      uTF8String = [(__CFString *)v8 UTF8String];
      v31 = 2114;
      v32 = v10;
      _os_log_impl(&dword_29EB58000, v13, OS_LOG_TYPE_DEFAULT, "%{public}20s | %{public}@", buf, 0x16u);
    }
  }

  v26 = 0u;
  v27 = 0u;
  v24 = 0u;
  v25 = 0u;
  v14 = sessions;
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
        objectHandle = [v19 objectHandle];
        if (objectHandle == [dCopy intValue])
        {
          connection = [v19 connection];
          [array addObject:connection];
        }
      }

      v16 = [v14 countByEnumeratingWithState:&v24 objects:v28 count:16];
    }

    while (v16);
  }

  v22 = *MEMORY[0x29EDCA608];

  return array;
}

- (NSArray)connections
{
  v17 = *MEMORY[0x29EDCA608];
  array = [MEMORY[0x29EDB8DE8] array];
  sessions = [(ICSessionManager *)self sessions];
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v5 = [sessions countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v13;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v13 != v7)
        {
          objc_enumerationMutation(sessions);
        }

        connection = [*(*(&v12 + 1) + 8 * i) connection];
        [array addObject:connection];
      }

      v6 = [sessions countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v6);
  }

  v10 = *MEMORY[0x29EDCA608];

  return array;
}

- (ICSessionManagerProtocol)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end