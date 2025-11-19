@interface _MLChangeObserver
+ (id)observerWithConnection:(id)a3;
- (NSString)bundleID;
- (NSString)description;
- (_MLChangeObserver)init;
- (void)dealloc;
- (void)performDatabasePathChange:(id)a3 completion:(id)a4;
- (void)setConnection:(id)a3;
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
  v3 = [(_MLChangeObserver *)self timeoutTimer];

  if (v3)
  {
    v4 = os_log_create("com.apple.amp.medialibrary", "MultiUser");
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
    {
      v6 = 138543362;
      v7 = self;
      _os_log_impl(&dword_22D2FA000, v4, OS_LOG_TYPE_DEBUG, "%{public}@ - tearDownTimeoutTimer", &v6, 0xCu);
    }

    v5 = [(_MLChangeObserver *)self timeoutTimer];
    dispatch_source_cancel(v5);

    [(_MLChangeObserver *)self setTimeoutTimer:0];
  }
}

- (void)setupTimeoutTimer
{
  v25 = *MEMORY[0x277D85DE8];
  [(_MLChangeObserver *)self tearDownTimeoutTimer];
  v3 = [(_MLChangeObserver *)self timeoutTimer];

  if (!v3)
  {
    v4 = os_log_create("com.apple.amp.medialibrary", "MultiUser");
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
    {
      *buf = 138543362;
      v24 = self;
      _os_log_impl(&dword_22D2FA000, v4, OS_LOG_TYPE_DEBUG, "%{public}@ - setupTimeoutTimerWithcompletion:", buf, 0xCu);
    }

    v5 = dispatch_source_create(MEMORY[0x277D85D38], 0, 0, 0);
    [(_MLChangeObserver *)self setTimeoutTimer:v5];

    v6 = dispatch_time(0, 10000000000);
    v7 = [(_MLChangeObserver *)self timeoutTimer];
    dispatch_source_set_timer(v7, v6, 0xFFFFFFFFFFFFFFFFLL, 0);

    objc_initWeak(buf, self);
    v8 = [(_MLChangeObserver *)self bundleID];
    v9 = [(_MLChangeObserver *)self connection];
    LOBYTE(v6) = v9 == 0;

    if (v6)
    {
      v11 = getpid();
    }

    else
    {
      v10 = [(_MLChangeObserver *)self connection];
      v11 = [v10 processIdentifier];
    }

    v12 = [(_MLChangeObserver *)self timeoutTimer];
    v15 = MEMORY[0x277D85DD0];
    v16 = 3221225472;
    v17 = __38___MLChangeObserver_setupTimeoutTimer__block_invoke;
    v18 = &unk_278764168;
    objc_copyWeak(&v21, buf);
    v13 = v8;
    v22 = v11;
    v19 = v13;
    v20 = self;
    dispatch_source_set_event_handler(v12, &v15);

    v14 = [(_MLChangeObserver *)self timeoutTimer:v15];
    dispatch_resume(v14);

    objc_destroyWeak(&v21);
    objc_destroyWeak(buf);
  }
}

- (void)tearDownTaskAssertion
{
  v8 = *MEMORY[0x277D85DE8];
  v3 = [(_MLChangeObserver *)self taskAssertion];

  if (v3)
  {
    v4 = os_log_create("com.apple.amp.medialibrary", "MultiUser");
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
    {
      v6 = 138543362;
      v7 = self;
      _os_log_impl(&dword_22D2FA000, v4, OS_LOG_TYPE_DEBUG, "%{public}@ - tearDownTaskAssertion", &v6, 0xCu);
    }

    v5 = [(_MLChangeObserver *)self taskAssertion];
    [v5 invalidate];

    [(_MLChangeObserver *)self setTaskAssertion:0];
  }
}

