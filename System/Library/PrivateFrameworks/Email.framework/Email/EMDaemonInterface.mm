@interface EMDaemonInterface
+ (BOOL)cachedMailAppIsInstalled;
+ (NSXPCInterface)remoteObjectInterface;
+ (OS_os_log)log;
+ (id)_mailUninstalledFile;
+ (void)setCachedMailAppIsInstalled:(BOOL)installed;
- (EMBlockedSenderManager)blockedSenderManager;
- (EMDaemonInterface)initWithListenerEndpoint:(id)endpoint;
- (NSXPCConnection)test_connection;
- (id)_connectionForProtocol:(id)protocol error:(id *)error;
- (id)_initByAdoptingConnection:(id)connection useNegotiatedConnection:(BOOL)negotiatedConnection configureBlockedSenderManager:(BOOL)manager;
- (id)connectionForProtocol:(id)protocol;
- (id)generateProxyForProtocol:(id)protocol error:(id *)error;
- (id)initForTesting;
- (void)_invalidate;
- (void)dealloc;
- (void)handleDaemonAvailability;
- (void)launchDaemon;
- (void)repopulateBusinessesTables;
- (void)resetProtocolConnections;
- (void)test_tearDown;
@end

@implementation EMDaemonInterface

+ (id)_mailUninstalledFile
{
  v2 = +[EMPersistenceLayoutManager mailDataDirectory];
  v3 = [v2 URLByAppendingPathComponent:@"uninstalled"];

  return v3;
}

+ (NSXPCInterface)remoteObjectInterface
{
  v2 = [MEMORY[0x1E696B0D0] interfaceWithProtocol:&unk_1F4642698];
  v3 = +[EMAccountRepository remoteInterface];
  [v2 setInterface:v3 forSelector:sel_getAccountRepositoryInterface_ argumentIndex:0 ofReply:1];

  v4 = +[EMClientState remoteInterface];
  [v2 setInterface:v4 forSelector:sel_getClientStateInterface_ argumentIndex:0 ofReply:1];

  v5 = +[EMFetchController remoteInterface];
  [v2 setInterface:v5 forSelector:sel_getFetchControllerInterface_ argumentIndex:0 ofReply:1];

  v6 = +[EMInteractionLogger remoteInterface];
  [v2 setInterface:v6 forSelector:sel_getInteractionLoggerInterface_ argumentIndex:0 ofReply:1];

  v7 = +[EMMailboxRepository remoteInterface];
  [v2 setInterface:v7 forSelector:sel_getMailboxRepositoryInterface_ argumentIndex:0 ofReply:1];

  v8 = +[EMMessageRepository remoteInterface];
  [v2 setInterface:v8 forSelector:sel_getMessageRepositoryInterface_ argumentIndex:0 ofReply:1];

  v9 = +[EMOutgoingMessageRepository remoteInterface];
  [v2 setInterface:v9 forSelector:sel_getOutgoingMessageRepositoryInterface_ argumentIndex:0 ofReply:1];

  v10 = +[EMSenderRepository remoteInterface];
  [v2 setInterface:v10 forSelector:sel_getSenderRepositoryInterface_ argumentIndex:0 ofReply:1];

  v11 = +[EMSearchableIndex remoteInterface];
  [v2 setInterface:v11 forSelector:sel_getSearchableIndexInterface_ argumentIndex:0 ofReply:1];

  v12 = +[EMVIPManager remoteInterface];
  [v2 setInterface:v12 forSelector:sel_getVIPManagerInterface_ argumentIndex:0 ofReply:1];

  v13 = +[EMActivityRegistry remoteInterface];
  [v2 setInterface:v13 forSelector:sel_getActivityRegistryInterface_ argumentIndex:0 ofReply:1];

  v14 = +[EMDiagnosticInfoGatherer remoteInterface];
  [v2 setInterface:v14 forSelector:sel_getDiagnosticInfoGathererInterface_ argumentIndex:0 ofReply:1];

  return v2;
}

- (void)launchDaemon
{
  proxyCreator = [(EMDaemonInterface *)self proxyCreator];
  remoteObjectProxy = [proxyCreator remoteObjectProxy];
  [remoteObjectProxy launchForAppLaunch:&__block_literal_global_329];
}

- (void)handleDaemonAvailability
{
  queue = self->_queue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __45__EMDaemonInterface_handleDaemonAvailability__block_invoke;
  block[3] = &unk_1E826C098;
  block[4] = self;
  dispatch_async(queue, block);
}

