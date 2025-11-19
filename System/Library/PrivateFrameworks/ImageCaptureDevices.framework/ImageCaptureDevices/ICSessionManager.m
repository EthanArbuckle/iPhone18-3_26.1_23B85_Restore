@interface ICSessionManager
- (BOOL)createSessionWithConnection:(id)a3;
- (ICSessionManager)initWithDelegate:(id)a3;
- (ICSessionManagerProtocol)delegate;
- (NSArray)connections;
- (NSArray)sessions;
- (id)connectionsMonitoringNotification:(id)a3;
- (id)connectionsMonitoringObjectID:(id)a3;
- (id)sessionWithConnection:(id)a3;
- (unint64_t)currentSessionCount;
- (unint64_t)removeSessionWithConnection:(id)a3;
- (unint64_t)removeSessionsWithProcessIdentifier:(id)a3;
- (void)addNotifications:(id)a3 toSessionWithConnection:(id)a4;
- (void)remNotifications:(id)a3 fromSessionWithConnection:(id)a4;
- (void)removeAllSessions;
@end

@implementation ICSessionManager

- (ICSessionManager)initWithDelegate:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = ICSessionManager;
  v5 = [(ICSessionManager *)&v9 init];
  if (v5)
  {
    v6 = objc_alloc_init(MEMORY[0x29EDB8DE8]);
    sessions = v5->_sessions;
    v5->_sessions = v6;

    v5->_sessionsLock._os_unfair_lock_opaque = 0;
    objc_storeWeak(&v5->_delegate, v4);
  }

  return v5;
}

