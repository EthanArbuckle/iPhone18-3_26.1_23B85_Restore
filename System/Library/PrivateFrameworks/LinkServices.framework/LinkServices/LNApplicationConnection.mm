@interface LNApplicationConnection
- (BOOL)shouldRefreshWithOptions:(id)options;
- (LNApplicationConnection)initWithBundleIdentifier:(id)identifier;
- (void)handleConnectionActionResponse:(id)response;
@end

@implementation LNApplicationConnection

- (LNApplicationConnection)initWithBundleIdentifier:(id)identifier
{
  identifierCopy = identifier;
  v5 = +[LNConnectionManager sharedInstance];
  v6 = [objc_alloc(MEMORY[0x1E69AC7B0]) initWithType:0 bundleIdentifier:identifierCopy];
  v7 = [v5 connectionForEffectiveBundleIdentifier:v6 appBundleIdentifier:identifierCopy processInstanceIdentifier:0 mangledTypeName:0 userIdentity:0 error:0];

  return v7;
}

- (BOOL)shouldRefreshWithOptions:(id)options
{
  v33 = *MEMORY[0x1E69E9840];
  optionsCopy = options;
  queue = [(LNConnection *)self queue];
  dispatch_assert_queue_V2(queue);

  if ([(LNConnection *)self state]!= 3)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"LNApplicationConnection.m" lineNumber:71 description:{@"Invalid parameter not satisfying: %@", @"self.state == LNConnectionStateConnected"}];
  }

  v7 = optionsCopy;
  v8 = v7;
  if (!v7 || (v9 = [v7 conformsToProtocol:&unk_1F0BDD200], v8, (v9 & 1) == 0))
  {
    currentHandler2 = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler2 handleFailureInMethod:a2 object:self file:@"LNApplicationConnection.m" lineNumber:72 description:{@"Invalid parameter not satisfying: %@", @"IFCastIfConforms(options, LNApplicationConnectionOptions) != nil"}];
  }

  v11 = MEMORY[0x1E698E620];
  [(LNConnection *)self auditToken];
  v12 = [v11 tokenFromAuditToken:buf];
  v13 = [MEMORY[0x1E696AD98] numberWithInt:{objc_msgSend(v12, "pid")}];
  v26 = 0;
  v14 = [MEMORY[0x1E69C75D0] handleForIdentifier:v13 error:&v26];
  v15 = v26;
  if (!v14)
  {
    v16 = getLNLogCategoryConnection();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      logPrefix = [(LNConnection *)self logPrefix];
      *buf = 138543874;
      v28 = logPrefix;
      v29 = 2114;
      v30 = v13;
      v31 = 2114;
      v32 = v15;
      _os_log_impl(&dword_19763D000, v16, OS_LOG_TYPE_ERROR, "%{public}@ Unable to get process handle for pid %{public}@, %{public}@", buf, 0x20u);
    }
  }

  if ([v14 isDaemon])
  {
    v18 = getLNLogCategoryConnection();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_INFO))
    {
      logPrefix2 = [(LNConnection *)self logPrefix];
      *buf = 138543618;
      v28 = logPrefix2;
      v29 = 2114;
      v30 = v13;
      _os_log_impl(&dword_19763D000, v18, OS_LOG_TYPE_INFO, "%{public}@ pid %{public}@ is a daemon; refresh is not required", buf, 0x16u);
    }

    v20 = 0;
  }

  else if ([v8 isForeground])
  {
    v21 = getLNLogCategoryConnection();
    if (os_log_type_enabled(v21, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_19763D000, v21, OS_LOG_TYPE_INFO, "Should refresh because we need to launch into the foreground", buf, 2u);
    }

    v20 = 1;
  }

  else
  {
    v25.receiver = self;
    v25.super_class = LNApplicationConnection;
    v20 = [(LNConnection *)&v25 shouldRefreshWithOptions:v8];
  }

  v22 = *MEMORY[0x1E69E9840];
  return v20;
}

- (void)handleConnectionActionResponse:(id)response
{
  responseCopy = response;
  queue = [(LNConnection *)self queue];
  dispatch_assert_queue_V2(queue);

  if (!responseCopy)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"LNApplicationConnection.m" lineNumber:62 description:{@"Invalid parameter not satisfying: %@", @"actionResponse"}];
  }

  if ([(LNConnection *)self state]!= 1)
  {
    currentHandler2 = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler2 handleFailureInMethod:a2 object:self file:@"LNApplicationConnection.m" lineNumber:63 description:{@"Invalid parameter not satisfying: %@", @"self.state == LNConnectionStateConnecting"}];
  }

  listenerEndpoint = [responseCopy listenerEndpoint];
  if (responseCopy)
  {
    [responseCopy auditToken];
  }

  else
  {
    memset(v10, 0, sizeof(v10));
  }

  [(LNConnection *)self connectUsingListenerEndpoint:listenerEndpoint auditToken:v10];
}

@end