void __24__EMDaemonInterface_log__block_invoke(uint64_t a1)
{
  v3 = NSStringFromClass(*(a1 + 32));
  v1 = os_log_create("com.apple.email", [v3 UTF8String]);
  v2 = log_log_11;
  log_log_11 = v1;
}

+ (OS_os_log)log
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __24__EMDaemonInterface_log__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = self;
  if (log_onceToken_11 != -1)
  {
    dispatch_once(&log_onceToken_11, block);
  }

  v2 = log_log_11;

  return v2;
}

void __45__EMDaemonInterface_handleDaemonAvailability__block_invoke(uint64_t a1)
{
  v25 = *MEMORY[0x1E69E9840];
  v2 = *(*(a1 + 32) + 32) == 1;
  v3 = +[EMDaemonInterface log];
  v4 = os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT);
  if (v2)
  {
    if (v4)
    {
      v5 = *(a1 + 32);
      *buf = 138543362;
      v24 = v5;
      _os_log_impl(&dword_1C6655000, v3, OS_LOG_TYPE_DEFAULT, "%{public}@: Daemon re-launched, recovering remote connections", buf, 0xCu);
    }

    v6 = *(a1 + 32);
    os_unfair_lock_lock(v6 + 13);
    v7 = [*(*(a1 + 32) + 24) allObjects];
    os_unfair_lock_unlock(v6 + 13);
    v20 = 0u;
    v21 = 0u;
    v18 = 0u;
    v19 = 0u;
    v3 = v7;
    v8 = [v3 countByEnumeratingWithState:&v18 objects:v22 count:16];
    if (v8)
    {
      v9 = *v19;
      do
      {
        v10 = 0;
        do
        {
          if (*v19 != v9)
          {
            objc_enumerationMutation(v3);
          }

          [*(*(&v18 + 1) + 8 * v10++) recover];
        }

        while (v8 != v10);
        v8 = [v3 countByEnumeratingWithState:&v18 objects:v22 count:16];
      }

      while (v8);
    }

    v11 = *(a1 + 32);
    if (v11[48] == 1)
    {
      v12 = [v11 proxyCreator];
      v13 = [v12 remoteObjectProxy];
      [v13 setAllowsBackgroundResume:1];
    }

    v14 = +[EMDaemonInterface log];
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      v15 = *(a1 + 32);
      *buf = 138543362;
      v24 = v15;
      _os_log_impl(&dword_1C6655000, v14, OS_LOG_TYPE_DEFAULT, "%{public}@: Finished recovery", buf, 0xCu);
    }

    *(*(a1 + 32) + 32) = 0;
  }

  else if (v4)
  {
    v16 = *(a1 + 32);
    *buf = 138543362;
    v24 = v16;
    _os_log_impl(&dword_1C6655000, v3, OS_LOG_TYPE_DEFAULT, "%{public}@: Skipping recovery", buf, 0xCu);
  }

  v17 = *MEMORY[0x1E69E9840];
}

- (EMDaemonInterface)initWithListenerEndpoint:(id)endpoint
{
  endpointCopy = endpoint;
  v5 = [objc_alloc(MEMORY[0x1E696B0B8]) initWithListenerEndpoint:endpointCopy];
  v6 = [(EMDaemonInterface *)self _initByAdoptingConnection:v5 useNegotiatedConnection:0 configureBlockedSenderManager:0];

  return v6;
}

