@interface MSAutosaveSession
+ (id)log;
- (MSAutosaveSession)initWithIdentifier:(id)identifier remoteSession:(id)session remoteService:(id)service;
- (void)didReconnectRemoteSession:(id)session remoteService:(id)service;
- (void)remoteSessionDisconnectedWithError:(id)error;
@end

@implementation MSAutosaveSession

+ (id)log
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __24__MSAutosaveSession_log__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = self;
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

- (MSAutosaveSession)initWithIdentifier:(id)identifier remoteSession:(id)session remoteService:(id)service
{
  identifierCopy = identifier;
  sessionCopy = session;
  serviceCopy = service;
  v15.receiver = self;
  v15.super_class = MSAutosaveSession;
  v12 = [(MSAutosaveSession *)&v15 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_autosaveIdentifier, identifier);
    objc_storeStrong(&v13->_remoteSession, session);
    objc_storeStrong(&v13->_remoteService, service);
  }

  return v13;
}

- (void)didReconnectRemoteSession:(id)session remoteService:(id)service
{
  v13 = *MEMORY[0x1E69E9840];
  sessionCopy = session;
  serviceCopy = service;
  v8 = +[MSAutosaveSession log];
  if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
  {
    autosaveIdentifier = [(MSAutosaveSession *)self autosaveIdentifier];
    v11 = 138412290;
    v12 = autosaveIdentifier;
    _os_log_impl(&dword_1D876A000, v8, OS_LOG_TYPE_INFO, "Reconnected to remote autosave session (autosaveID=%@)", &v11, 0xCu);
  }

  [(MSAutosaveSession *)self setRemoteSession:sessionCopy];
  [(MSAutosaveSession *)self setRemoteService:serviceCopy];

  v10 = *MEMORY[0x1E69E9840];
}

- (void)remoteSessionDisconnectedWithError:(id)error
{
  v10 = *MEMORY[0x1E69E9840];
  errorCopy = error;
  v5 = +[MSAutosaveSession log];
  if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
  {
    autosaveIdentifier = [(MSAutosaveSession *)self autosaveIdentifier];
    ef_publicDescription = [errorCopy ef_publicDescription];
    [(MSAutosaveSession *)autosaveIdentifier remoteSessionDisconnectedWithError:ef_publicDescription, v9, v5];
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