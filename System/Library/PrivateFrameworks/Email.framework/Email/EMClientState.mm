@interface EMClientState
+ (OS_os_log)log;
+ (id)remoteInterface;
- (EMClientState)initWithRemoteConnection:(id)connection;
- (id)daemonBoosterWithDescription:(id)description;
- (void)_performAsyncUpdate:(id)update;
- (void)exitDaemon;
- (void)setCurrentlyVisibleMailboxObjectIDs:(id)ds;
- (void)setCurrentlyVisibleMailboxes:(id)mailboxes;
- (void)setIsRunningTests:(BOOL)tests;
- (void)setStateForDemoMode:(id)mode;
- (void)test_handleApplicationDidEnterBackground;
- (void)test_handleApplicationWillEnterForeground;
@end

@implementation EMClientState

+ (id)remoteInterface
{
  v2 = MEMORY[0x1E695DFD8];
  v3 = objc_opt_class();
  v4 = [v2 setWithObjects:{v3, objc_opt_class(), 0}];
  v5 = [MEMORY[0x1E696B0D0] interfaceWithProtocol:&unk_1F4641940];
  [v5 setClasses:v4 forSelector:sel_setVisibleMailboxObjectIDs_ argumentIndex:0 ofReply:0];
  v6 = [MEMORY[0x1E695DFD8] setWithObjects:{objc_opt_class(), 0}];
  [v5 setClasses:v6 forSelector:sel_setStateForDemoMode_ argumentIndex:1 ofReply:1];

  return v5;
}

+ (OS_os_log)log
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __20__EMClientState_log__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = self;
  if (log_onceToken_7 != -1)
  {
    dispatch_once(&log_onceToken_7, block);
  }

  v2 = log_log_7;

  return v2;
}

void __20__EMClientState_log__block_invoke(uint64_t a1)
{
  v3 = NSStringFromClass(*(a1 + 32));
  v1 = os_log_create("com.apple.email", [v3 UTF8String]);
  v2 = log_log_7;
  log_log_7 = v1;
}

- (EMClientState)initWithRemoteConnection:(id)connection
{
  connectionCopy = connection;
  v19.receiver = self;
  v19.super_class = EMClientState;
  v6 = [(EMClientState *)&v19 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_connection, connection);
    objc_initWeak(&location, v7);
    connection = v7->_connection;
    v13 = MEMORY[0x1E69E9820];
    v14 = 3221225472;
    v15 = __42__EMClientState_initWithRemoteConnection___block_invoke;
    v16 = &unk_1E826C070;
    objc_copyWeak(&v17, &location);
    [(EMRemoteConnection *)connection addRecoveryHandler:&v13];
    defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
    [defaultCenter addObserver:v7 selector:sel__handleApplicationWillEnterForeground name:@"UIApplicationWillEnterForegroundNotification" object:0];
    [defaultCenter addObserver:v7 selector:sel__handleApplicationDidEnterBackground name:@"UIApplicationDidEnterBackgroundNotification" object:0];
    observableObserver = [MEMORY[0x1E699B830] observableObserver];
    foregroundObservable = v7->_foregroundObservable;
    v7->_foregroundObservable = observableObserver;

    objc_destroyWeak(&v17);
    objc_destroyWeak(&location);
  }

  return v7;
}

void __42__EMClientState_initWithRemoteConnection___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __42__EMClientState_initWithRemoteConnection___block_invoke_2;
  v3[3] = &unk_1E826C6F0;
  v4 = WeakRetained;
  v2 = WeakRetained;
  [v2 _performAsyncUpdate:v3];
}

void __42__EMClientState_initWithRemoteConnection___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  [v3 setIsForeground:{objc_msgSend(*(a1 + 32), "isForeground")}];
  [v3 setIsRunningTests:{objc_msgSend(*(a1 + 32), "isRunningTests")}];
}

- (void)setCurrentlyVisibleMailboxes:(id)mailboxes
{
  v4 = [mailboxes ef_filter:*MEMORY[0x1E699B748]];
  v5 = [v4 ef_compactMapSelector:sel_objectID];

  [(EMClientState *)self setCurrentlyVisibleMailboxObjectIDs:v5];
}