- (id)_initByAdoptingConnection:(id)connection useNegotiatedConnection:(BOOL)negotiatedConnection configureBlockedSenderManager:(BOOL)manager
{
  connectionCopy = connection;
  v79.receiver = self;
  v79.super_class = EMDaemonInterface;
  v9 = [(EMDaemonInterface *)&v79 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_connection, connection);
    v11 = +[EMDaemonInterface remoteObjectInterface];
    [(NSXPCConnection *)v10->_connection setRemoteObjectInterface:v11];

    objc_initWeak(&location, v10);
    v76[0] = MEMORY[0x1E69E9820];
    v76[1] = 3221225472;
    v76[2] = __101__EMDaemonInterface__initByAdoptingConnection_useNegotiatedConnection_configureBlockedSenderManager___block_invoke;
    v76[3] = &unk_1E826C070;
    objc_copyWeak(&v77, &location);
    [connectionCopy setInterruptionHandler:v76];
    v74[0] = MEMORY[0x1E69E9820];
    v74[1] = 3221225472;
    v74[2] = __101__EMDaemonInterface__initByAdoptingConnection_useNegotiatedConnection_configureBlockedSenderManager___block_invoke_7;
    v74[3] = &unk_1E826C070;
    objc_copyWeak(&v75, &location);
    [connectionCopy setInvalidationHandler:v74];
    [connectionCopy resume];
    v12 = [MEMORY[0x1E699B830] observableOnNotifyTokenWithName:@"com.apple.email.maild.launched"];
    v13 = [MEMORY[0x1E699B978] serialDispatchQueueSchedulerWithName:@"com.apple.email.maild.launched" qualityOfService:17];
    v14 = [v12 debounceWithTimeInterval:v13 scheduler:0.05];
    v72[0] = MEMORY[0x1E69E9820];
    v72[1] = 3221225472;
    v72[2] = __101__EMDaemonInterface__initByAdoptingConnection_useNegotiatedConnection_configureBlockedSenderManager___block_invoke_10;
    v72[3] = &unk_1E826CBB8;
    objc_copyWeak(&v73, &location);
    v15 = [v14 subscribeWithResultBlock:v72];
    daemonLaunchToken = v10->_daemonLaunchToken;
    v10->_daemonLaunchToken = v15;

    v17 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v18 = dispatch_get_global_queue(21, 0);
    v19 = dispatch_queue_create_with_target_V2("com.apple.email.EMDaemonInterface", v17, v18);
    queue = v10->_queue;
    v10->_queue = v19;

    weakObjectsHashTable = [MEMORY[0x1E696AC70] weakObjectsHashTable];
    connections = v10->_connections;
    v10->_connections = weakObjectsHashTable;

    v23 = [EMAccountRepository alloc];
    v24 = [(EMDaemonInterface *)v10 connectionForProtocol:&unk_1F4641828];
    v25 = [(EMAccountRepository *)v23 initWithRemoteConnection:v24];
    accountRepository = v10->_accountRepository;
    v10->_accountRepository = v25;

    v27 = [EMMailboxRepository alloc];
    v28 = [(EMDaemonInterface *)v10 connectionForProtocol:&unk_1F4641C80];
    v29 = [(EMMailboxRepository *)v27 initWithRemoteConnection:v28 accountRepository:v10->_accountRepository];
    mailboxRepository = v10->_mailboxRepository;
    v10->_mailboxRepository = v29;

    v31 = [EMVIPManager alloc];
    v32 = [(EMDaemonInterface *)v10 connectionForProtocol:&unk_1F4641D50];
    v33 = [(EMVIPManager *)v31 initWithRemoteConnection:v32];
    vipManager = v10->_vipManager;
    v10->_vipManager = v33;

    v35 = [EMMessageRepository alloc];
    v36 = [(EMDaemonInterface *)v10 connectionForProtocol:&unk_1F4642098];
    v37 = [(EMMessageRepository *)v35 initWithRemoteConnection:v36 mailboxRepository:v10->_mailboxRepository vipManager:v10->_vipManager];
    messageRepository = v10->_messageRepository;
    v10->_messageRepository = v37;

    v39 = [EMSenderRepository alloc];
    v40 = [(EMDaemonInterface *)v10 connectionForProtocol:&unk_1F46420F8];
    v41 = [(EMRepository *)v39 initWithRemoteConnection:v40];
    senderRepository = v10->_senderRepository;
    v10->_senderRepository = v41;

    v43 = [EMFetchController alloc];
    v44 = [(EMDaemonInterface *)v10 connectionForProtocol:&unk_1F4642158];
    v45 = [(EMFetchController *)v43 initWithRemoteConnection:v44];
    fetchController = v10->_fetchController;
    v10->_fetchController = v45;

    v47 = [EMOutgoingMessageRepository alloc];
    v48 = [(EMDaemonInterface *)v10 connectionForProtocol:&unk_1F46422D0];
    v49 = [(EMOutgoingMessageRepository *)v47 initWithRemoteConnection:v48];
    outgoingMessageRepository = v10->_outgoingMessageRepository;
    v10->_outgoingMessageRepository = v49;

    v51 = [EMClientState alloc];
    v52 = [(EMDaemonInterface *)v10 connectionForProtocol:&unk_1F4641940];
    v53 = [(EMClientState *)v51 initWithRemoteConnection:v52];
    clientState = v10->_clientState;
    v10->_clientState = v53;

    v55 = [EMSearchableIndex alloc];
    v56 = [(EMDaemonInterface *)v10 connectionForProtocol:&unk_1F4642390];
    v57 = [(EMSearchableIndex *)v55 initWithRemoteConnection:v56];
    searchableIndex = v10->_searchableIndex;
    v10->_searchableIndex = v57;

    v59 = [EMInteractionLogger alloc];
    v60 = [(EMDaemonInterface *)v10 connectionForProtocol:&unk_1F4642440];
    v61 = [(EMInteractionLogger *)v59 initWithRemoteConnection:v60];
    interactionLogger = v10->_interactionLogger;
    v10->_interactionLogger = v61;

    v63 = [EMActivityRegistry alloc];
    v64 = [(EMDaemonInterface *)v10 connectionForProtocol:&unk_1F46418E0];
    v65 = [(EMActivityRegistry *)v63 initWithRemoteConnection:v64];
    activityRegistry = v10->_activityRegistry;
    v10->_activityRegistry = v65;

    v67 = [EMDiagnosticInfoGatherer alloc];
    v68 = [(EMDaemonInterface *)v10 connectionForProtocol:&unk_1F4642538];
    v69 = [(EMDiagnosticInfoGatherer *)v67 initWithRemoteConnection:v68];
    diagnosticInfoGatherer = v10->_diagnosticInfoGatherer;
    v10->_diagnosticInfoGatherer = v69;

    atomic_store(0, &v10->_invalidated);
    v10->_wantsBlockedSenderManager = manager;
    objc_destroyWeak(&v73);

    objc_destroyWeak(&v75);
    objc_destroyWeak(&v77);
    objc_destroyWeak(&location);
  }

  return v10;
}

