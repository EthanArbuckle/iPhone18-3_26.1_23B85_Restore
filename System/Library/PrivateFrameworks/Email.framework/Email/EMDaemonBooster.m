@interface EMDaemonBooster
+ (OS_os_log)log;
- (EMDaemonBooster)initWithConnection:(id)a3 description:(id)a4;
- (id)_newRemoteBoost;
- (void)dealloc;
@end

@implementation EMDaemonBooster

- (id)_newRemoteBoost
{
  v20 = *MEMORY[0x1E69E9840];
  v3 = [(EMDaemonBooster *)self connection];
  v4 = [v3 remoteObjectProxy];

  v5 = [(EMDaemonBooster *)self loggingDescription];
  v6 = [objc_opt_class() log];
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134218242;
    v17 = self;
    v18 = 2114;
    v19 = v5;
    _os_log_impl(&dword_1C6655000, v6, OS_LOG_TYPE_DEFAULT, "%ld: Acquired Daemon Boost for: %{public}@", buf, 0x16u);
  }

  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __34__EMDaemonBooster__newRemoteBoost__block_invoke;
  v12[3] = &unk_1E826CB80;
  v13 = v6;
  v15 = self;
  v7 = v5;
  v14 = v7;
  v8 = v6;
  v9 = [v4 giveBoostWithCompletionBlock:v12];

  v10 = *MEMORY[0x1E69E9840];
  return v9;
}

+ (OS_os_log)log
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __22__EMDaemonBooster_log__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = a1;
  if (log_onceToken_10 != -1)
  {
    dispatch_once(&log_onceToken_10, block);
  }

  v2 = log_log_10;

  return v2;
}

void __22__EMDaemonBooster_log__block_invoke(uint64_t a1)
{
  v3 = NSStringFromClass(*(a1 + 32));
  v1 = os_log_create("com.apple.email", [v3 UTF8String]);
  v2 = log_log_10;
  log_log_10 = v1;
}

- (EMDaemonBooster)initWithConnection:(id)a3 description:(id)a4
{
  v7 = a3;
  v8 = a4;
  v21.receiver = self;
  v21.super_class = EMDaemonBooster;
  v9 = [(EMDaemonBooster *)&v21 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_connection, a3);
    objc_storeStrong(&v10->_loggingDescription, a4);
    objc_initWeak(&location, v10);
    v11 = [(EMDaemonBooster *)v10 _newRemoteBoost];
    remoteBoost = v10->_remoteBoost;
    v10->_remoteBoost = v11;

    connection = v10->_connection;
    v18[0] = MEMORY[0x1E69E9820];
    v18[1] = 3221225472;
    v18[2] = __50__EMDaemonBooster_initWithConnection_description___block_invoke;
    v18[3] = &unk_1E826C070;
    objc_copyWeak(&v19, &location);
    [(EMRemoteConnection *)connection addResetHandler:v18];
    v14 = v10->_connection;
    v16[0] = MEMORY[0x1E69E9820];
    v16[1] = 3221225472;
    v16[2] = __50__EMDaemonBooster_initWithConnection_description___block_invoke_2;
    v16[3] = &unk_1E826C070;
    objc_copyWeak(&v17, &location);
    [(EMRemoteConnection *)v14 addRecoveryHandler:v16];
    objc_destroyWeak(&v17);
    objc_destroyWeak(&v19);
    objc_destroyWeak(&location);
  }

  return v10;
}

void __50__EMDaemonBooster_initWithConnection_description___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v1 = [WeakRetained remoteBoost];
  [v1 cancel];

  [WeakRetained setRemoteBoost:0];
}

void __50__EMDaemonBooster_initWithConnection_description___block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v1 = [WeakRetained remoteBoost];
  [v1 cancel];

  v2 = [WeakRetained _newRemoteBoost];
  [WeakRetained setRemoteBoost:v2];
}

void __34__EMDaemonBooster__newRemoteBoost__block_invoke(void *a1)
{
  v10 = *MEMORY[0x1E69E9840];
  v2 = a1[4];
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v4 = a1[5];
    v3 = a1[6];
    v6 = 134218242;
    v7 = v3;
    v8 = 2114;
    v9 = v4;
    _os_log_impl(&dword_1C6655000, v2, OS_LOG_TYPE_DEFAULT, "%ld: Released Daemon Boost for: %{public}@", &v6, 0x16u);
  }

  v5 = *MEMORY[0x1E69E9840];
}

- (void)dealloc
{
  v3 = [(EMDaemonBooster *)self remoteBoost];
  [v3 cancel];

  remoteBoost = self->_remoteBoost;
  self->_remoteBoost = 0;

  v5.receiver = self;
  v5.super_class = EMDaemonBooster;
  [(EMDaemonBooster *)&v5 dealloc];
}

@end