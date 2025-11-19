@interface MSAutosaveSession
+ (id)log;
- (MSAutosaveSession)initWithIdentifier:(id)a3 remoteSession:(id)a4 remoteService:(id)a5;
- (void)didReconnectRemoteSession:(id)a3 remoteService:(id)a4;
- (void)remoteSessionDisconnectedWithError:(id)a3;
@end

@implementation MSAutosaveSession

+ (id)log
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __24__MSAutosaveSession_log__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = a1;
  if (log_onceToken_0 != -1)
  {
    dispatch_once(&log_onceToken_0, block);
  }

  v2 = log_log_0;

  return v2;
}

void __24__MSAutosaveSession_log__block_invoke(uint64_t a1)
{
  v3 = NSStringFromClass(*(a1 + 32));
  v1 = os_log_create("com.apple.email", [v3 UTF8String]);
  v2 = log_log_0;
  log_log_0 = v1;
}

- (MSAutosaveSession)initWithIdentifier:(id)a3 remoteSession:(id)a4 remoteService:(id)a5
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v15.receiver = self;
  v15.super_class = MSAutosaveSession;
  v12 = [(MSAutosaveSession *)&v15 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_autosaveIdentifier, a3);
    objc_storeStrong(&v13->_remoteSession, a4);
    objc_storeStrong(&v13->_remoteService, a5);
  }

  return v13;
}

- (void)didReconnectRemoteSession:(id)a3 remoteService:(id)a4
{
  v13 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v8 = +[MSAutosaveSession log];
  if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
  {
    v9 = [(MSAutosaveSession *)self autosaveIdentifier];
    v11 = 138412290;
    v12 = v9;
    _os_log_impl(&dword_1D876A000, v8, OS_LOG_TYPE_INFO, "Reconnected to remote autosave session (autosaveID=%@)", &v11, 0xCu);
  }

  [(MSAutosaveSession *)self setRemoteSession:v6];
  [(MSAutosaveSession *)self setRemoteService:v7];

  v10 = *MEMORY[0x1E69E9840];
}

- (void)remoteSessionDisconnectedWithError:(id)a3
{
  v10 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = +[MSAutosaveSession log];
  if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
  {
    v6 = [(MSAutosaveSession *)self autosaveIdentifier];
    v7 = [v4 ef_publicDescription];
    [(MSAutosaveSession *)v6 remoteSessionDisconnectedWithError:v7, v9, v5];
  }

  v8 = *MEMORY[0x1E69E9840];
}

- (void)remoteSessionDisconnectedWithError:(uint8_t *)buf .cold.1(void *a1, void *a2, uint8_t *buf, os_log_t log)
{
  *buf = 138412546;
  *(buf + 4) = a1;
  *(buf + 6) = 2114;
  *(buf + 14) = a2;
  _os_log_error_impl(&dword_1D876A000, log, OS_LOG_TYPE_ERROR, "Reconnecting to remote autosave session (autosaveID=%@) failed with error: %{public}@", buf, 0x16u);
}

@end