void __101__EMDaemonInterface__initByAdoptingConnection_useNegotiatedConnection_configureBlockedSenderManager___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v2 = +[EMDaemonInterface log];
    if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
    {
      __101__EMDaemonInterface__initByAdoptingConnection_useNegotiatedConnection_configureBlockedSenderManager___block_invoke_cold_1(WeakRetained, v2);
    }

    [WeakRetained resetProtocolConnections];
  }
}

void __101__EMDaemonInterface__initByAdoptingConnection_useNegotiatedConnection_configureBlockedSenderManager___block_invoke_7(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v2 = +[EMDaemonInterface log];
    if (os_log_type_enabled(v2, OS_LOG_TYPE_FAULT))
    {
      __101__EMDaemonInterface__initByAdoptingConnection_useNegotiatedConnection_configureBlockedSenderManager___block_invoke_7_cold_1(WeakRetained, v2);
    }
  }
}

void __101__EMDaemonInterface__initByAdoptingConnection_useNegotiatedConnection_configureBlockedSenderManager___block_invoke_10(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained handleDaemonAvailability];
}

- (id)initForTesting
{
  v3.receiver = self;
  v3.super_class = EMDaemonInterface;
  result = [(EMDaemonInterface *)&v3 init];
  if (result)
  {
    atomic_store(0, result + 56);
  }

  return result;
}

- (void)dealloc
{
  [(EMDaemonInterface *)self _invalidate];
  v3.receiver = self;
  v3.super_class = EMDaemonInterface;
  [(EMDaemonInterface *)&v3 dealloc];
}

- (void)_invalidate
{
  v3 = 0;
  atomic_compare_exchange_strong(&self->_invalidated, &v3, 1u);
  if (!v3)
  {
    accountRepository = self->_accountRepository;
    self->_accountRepository = 0;

    mailboxRepository = self->_mailboxRepository;
    self->_mailboxRepository = 0;

    vipManager = self->_vipManager;
    self->_vipManager = 0;

    blockedSenderManager = self->_blockedSenderManager;
    self->_blockedSenderManager = 0;

    messageRepository = self->_messageRepository;
    self->_messageRepository = 0;

    fetchController = self->_fetchController;
    self->_fetchController = 0;

    outgoingMessageRepository = self->_outgoingMessageRepository;
    self->_outgoingMessageRepository = 0;

    senderRepository = self->_senderRepository;
    self->_senderRepository = 0;

    clientState = self->_clientState;
    self->_clientState = 0;

    searchableIndex = self->_searchableIndex;
    self->_searchableIndex = 0;

    interactionLogger = self->_interactionLogger;
    self->_interactionLogger = 0;

    activityRegistry = self->_activityRegistry;
    self->_activityRegistry = 0;

    diagnosticInfoGatherer = self->_diagnosticInfoGatherer;
    self->_diagnosticInfoGatherer = 0;

    [(NSXPCConnection *)self->_connection invalidate];
    connection = self->_connection;
    self->_connection = 0;

    [(EFCancelable *)self->_daemonLaunchToken cancel];
    daemonLaunchToken = self->_daemonLaunchToken;
    self->_daemonLaunchToken = 0;
  }
}

