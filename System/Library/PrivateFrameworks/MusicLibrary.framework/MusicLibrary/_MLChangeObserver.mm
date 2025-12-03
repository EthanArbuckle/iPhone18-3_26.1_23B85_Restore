@interface _MLChangeObserver
+ (id)observerWithConnection:(id)connection;
- (NSString)bundleID;
- (NSString)description;
- (_MLChangeObserver)init;
- (void)dealloc;
- (void)performDatabasePathChange:(id)change completion:(id)completion;
- (void)setConnection:(id)connection;
- (void)setupTaskAssertion;
- (void)setupTimeoutTimer;
- (void)tearDownTaskAssertion;
- (void)tearDownTimeoutTimer;
- (void)terminateForFailureToPerformDatabasePathChange;
@end

@implementation _MLChangeObserver

- (void)tearDownTimeoutTimer
{
  v8 = *MEMORY[0x277D85DE8];
  timeoutTimer = [(_MLChangeObserver *)self timeoutTimer];

  if (timeoutTimer)
  {
    v4 = os_log_create("com.apple.amp.medialibrary", "MultiUser");
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
    {
      v6 = 138543362;
      selfCopy = self;
      _os_log_impl(&dword_22D2FA000, v4, OS_LOG_TYPE_DEBUG, "%{public}@ - tearDownTimeoutTimer", &v6, 0xCu);
    }

    timeoutTimer2 = [(_MLChangeObserver *)self timeoutTimer];
    dispatch_source_cancel(timeoutTimer2);

    [(_MLChangeObserver *)self setTimeoutTimer:0];
  }
}

- (void)setupTimeoutTimer
{
  v25 = *MEMORY[0x277D85DE8];
  [(_MLChangeObserver *)self tearDownTimeoutTimer];
  timeoutTimer = [(_MLChangeObserver *)self timeoutTimer];

  if (!timeoutTimer)
  {
    v4 = os_log_create("com.apple.amp.medialibrary", "MultiUser");
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
    {
      *buf = 138543362;
      selfCopy = self;
      _os_log_impl(&dword_22D2FA000, v4, OS_LOG_TYPE_DEBUG, "%{public}@ - setupTimeoutTimerWithcompletion:", buf, 0xCu);
    }

    v5 = dispatch_source_create(MEMORY[0x277D85D38], 0, 0, 0);
    [(_MLChangeObserver *)self setTimeoutTimer:v5];

    v6 = dispatch_time(0, 10000000000);
    timeoutTimer2 = [(_MLChangeObserver *)self timeoutTimer];
    dispatch_source_set_timer(timeoutTimer2, v6, 0xFFFFFFFFFFFFFFFFLL, 0);

    objc_initWeak(buf, self);
    bundleID = [(_MLChangeObserver *)self bundleID];
    connection = [(_MLChangeObserver *)self connection];
    LOBYTE(v6) = connection == 0;

    if (v6)
    {
      processIdentifier = getpid();
    }

    else
    {
      connection2 = [(_MLChangeObserver *)self connection];
      processIdentifier = [connection2 processIdentifier];
    }

    timeoutTimer3 = [(_MLChangeObserver *)self timeoutTimer];
    v15 = MEMORY[0x277D85DD0];
    v16 = 3221225472;
    v17 = __38___MLChangeObserver_setupTimeoutTimer__block_invoke;
    v18 = &unk_278764168;
    objc_copyWeak(&v21, buf);
    v13 = bundleID;
    v22 = processIdentifier;
    v19 = v13;
    selfCopy2 = self;
    dispatch_source_set_event_handler(timeoutTimer3, &v15);

    v14 = [(_MLChangeObserver *)self timeoutTimer:v15];
    dispatch_resume(v14);

    objc_destroyWeak(&v21);
    objc_destroyWeak(buf);
  }
}

- (void)tearDownTaskAssertion
{
  v8 = *MEMORY[0x277D85DE8];
  taskAssertion = [(_MLChangeObserver *)self taskAssertion];

  if (taskAssertion)
  {
    v4 = os_log_create("com.apple.amp.medialibrary", "MultiUser");
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
    {
      v6 = 138543362;
      selfCopy = self;
      _os_log_impl(&dword_22D2FA000, v4, OS_LOG_TYPE_DEBUG, "%{public}@ - tearDownTaskAssertion", &v6, 0xCu);
    }

    taskAssertion2 = [(_MLChangeObserver *)self taskAssertion];
    [taskAssertion2 invalidate];

    [(_MLChangeObserver *)self setTaskAssertion:0];
  }
}

- (void)setupTaskAssertion
{
  v14 = *MEMORY[0x277D85DE8];
  v3 = objc_alloc(MEMORY[0x277D27F40]);
  connection = [(_MLChangeObserver *)self connection];
  processIdentifier = [connection processIdentifier];
  bundleID = [(_MLChangeObserver *)self bundleID];
  v7 = [v3 initWithName:@"Processing shared database path change" pid:processIdentifier bundleID:bundleID subsystem:@"com.apple.medialibraryd" reason:2 flags:3];
  [(_MLChangeObserver *)self setTaskAssertion:v7];

  v8 = os_log_create("com.apple.amp.medialibrary", "MultiUser");
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    taskAssertion = [(_MLChangeObserver *)self taskAssertion];
    v10 = 138543618;
    selfCopy = self;
    v12 = 2114;
    v13 = taskAssertion;
    _os_log_impl(&dword_22D2FA000, v8, OS_LOG_TYPE_DEBUG, "%{public}@ - setupTaskAssertion: %{public}@", &v10, 0x16u);
  }
}