- (BOOL)createSessionWithConnection:(id)a3
{
  v42 = *MEMORY[0x29EDCA608];
  v4 = a3;
  if (v4 && ([(ICSessionManager *)self sessionWithConnection:v4], v5 = objc_claimAutoreleasedReturnValue(), v5, !v5))
  {
    v6 = [[ICSession alloc] initWithConnection:v4];
    objc_initWeak(&location, v4);
    v31 = MEMORY[0x29EDCA5F8];
    v32 = 3221225472;
    v33 = __48__ICSessionManager_createSessionWithConnection___block_invoke;
    v34 = &unk_29F380B50;
    objc_copyWeak(&v36, &location);
    v35 = self;
    v13 = MEMORY[0x29EDA9880](&v31);
    [v4 setInterruptionHandler:v13];
    [v4 setInvalidationHandler:v13];
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
      v21 = [(__CFString *)v15 UTF8String];
      *buf = 136446466;
      v39 = v21;
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

    v8 = [MEMORY[0x29EDBA0F8] stringWithFormat:@"exists: [%05d]", objc_msgSend(v4, "processIdentifier")];
    v9 = _gICOSLog;
    if (os_log_type_enabled(_gICOSLog, OS_LOG_TYPE_DEFAULT))
    {
      v10 = v6;
      v11 = v9;
      *buf = 136446466;
      v39 = [(ICSession *)v6 UTF8String];
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
    v28 = [(__CFString *)v23 UTF8String];
    *buf = 136446466;
    v39 = v28;
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

- (id)sessionWithConnection:(id)a3
{
  v19 = *MEMORY[0x29EDCA608];
  v4 = a3;
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
        v10 = [v9 connection];
        v11 = [v10 isEqual:v4];

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

- (void)addNotifications:(id)a3 toSessionWithConnection:(id)a4
{
  v19 = *MEMORY[0x29EDCA608];
  v6 = a3;
  v7 = [(ICSessionManager *)self sessionWithConnection:a4];
  os_unfair_lock_lock(&self->_sessionsLock);
  __ICOSLogCreate();
  v8 = @"CM";
  if ([@"CM" length] >= 0x15)
  {
    v9 = [@"CM" substringWithRange:{0, 18}];
    v8 = [v9 stringByAppendingString:@".."];
  }

  v10 = [MEMORY[0x29EDBA0F8] stringWithFormat:@"+ note: [%05d] - %@", objc_msgSend(v7, "pid"), v6];
  v11 = _gICOSLog;
  if (os_log_type_enabled(_gICOSLog, OS_LOG_TYPE_DEFAULT))
  {
    v12 = v8;
    v13 = v11;
    *buf = 136446466;
    v16 = [(__CFString *)v8 UTF8String];
    v17 = 2114;
    v18 = v10;
    _os_log_impl(&dword_29EB58000, v13, OS_LOG_TYPE_DEFAULT, "%{public}20s | %{public}@", buf, 0x16u);
  }

  [v7 addNotifications:v6];
  os_unfair_lock_unlock(&self->_sessionsLock);

  v14 = *MEMORY[0x29EDCA608];
}

- (void)remNotifications:(id)a3 fromSessionWithConnection:(id)a4
{
  v19 = *MEMORY[0x29EDCA608];
  v6 = a3;
  v7 = [(ICSessionManager *)self sessionWithConnection:a4];
  os_unfair_lock_lock(&self->_sessionsLock);
  __ICOSLogCreate();
  v8 = @"CM";
  if ([@"CM" length] >= 0x15)
  {
    v9 = [@"CM" substringWithRange:{0, 18}];
    v8 = [v9 stringByAppendingString:@".."];
  }

  v10 = [MEMORY[0x29EDBA0F8] stringWithFormat:@"- note: [%05d] - %@", objc_msgSend(v7, "pid"), v6];
  v11 = _gICOSLog;
  if (os_log_type_enabled(_gICOSLog, OS_LOG_TYPE_DEFAULT))
  {
    v12 = v8;
    v13 = v11;
    *buf = 136446466;
    v16 = [(__CFString *)v8 UTF8String];
    v17 = 2114;
    v18 = v10;
    _os_log_impl(&dword_29EB58000, v13, OS_LOG_TYPE_DEFAULT, "%{public}20s | %{public}@", buf, 0x16u);
  }

  [v7 remNotifications:v6];
  os_unfair_lock_unlock(&self->_sessionsLock);

  v14 = *MEMORY[0x29EDCA608];
}

- (unint64_t)removeSessionWithConnection:(id)a3
{
  v21 = *MEMORY[0x29EDCA608];
  v4 = [(ICSessionManager *)self sessionWithConnection:a3];
  v5 = v4;
  if (v4)
  {
    v6 = [v4 connection];
    [v6 invalidate];

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
      v18 = [(__CFString *)v7 UTF8String];
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

  v14 = [(ICSessionManager *)self currentSessionCount];

  v15 = *MEMORY[0x29EDCA608];
  return v14;
}

- (unint64_t)removeSessionsWithProcessIdentifier:(id)a3
{
  v21 = *MEMORY[0x29EDCA608];
  v4 = a3;
  v5 = [(ICSessionManager *)self sessions];
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v6 = [v5 countByEnumeratingWithState:&v16 objects:v20 count:16];
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
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v16 + 1) + 8 * i);
        v11 = [v10 pid];
        if (v11 == [v4 intValue])
        {
          v12 = [v10 connection];
          [(ICSessionManager *)self removeSessionWithConnection:v12];
        }
      }

      v7 = [v5 countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v7);
  }

  v13 = [(ICSessionManager *)self currentSessionCount];

  v14 = *MEMORY[0x29EDCA608];
  return v13;
}

- (void)removeAllSessions
{
  v15 = *MEMORY[0x29EDCA608];
  v3 = [(ICSessionManager *)self sessions];
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v4 = [v3 countByEnumeratingWithState:&v10 objects:v14 count:16];
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
          objc_enumerationMutation(v3);
        }

        v8 = [*(*(&v10 + 1) + 8 * v7) connection];
        [(ICSessionManager *)self removeSessionWithConnection:v8];

        ++v7;
      }

      while (v5 != v7);
      v5 = [v3 countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v5);
  }

  v9 = *MEMORY[0x29EDCA608];
}