- (void)test_tearDown
{
  if ((EFIsRunningUnitTests() & 1) == 0)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"EMDaemonInterface.m" lineNumber:224 description:{@"%s can only be called from unit tests", "-[EMDaemonInterface test_tearDown]"}];
  }

  blockedSenderManager = [(EMDaemonInterface *)self blockedSenderManager];
  [blockedSenderManager test_tearDown];

  [(EMDaemonInterface *)self _invalidate];
}

- (NSXPCConnection)test_connection
{
  if ((EFIsRunningUnitTests() & 1) == 0)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"EMDaemonInterface.m" lineNumber:230 description:{@"%s can only be called from unit tests", "-[EMDaemonInterface test_connection]"}];
  }

  connection = self->_connection;

  return connection;
}

- (id)_connectionForProtocol:(id)protocol error:(id *)error
{
  protocolCopy = protocol;
  if (_connectionForProtocol_error__onceToken != -1)
  {
    [EMDaemonInterface _connectionForProtocol:error:];
  }

  Value = CFDictionaryGetValue(_connectionForProtocol_error__map, protocolCopy);
  v22 = 0;
  v23 = &v22;
  v24 = 0x3032000000;
  v25 = __Block_byref_object_copy__2;
  v26 = __Block_byref_object_dispose__2;
  v27 = 0;
  proxyCreator = [(EMDaemonInterface *)self proxyCreator];
  v21[0] = MEMORY[0x1E69E9820];
  v21[1] = 3221225472;
  v21[2] = __50__EMDaemonInterface__connectionForProtocol_error___block_invoke_324;
  v21[3] = &unk_1E826CBE0;
  v21[4] = &v22;
  v9 = [proxyCreator synchronousRemoteObjectProxyWithErrorHandler:v21];

  v15 = 0;
  v16 = &v15;
  v17 = 0x3032000000;
  v18 = __Block_byref_object_copy__2;
  v19 = __Block_byref_object_dispose__2;
  v20 = 0;
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __50__EMDaemonInterface__connectionForProtocol_error___block_invoke_2;
  v14[3] = &unk_1E826CC08;
  v14[4] = &v15;
  v10 = _Block_copy(v14);
  [v9 Value];
  v11 = v16[5];
  if (v11)
  {
    [(EMDaemonInterface *)self handleDaemonAvailability];
    v11 = v16[5];
  }

  if (error && !v11)
  {
    *error = v23[5];
    v11 = v16[5];
  }

  v12 = v11;

  _Block_object_dispose(&v15, 8);
  _Block_object_dispose(&v22, 8);

  return v12;
}