- (void)setCurrentlyVisibleMailboxObjectIDs:(id)ds
{
  dsCopy = ds;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __53__EMClientState_setCurrentlyVisibleMailboxObjectIDs___block_invoke;
  v6[3] = &unk_1E826C6F0;
  v7 = dsCopy;
  v5 = dsCopy;
  [(EMClientState *)self _performAsyncUpdate:v6];
}

- (id)daemonBoosterWithDescription:(id)description
{
  descriptionCopy = description;
  v5 = [EMDaemonBooster alloc];
  connection = [(EMClientState *)self connection];
  v7 = [(EMDaemonBooster *)v5 initWithConnection:connection description:descriptionCopy];

  return v7;
}

- (void)test_handleApplicationWillEnterForeground
{
  if ((EFIsRunningUnitTests() & 1) == 0)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"EMClientState.m" lineNumber:113 description:{@"%s can only be called from unit tests", "-[EMClientState test_handleApplicationWillEnterForeground]"}];
  }

  [(EMClientState *)self _handleApplicationWillEnterForeground];
}

- (void)test_handleApplicationDidEnterBackground
{
  if ((EFIsRunningUnitTests() & 1) == 0)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"EMClientState.m" lineNumber:118 description:{@"%s can only be called from unit tests", "-[EMClientState test_handleApplicationDidEnterBackground]"}];
  }

  [(EMClientState *)self _handleApplicationDidEnterBackground];
}

- (void)setStateForDemoMode:(id)mode
{
  modeCopy = mode;
  v7 = MEMORY[0x1E69E9820];
  selfCopy = self;
  v5 = modeCopy;
  v9 = v5;
  mainThreadScheduler = [MEMORY[0x1E699B978] mainThreadScheduler];
  [mainThreadScheduler performBlock:&v7];
}

void __37__EMClientState_setStateForDemoMode___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) connection];
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __37__EMClientState_setStateForDemoMode___block_invoke_2;
  v4[3] = &unk_1E826C738;
  v5 = *(a1 + 40);
  v3 = [v2 remoteObjectProxyWithErrorHandler:v4];

  [v3 setStateForDemoMode:*(a1 + 40)];
}

- (void)exitDaemon
{
  connection = [(EMClientState *)self connection];
  v3 = [connection remoteObjectProxyWithErrorHandler:&__block_literal_global_5];

  [v3 exitDaemon];
}

void __27__EMClientState_exitDaemon__block_invoke(uint64_t a1, void *a2)
{
  v7 = *MEMORY[0x1E69E9840];
  v2 = a2;
  v3 = +[EMClientState log];
  if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    v4 = [v2 ef_publicDescription];
    __27__EMClientState_exitDaemon__block_invoke_cold_1(v4, v6, v3);
  }

  v5 = *MEMORY[0x1E69E9840];
}

- (void)setIsRunningTests:(BOOL)tests
{
  self->_isRunningTests = tests;
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __35__EMClientState_setIsRunningTests___block_invoke;
  v3[3] = &__block_descriptor_33_e34_v16__0___EMClientStateInterface__8l;
  testsCopy = tests;
  [(EMClientState *)self _performAsyncUpdate:v3];
}

- (void)_performAsyncUpdate:(id)update
{
  updateCopy = update;
  v7 = MEMORY[0x1E69E9820];
  selfCopy = self;
  v5 = updateCopy;
  v9 = v5;
  mainThreadScheduler = [MEMORY[0x1E699B978] mainThreadScheduler];
  [mainThreadScheduler performBlock:&v7];
}

void __37__EMClientState__performAsyncUpdate___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) connection];
  v3 = [v2 remoteObjectProxy];

  (*(*(a1 + 40) + 16))();
}

void __27__EMClientState_exitDaemon__block_invoke_cold_1(void *a1, uint8_t *buf, os_log_t log)
{
  *buf = 138543362;
  *(buf + 4) = a1;
  _os_log_error_impl(&dword_1C6655000, log, OS_LOG_TYPE_ERROR, "Failed to establish XPC connection. Error: %{public}@", buf, 0xCu);
}

@end