- (id)connectionsMonitoringNotification:(id)a3
{
  v31 = *MEMORY[0x29EDCA608];
  v4 = a3;
  v5 = [MEMORY[0x29EDB8DE8] array];
  v6 = [(ICSessionManager *)self sessions];
  __ICOSLogCreate();
  if (__ICLogTypeEnabled(4))
  {
    v7 = @"noteInterest";
    if ([@"noteInterest" length] >= 0x15)
    {
      v8 = [@"noteInterest" substringWithRange:{0, 18}];
      v7 = [v8 stringByAppendingString:@".."];
    }

    v9 = [MEMORY[0x29EDBA0F8] stringWithFormat:@"[%05d] - %@", objc_msgSend(v6, "count"), v4];
    v10 = _gICOSLog;
    if (os_log_type_enabled(_gICOSLog, OS_LOG_TYPE_DEFAULT))
    {
      v11 = v7;
      v12 = v10;
      *buf = 136446466;
      v28 = [(__CFString *)v7 UTF8String];
      v29 = 2114;
      v30 = v9;
      _os_log_impl(&dword_29EB58000, v12, OS_LOG_TYPE_DEFAULT, "%{public}20s | %{public}@", buf, 0x16u);
    }
  }

  v24 = 0u;
  v25 = 0u;
  v22 = 0u;
  v23 = 0u;
  v13 = v6;
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
        if ([v18 interestedInNotification:v4])
        {
          v19 = [v18 connection];
          [v5 addObject:v19];
        }
      }

      v15 = [v13 countByEnumeratingWithState:&v22 objects:v26 count:16];
    }

    while (v15);
  }

  v20 = *MEMORY[0x29EDCA608];

  return v5;
}

- (id)connectionsMonitoringObjectID:(id)a3
{
  v33 = *MEMORY[0x29EDCA608];
  v4 = a3;
  v5 = [MEMORY[0x29EDB8DE8] array];
  v6 = [(ICSessionManager *)self sessions];
  v7 = [MEMORY[0x29EDBA0F8] stringWithFormat:@"0x%08lX", objc_msgSend(v4, "longValue")];
  __ICOSLogCreate();
  if (__ICLogTypeEnabled(4))
  {
    v8 = @"noteInterest";
    if ([@"noteInterest" length] >= 0x15)
    {
      v9 = [@"noteInterest" substringWithRange:{0, 18}];
      v8 = [v9 stringByAppendingString:@".."];
    }

    v10 = [MEMORY[0x29EDBA0F8] stringWithFormat:@"[%05d] - %@", objc_msgSend(v6, "count"), v7];
    v11 = _gICOSLog;
    if (os_log_type_enabled(_gICOSLog, OS_LOG_TYPE_DEFAULT))
    {
      v12 = v8;
      v13 = v11;
      *buf = 136446466;
      v30 = [(__CFString *)v8 UTF8String];
      v31 = 2114;
      v32 = v10;
      _os_log_impl(&dword_29EB58000, v13, OS_LOG_TYPE_DEFAULT, "%{public}20s | %{public}@", buf, 0x16u);
    }
  }

  v26 = 0u;
  v27 = 0u;
  v24 = 0u;
  v25 = 0u;
  v14 = v6;
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
        v20 = [v19 objectHandle];
        if (v20 == [v4 intValue])
        {
          v21 = [v19 connection];
          [v5 addObject:v21];
        }
      }

      v16 = [v14 countByEnumeratingWithState:&v24 objects:v28 count:16];
    }

    while (v16);
  }

  v22 = *MEMORY[0x29EDCA608];

  return v5;
}

- (NSArray)connections
{
  v17 = *MEMORY[0x29EDCA608];
  v3 = [MEMORY[0x29EDB8DE8] array];
  v4 = [(ICSessionManager *)self sessions];
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v5 = [v4 countByEnumeratingWithState:&v12 objects:v16 count:16];
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
          objc_enumerationMutation(v4);
        }

        v9 = [*(*(&v12 + 1) + 8 * i) connection];
        [v3 addObject:v9];
      }

      v6 = [v4 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v6);
  }

  v10 = *MEMORY[0x29EDCA608];

  return v3;
}

- (ICSessionManagerProtocol)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end