void __50__EMDaemonInterface__connectionForProtocol_error___block_invoke()
{
  Mutable = CFDictionaryCreateMutable(0, 0, MEMORY[0x1E695E9D8], 0);
  v1 = +[EMAccountRepository remoteInterface];
  v2 = [v1 protocol];
  CFDictionarySetValue(Mutable, v2, sel_getAccountRepositoryInterface_);

  v3 = +[EMClientState remoteInterface];
  v4 = [v3 protocol];
  CFDictionarySetValue(Mutable, v4, sel_getClientStateInterface_);

  v5 = +[EMFetchController remoteInterface];
  v6 = [v5 protocol];
  CFDictionarySetValue(Mutable, v6, sel_getFetchControllerInterface_);

  v7 = +[EMInteractionLogger remoteInterface];
  v8 = [v7 protocol];
  CFDictionarySetValue(Mutable, v8, sel_getInteractionLoggerInterface_);

  v9 = +[EMMailboxRepository remoteInterface];
  v10 = [v9 protocol];
  CFDictionarySetValue(Mutable, v10, sel_getMailboxRepositoryInterface_);

  v11 = +[EMMessageRepository remoteInterface];
  v12 = [v11 protocol];
  CFDictionarySetValue(Mutable, v12, sel_getMessageRepositoryInterface_);

  v13 = +[EMOutgoingMessageRepository remoteInterface];
  v14 = [v13 protocol];
  CFDictionarySetValue(Mutable, v14, sel_getOutgoingMessageRepositoryInterface_);

  v15 = +[EMSenderRepository remoteInterface];
  v16 = [v15 protocol];
  CFDictionarySetValue(Mutable, v16, sel_getSenderRepositoryInterface_);

  v17 = +[EMSearchableIndex remoteInterface];
  v18 = [v17 protocol];
  CFDictionarySetValue(Mutable, v18, sel_getSearchableIndexInterface_);

  v19 = +[EMVIPManager remoteInterface];
  v20 = [v19 protocol];
  CFDictionarySetValue(Mutable, v20, sel_getVIPManagerInterface_);

  v21 = +[EMActivityRegistry remoteInterface];
  v22 = [v21 protocol];
  CFDictionarySetValue(Mutable, v22, sel_getActivityRegistryInterface_);

  v23 = +[EMDiagnosticInfoGatherer remoteInterface];
  v24 = [v23 protocol];
  CFDictionarySetValue(Mutable, v24, sel_getDiagnosticInfoGathererInterface_);

  _connectionForProtocol_error__map = Mutable;
}

void __50__EMDaemonInterface__connectionForProtocol_error___block_invoke_2(uint64_t a1, void *a2)
{
  v6 = a2;
  v3 = [v6 remoteObjectProxy];
  v4 = *(*(a1 + 32) + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = v3;
}

- (id)generateProxyForProtocol:(id)protocol error:(id *)error
{
  v4 = [(EMDaemonInterface *)self _connectionForProtocol:protocol error:error];

  return v4;
}

- (id)connectionForProtocol:(id)protocol
{
  protocolCopy = protocol;
  v5 = [[EMRemoteConnection alloc] initWithProtocol:protocolCopy proxyGenerator:self];
  os_unfair_lock_lock(&self->_lock);
  [(NSHashTable *)self->_connections addObject:v5];
  os_unfair_lock_unlock(&self->_lock);

  return v5;
}

- (void)resetProtocolConnections
{
  queue = self->_queue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __45__EMDaemonInterface_resetProtocolConnections__block_invoke;
  block[3] = &unk_1E826C098;
  block[4] = self;
  dispatch_async(queue, block);
}

void __45__EMDaemonInterface_resetProtocolConnections__block_invoke(uint64_t a1)
{
  v35 = *MEMORY[0x1E69E9840];
  v1 = *(*(a1 + 32) + 32) == 0;
  v2 = +[EMDaemonInterface log];
  v3 = os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT);
  if (v1)
  {
    if (v3)
    {
      v5 = *(a1 + 32);
      *buf = 138543362;
      v31 = v5;
      _os_log_impl(&dword_1C6655000, v2, OS_LOG_TYPE_DEFAULT, "%{public}@: Resetting remote connections", buf, 0xCu);
    }

    v6 = *(a1 + 32);
    os_unfair_lock_lock(v6 + 13);
    v7 = [*(*(a1 + 32) + 24) allObjects];
    os_unfair_lock_unlock(v6 + 13);
    v28 = 0u;
    v29 = 0u;
    v26 = 0u;
    v27 = 0u;
    v2 = v7;
    v8 = 0;
    v9 = [v2 countByEnumeratingWithState:&v26 objects:v34 count:16];
    if (v9)
    {
      v11 = *v27;
      *&v10 = 138543618;
      v23 = v10;
      do
      {
        for (i = 0; i != v9; ++i)
        {
          if (*v27 != v11)
          {
            objc_enumerationMutation(v2);
          }

          v13 = *(*(&v26 + 1) + 8 * i);
          [v13 reset];
          if ([v13 prefersImmediateActivity])
          {
            v14 = +[EMDaemonInterface log];
            if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
            {
              v15 = *(a1 + 32);
              *buf = v23;
              v31 = v15;
              v32 = 2114;
              v33 = v13;
              _os_log_impl(&dword_1C6655000, v14, OS_LOG_TYPE_DEFAULT, "%{public}@: %{public}@ prefers immediate recovery, will force daemon relaunch", buf, 0x16u);
            }

            v8 = 1;
          }
        }

        v9 = [v2 countByEnumeratingWithState:&v26 objects:v34 count:16];
      }

      while (v9);
    }

    v16 = +[EMDaemonInterface log];
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
    {
      v17 = *(a1 + 32);
      *buf = 138543362;
      v31 = v17;
      _os_log_impl(&dword_1C6655000, v16, OS_LOG_TYPE_DEFAULT, "%{public}@: Waiting for daemon re-launch", buf, 0xCu);
    }

    *(*(a1 + 32) + 32) = 1;
    if (v8)
    {
      v18 = +[EMDaemonInterface log];
      if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
      {
        v19 = *(a1 + 32);
        *buf = 138543362;
        v31 = v19;
        _os_log_impl(&dword_1C6655000, v18, OS_LOG_TYPE_DEFAULT, "%{public}@: Sending early launch recovery message", buf, 0xCu);
      }

      v20 = [*(a1 + 32) proxyCreator];
      v21 = [v20 remoteObjectProxy];
      v25[0] = MEMORY[0x1E69E9820];
      v25[1] = 3221225472;
      v25[2] = __45__EMDaemonInterface_resetProtocolConnections__block_invoke_327;
      v25[3] = &unk_1E826C098;
      v25[4] = *(a1 + 32);
      [v21 launchForEarlyRecovery:v25];
    }
  }

  else if (v3)
  {
    v4 = *(a1 + 32);
    *buf = 138543362;
    v31 = v4;
    _os_log_impl(&dword_1C6655000, v2, OS_LOG_TYPE_DEFAULT, "%{public}@: Already waiting for daemon re-launch", buf, 0xCu);
  }

  v22 = *MEMORY[0x1E69E9840];
}