- (NSString)description
{
  v3 = MEMORY[0x277CCACA8];
  bundleID = [(_MLChangeObserver *)self bundleID];
  connection = [(_MLChangeObserver *)self connection];
  v6 = [v3 stringWithFormat:@"_MLChangeObserver <%p> - Observer for %@[%d]", self, bundleID, objc_msgSend(connection, "processIdentifier")];

  return v6;
}

- (NSString)bundleID
{
  connection = [(_MLChangeObserver *)self connection];

  if (connection)
  {
    bundleIdentifier = self->_bundleID;
  }

  else
  {
    mainBundle = [MEMORY[0x277CCA8D8] mainBundle];
    bundleIdentifier = [mainBundle bundleIdentifier];
  }

  return bundleIdentifier;
}

- (void)setConnection:(id)connection
{
  connectionCopy = connection;
  objc_storeStrong(&self->_connection, connection);
  if (connectionCopy)
  {
    [connectionCopy auditToken];
    v6 = MSVBundleIDForAuditToken();
    bundleID = self->_bundleID;
    self->_bundleID = v6;
  }

  else
  {
    bundleID = self->_bundleID;
    self->_bundleID = 0;
  }
}

- (void)terminateForFailureToPerformDatabasePathChange
{
  v9 = *MEMORY[0x277D85DE8];
  v3 = os_log_create("com.apple.amp.medialibrary", "MultiUser");
  if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    *buf = 138543362;
    selfCopy = self;
    _os_log_impl(&dword_22D2FA000, v3, OS_LOG_TYPE_ERROR, "%{public}@ - terminateForFailureToPerformDatabasePathChange", buf, 0xCu);
  }

  connection = [(_MLChangeObserver *)self connection];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __67___MLChangeObserver_terminateForFailureToPerformDatabasePathChange__block_invoke;
  v6[3] = &unk_278765828;
  v6[4] = self;
  v5 = [connection remoteObjectProxyWithErrorHandler:v6];
  [v5 terminateForFailureToPerformDatabasePathChange];

  [(_MLChangeObserver *)self setConnection:0];
}

- (void)performDatabasePathChange:(id)change completion:(id)completion
{
  v25 = *MEMORY[0x277D85DE8];
  changeCopy = change;
  completionCopy = completion;
  v8 = os_log_create("com.apple.amp.medialibrary", "MultiUser");
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543618;
    selfCopy = self;
    v23 = 2114;
    v24 = changeCopy;
    _os_log_impl(&dword_22D2FA000, v8, OS_LOG_TYPE_DEFAULT, "%{public}@ - performDatabasePathChange: - newPath=%{public}@", buf, 0x16u);
  }

  v19[0] = MEMORY[0x277D85DD0];
  v19[1] = 3221225472;
  v19[2] = __58___MLChangeObserver_performDatabasePathChange_completion___block_invoke;
  v19[3] = &unk_278764F50;
  v19[4] = self;
  v20 = completionCopy;
  v9 = completionCopy;
  v10 = MEMORY[0x2318CDB10](v19);
  os_unfair_lock_lock(&self->_lock);
  [(_MLChangeObserver *)self setupTaskAssertion];
  [(_MLChangeObserver *)self setupTimeoutTimer];
  os_unfair_lock_unlock(&self->_lock);
  connection = [(_MLChangeObserver *)self connection];
  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 3221225472;
  v17[2] = __58___MLChangeObserver_performDatabasePathChange_completion___block_invoke_2;
  v17[3] = &unk_2787658A0;
  v17[4] = self;
  v12 = v10;
  v18 = v12;
  v13 = [connection remoteObjectProxyWithErrorHandler:v17];
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __58___MLChangeObserver_performDatabasePathChange_completion___block_invoke_4;
  v15[3] = &unk_278764F50;
  v15[4] = self;
  v16 = v12;
  v14 = v12;
  [v13 performDatabasePathChange:changeCopy completion:v15];
}

- (void)dealloc
{
  [(_MLChangeObserver *)self tearDownTaskAssertion];
  [(_MLChangeObserver *)self tearDownTimeoutTimer];
  v3.receiver = self;
  v3.super_class = _MLChangeObserver;
  [(_MLChangeObserver *)&v3 dealloc];
}

- (_MLChangeObserver)init
{
  v3.receiver = self;
  v3.super_class = _MLChangeObserver;
  result = [(_MLChangeObserver *)&v3 init];
  if (result)
  {
    result->_lock._os_unfair_lock_opaque = 0;
  }

  return result;
}

+ (id)observerWithConnection:(id)connection
{
  connectionCopy = connection;
  v4 = objc_alloc_init(_MLChangeObserver);
  [(_MLChangeObserver *)v4 setConnection:connectionCopy];

  return v4;
}

@end