- (void)setupTaskAssertion
{
  v14 = *MEMORY[0x277D85DE8];
  v3 = objc_alloc(MEMORY[0x277D27F40]);
  v4 = [(_MLChangeObserver *)self connection];
  v5 = [v4 processIdentifier];
  v6 = [(_MLChangeObserver *)self bundleID];
  v7 = [v3 initWithName:@"Processing shared database path change" pid:v5 bundleID:v6 subsystem:@"com.apple.medialibraryd" reason:2 flags:3];
  [(_MLChangeObserver *)self setTaskAssertion:v7];

  v8 = os_log_create("com.apple.amp.medialibrary", "MultiUser");
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    v9 = [(_MLChangeObserver *)self taskAssertion];
    v10 = 138543618;
    v11 = self;
    v12 = 2114;
    v13 = v9;
    _os_log_impl(&dword_22D2FA000, v8, OS_LOG_TYPE_DEBUG, "%{public}@ - setupTaskAssertion: %{public}@", &v10, 0x16u);
  }
}

- (NSString)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = [(_MLChangeObserver *)self bundleID];
  v5 = [(_MLChangeObserver *)self connection];
  v6 = [v3 stringWithFormat:@"_MLChangeObserver <%p> - Observer for %@[%d]", self, v4, objc_msgSend(v5, "processIdentifier")];

  return v6;
}

- (NSString)bundleID
{
  v3 = [(_MLChangeObserver *)self connection];

  if (v3)
  {
    v4 = self->_bundleID;
  }

  else
  {
    v5 = [MEMORY[0x277CCA8D8] mainBundle];
    v4 = [v5 bundleIdentifier];
  }

  return v4;
}

- (void)setConnection:(id)a3
{
  v5 = a3;
  objc_storeStrong(&self->_connection, a3);
  if (v5)
  {
    [v5 auditToken];
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
    v8 = self;
    _os_log_impl(&dword_22D2FA000, v3, OS_LOG_TYPE_ERROR, "%{public}@ - terminateForFailureToPerformDatabasePathChange", buf, 0xCu);
  }

  v4 = [(_MLChangeObserver *)self connection];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __67___MLChangeObserver_terminateForFailureToPerformDatabasePathChange__block_invoke;
  v6[3] = &unk_278765828;
  v6[4] = self;
  v5 = [v4 remoteObjectProxyWithErrorHandler:v6];
  [v5 terminateForFailureToPerformDatabasePathChange];

  [(_MLChangeObserver *)self setConnection:0];
}

- (void)performDatabasePathChange:(id)a3 completion:(id)a4
{
  v25 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = os_log_create("com.apple.amp.medialibrary", "MultiUser");
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543618;
    v22 = self;
    v23 = 2114;
    v24 = v6;
    _os_log_impl(&dword_22D2FA000, v8, OS_LOG_TYPE_DEFAULT, "%{public}@ - performDatabasePathChange: - newPath=%{public}@", buf, 0x16u);
  }

  v19[0] = MEMORY[0x277D85DD0];
  v19[1] = 3221225472;
  v19[2] = __58___MLChangeObserver_performDatabasePathChange_completion___block_invoke;
  v19[3] = &unk_278764F50;
  v19[4] = self;
  v20 = v7;
  v9 = v7;
  v10 = MEMORY[0x2318CDB10](v19);
  os_unfair_lock_lock(&self->_lock);
  [(_MLChangeObserver *)self setupTaskAssertion];
  [(_MLChangeObserver *)self setupTimeoutTimer];
  os_unfair_lock_unlock(&self->_lock);
  v11 = [(_MLChangeObserver *)self connection];
  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 3221225472;
  v17[2] = __58___MLChangeObserver_performDatabasePathChange_completion___block_invoke_2;
  v17[3] = &unk_2787658A0;
  v17[4] = self;
  v12 = v10;
  v18 = v12;
  v13 = [v11 remoteObjectProxyWithErrorHandler:v17];
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __58___MLChangeObserver_performDatabasePathChange_completion___block_invoke_4;
  v15[3] = &unk_278764F50;
  v15[4] = self;
  v16 = v12;
  v14 = v12;
  [v13 performDatabasePathChange:v6 completion:v15];
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

+ (id)observerWithConnection:(id)a3
{
  v3 = a3;
  v4 = objc_alloc_init(_MLChangeObserver);
  [(_MLChangeObserver *)v4 setConnection:v3];

  return v4;
}

@end