+ (BOOL)cachedMailAppIsInstalled
{
  defaultManager = [MEMORY[0x1E696AC08] defaultManager];
  _mailUninstalledFile = [self _mailUninstalledFile];
  path = [_mailUninstalledFile path];
  v6 = [defaultManager fileExistsAtPath:path];

  return v6 ^ 1;
}

+ (void)setCachedMailAppIsInstalled:(BOOL)installed
{
  installedCopy = installed;
  defaultManager = [MEMORY[0x1E696AC08] defaultManager];
  _mailUninstalledFile = [self _mailUninstalledFile];
  if (installedCopy)
  {
    [defaultManager removeItemAtURL:_mailUninstalledFile error:0];
  }

  else
  {
    path = [_mailUninstalledFile path];
    data = [MEMORY[0x1E695DEF0] data];
    [defaultManager createFileAtPath:path contents:data attributes:0];
  }
}

- (void)repopulateBusinessesTables
{
  proxyCreator = [(EMDaemonInterface *)self proxyCreator];
  remoteObjectProxy = [proxyCreator remoteObjectProxy];
  [remoteObjectProxy repopulateBusinessesTables];
}

- (EMBlockedSenderManager)blockedSenderManager
{
  os_unfair_lock_lock(&self->_lock);
  if ([(EMDaemonInterface *)self wantsBlockedSenderManager]&& !self->_blockedSenderManager)
  {
    v3 = objc_alloc_init(EMBlockedSenderManager);
    blockedSenderManager = self->_blockedSenderManager;
    self->_blockedSenderManager = v3;
  }

  v5 = self->_blockedSenderManager;
  os_unfair_lock_unlock(&self->_lock);

  return v5;
}

void __101__EMDaemonInterface__initByAdoptingConnection_useNegotiatedConnection_configureBlockedSenderManager___block_invoke_cold_1(uint64_t a1, NSObject *a2)
{
  v6 = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 16);
  v4 = 138543362;
  v5 = v2;
  _os_log_error_impl(&dword_1C6655000, a2, OS_LOG_TYPE_ERROR, "%{public}@: Connection Interrupted (recoverable)", &v4, 0xCu);
  v3 = *MEMORY[0x1E69E9840];
}

void __101__EMDaemonInterface__initByAdoptingConnection_useNegotiatedConnection_configureBlockedSenderManager___block_invoke_7_cold_1(uint64_t a1, NSObject *a2)
{
  v6 = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 16);
  v4 = 138543362;
  v5 = v2;
  _os_log_fault_impl(&dword_1C6655000, a2, OS_LOG_TYPE_FAULT, "%{public}@: Connection Invalidated", &v4, 0xCu);
  v3 = *MEMORY[0x1E69E9840];
}

@end